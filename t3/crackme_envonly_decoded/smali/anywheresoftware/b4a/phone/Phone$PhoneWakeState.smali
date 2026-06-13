.class public Lanywheresoftware/b4a/phone/Phone$PhoneWakeState;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "PhoneWakeState"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/phone/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneWakeState"
.end annotation


# static fields
.field private static partialLock:Landroid/os/PowerManager$WakeLock;

.field private static wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static KeepAlive(Lanywheresoftware/b4a/BA;Z)V
    .locals 3
    .parameter "ba"
    .parameter "BrightScreen"

    .prologue
    .line 489
    sget-object v1, Lanywheresoftware/b4a/phone/Phone$PhoneWakeState;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    sget-object v1, Lanywheresoftware/b4a/phone/Phone$PhoneWakeState;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    const-string v1, "WakeLock already held."

    invoke-static {v1}, Lanywheresoftware/b4a/keywords/Common;->Log(Ljava/lang/String;)V

    .line 500
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    .line 494
    const-string v2, "power"

    .line 493
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 495
    .local v0, pm:Landroid/os/PowerManager;
    if-eqz p1, :cond_1

    const/16 v1, 0xa

    .line 497
    :goto_1
    const/high16 v2, 0x1000

    or-int/2addr v1, v2

    .line 498
    const-string v2, "B4A"

    .line 495
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lanywheresoftware/b4a/phone/Phone$PhoneWakeState;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 499
    sget-object v1, Lanywheresoftware/b4a/phone/Phone$PhoneWakeState;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 496
    :cond_1
    const/4 v1, 0x6

    goto :goto_1
.end method

.method public static PartialLock(Lanywheresoftware/b4a/BA;)V
    .locals 3
    .parameter "ba"

    .prologue
    .line 506
    sget-object v1, Lanywheresoftware/b4a/phone/Phone$PhoneWakeState;->partialLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    sget-object v1, Lanywheresoftware/b4a/phone/Phone$PhoneWakeState;->partialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    const-string v1, "Partial wakeLock already held."

    invoke-static {v1}, Lanywheresoftware/b4a/keywords/Common;->Log(Ljava/lang/String;)V

    .line 514
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    .line 511
    const-string v2, "power"

    .line 510
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 512
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "B4A-Partial"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lanywheresoftware/b4a/phone/Phone$PhoneWakeState;->partialLock:Landroid/os/PowerManager$WakeLock;

    .line 513
    sget-object v1, Lanywheresoftware/b4a/phone/Phone$PhoneWakeState;->partialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method public static ReleaseKeepAlive()V
    .locals 1

    .prologue
    .line 519
    sget-object v0, Lanywheresoftware/b4a/phone/Phone$PhoneWakeState;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lanywheresoftware/b4a/phone/Phone$PhoneWakeState;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 520
    :cond_0
    const-string v0, "No wakelock."

    invoke-static {v0}, Lanywheresoftware/b4a/keywords/Common;->Log(Ljava/lang/String;)V

    .line 524
    :goto_0
    return-void

    .line 523
    :cond_1
    sget-object v0, Lanywheresoftware/b4a/phone/Phone$PhoneWakeState;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public static ReleasePartialLock()V
    .locals 1

    .prologue
    .line 529
    sget-object v0, Lanywheresoftware/b4a/phone/Phone$PhoneWakeState;->partialLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lanywheresoftware/b4a/phone/Phone$PhoneWakeState;->partialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    :cond_0
    const-string v0, "No partial wakelock."

    invoke-static {v0}, Lanywheresoftware/b4a/keywords/Common;->Log(Ljava/lang/String;)V

    .line 534
    :goto_0
    return-void

    .line 533
    :cond_1
    sget-object v0, Lanywheresoftware/b4a/phone/Phone$PhoneWakeState;->partialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method
