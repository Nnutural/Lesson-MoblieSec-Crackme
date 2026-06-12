from __future__ import print_function
import sys
import zipfile
import hashlib
import base64

orig = sys.argv[1] if len(sys.argv) > 1 else "crackme2.apk"
mod = sys.argv[2] if len(sys.argv) > 2 else "crackme2_dup_classes.apk"

def read_entry_by_info(z, info):
    f = z.open(info)
    try:
        return f.read()
    finally:
        f.close()

def sha256(data):
    return hashlib.sha256(data).hexdigest()

def sha1_b64(data):
    return base64.b64encode(hashlib.sha1(data).digest()).decode("ascii")

print("original:", orig)
print("modified:", mod)

zo = zipfile.ZipFile(orig, "r")
zm = zipfile.ZipFile(mod, "r")

print("\n[1] META-INF signature files")
for name in ["META-INF/MANIFEST.MF", "META-INF/CERT.SF", "META-INF/CERT.RSA"]:
    a = zo.read(name)
    b = zm.read(name)
    print("%s %s %s" % (name, "UNCHANGED" if sha256(a) == sha256(b) else "CHANGED", sha256(a)))

print("\n[2] modified APK classes.dex entries")
count = 0
for idx, info in enumerate(zm.infolist(), 1):
    if info.filename == "classes.dex":
        count += 1
        data = read_entry_by_info(zm, info)
        print("entry=%02d size=%d sha1_b64=%s sha256=%s" %
              (idx, len(data), sha1_b64(data), sha256(data)))
print("classes.dex count:", count)

print("\n[3] original MANIFEST.MF classes.dex digest")
mf = zo.read("META-INF/MANIFEST.MF")
print(mf.decode("latin1"))

zo.close()
zm.close()
