.class LCom/zAWS/KeygenMe/main$WaitForLayout;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCom/zAWS/KeygenMe/main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WaitForLayout"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LCom/zAWS/KeygenMe/main$1;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, LCom/zAWS/KeygenMe/main$WaitForLayout;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    sget-boolean v0, LCom/zAWS/KeygenMe/main;->afterFirstLayout:Z

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 65
    :cond_0
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->layout:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v0}, Lanywheresoftware/b4a/BALayout;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 66
    sget-object v0, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 69
    :cond_1
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->layout:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v0}, Lanywheresoftware/b4a/BALayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v1, v1, LCom/zAWS/KeygenMe/main;->layout:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v1}, Lanywheresoftware/b4a/BALayout;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->layout:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v0}, Lanywheresoftware/b4a/BALayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v1, v1, LCom/zAWS/KeygenMe/main;->layout:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v1}, Lanywheresoftware/b4a/BALayout;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, LCom/zAWS/KeygenMe/main;->afterFirstLayout:Z

    .line 72
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    #calls: LCom/zAWS/KeygenMe/main;->afterFirstLayout()V
    invoke-static {v0}, LCom/zAWS/KeygenMe/main;->access$100(LCom/zAWS/KeygenMe/main;)V

    goto :goto_0
.end method
