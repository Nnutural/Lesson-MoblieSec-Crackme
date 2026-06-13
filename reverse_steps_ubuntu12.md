# Ubuntu 12.04 虚拟机上 crackme.apk / crackme2.apk 逆向操作手册

> 适用环境（来自 `env_report.txt` 实测）
>
> | 组件 | 版本 / 路径 |
> | --- | --- |
> | OS | Ubuntu 12.04.2 LTS x86_64 (kernel 3.2) |
> | JDK | `1.6.0_45`，目录 `/usr/lib/java/jdk1.6.0_45` |
> | apktool | `1.5.2`，封装脚本 `/usr/bin/apktool`，jar `/usr/share/apktool/apktool.jar` |
> | smali / baksmali | `1.4.2`，脚本 `/usr/bin/smali` / `/usr/bin/baksmali`，jar `/usr/share/smali/{smali,baksmali}-1.4.2.jar` |
> | dex2jar | 脚本 `/usr/bin/d2j-dex2jar`（也有 `/usr/bin/dex2jar`），原始包 `/usr/share/dex2jar/` |
> | ADT SDK | `/usr/share/adt-bundle/sdk`（`platform-tools/{adb,aapt,dx,dexdump}`、`tools/{emulator,zipalign,android}`） |
> | adb | `1.0.31` |
> | emulator | `21.1.0` |
> | jarsigner / keytool | JDK1.6 自带 |
>
> **本手册不包含源码 / 算法分析**——按用户要求，伪代码与算法还原由 GitHub 仓库拉取到本机分析。这里只覆盖：解包 → （留空给源码分析）→ Smali 改动 / Keygen 联调 → 重打包 → 签名 → 安装 → 验证。

---

## 0. 一次性准备

### 0.1 在虚拟机里固定一个工作根目录

建议直接用现有的 `/home/softsec/Desktop/1`（env 报告里就是这个目录）。

```bash
cd /home/softsec/Desktop/1

# 检查原始 APK 是否在
ls -l crackme.apk crackme2.apk

# 留两份原始备份，后面对比 / 出问题恢复用
mkdir -p _backup
cp -n crackme.apk  _backup/crackme.apk.orig
cp -n crackme2.apk _backup/crackme2.apk.orig
```

如果 `crackme.apk` 不在这个目录，请确认实际位置（env 报告中另有 `/home/softsec/Downloads/SoftSec/`、`/home/softsec/Downloads/crackme/` 这两个候选）。

> **请在 VM 中跑一次帮我确认这些路径与可选项**（用于后面写报告 / 截图）：
>
> ```bash
> # ① 两个目标 APK 实际位置
> find /home/softsec -maxdepth 4 -name 'crackme*.apk' 2>/dev/null
>
> # ② 是否已有 AVD（重打包后需要装机验证）
> /usr/share/adt-bundle/sdk/tools/android list avd 2>/dev/null | head -40
> /usr/share/adt-bundle/sdk/tools/emulator -list-avds 2>/dev/null
>
> # ③ 是否存在 JD-GUI（env 没列出，看看本地有没有 jar 包）
> find /home/softsec /opt /usr -maxdepth 5 -type f \
>   \( -iname 'jd-gui*' -o -iname 'jd-cmd*' -o -iname 'jad' \) 2>/dev/null
>
> # ④ 是否已有调试用 keystore（很多 ADT 自动生成过）
> ls -l ~/.android/debug.keystore 2>/dev/null
> ```
>
> 跑完把输出贴回来，我会把下面用到的具体路径再固化一遍。

### 0.2 给常用工具起短别名（仅当前 shell 有效）

```bash
alias APKTOOL='java -jar /usr/share/apktool/apktool.jar'
alias BAKSMALI='java -jar /usr/share/smali/baksmali-1.4.2.jar'
alias SMALI='java -jar /usr/share/smali/smali-1.4.2.jar'
alias DEX2JAR='/usr/bin/d2j-dex2jar'
alias AAPT='/usr/share/adt-bundle/sdk/platform-tools/aapt'
alias ZIPALIGN='/usr/share/adt-bundle/sdk/tools/zipalign'
alias JARSIGNER='/usr/lib/java/jdk1.6.0_45/bin/jarsigner'
alias ADB='/usr/share/adt-bundle/sdk/platform-tools/adb'
alias EMU='/usr/share/adt-bundle/sdk/tools/emulator'
```

后文命令统一用这些别名，便于复制。如果走 `/usr/bin/apktool` 这种 wrapper 也行，直接 `apktool d ...` 即可。

