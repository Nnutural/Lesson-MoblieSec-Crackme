.class Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$2;
.super Ljava/lang/Object;
.source "InputDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;Landroid/graphics/Bitmap;)I
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
.field final synthetic this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;

.field private final synthetic val$adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

.field private final synthetic val$edit:Landroid/widget/EditText;

.field private final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;Lanywheresoftware/b4a/objects/SimpleListAdapter;Landroid/widget/EditText;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$2;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;

    iput-object p2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$2;->val$adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    iput-object p3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$2;->val$edit:Landroid/widget/EditText;

    iput-object p4, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$2;->val$list:Landroid/widget/ListView;

    .line 1806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const-string v5, " "

    .line 1810
    iget-object v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$2;->val$adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    invoke-virtual {v3, p3}, Lanywheresoftware/b4a/objects/SimpleListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1811
    .local v0, chosenfile:Ljava/lang/String;
    const-string v3, ".."

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1816
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$2;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->filepath:Ljava/io/File;
    invoke-static {v3}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->access$2(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1817
    .local v2, sel:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1819
    iget-object v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$2;->val$edit:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1820
    iget-object v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$2;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;

    #setter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->filepath:Ljava/io/File;
    invoke-static {v3, v2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->access$3(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;Ljava/io/File;)V

    .line 1823
    :try_start_0
    iget-object v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$2;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;

    iget-object v4, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$2;->val$adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    #calls: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->loadFileList(Lanywheresoftware/b4a/objects/SimpleListAdapter;)V
    invoke-static {v3, v4}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->access$4(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;Lanywheresoftware/b4a/objects/SimpleListAdapter;)V

    .line 1824
    iget-object v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$2;->val$list:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1841
    :cond_0
    :goto_0
    return-void

    .line 1825
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1827
    .local v1, e:Ljava/lang/RuntimeException;
    instance-of v3, v1, Ljava/util/NoSuchElementException;

    if-eqz v3, :cond_1

    .line 1829
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$2;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->filepath:Ljava/io/File;
    invoke-static {v4}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->access$2(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lanywheresoftware/b4a/keywords/Common;->Log(Ljava/lang/String;)V

    .line 1831
    :cond_1
    throw v1

    .line 1835
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_2
    iget-object v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$2;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->fileseparator:Ljava/lang/String;
    invoke-static {v3}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->access$5(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1837
    iget-object v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$2;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1838
    iget-object v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$2;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;

    #setter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->chosenname:Ljava/lang/String;
    invoke-static {v3, v0}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->access$6(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;Ljava/lang/String;)V

    goto :goto_0
.end method
