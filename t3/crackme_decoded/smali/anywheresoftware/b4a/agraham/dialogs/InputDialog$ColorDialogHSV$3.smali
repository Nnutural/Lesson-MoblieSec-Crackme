.class Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV$3;
.super Ljava/lang/Object;
.source "InputDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;Landroid/graphics/Bitmap;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;

.field private final synthetic val$btext:Landroid/widget/TextView;

.field private final synthetic val$ctext:Landroid/widget/TextView;

.field private final synthetic val$dps05:I


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV$3;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;

    iput-object p2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV$3;->val$btext:Landroid/widget/TextView;

    iput-object p3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV$3;->val$ctext:Landroid/widget/TextView;

    iput p4, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV$3;->val$dps05:I

    .line 1055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v3, 0x2

    .line 1070
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV$3;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F
    invoke-static {v0}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->access$0(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;)[F

    move-result-object v0

    int-to-float v1, p2

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    aput v1, v0, v3

    .line 1071
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV$3;->val$btext:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV$3;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F
    invoke-static {v2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->access$0(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;)[F

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV$3;->val$ctext:Landroid/widget/TextView;

    iget-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV$3;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;

    iget-object v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV$3;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F
    invoke-static {v2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->access$0(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;)[F

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    iget v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV$3;->val$dps05:I

    int-to-float v3, v3

    #calls: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->getColor(IF)Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v1, v2, v3}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->access$1(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1073
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1065
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1060
    return-void
.end method