> 注意：本 VM 的 apktool 是 `1.5.2`，`d[ecode]` / `b[uild]` 的输出目标都写成最后的位置参数，不支持新版 apktool 的 `-o` 参数。误用 `-o` 时 apktool 只会打印 Usage，不会生成输出目录或 APK。

### 0.3 准备一把调试签名 keystore（仅做一次）

> 如果 0.1 第 ④ 步已经显示 `~/.android/debug.keystore` 存在，跳过本节，下面 `jarsigner` 时直接用它。

```bash
mkdir -p ~/keys
keytool -genkey -v \
  -keystore ~/keys/softsec.keystore \
  -alias softsec \
  -keyalg RSA -keysize 2048 \
  -validity 10000 \
  -storepass android -keypass android \
  -dname "CN=softsec, OU=BUPT, O=BUPT, L=BJ, S=BJ, C=CN"

# 验证
keytool -list -v -keystore ~/keys/softsec.keystore -storepass android | head -20
```

> 注意：JDK 1.6 + 老 jarsigner **必须用 v1（JAR）签名**，不能用 v2/v3，因为目标 APK 也是 sdkVersion=3（Android 1.5）的旧件。下面我们也只用 v1。

---

## 任务 3：crackme.apk 注册逻辑绕过

> 目标：通过修改 smali 让任意输入都判为合法注册，重新打包 → 签名 → 安装 → 截图验证。
>
> 要求（必须遵守）：使用ApkTool及Dex2jar逆向crackme.apk，寻找到爆破点，修改注册逻辑代码，使注册机制失效，使用ApkTool重新打包生成apk，要求新的apk对任意字符成功注册。（可使用工具：ApkTool、BakSmali 、dex2jar、jd-gui）

### 3.1 静态信息快照（写报告要用）

```bash
cd /home/softsec/Desktop/1
mkdir -p t3 && cd t3
cp ../crackme.apk ./crackme.apk

# 哈希 / 包名 / 入口 Activity / 权限
md5sum crackme.apk
sha1sum crackme.apk
sha256sum crackme.apk
AAPT dump badging crackme.apk | tee crackme_badging.txt
unzip -l crackme.apk | tee crackme_ziplist.txt

# 原始 v1 签名信息（写报告用，证明“改前/改后签名变了”）
JARSIGNER -verify -verbose -certs crackme.apk | tee crackme_sigverify.txt
```

### 3.2 用 apktool 全解包（含资源 + smali）

```bash
# -f 覆盖；输出目录 crackme_decoded
APKTOOL d -f crackme.apk crackme_decoded
ls crackme_decoded
# 关键子目录：
#   AndroidManifest.xml   ← 已反编译成明文
#   res/                  ← 资源
#   smali/                ← 反汇编后的所有类
#   apktool.yml           ← 重打包用的元信息
```

如果 `apktool d` 报缺 framework，跑一次：
```bash
APKTOOL if /usr/share/adt-bundle/sdk/platforms/android-?/framework-res.apk 2>/dev/null
# 实际路径以你 VM 中安装的 platform 为准；目标 APK 是 SDK 3 的，绝大多数情况无需 framework
```

### 3.3 单独导出 classes.dex → jar（供 GitHub 上的源码分析使用）

虽然源码分析由 GitHub 仓库提供，但要拉取的“Java 反编译伪码”仍然来自 dex→jar→反编译这一步，所以在 VM 这边把 jar 先生成出来留存为证据：

```bash
# 把 dex 单独抽出来
mkdir -p dex && cd dex
unzip -o ../crackme.apk classes.dex
cd ..

# dex → jar
DEX2JAR -f -o crackme-dex2jar.jar dex/classes.dex
ls -l crackme-dex2jar.jar
```

> 若打算在本机用 JD-GUI / IDEA 打开 `crackme-dex2jar.jar`，把它拷出 VM 即可；这步不属于本手册范围。







### 3.4 修改 smali（绕过校验）

本次实际修改文件：

```bash
crackme_decoded/smali/Com/zAWS/KeygenMe/main.smali
```

定位过程：

1. 先在主业务类里搜索注册相关字符串和方法：

```bash
grep -n "Register\\|Activate\\|check_code\\|write2file\\|Input Your Code" \
  crackme_decoded/smali/Com/zAWS/KeygenMe/main.smali
```

