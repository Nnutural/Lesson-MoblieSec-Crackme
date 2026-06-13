.class public Lanywheresoftware/b4a/phone/Phone;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Phone"
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$Version;
    value = 1.6f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/phone/Phone$ContentChooser;,
        Lanywheresoftware/b4a/phone/Phone$Email;,
        Lanywheresoftware/b4a/phone/Phone$LogCat;,
        Lanywheresoftware/b4a/phone/Phone$PhoneAccelerometer;,
        Lanywheresoftware/b4a/phone/Phone$PhoneCalls;,
        Lanywheresoftware/b4a/phone/Phone$PhoneId;,
        Lanywheresoftware/b4a/phone/Phone$PhoneIntents;,
        Lanywheresoftware/b4a/phone/Phone$PhoneOrientation;,
        Lanywheresoftware/b4a/phone/Phone$PhoneSensors;,
        Lanywheresoftware/b4a/phone/Phone$PhoneSms;,
        Lanywheresoftware/b4a/phone/Phone$PhoneVibrate;,
        Lanywheresoftware/b4a/phone/Phone$PhoneWakeState;,
        Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;
    }
.end annotation


# static fields
.field public static final RINGER_NORMAL:I = 0x2

.field public static final RINGER_SILENT:I = 0x0

.field public static final RINGER_VIBRATE:I = 0x1

.field public static final VOLUME_ALARM:I = 0x4

.field public static final VOLUME_MUSIC:I = 0x3

.field public static final VOLUME_NOTIFICATION:I = 0x5

.field public static final VOLUME_RING:I = 0x2

.field public static final VOLUME_SYSTEM:I = 0x1

.field public static final VOLUME_VOICE_CALL:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetDataState()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "DISCONNECTED"

    .line 315
    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 316
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 317
    .local v0, i:I
    packed-switch v0, :pswitch_data_0

    .line 327
    const-string v2, "DISCONNECTED"

    move-object v2, v4

    :goto_0
    return-object v2

    .line 319
    :pswitch_0
    const-string v2, "CONNECTED"

    goto :goto_0

    .line 321
    :pswitch_1
    const-string v2, "DISCONNECTED"

    move-object v2, v4

    goto :goto_0

    .line 323
    :pswitch_2
    const-string v2, "SUSPENDED"

    goto :goto_0

    .line 325
    :pswitch_3
    const-string v2, "CONNECTING"

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static GetMaxVolume(I)I
    .locals 1
    .parameter "Channel"

    .prologue
    .line 370
    invoke-static {}, Lanywheresoftware/b4a/phone/Phone;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public static GetNetworkOperatorName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 247
    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 248
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method public static GetNetworkType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 264
    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 265
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 266
    .local v0, i:I
    packed-switch v0, :pswitch_data_0

    .line 292
    const-string v2, "UNKNOWN"

    :goto_0
    return-object v2

    .line 268
    :pswitch_0
    const-string v2, "1xRTT"

    goto :goto_0

    .line 270
    :pswitch_1
    const-string v2, "CDMA"

    goto :goto_0

    .line 272
    :pswitch_2
    const-string v2, "EDGE"

    goto :goto_0

    .line 274
    :pswitch_3
    const-string v2, "EVDO_0"

    goto :goto_0

    .line 276
    :pswitch_4
    const-string v2, "EVDO_A"

    goto :goto_0

    .line 278
    :pswitch_5
    const-string v2, "EVDO_B"

    goto :goto_0

    .line 280
    :pswitch_6
    const-string v2, "GPRS"

    goto :goto_0

    .line 282
    :pswitch_7
    const-string v2, "HSDPA"

    goto :goto_0

    .line 284
    :pswitch_8
    const-string v2, "HSPA"

    goto :goto_0

    .line 286
    :pswitch_9
    const-string v2, "HSUPA"

    goto :goto_0

    .line 288
    :pswitch_a
    const-string v2, "IDEN"

    goto :goto_0

    .line 290
    :pswitch_b
    const-string v2, "UMTS"

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2
        :pswitch_b
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method public static GetPhoneType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 299
    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 300
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 301
    .local v0, i:I
    packed-switch v0, :pswitch_data_0

    .line 307
    const-string v2, "NONE"

    :goto_0
    return-object v2

    .line 303
    :pswitch_0
    const-string v2, "CDMA"

    goto :goto_0

    .line 305
    :pswitch_1
    const-string v2, "GSM"

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static GetRingerMode()I
    .locals 1

    .prologue
    .line 414
    invoke-static {}, Lanywheresoftware/b4a/phone/Phone;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    return v0
.end method

