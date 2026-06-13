.class public Lanywheresoftware/b4a/phone/Phone$LogCat;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "LogCat"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/phone/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogCat"
.end annotation


# static fields
.field private static lc:Ljava/lang/Process;

.field private static logcatReader:Ljava/lang/Thread;

.field private static volatile logcatStream:Ljava/io/InputStream;

.field private static volatile logcatWorking:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogCatStart(Lanywheresoftware/b4a/BA;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "ba"
    .parameter "Args"
    .parameter "EventName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 708
    invoke-static {}, Lanywheresoftware/b4a/phone/Phone$LogCat;->LogCatStop()V

    .line 709
    sget-object v4, Lanywheresoftware/b4a/phone/Phone$LogCat;->logcatReader:Ljava/lang/Thread;

    if-eqz v4, :cond_0

    .line 710
    const/16 v2, 0xa

    .line 711
    .local v2, wait:I
    :goto_0
    sget-object v4, Lanywheresoftware/b4a/phone/Phone$LogCat;->logcatReader:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v2, -0x1

    .end local v2           #wait:I
    .local v3, wait:I
    if-gtz v2, :cond_1

    .line 716
    .end local v3           #wait:I
    :cond_0
    array-length v4, p1

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    .line 717
    .local v0, a:[Ljava/lang/String;
    const-string v4, "/system/bin/logcat"

    aput-object v4, v0, v6

    .line 718
    array-length v4, p1

    invoke-static {p1, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 719
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_logcatdata"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, ev:Ljava/lang/String;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lanywheresoftware/b4a/phone/Phone$LogCat$1;

    invoke-direct {v5, v0, p0, v1}, Lanywheresoftware/b4a/phone/Phone$LogCat$1;-><init>([Ljava/lang/String;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v4, Lanywheresoftware/b4a/phone/Phone$LogCat;->logcatReader:Ljava/lang/Thread;

    .line 752
    sget-object v4, Lanywheresoftware/b4a/phone/Phone$LogCat;->logcatReader:Ljava/lang/Thread;

    invoke-virtual {v4, v7}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 753
    sget-object v4, Lanywheresoftware/b4a/phone/Phone$LogCat;->logcatReader:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 754
    return-void

    .line 712
    .end local v0           #a:[Ljava/lang/String;
    .end local v1           #ev:Ljava/lang/String;
    .restart local v3       #wait:I
    :cond_1
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 713
    sget-object v4, Lanywheresoftware/b4a/phone/Phone$LogCat;->logcatReader:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    move v2, v3

    .end local v3           #wait:I
    .restart local v2       #wait:I
    goto :goto_0
.end method

.method public static LogCatStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 759
    const/4 v0, 0x0

    sput-boolean v0, Lanywheresoftware/b4a/phone/Phone$LogCat;->logcatWorking:Z

    .line 760
    sget-object v0, Lanywheresoftware/b4a/phone/Phone$LogCat;->logcatStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 761
    sget-object v0, Lanywheresoftware/b4a/phone/Phone$LogCat;->logcatStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 762
    :cond_0
    sget-object v0, Lanywheresoftware/b4a/phone/Phone$LogCat;->lc:Ljava/lang/Process;

    if-eqz v0, :cond_1

    .line 763
    sget-object v0, Lanywheresoftware/b4a/phone/Phone$LogCat;->lc:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 764
    :cond_1
    return-void
.end method

.method static synthetic access$0(Ljava/lang/Process;)V
    .locals 0
    .parameter

    .prologue
    .line 701
    sput-object p0, Lanywheresoftware/b4a/phone/Phone$LogCat;->lc:Ljava/lang/Process;

    return-void
.end method

.method static synthetic access$1()Ljava/lang/Process;
    .locals 1

    .prologue
    .line 701
    sget-object v0, Lanywheresoftware/b4a/phone/Phone$LogCat;->lc:Ljava/lang/Process;

    return-object v0
.end method

.method static synthetic access$2(Ljava/io/InputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 700
    sput-object p0, Lanywheresoftware/b4a/phone/Phone$LogCat;->logcatStream:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$3()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 700
    sget-object v0, Lanywheresoftware/b4a/phone/Phone$LogCat;->logcatStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$4(Z)V
    .locals 0
    .parameter

    .prologue
    .line 699
    sput-boolean p0, Lanywheresoftware/b4a/phone/Phone$LogCat;->logcatWorking:Z

    return-void
.end method

.method static synthetic access$5()Z
    .locals 1

    .prologue
    .line 699
    sget-boolean v0, Lanywheresoftware/b4a/phone/Phone$LogCat;->logcatWorking:Z

    return v0
.end method
