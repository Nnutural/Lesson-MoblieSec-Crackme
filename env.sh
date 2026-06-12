#!/usr/bin/env bash
# Read-only environment collector for old Ubuntu / Android APK signing labs.
# Usage:
#   bash collect_ubuntu12_android_env.sh /path/to/crackme2.apk 2>&1 | tee env_report.txt
#
# Optional:
#   Set DEEP_SCAN=1 to search common directories more broadly for Android tools.

set +e

APK_PATH="${1:-}"
DEEP_SCAN="${DEEP_SCAN:-0}"

section() {
  printf '\n========== %s ==========\n' "$1"
}

run() {
  printf '\n$ %s\n' "$*"
  "$@" 2>&1
  printf '[exit=%s]\n' "$?"
}

run_sh() {
  printf '\n$ %s\n' "$1"
  sh -c "$1" 2>&1
  printf '[exit=%s]\n' "$?"
}

which_all() {
  name="$1"
  printf '\n-- %s --\n' "$name"
  command -v "$name" 2>/dev/null || true
  which "$name" 2>/dev/null || true
  whereis "$name" 2>/dev/null || true
}

has_cmd() {
  command -v "$1" >/dev/null 2>&1
}

timeout_run() {
  seconds="$1"
  shift
  if has_cmd timeout; then
    run timeout "$seconds" "$@"
  else
    run "$@"
  fi
}

section "Collector Info"
date
echo "script=$0"
echo "apk_path=${APK_PATH}"
echo "deep_scan=${DEEP_SCAN}"

section "OS And Shell"
run uname -a
run_sh "cat /etc/issue 2>/dev/null"
run_sh "cat /etc/lsb-release 2>/dev/null"
run_sh "cat /etc/os-release 2>/dev/null"
run lsb_release -a
run id
run pwd
run_sh "echo SHELL=\$SHELL"
run_sh "echo USER=\$USER"
run_sh "echo HOME=\$HOME"
run_sh "echo LANG=\$LANG"
run_sh "echo LC_ALL=\$LC_ALL"
run_sh "echo PATH=\$PATH"
run_sh "umask"

section "CPU And Memory"
run arch
run getconf LONG_BIT
run_sh "grep -E 'model name|Hardware|Processor' /proc/cpuinfo | head -20"
run free -m
run df -h

section "Core Tools"
for t in sh bash dash zsh perl python python2 python2.7 python3 ruby gcc g++ make file strings hexdump xxd md5sum sha1sum sha256sum openssl zip unzip jar 7z; do
  which_all "$t"
done
run_sh "python --version"
run_sh "python2 --version"
run_sh "python2.7 --version"
run_sh "python3 --version"
run_sh "zip -v | head -20"
run_sh "unzip -v | head -20"
run_sh "file --version"
run_sh "openssl version -a"

section "Java Toolchain"
for t in java javac jar jarsigner keytool jdb; do
  which_all "$t"
done
run_sh "java -version"
run_sh "javac -version"
run_sh "jar 2>&1 | head -20"
run_sh "jarsigner 2>&1 | head -30"
run_sh "keytool 2>&1 | head -30"
run_sh "readlink -f \$(command -v java 2>/dev/null) 2>/dev/null"
run_sh "readlink -f \$(command -v javac 2>/dev/null) 2>/dev/null"
run update-alternatives --display java
run update-alternatives --display javac

section "Android Environment Variables"
run_sh "echo ANDROID_HOME=\$ANDROID_HOME"
run_sh "echo ANDROID_SDK_ROOT=\$ANDROID_SDK_ROOT"
run_sh "echo ANDROID_SDK_HOME=\$ANDROID_SDK_HOME"
run_sh "echo ANDROID_NDK_HOME=\$ANDROID_NDK_HOME"
run_sh "echo JAVA_HOME=\$JAVA_HOME"
run_sh "echo CLASSPATH=\$CLASSPATH"

section "Android Tool Locations"
for t in adb fastboot emulator android apktool aapt aapt2 dx d8 dexdump zipalign apksigner aidl sqlite3 smali baksmali dex2jar d2j-dex2jar jadx jadx-gui; do
  which_all "$t"
done

section "Android Tool Versions"
run_sh "adb version"
run_sh "fastboot --version"
run_sh "emulator -version"
run_sh "android list sdk 2>/dev/null | head -40"
run_sh "aapt version"
run_sh "aapt2 version"
run_sh "dx --version"
run_sh "d8 --version"
run_sh "zipalign 2>&1 | head -30"
run_sh "apksigner version"
run_sh "apktool --version"
run_sh "smali --version"
run_sh "baksmali --version"
run_sh "d2j-dex2jar --version"
run_sh "jadx --version"

section "Likely Android SDK Directories"
for d in \
  "$ANDROID_HOME" \
  "$ANDROID_SDK_ROOT" \
  "$HOME/android-sdk" \
  "$HOME/android-sdk-linux" \
  "$HOME/Android/Sdk" \
  "$HOME/android" \
  "/opt/android-sdk" \
  "/opt/android-sdk-linux" \
  "/opt/android" \
  "/usr/local/android-sdk" \
  "/usr/local/android-sdk-linux" \
  "/usr/lib/android-sdk" \
  "/usr/share/android-sdk"; do
  if [ -n "$d" ] && [ -d "$d" ]; then
    echo "--- SDK candidate: $d"
    run_sh "find '$d' -maxdepth 3 -type d \\( -name platforms -o -name build-tools -o -name platform-tools -o -name tools \\) -print"
    run_sh "find '$d' -maxdepth 4 -type f \\( -name android.jar -o -name adb -o -name aapt -o -name dx -o -name d8 -o -name apksigner -o -name zipalign \\) -print | sort"
    run_sh "ls -la '$d' 2>/dev/null"
    run_sh "ls -la '$d/platforms' 2>/dev/null"
    run_sh "ls -la '$d/build-tools' 2>/dev/null"
    run_sh "ls -la '$d/platform-tools' 2>/dev/null"
    run_sh "ls -la '$d/tools' 2>/dev/null"
  fi
