.class Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog$1;
.super Ljava/lang/Object;
.source "InputDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;Landroid/graphics/Bitmap;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;

.field private final synthetic val$ctext:Landroid/widget/TextView;

.field private final synthetic val$dps05:I

.field private final synthetic val$rtext:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;

    iput-object p2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog$1;->val$rtext:Landroid/widget/TextView;

    iput-object p3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog$1;->val$ctext:Landroid/widget/TextView;

    iput p4, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog$1;->val$dps05:I

    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 718
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;

    #setter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->red:I
    invoke-static {v0, p2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->access$0(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;I)V

    .line 719
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog$1;->val$rtext:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog$1;->val$ctext:Landroid/widget/TextView;

    iget-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;

    const/16 v2, 0xff

    iget-object v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->red:I
    invoke-static {v3}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->access$1(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;)I

    move-result v3

    iget-object v4, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->green:I
    invoke-static {v4}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->access$2(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;)I

    move-result v4

    iget-object v5, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->blue:I
    invoke-static {v5}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->access$3(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iget v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog$1;->val$dps05:I

    int-to-float v3, v3

    #calls: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->getColor(IF)Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v1, v2, v3}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->access$4(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 721
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 713
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 708
    return-void
.end method
