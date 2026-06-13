.class Lanywheresoftware/b4a/BA$1;
.super Ljava/lang/Object;
.source "BA.java"

# interfaces
.implements Lanywheresoftware/b4a/BA$B4ARunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/BA;->raiseEventFromDifferentThread(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/BA;

.field private final synthetic val$TaskId:I

.field private final synthetic val$container:Ljava/lang/Object;

.field private final synthetic val$event:Ljava/lang/String;

.field private final synthetic val$params:[Ljava/lang/Object;

.field private final synthetic val$sender:Ljava/lang/Object;

.field private final synthetic val$throwErrorIfMissingSub:Z


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;Z[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/BA$1;->this$0:Lanywheresoftware/b4a/BA;

    iput-object p2, p0, Lanywheresoftware/b4a/BA$1;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lanywheresoftware/b4a/BA$1;->val$container:Ljava/lang/Object;

    iput p4, p0, Lanywheresoftware/b4a/BA$1;->val$TaskId:I

    iput-object p5, p0, Lanywheresoftware/b4a/BA$1;->val$sender:Ljava/lang/Object;

    iput-boolean p6, p0, Lanywheresoftware/b4a/BA$1;->val$throwErrorIfMissingSub:Z

    iput-object p7, p0, Lanywheresoftware/b4a/BA$1;->val$params:[Ljava/lang/Object;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v2, "B4A"

    .line 183
    iget-object v0, p0, Lanywheresoftware/b4a/BA$1;->this$0:Lanywheresoftware/b4a/BA;

    #getter for: Lanywheresoftware/b4a/BA;->ignoreEventsFromOtherThreadsDuringMsgboxError:Z
    invoke-static {v0}, Lanywheresoftware/b4a/BA;->access$0(Lanywheresoftware/b4a/BA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "B4A"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lanywheresoftware/b4a/BA$1;->val$event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", was ignored."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/BA$1;->this$0:Lanywheresoftware/b4a/BA;

    iget-boolean v0, v0, Lanywheresoftware/b4a/BA;->isService:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lanywheresoftware/b4a/BA$1;->this$0:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->activityBA:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 188
    const-string v0, "B4A"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reposting event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lanywheresoftware/b4a/BA$1;->val$event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v0, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lanywheresoftware/b4a/BA$1;->this$0:Lanywheresoftware/b4a/BA;

    #getter for: Lanywheresoftware/b4a/BA;->isActivityPaused:Z
    invoke-static {v0}, Lanywheresoftware/b4a/BA;->access$1(Lanywheresoftware/b4a/BA;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    iget-object v0, p0, Lanywheresoftware/b4a/BA$1;->this$0:Lanywheresoftware/b4a/BA;

    iget-boolean v0, v0, Lanywheresoftware/b4a/BA;->isService:Z

    if-eqz v0, :cond_2

    .line 193
    const-string v0, "B4A"

    const-string v0, "Ignoring event as service was destroyed."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_2
    const-string v0, "B4A"

    const-string v0, "sending message to waiting queue."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lanywheresoftware/b4a/BA$1;->this$0:Lanywheresoftware/b4a/BA;

    #getter for: Lanywheresoftware/b4a/BA;->messagesDuringPaused:Ljava/util/ArrayList;
    invoke-static {v0}, Lanywheresoftware/b4a/BA;->access$2(Lanywheresoftware/b4a/BA;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    .line 198
    iget-object v0, p0, Lanywheresoftware/b4a/BA$1;->this$0:Lanywheresoftware/b4a/BA;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lanywheresoftware/b4a/BA;->messagesDuringPaused:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lanywheresoftware/b4a/BA;->access$3(Lanywheresoftware/b4a/BA;Ljava/util/ArrayList;)V

    .line 199
    :cond_3
    iget-object v0, p0, Lanywheresoftware/b4a/BA$1;->this$0:Lanywheresoftware/b4a/BA;

    #getter for: Lanywheresoftware/b4a/BA;->messagesDuringPaused:Ljava/util/ArrayList;
    invoke-static {v0}, Lanywheresoftware/b4a/BA;->access$2(Lanywheresoftware/b4a/BA;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_4

    .line 200
    const-string v0, "B4A"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring event (too many queued events: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lanywheresoftware/b4a/BA$1;->val$event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 203
    :cond_4
    iget-object v0, p0, Lanywheresoftware/b4a/BA$1;->this$0:Lanywheresoftware/b4a/BA;

    #getter for: Lanywheresoftware/b4a/BA;->messagesDuringPaused:Ljava/util/ArrayList;
    invoke-static {v0}, Lanywheresoftware/b4a/BA;->access$2(Lanywheresoftware/b4a/BA;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 208
    :cond_5
    iget-object v0, p0, Lanywheresoftware/b4a/BA$1;->val$container:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 209
    iget-object v0, p0, Lanywheresoftware/b4a/BA$1;->val$container:Ljava/lang/Object;

    iget v1, p0, Lanywheresoftware/b4a/BA$1;->val$TaskId:I

    #calls: Lanywheresoftware/b4a/BA;->markTaskAsFinish(Ljava/lang/Object;I)V
    invoke-static {v0, v1}, Lanywheresoftware/b4a/BA;->access$4(Ljava/lang/Object;I)V

    .line 210
    :cond_6
    iget-object v0, p0, Lanywheresoftware/b4a/BA$1;->this$0:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/BA$1;->val$sender:Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lanywheresoftware/b4a/BA$1;->val$event:Ljava/lang/String;

    iget-boolean v4, p0, Lanywheresoftware/b4a/BA$1;->val$throwErrorIfMissingSub:Z

    iget-object v5, p0, Lanywheresoftware/b4a/BA$1;->val$params:[Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
