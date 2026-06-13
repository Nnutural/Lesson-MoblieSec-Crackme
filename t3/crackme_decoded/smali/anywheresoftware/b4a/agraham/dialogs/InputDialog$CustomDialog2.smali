.class public Lanywheresoftware/b4a/agraham/dialogs/InputDialog$CustomDialog2;
.super Ljava/lang/Object;
.source "InputDialog.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "CustomDialog2"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/agraham/dialogs/InputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomDialog2"
.end annotation


# instance fields
.field private cview:Landroid/view/View;

.field private response:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AddView(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2132
    iput-object p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$CustomDialog2;->cview:Landroid/view/View;

    .line 2133
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2134
    .local v0, cparams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$CustomDialog2;->cview:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2135
    return-void
.end method

.method public Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;Landroid/graphics/Bitmap;)I
    .locals 8
    .parameter "Title"
    .parameter "Positive"
    .parameter "Cancel"
    .parameter "Negative"
    .parameter "ba"
    .parameter "icon"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 2082
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p5, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2084
    .local v0, ad:Landroid/app/AlertDialog;
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p5, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2085
    .local v5, view:Landroid/widget/LinearLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    .line 2086
    const/4 v7, -0x1

    .line 2085
    invoke-direct {v4, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2087
    .local v4, lparams:Landroid/view/ViewGroup$LayoutParams;
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2088
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2090
    iget-object v6, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$CustomDialog2;->cview:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2092
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 2093
    new-instance v2, Lanywheresoftware/b4a/Msgbox$DialogResponse;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lanywheresoftware/b4a/Msgbox$DialogResponse;-><init>(Z)V

    .line 2094
    .local v2, dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2095
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 2096
    const/4 v6, -0x1

    invoke-virtual {v0, v6, p2, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2097
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 2098
    const/4 v6, -0x2

    invoke-virtual {v0, v6, p4, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2099
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 2100
    const/4 v6, -0x3

    invoke-virtual {v0, v6, p3, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2101
    :cond_2
    if-eqz p6, :cond_3

    .line 2103
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2104
    .local v1, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2106
    .end local v1           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    const/4 v6, 0x0

    invoke-static {v0, v6}, Lanywheresoftware/b4a/Msgbox;->msgbox(Landroid/app/AlertDialog;Z)V

    .line 2107
    iget-object v6, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$CustomDialog2;->cview:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2108
    iget v6, v2, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    iput v6, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$CustomDialog2;->response:I

    .line 2110
    invoke-static {}, Lanywheresoftware/b4a/Msgbox;->sendCloseMyLoopMessage()V

    .line 2111
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lanywheresoftware/b4a/Msgbox;->waitForMessage(ZZ)V

    .line 2112
    sget-object v6, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 2113
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v6, p5, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v6}, Lanywheresoftware/b4a/BALayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2114
    iget v6, v2, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    return v6
.end method

.method public getResponse()I
    .locals 1

    .prologue
    .line 2142
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$CustomDialog2;->response:I

    return v0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 2122
    const-wide v0, 0x400599999999999aL

    return-wide v0
.end method
