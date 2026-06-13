.class Lanywheresoftware/b4a/objects/ListViewWrapper$1;
.super Ljava/lang/Object;
.source "ListViewWrapper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/objects/ListViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/objects/ListViewWrapper;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;

.field private final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/objects/ListViewWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$1;->this$0:Lanywheresoftware/b4a/objects/ListViewWrapper;

    iput-object p2, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iput-object p3, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$1;->val$eventName:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$1;->this$0:Lanywheresoftware/b4a/objects/ListViewWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_itemclick"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 56
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$1;->this$0:Lanywheresoftware/b4a/objects/ListViewWrapper;

    invoke-virtual {v6}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v6, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    invoke-virtual {v6, p3}, Lanywheresoftware/b4a/objects/SimpleListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .line 55
    aput-object v6, v5, v4

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method