2. `Activity_Create` 中调用 `_check_code()Z`，返回 true 时设置 `unlock.png` 并提示 `Registerd successfully...`；返回 false 时设置 `lock.png` 并添加 `Activate` 菜单。
3. `_activate_click()` 是注册菜单入口。原逻辑为：弹出输入框 → 空输入直接返回 → 非数字直接返回 → 长度不是 11 直接返回 → 通过后调用 `_encrypt()` 写入 `key.txt`。
4. `_check_code()` 是最终校验点。原逻辑为：`_readfile()` 读取内部目录的 `key.txt`；为空返回 false；非空时解密并拆分注册码，与 IMEI/MAC 计算出的片段逐段比较，全部匹配才返回 true。

修改原则：尽量小改控制流，不改资源、不改 `apktool.yml`、不重写算法。保留“首次安装未注册 → 点击 Activate → 输入 → 提示重启 → 重启后注册成功”的实验流程，只让任意非空输入都能通过。

#### 修改点 1：让任意非空输入直接写入 key.txt

位置：`main.smali` 的 `_activate_click()`，在 `:cond_0` 处。这里是“输入不为空”后进入的分支。原本后面还会继续检查是否为数字、长度是否为 11。

修改前：

```smali
:cond_0
invoke-static {v0}, Lanywheresoftware/b4a/keywords/Common;->IsNumber(Ljava/lang/String;)Z
```

修改后：

```smali
:cond_0
invoke-static {v0}, LCom/zAWS/KeygenMe/main;->_write2file(Ljava/lang/String;)Ljava/lang/String;

goto :cond_3

invoke-static {v0}, Lanywheresoftware/b4a/keywords/Common;->IsNumber(Ljava/lang/String;)Z
```

含义：`v0` 是输入框返回的字符串。只要它不是空字符串，就直接调用已有的 `_write2file()` 写入 `key.txt`，然后跳到原来的 `:cond_3`，复用原程序的隐藏键盘、关闭菜单、弹出 `Please Restart...`、结束 Activity 这段流程。

#### 修改点 2：让非空 key.txt 直接判定为已注册

位置：`main.smali` 的 `_check_code()`，在 `:cond_0` 处。这里是 `_readfile()` 读到的内容不为空后进入的分支。

修改前：

```smali
:cond_0
invoke-static {v0}, LCom/zAWS/KeygenMe/main;->_decrypt(Ljava/lang/String;)Ljava/lang/String;
```

修改后：

```smali
:cond_0
move v0, v6

goto :goto_0

invoke-static {v0}, LCom/zAWS/KeygenMe/main;->_decrypt(Ljava/lang/String;)Ljava/lang/String;
```

含义：方法开头已有 `const/4 v6, 0x1`，所以这里把返回寄存器 `v0` 置为 1，然后跳到统一返回点 `:goto_0`。空文件仍走原来的 `move v0, v5` 返回 false；非空文件直接返回 true。

最终效果：

1. 首次安装后没有 `key.txt`，`_check_code()` 仍返回 false，界面显示未注册并保留 `Activate` 菜单。
2. 点击 `Activate` 后输入任意非空字符串，例如 `abc`、`123`、`bupt-test`，都会写入 `key.txt` 并提示重启。
3. 重启后 `_check_code()` 读到非空 `key.txt`，直接返回 true，界面显示解锁图标和 `Registerd successfully...` 提示。

截图对比建议：

```bash
nl -ba crackme_decoded/smali/Com/zAWS/KeygenMe/main.smali | sed -n '400,500p'
nl -ba crackme_decoded/smali/Com/zAWS/KeygenMe/main.smali | sed -n '1720,1755p'
```

验证前如果之前已经安装过同包名应用，建议先清掉旧数据，否则残留的 `key.txt` 会让应用一启动就显示已注册：

```bash
ADB uninstall Com.zAWS.KeygenMe 2>/dev/null
```

改完后**别动 apktool.yml**，继续执行 3.5 重打包。





### 3.5 重打包

```bash
APKTOOL b crackme_decoded crackme_patched_unsigned.apk
ls -l crackme_patched_unsigned.apk
```

> 报错最常见的两种：
> - smali 语法写错 → 报错信息会带文件名 + 行号，回去改。
> - 资源 ID 冲突 → 99% 是因为编辑了 `res/values/public.xml`，**不要动它**。

### 3.6 签名（v1 / JAR 签名）

