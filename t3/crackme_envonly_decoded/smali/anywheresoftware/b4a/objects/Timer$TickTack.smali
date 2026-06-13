.class Lanywheresoftware/b4a/objects/Timer$TickTack;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TickTack"
.end annotation


# instance fields
.field private final ba:Lanywheresoftware/b4a/BA;

.field private final currentTimer:I

.field private final parent:Lanywheresoftware/b4a/objects/Timer$ParentReference;


# direct methods
.method public constructor <init>(ILanywheresoftware/b4a/objects/Timer$ParentReference;Lanywheresoftware/b4a/BA;)V
    .locals 0
    .parameter "currentTimer"
    .parameter "parent"
    .parameter "ba"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Lanywheresoftware/b4a/objects/Timer$TickTack;->currentTimer:I

    .line 93
    iput-object p2, p0, Lanywheresoftware/b4a/objects/Timer$TickTack;->parent:Lanywheresoftware/b4a/objects/Timer$ParentReference;

    .line 94
    iput-object p3, p0, Lanywheresoftware/b4a/objects/Timer$TickTack;->ba:Lanywheresoftware/b4a/BA;

    .line 95
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lanywheresoftware/b4a/objects/Timer$TickTack;->parent:Lanywheresoftware/b4a/objects/Timer$ParentReference;

    iget-object v1, v0, Lanywheresoftware/b4a/objects/Timer$ParentReference;->timer:Lanywheresoftware/b4a/objects/Timer;

    .line 99
    .local v1, parentTimer:Lanywheresoftware/b4a/objects/Timer;
    if-eqz v1, :cond_0

    iget v0, p0, Lanywheresoftware/b4a/objects/Timer$TickTack;->currentTimer:I

    #getter for: Lanywheresoftware/b4a/objects/Timer;->relevantTimer:I
    invoke-static {v1}, Lanywheresoftware/b4a/objects/Timer;->access$0(Lanywheresoftware/b4a/objects/Timer;)I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    sget-object v0, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    #getter for: Lanywheresoftware/b4a/objects/Timer;->interval:J
    invoke-static {v1}, Lanywheresoftware/b4a/objects/Timer;->access$1(Lanywheresoftware/b4a/objects/Timer;)J

    move-result-wide v3

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    iget-object v0, p0, Lanywheresoftware/b4a/objects/Timer$TickTack;->ba:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0}, Lanywheresoftware/b4a/BA;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lanywheresoftware/b4a/Msgbox;->msgboxIsVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lanywheresoftware/b4a/objects/Timer$TickTack;->ba:Lanywheresoftware/b4a/BA;

    #getter for: Lanywheresoftware/b4a/objects/Timer;->eventName:Ljava/lang/String;
    invoke-static {v1}, Lanywheresoftware/b4a/objects/Timer;->access$2(Lanywheresoftware/b4a/objects/Timer;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
