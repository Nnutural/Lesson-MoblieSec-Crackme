.class Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$1;
.super Ljava/lang/Object;
.source "InputDialog.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->loadFileList(Lanywheresoftware/b4a/objects/SimpleListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;

.field private final synthetic val$aldirs:Ljava/util/ArrayList;

.field private final synthetic val$alfiles:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;

    iput-object p2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$1;->val$aldirs:Ljava/util/ArrayList;

    iput-object p3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$1;->val$alfiles:Ljava/util/ArrayList;

    .line 1712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .parameter "dir"
    .parameter "filename"

    .prologue
    const/4 v4, 0x1

    .line 1716
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1717
    .local v1, sel:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1719
    iget-object v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$1;->val$aldirs:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    .line 1730
    :goto_0
    return v2

    .line 1722
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->ftypes:[Ljava/lang/String;
    invoke-static {v2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->access$0(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 1730
    const/4 v2, 0x0

    goto :goto_0

    .line 1724
    :cond_1
    iget-object v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->ftypes:[Ljava/lang/String;
    invoke-static {v2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->access$0(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->ftype:Ljava/lang/String;
    invoke-static {v2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;->access$1(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-ne v2, v3, :cond_3

    .line 1726
    :cond_2
    iget-object v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$1;->val$alfiles:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    .line 1727
    goto :goto_0

    .line 1722
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