```bash
# 用 0.3 生成的 softsec.keystore；若用 debug.keystore：
#   keystore=~/.android/debug.keystore  alias=androiddebugkey  storepass/keypass=android
JARSIGNER -verbose \
  -keystore ~/keys/softsec.keystore \
  -storepass android -keypass android \
  -sigalg MD5withRSA -digestalg SHA1 \
  -signedjar crackme_patched_signed.apk \
  crackme_patched_unsigned.apk \
  softsec

# 验证签名
JARSIGNER -verify -verbose -certs crackme_patched_signed.apk | tail -20
```

> `-sigalg MD5withRSA -digestalg SHA1` 是为了让 Android 2.x/3.x 都能识别；JDK1.6 默认就是这个组合，写出来纯粹保险。

### 3.7 zipalign（对齐 4 字节，安装稳定性更好）

```bash
ZIPALIGN -v 4 crackme_patched_signed.apk crackme_patched.apk
ZIPALIGN -c -v 4 crackme_patched.apk     # 校验
```

### 3.8 启动模拟器并安装

```bash
# 列已存在的 AVD（0.1 第 ② 步已经做过，下面假设有一个叫 avd23 的）
EMU -list-avds

# 后台起一个，2.3 ~ 4.0 都行；crackme 是 sdk=3 的极老应用，4.0 以下最稳
EMU -avd <你的AVD名> -no-boot-anim &

# 等开机
ADB wait-for-device
ADB shell getprop sys.boot_completed   # 返回 1 表示开机完成

# 装
ADB install -r crackme_patched.apk

# 启动主 Activity（包名/Activity 从 3.1 的 badging 拿到）
ADB shell am start -n com.lohan.crackme0a/.Main
```

### 3.9 截图取证

```bash
# adb 抓屏（4.0+ 才直接支持 screencap；老系统用 ddms 或 monitor 抓也行）
ADB shell screencap -p /sdcard/t3_ok.png && ADB pull /sdcard/t3_ok.png ./t3_ok.png
```

需要的截图清单（写报告时贴）：
1. 改前：原始 APK 安装，输入错误注册码 → 失败提示。
2. 改后：补丁 APK 安装，输入任意字符串 → 成功提示。
3. `jarsigner -verify -verbose -certs` 改前 / 改后的对比输出。

---

## 任务 4：crackme2.apk 注册机开发

> 目标：**不改 APK**。逆向出注册码生成算法，写一个独立小程序（Java / Python 任意），输入用户名 / 设备号 → 输出合法注册码 → 在原始 crackme2.apk 中验证通过。
>
> 要求（必须遵守）：逆向示例程序crackme2.apk，根据dex2jar和JD-GUI工具，查看java源码，分析注册机制，写出注册机程序。

### 4.1 静态信息快照

```bash
cd /home/softsec/Desktop/1
mkdir -p t4 && cd t4
cp ../crackme2.apk ./crackme2.apk

md5sum crackme2.apk
AAPT dump badging crackme2.apk | tee crackme2_badging.txt
unzip -l crackme2.apk | tee crackme2_ziplist.txt
JARSIGNER -verify -verbose -certs crackme2.apk | tee crackme2_sigverify.txt
```

env 报告已经显示：

```
package: name='com.lohan.crackme0a' versionCode='1' versionName='1.0' sdkVersion:'3'
launchable-activity: name='com.lohan.crackme0a.Main'
uses-permission: WRITE_EXTERNAL_STORAGE / READ_PHONE_STATE / READ_EXTERNAL_STORAGE
classes.dex sha256 = 1f4160c685809442cd5b179bb5f8e176f64bfdbfd9a315acc7bfd19baff4cf77
```

`READ_PHONE_STATE` 强烈提示注册算法和 **设备 IMEI / 手机号** 有关——后面写 keygen 的输入参数要据此设计。

### 4.2 解包（同样两条路：smali / jar）

```bash
APKTOOL d -f crackme2.apk crackme2_decoded

mkdir -p dex && cd dex
unzip -o ../crackme2.apk classes.dex
cd ..
DEX2JAR -f -o crackme2-dex2jar.jar dex/classes.dex
```

把 `crackme2-dex2jar.jar` / `crackme2_decoded/smali/` 拷出 VM 给 GitHub 仓库的源码分析使用。**接下来到“源码分析”这一步——由 GitHub 仓库的伪码补完。**









### 4.3 写注册机（独立程序）

源码分析得到的算法（用户名 / IMEI / 常量 + 哈希 / 异或 / 拼接 / 编码 ……）写成一个独立的小程序。两种推荐方式：

#### 方式 A：Java（推荐——和 APK 内一致，避免编码不一致踩坑）

