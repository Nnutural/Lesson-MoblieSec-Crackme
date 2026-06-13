.class Lanywheresoftware/b4a/B4AThreadPool$MyThreadFactory;
.super Ljava/lang/Object;
.source "B4AThreadPool.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/B4AThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyThreadFactory"
.end annotation


# instance fields
.field private final defaultFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/B4AThreadPool$MyThreadFactory;->defaultFactory:Ljava/util/concurrent/ThreadFactory;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lanywheresoftware/b4a/B4AThreadPool$MyThreadFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lanywheresoftware/b4a/B4AThreadPool$MyThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .parameter "r"

    .prologue
    .line 32
    iget-object v1, p0, Lanywheresoftware/b4a/B4AThreadPool$MyThreadFactory;->defaultFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 33
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 34
    return-object v0
.end method
