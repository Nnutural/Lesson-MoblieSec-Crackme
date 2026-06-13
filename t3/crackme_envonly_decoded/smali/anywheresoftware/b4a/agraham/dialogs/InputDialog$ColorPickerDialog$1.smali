.class Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "InputDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;Landroid/graphics/Bitmap;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;

.field private final synthetic val$ctext:Landroid/widget/TextView;

.field private final synthetic val$dps05:I


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;Landroid/widget/TextView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;

    iput-object p2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog$1;->val$ctext:Landroid/widget/TextView;

    iput p3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog$1;->val$dps05:I

    .line 1272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1277
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #setter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->chosen:I
    invoke-static {v1, v0}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->access$0(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;I)V

    .line 1278
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog$1;->val$ctext:Landroid/widget/TextView;

    iget-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;

    iget-object v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->chosen:I
    invoke-static {v2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->access$1(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;)I

    move-result v2

    iget v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog$1;->val$dps05:I

    int-to-float v3, v3

    #calls: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->getColor(IF)Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v1, v2, v3}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->access$2(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1279
    return-void
.end method
