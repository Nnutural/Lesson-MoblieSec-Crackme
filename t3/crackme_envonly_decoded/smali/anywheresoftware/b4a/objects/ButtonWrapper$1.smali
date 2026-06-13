.class Lanywheresoftware/b4a/objects/ButtonWrapper$1;
.super Ljava/lang/Object;
.source "ButtonWrapper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/objects/ButtonWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private down:Z

.field final synthetic this$0:Lanywheresoftware/b4a/objects/ButtonWrapper;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;

.field private final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/objects/ButtonWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->this$0:Lanywheresoftware/b4a/objects/ButtonWrapper;

    iput-object p2, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iput-object p3, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$eventName:Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->down:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "_up"

    const-string v8, "_down"

    .line 41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 42
    iget-object v2, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v3, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->this$0:Lanywheresoftware/b4a/objects/ButtonWrapper;

    invoke-virtual {v3}, Lanywheresoftware/b4a/objects/ButtonWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_down"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iput-boolean v7, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->down:Z

    :cond_0
    :goto_0
    move v2, v6

    .line 72
    :goto_1
    return v2

    .line 45
    :cond_1
    iget-boolean v2, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->down:Z

    if-eqz v2, :cond_3

    .line 46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v7, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 47
    :cond_2
    iget-object v2, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v3, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->this$0:Lanywheresoftware/b4a/objects/ButtonWrapper;

    invoke-virtual {v3}, Lanywheresoftware/b4a/objects/ButtonWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_up"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iput-boolean v6, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->down:Z

    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    .line 53
    .local v1, states:[I
    if-nez v1, :cond_4

    move v2, v6

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v2, v1

    if-lt v0, v2, :cond_5

    .line 67
    iget-boolean v2, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->down:Z

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v3, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->this$0:Lanywheresoftware/b4a/objects/ButtonWrapper;

    invoke-virtual {v3}, Lanywheresoftware/b4a/objects/ButtonWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_up"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iput-boolean v6, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->down:Z

    goto :goto_0

    .line 56
    :cond_5
    aget v2, v1, v0

    const v3, 0x10100a7

    if-ne v2, v3, :cond_7

    .line 57
    iget-boolean v2, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->down:Z

    if-eqz v2, :cond_6

    move v2, v6

    .line 58
    goto :goto_1

    .line 60
    :cond_6
    iget-object v2, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v3, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->this$0:Lanywheresoftware/b4a/objects/ButtonWrapper;

    invoke-virtual {v3}, Lanywheresoftware/b4a/objects/ButtonWrapper;->getObject()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_down"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iput-boolean v7, p0, Lanywheresoftware/b4a/objects/ButtonWrapper$1;->down:Z

    move v2, v6

    .line 62
    goto/16 :goto_1

    .line 55
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
