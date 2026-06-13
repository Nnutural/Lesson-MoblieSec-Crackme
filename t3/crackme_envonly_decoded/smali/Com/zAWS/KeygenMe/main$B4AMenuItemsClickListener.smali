.class LCom/zAWS/KeygenMe/main$B4AMenuItemsClickListener;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCom/zAWS/KeygenMe/main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "B4AMenuItemsClickListener"
.end annotation


# instance fields
.field private final eventName:Ljava/lang/String;

.field final synthetic this$0:LCom/zAWS/KeygenMe/main;


# direct methods
.method public constructor <init>(LCom/zAWS/KeygenMe/main;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, LCom/zAWS/KeygenMe/main$B4AMenuItemsClickListener;->this$0:LCom/zAWS/KeygenMe/main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, LCom/zAWS/KeygenMe/main$B4AMenuItemsClickListener;->eventName:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    .line 117
    sget-object v0, LCom/zAWS/KeygenMe/main;->processBA:Lanywheresoftware/b4a/BA;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, LCom/zAWS/KeygenMe/main$B4AMenuItemsClickListener;->eventName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_click"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const/4 v0, 0x1

    return v0
.end method