.method public static GetSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "Settings"

    .prologue
    .line 151
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 153
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    if-nez v0, :cond_0

    .line 155
    const-string v0, ""

    .line 157
    :cond_0
    return-object v0
.end method

.method public static GetSimOperator()Ljava/lang/String;
    .locals 4

    .prologue
    .line 238
    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 239
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method public static GetVolume(I)I
    .locals 1
    .parameter "Channel"

    .prologue
    .line 389
    invoke-static {}, Lanywheresoftware/b4a/phone/Phone;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public static HideKeyboard(Lanywheresoftware/b4a/objects/ActivityWrapper;)V
    .locals 3
    .parameter "Activity"

    .prologue
    .line 229
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 230
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/BALayout;

    invoke-virtual {p0}, Lanywheresoftware/b4a/BALayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 232
    return-void
.end method

.method public static IsAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static IsNetworkRoaming()Z
    .locals 3

    .prologue
    .line 255
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 256
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    return v1
.end method

.method public static LIBRARY_DOC()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public static SendBroadcastIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "Intent"

    .prologue
    .line 169
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 170
    return-void
.end method

.method public static SetMute(IZ)V
    .locals 1
    .parameter "Channel"
    .parameter "Mute"

    .prologue
    .line 397
    invoke-static {}, Lanywheresoftware/b4a/phone/Phone;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 398
    return-void
.end method

.method public static SetRingerMode(I)V
    .locals 1
    .parameter "Mode"

    .prologue
    .line 407
    invoke-static {}, Lanywheresoftware/b4a/phone/Phone;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 408
    return-void
.end method

.method public static SetScreenBrightness(Lanywheresoftware/b4a/BA;F)V
    .locals 2
    .parameter "ba"
    .parameter "Value"

    .prologue
    .line 194
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->activityBA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanywheresoftware/b4a/BA;

    iget-object v1, v1, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 195
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 196
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->activityBA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 197
    return-void
.end method

.method public static SetScreenOrientation(Lanywheresoftware/b4a/BA;I)V
    .locals 1
    .parameter "ba"
    .parameter "Orientation"

    .prologue
    .line 203
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->activityBA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/BA;

    iget-object v0, p0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 204
    return-void
.end method

.method public static SetVolume(IIZ)V
    .locals 2
    .parameter "Channel"
    .parameter "VolumeIndex"
    .parameter "ShowUI"

    .prologue
    .line 382
    invoke-static {}, Lanywheresoftware/b4a/phone/Phone;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p0, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 383
    return-void

    .line 382
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static Shell(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .locals 10
    .parameter "Command"
    .parameter "Args"
    .parameter "StdOut"
    .parameter "StdErr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const-string v9, "UTF8"

    .line 98
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_3

    .line 99
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 106
    .local v4, process:Ljava/lang/Process;
    :goto_0
    const/16 v5, 0x1000

    new-array v1, v5, [B

    .line 109
    .local v1, buffer:[B
    if-eqz p2, :cond_1

    .line 110
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 111
    .local v3, in:Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, count:I
    if-ne v2, v8, :cond_4

    .line 115
    .end local v2           #count:I
    .end local v3           #in:Ljava/io/InputStream;
    :cond_1
    if-eqz p3, :cond_2

    .line 116
    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    .line 117
    .restart local v3       #in:Ljava/io/InputStream;
    :goto_2
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .restart local v2       #count:I
    if-ne v2, v8, :cond_5

    .line 121
    .end local v2           #count:I
    .end local v3           #in:Ljava/io/InputStream;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 122
    invoke-virtual {v4}, Ljava/lang/Process;->exitValue()I

    move-result v5

    return v5

    .line 101
    .end local v1           #buffer:[B
    .end local v4           #process:Ljava/lang/Process;
    :cond_3
    array-length v5, p1

    add-int/lit8 v5, v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    .line 102
    .local v0, a:[Ljava/lang/String;
    aput-object p0, v0, v7

    .line 103
    const/4 v5, 0x1

    array-length v6, p1

    invoke-static {p1, v7, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .restart local v4       #process:Ljava/lang/Process;
    goto :goto_0

    .line 112
    .end local v0           #a:[Ljava/lang/String;
    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v3       #in:Ljava/io/InputStream;
    :cond_4
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF8"

    invoke-direct {v5, v1, v7, v2, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 118
    :cond_5
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF8"

    invoke-direct {v5, v1, v7, v2, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private static getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 417
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static getSdkVersion()I
    .locals 1

    .prologue
    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method


# virtual methods
.method public GetResourceDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "ResourceId"

    .prologue
    .line 134
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
