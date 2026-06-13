.class Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog$1;
.super Ljava/lang/Object;
.source "InputDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;Landroid/graphics/Bitmap;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;

    .line 1459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1464
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1465
    .local v0, i:I
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->showsign:Z
    invoke-static {v1}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->access$0(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numdigits:I
    invoke-static {v1}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->access$1(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 1467
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->figures:[Landroid/widget/TextView;
    invoke-static {v1}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->access$2(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    const-string v2, "+"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1470
    :cond_1
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numbers:[I
    invoke-static {v1}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->access$3(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)[I

    move-result-object v1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 1471
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numbers:[I
    invoke-static {v1}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->access$3(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)[I

    move-result-object v1

    aget v1, v1, v0

    const/16 v2, 0x9

    if-le v1, v2, :cond_2

    .line 1472
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numbers:[I
    invoke-static {v1}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->access$3(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)[I

    move-result-object v1

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 1473
    :cond_2
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->figures:[Landroid/widget/TextView;
    invoke-static {v1}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->access$2(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numbers:[I
    invoke-static {v2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->access$3(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)[I

    move-result-object v2

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1474
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->decimal:I
    invoke-static {v1}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->access$4(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->decimal:I
    invoke-static {v1}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->access$4(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1475
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->figures:[Landroid/widget/TextView;
    invoke-static {v1}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->access$2(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numbers:[I
    invoke-static {v3}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->access$3(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog$1;->this$1:Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;

    #getter for: Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->decimalchar:C
    invoke-static {v3}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->access$5(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
