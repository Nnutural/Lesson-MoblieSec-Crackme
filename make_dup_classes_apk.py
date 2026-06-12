from __future__ import print_function
import zipfile
import os

orig = "crackme2.apk"
inj = os.path.join("inject", "classes.dex")
out = "crackme2_dup_classes.apk"

if not os.path.isfile(orig):
    raise SystemExit("missing original apk: %s" % orig)
if not os.path.isfile(inj):
    raise SystemExit("missing injected dex: %s" % inj)

zin = zipfile.ZipFile(orig, "r")
zout = zipfile.ZipFile(out, "w")

# 第一个同名条目：植入 dex。旧漏洞环境中运行时可能加载它。
first = zipfile.ZipInfo("classes.dex")
first.date_time = (2012, 1, 6, 16, 43, 44)
first.compress_type = zipfile.ZIP_DEFLATED
zout.writestr(first, open(inj, "rb").read())

# 后续完整写入原 APK 的所有条目，其中包含原始 classes.dex 和 META-INF 签名文件。
for info in zin.infolist():
    data = zin.read(info.filename)
    zout.writestr(info, data)

zin.close()
zout.close()

print("created:", out)
