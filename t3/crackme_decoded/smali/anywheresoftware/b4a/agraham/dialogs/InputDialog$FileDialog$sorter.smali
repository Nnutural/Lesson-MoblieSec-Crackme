.class Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$sorter;
.super Ljava/lang/Object;
.source "InputDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;


# direct methods
.method private constructor <init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1694
    iput-object p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$sorter;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$sorter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1694
    invoke-direct {p0, p1}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$sorter;-><init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog$sorter;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1699
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