done

section "Common Tool File Search"
run_sh "find \"$HOME\" /opt /usr/local /usr/lib /usr/share -maxdepth 5 -type f \\( -name 'apktool*' -o -name 'smali*.jar' -o -name 'baksmali*.jar' -o -name 'dex2jar*' -o -name 'd2j-dex2jar*' -o -name 'jadx*' -o -name 'aapt' -o -name 'dx' -o -name 'd8' -o -name 'adb' -o -name 'zipalign' -o -name 'apksigner' \\) 2>/dev/null | sort | head -300"
if [ "$DEEP_SCAN" = "1" ]; then
  section "Deep Tool File Search"
  run_sh "find / -type f \\( -name 'apktool*' -o -name 'smali*.jar' -o -name 'baksmali*.jar' -o -name 'dex2jar*' -o -name 'd2j-dex2jar*' -o -name 'jadx*' -o -name 'aapt' -o -name 'dx' -o -name 'd8' -o -name 'adb' -o -name 'zipalign' -o -name 'apksigner' \\) 2>/dev/null | sort | head -500"
fi

section "ADB Devices And Android Target"
timeout_run 10 adb devices -l
timeout_run 10 adb get-state
timeout_run 10 adb shell getprop ro.build.version.release
timeout_run 10 adb shell getprop ro.build.version.sdk
timeout_run 10 adb shell getprop ro.build.fingerprint
timeout_run 10 adb shell getprop ro.product.model
timeout_run 10 adb shell getprop ro.product.manufacturer
timeout_run 10 adb shell getprop ro.build.date
timeout_run 10 adb shell getprop ro.debuggable
timeout_run 10 adb shell pm list packages
timeout_run 10 adb shell pm path com.lohan.crackme0a
timeout_run 10 adb shell ls -l /data/local/tmp

section "APK File Basic Checks"
if [ -z "$APK_PATH" ]; then
  echo "No APK path argument supplied."
  echo "Re-run with: bash collect_ubuntu12_android_env.sh /path/to/crackme2.apk 2>&1 | tee env_report.txt"
elif [ ! -f "$APK_PATH" ]; then
  echo "APK path does not exist or is not a file: $APK_PATH"
else
  run_sh "ls -l '$APK_PATH'"
  run_sh "file '$APK_PATH'"
  run_sh "md5sum '$APK_PATH'"
  run_sh "sha1sum '$APK_PATH'"
  run_sh "sha256sum '$APK_PATH'"
  run_sh "unzip -l '$APK_PATH'"
  run_sh "jar tf '$APK_PATH'"
  run_sh "keytool -printcert -jarfile '$APK_PATH'"
  run_sh "jarsigner -verify -verbose -certs '$APK_PATH'"
  run_sh "aapt dump badging '$APK_PATH'"

  section "APK ZIP Structure Via Python"
  python - "$APK_PATH" <<'PY'
import sys, zipfile, hashlib, base64, os
apk = sys.argv[1]
print("apk=%s" % apk)
print("exists=%s size=%s" % (os.path.exists(apk), os.path.getsize(apk)))
data = open(apk, "rb").read()
print("apk_sig_block_magic_offset=%s" % data.rfind(b"APK Sig Block 42"))
try:
    z = zipfile.ZipFile(apk, "r")
except Exception as e:
    print("zip_open_error=%r" % (e,))
    sys.exit(0)
names = []
for idx, info in enumerate(z.infolist(), 1):
    names.append(info.filename)
    method = getattr(info, "compress_type", "")
    csize = getattr(info, "compress_size", "")
    usize = getattr(info, "file_size", "")
    crc = getattr(info, "CRC", 0)
    off = getattr(info, "header_offset", "")
    print("%02d name=%s method=%s csize=%s usize=%s crc=%08x offset=%s" %
          (idx, info.filename, method, csize, usize, crc, off))
seen = {}
for n in names:
    seen[n] = seen.get(n, 0) + 1
dups = [n for n in sorted(seen) if seen[n] > 1]
print("duplicate_names=%s" % dups)
print("classes_dex_count=%s" % seen.get("classes.dex", 0))
for idx, info in enumerate(z.infolist(), 1):
    if info.filename in ("classes.dex", "META-INF/MANIFEST.MF", "META-INF/CERT.SF", "META-INF/CERT.RSA"):
        try:
            content = z.open(info).read()
        except Exception:
            content = z.read(info.filename)
        sha1 = base64.b64encode(hashlib.sha1(content).digest())
        if not isinstance(sha1, str):
            sha1 = sha1.decode("ascii")
        print("hash entry=%02d name=%s size=%d sha1_b64=%s sha256=%s" %
              (idx, info.filename, len(content), sha1.strip(), hashlib.sha256(content).hexdigest()))
try:
    mf = z.read("META-INF/MANIFEST.MF")
    if not isinstance(mf, str):
        mf = mf.decode("latin1")
    print("--- META-INF/MANIFEST.MF ---")
    print(mf)
except Exception as e:
    print("manifest_read_error=%r" % (e,))
PY
fi

section "Done"
date
