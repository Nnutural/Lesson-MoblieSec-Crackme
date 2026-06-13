.class public Lanywheresoftware/b4a/B4AThreadPool;
.super Ljava/lang/Object;
.source "B4AThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/B4AThreadPool$MyThreadFactory;
    }
.end annotation


# instance fields
.field private futures:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/Future",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private pool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/B4AThreadPool;->futures:Ljava/util/WeakHashMap;

    .line 22
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/16 v2, 0x14

    .line 23
    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 22
    iput-object v0, p0, Lanywheresoftware/b4a/B4AThreadPool;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 25
    iget-object v0, p0, Lanywheresoftware/b4a/B4AThreadPool;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lanywheresoftware/b4a/B4AThreadPool$MyThreadFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lanywheresoftware/b4a/B4AThreadPool$MyThreadFactory;-><init>(Lanywheresoftware/b4a/B4AThreadPool$MyThreadFactory;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 26
    return-void
.end method


# virtual methods
.method public isRunning(Ljava/lang/Object;I)Z
    .locals 4
    .parameter "container"
    .parameter "taskId"

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v2, p0, Lanywheresoftware/b4a/B4AThreadPool;->futures:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 56
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/concurrent/Future<*>;>;"
    if-nez v1, :cond_0

    move v2, v3

    .line 61
    :goto_0
    return v2

    .line 58
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 59
    .local v0, f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    if-nez v0, :cond_1

    move v2, v3

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public markTaskAsFinished(Ljava/lang/Object;I)V
    .locals 2
    .parameter "container"
    .parameter "taskId"

    .prologue
    .line 64
    iget-object v1, p0, Lanywheresoftware/b4a/B4AThreadPool;->futures:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 65
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/concurrent/Future<*>;>;"
    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;I)Ljava/util/concurrent/Future;
    .locals 5
    .parameter "task"
    .parameter "container"
    .parameter "taskId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v4, p0, Lanywheresoftware/b4a/B4AThreadPool;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 40
    .local v0, f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    iget-object v4, p0, Lanywheresoftware/b4a/B4AThreadPool;->futures:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 41
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/concurrent/Future<*>;>;"
    if-nez v3, :cond_0

    .line 42
    new-instance v3, Ljava/util/HashMap;

    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/concurrent/Future<*>;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 43
    .restart local v3       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/concurrent/Future<*>;>;"
    iget-object v4, p0, Lanywheresoftware/b4a/B4AThreadPool;->futures:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/Future<*>;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 51
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-object v0

    .line 47
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 48
    .local v1, fit:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method