```bash
mkdir -p keygen-java && cd keygen-java
cat > Keygen.java <<'EOF'
import java.security.MessageDigest;

public class Keygen {
    public static void main(String[] args) throws Exception {
        if (args.length < 1) {
            System.err.println("Usage: java Keygen <imei_or_username>");
            System.exit(1);
        }
        String input = args[0];

        // ===== 占位：替换为 GitHub 仓库源码分析得到的算法 =====
        // 例：MessageDigest md = MessageDigest.getInstance("MD5");
        //     byte[] h = md.digest(input.getBytes("UTF-8"));
        //     ... 截取 / 异或 / 转大写 / 加分隔符 ...
        // ====================================================

        String serial = "<TODO>";   // 由源码分析替换
        System.out.println(serial);
    }
}
EOF

javac Keygen.java
java Keygen 123456789012345        # 输入示例
cd ..
```

#### 方式 B：Python（写报告时更紧凑）

VM 自带 `python2.7` 和 `python3.2`，看算法用哪个更顺手即可。

```bash
mkdir -p keygen-py && cd keygen-py
cat > keygen.py <<'EOF'
#!/usr/bin/env python
import hashlib, sys

def keygen(s):
    # ===== 占位：由 GitHub 源码分析填入 =====
    return "<TODO>"

if __name__ == "__main__":
    print(keygen(sys.argv[1]))
EOF
python keygen.py 123456789012345
cd ..
```

### 4.4 装原始 crackme2.apk 到模拟器并取 IMEI

```bash
# 若 3.8 的模拟器还在跑，直接用；否则重新起
ADB install -r crackme2.apk

# 拿模拟器默认 IMEI（emulator-5554 默认 IMEI = 000000000000000，但建议从应用真实读到的值入手）
ADB shell service call iphonesubinfo 1     # 老系统读 IMEI 的常用办法

# 启动应用
ADB shell am start -n com.lohan.crackme0a/com.lohan.crackme0a.Main
```

### 4.5 验证注册机

1. 在 UI 里**抄下应用此时展示的“机器码 / 用户名”字段**（如果有的话）；如果应用直接读 IMEI 不在 UI 里露出来，那 keygen 的输入就用上一步 4.4 拿到的 IMEI。
2. `java Keygen <那个串>` 或 `python keygen.py <那个串>` 拿到合法注册码。
3. 把注册码填回应用 → 截图“注册成功”。

### 4.6 取证 / 截图清单

1. 安装原始 crackme2.apk（**未改动**，强调“签名未动”—— `jarsigner -verify` 输出贴上）。
2. 注册机命令行截图：输入 → 输出。
3. 应用内填入注册机产物 → 成功提示截图。
4. 算法关键 Smali 片段 / Java 反编译片段（来自 GitHub 仓库的源码分析章节）。

---

## 5. 排错速查

| 现象 | 排查 |
| --- | --- |
| `apktool b` 报 smali 语法错 | 看报错文件 + 行号，回去改；常见是寄存器编号写错、label 拼错 |
| `apktool b` 报 `Multiple resources` / 资源冲突 | 是不是改了 `res/values/public.xml`？不要改 |
| `jarsigner` 报 `unable to retrieve key` | `-keypass` 是不是和创建时一致；JDK1.6 默认 storepass = keypass，跟着上面写就行 |
| `adb install` 报 `INSTALL_PARSE_FAILED_NO_CERTIFICATES` | 没签名 / 签名失败；回到 3.6 |
| `INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES` | 已经装过一个不同签名的同包名应用；`adb uninstall com.lohan.crackme0a` 再装 |
| `INSTALL_FAILED_OLDER_SDK` | AVD 版本比应用 minSdk 还低；换 API 8+ 的 AVD（本应用 minSdk=3，几乎不会遇到） |
| 模拟器起不来 / 黑屏 | 加 `-no-window -no-audio -gpu off`；VM 里 KVM 通常不可用，纯软件渲染慢但能跑 |

---

## 6. 一句话流程总览

**任务 3：** `aapt dump → apktool d → (GitHub 源码分析定位) → 改 smali → apktool b → keytool/jarsigner → zipalign → adb install → 截图`

**任务 4：** `aapt dump → apktool d / dex2jar → (GitHub 源码分析还原算法) → 写 Keygen.java/keygen.py → adb install 原始 APK → keygen 出码 → 填入验证 → 截图`

签名、对齐、安装这三步两套任务共用；任务 4 不要重新签名（因为根本不动 APK），这一点写报告时记得强调，与“签名漏洞”那一节做对比。
