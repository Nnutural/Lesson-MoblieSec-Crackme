.class public Lanywheresoftware/b4a/objects/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Timer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/Timer$ParentReference;,
        Lanywheresoftware/b4a/objects/Timer$TickTack;
    }
.end annotation


# instance fields
.field private ba:Lanywheresoftware/b4a/BA;

.field private enabled:Z

.field private eventName:Ljava/lang/String;

.field private interval:J

.field private myRef:Lanywheresoftware/b4a/objects/Timer$ParentReference;

.field private relevantTimer:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lanywheresoftware/b4a/objects/Timer;->enabled:Z

    .line 24
    iput v0, p0, Lanywheresoftware/b4a/objects/Timer;->relevantTimer:I

    .line 27
    new-instance v0, Lanywheresoftware/b4a/objects/Timer$ParentReference;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/Timer$ParentReference;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/Timer;->myRef:Lanywheresoftware/b4a/objects/Timer$ParentReference;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lanywheresoftware/b4a/objects/Timer;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lanywheresoftware/b4a/objects/Timer;->relevantTimer:I

    return v0
.end method

.method static synthetic access$1(Lanywheresoftware/b4a/objects/Timer;)J
    .locals 2
    .parameter

    .prologue
    .line 22
    iget-wide v0, p0, Lanywheresoftware/b4a/objects/Timer;->interval:J

    return-wide v0
.end method

.method static synthetic access$2(Lanywheresoftware/b4a/objects/Timer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lanywheresoftware/b4a/objects/Timer;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method private startTicking()V
    .locals 4

    .prologue
    .line 67
    new-instance v0, Lanywheresoftware/b4a/objects/Timer$TickTack;

    iget v1, p0, Lanywheresoftware/b4a/objects/Timer;->relevantTimer:I

    iget-object v2, p0, Lanywheresoftware/b4a/objects/Timer;->myRef:Lanywheresoftware/b4a/objects/Timer$ParentReference;

    iget-object v3, p0, Lanywheresoftware/b4a/objects/Timer;->ba:Lanywheresoftware/b4a/BA;

    invoke-direct {v0, v1, v2, v3}, Lanywheresoftware/b4a/objects/Timer$TickTack;-><init>(ILanywheresoftware/b4a/objects/Timer$ParentReference;Lanywheresoftware/b4a/BA;)V

    .line 68
    .local v0, tt:Lanywheresoftware/b4a/objects/Timer$TickTack;
    sget-object v1, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    iget-wide v2, p0, Lanywheresoftware/b4a/objects/Timer;->interval:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    return-void
.end method

.method private stopTicking()V
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lanywheresoftware/b4a/objects/Timer;->relevantTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lanywheresoftware/b4a/objects/Timer;->relevantTimer:I

    .line 112
    return-void
.end method


# virtual methods
.method public Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;J)V
    .locals 2
    .parameter "ba"
    .parameter "EventName"
    .parameter "Interval"

    .prologue
    .line 41
    iput-wide p3, p0, Lanywheresoftware/b4a/objects/Timer;->interval:J

    .line 42
    iput-object p1, p0, Lanywheresoftware/b4a/objects/Timer;->ba:Lanywheresoftware/b4a/BA;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_tick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/objects/Timer;->eventName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public getEnabled()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lanywheresoftware/b4a/objects/Timer;->enabled:Z

    return v0
.end method

.method public getInterval()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lanywheresoftware/b4a/objects/Timer;->interval:J

    return-wide v0
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "Enabled"

    .prologue
    .line 72
    iget-boolean v0, p0, Lanywheresoftware/b4a/objects/Timer;->enabled:Z

    if-ne p1, v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 74
    :cond_0
    if-eqz p1, :cond_2

    .line 75
    iget-object v0, p0, Lanywheresoftware/b4a/objects/Timer;->myRef:Lanywheresoftware/b4a/objects/Timer$ParentReference;

    iput-object p0, v0, Lanywheresoftware/b4a/objects/Timer$ParentReference;->timer:Lanywheresoftware/b4a/objects/Timer;

    .line 76
    iget-wide v0, p0, Lanywheresoftware/b4a/objects/Timer;->interval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interval must be larger than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/Timer;->startTicking()V

    .line 84
    :goto_1
    iput-boolean p1, p0, Lanywheresoftware/b4a/objects/Timer;->enabled:Z

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lanywheresoftware/b4a/objects/Timer;->myRef:Lanywheresoftware/b4a/objects/Timer$ParentReference;

    const/4 v1, 0x0

    iput-object v1, v0, Lanywheresoftware/b4a/objects/Timer$ParentReference;->timer:Lanywheresoftware/b4a/objects/Timer;

    .line 82
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/Timer;->stopTicking()V

    goto :goto_1
.end method

.method public setInterval(J)V
    .locals 2
    .parameter "Interval"

    .prologue
    .line 55
    iget-wide v0, p0, Lanywheresoftware/b4a/objects/Timer;->interval:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iput-wide p1, p0, Lanywheresoftware/b4a/objects/Timer;->interval:J

    .line 58
    iget-boolean v0, p0, Lanywheresoftware/b4a/objects/Timer;->enabled:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/Timer;->stopTicking()V

    .line 60
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/Timer;->startTicking()V

    goto :goto_0
.end method
