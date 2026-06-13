.class public Lanywheresoftware/b4a/agraham/dialogs/InputDialog;
.super Ljava/lang/Object;
.source "InputDialog.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$Author;
    value = "Andrew Graham"
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "InputDialog"
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$Version;
    value = 2.7f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;,
        Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;,
        Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;,
        Lanywheresoftware/b4a/agraham/dialogs/InputDialog$CustomDialog;,
        Lanywheresoftware/b4a/agraham/dialogs/InputDialog$CustomDialog2;,
        Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;,
        Lanywheresoftware/b4a/agraham/dialogs/InputDialog$FileDialog;,
        Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;,
        Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;
    }
.end annotation


# static fields
.field public static final INPUT_TYPE_DECIMAL_NUMBERS:I = 0x3002

.field public static final INPUT_TYPE_NONE:I = 0x0

.field public static final INPUT_TYPE_NUMBERS:I = 0x2

.field public static final INPUT_TYPE_PHONE:I = 0x3

.field public static final INPUT_TYPE_TEXT:I = 0x1

.field private static final version:D = 2.7


# instance fields
.field private hint:Ljava/lang/String;

.field private hintcolor:I

.field private input:Ljava/lang/String;

.field private inputtype:I

.field private password:Z

.field private response:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const-string v0, ""

    iput-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->input:Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->password:Z

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->inputtype:I

    .line 126
    const-string v0, ""

    iput-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->hint:Ljava/lang/String;

    .line 127
    const v0, -0xbbbbbc

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->hintcolor:I

    .line 58
    return-void
.end method


# virtual methods
.method public LIBRARY_DOC()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;Landroid/graphics/Bitmap;)I
    .locals 20
    .parameter "message"
    .parameter "title"
    .parameter "Positive"
    .parameter "Cancel"
    .parameter "Negative"
    .parameter "ba"
    .parameter "icon"

    .prologue
    .line 147
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p6

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 149
    .local v5, ad:Landroid/app/AlertDialog;
    move-object/from16 v0, p6

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move v7, v0

    .line 150
    .local v7, diptopx:F
    const/high16 v18, 0x41a0

    mul-float v18, v18, v7

    move/from16 v0, v18

    float-to-int v0, v0

    move v9, v0

    .line 151
    .local v9, dps20:I
    const/high16 v18, 0x4120

    mul-float v18, v18, v7

    move/from16 v0, v18

    float-to-int v0, v0

    move v8, v0

    .line 152
    .local v8, dps10:I
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p6

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 153
    .local v17, view:Landroid/widget/LinearLayout;
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    move-object v0, v14

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    .local v14, lparams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 164
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p6

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 165
    .local v15, text:Landroid/widget/TextView;
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x2

    .line 166
    const/16 v19, -0x2

    .line 165
    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 167
    .local v16, tparams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move v1, v9

    move/from16 v2, v18

    move v3, v8

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 169
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    const/16 v18, 0x3

    move-object v0, v15

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 171
    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    new-instance v11, Landroid/widget/EditText;

    move-object/from16 v0, p6

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 174
    .local v11, edit:Landroid/widget/EditText;
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x2

    move-object v0, v12

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 175
    .local v12, eparams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v12

    move v1, v8

    move/from16 v2, v18

    move v3, v8

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 177
    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    const/16 v18, 0x7

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 179
    const/16 v18, 0x1

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->input:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->inputtype:I

    move/from16 v18, v0

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 182
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->password:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 183
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v18

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 186
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->hint:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->hint:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 189
    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->hintcolor:I

    move/from16 v18, v0

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 191
    :cond_0
    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 194
    new-instance v10, Lanywheresoftware/b4a/Msgbox$DialogResponse;

    const/16 v18, 0x0

    move-object v0, v10

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lanywheresoftware/b4a/Msgbox$DialogResponse;-><init>(Z)V

    .line 195
    .local v10, dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_1

    .line 197
    const/16 v18, -0x1

    move-object v0, v5

    move/from16 v1, v18

    move-object/from16 v2, p3

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 198
    :cond_1
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_2

    .line 199
    const/16 v18, -0x2

    move-object v0, v5

    move/from16 v1, v18

    move-object/from16 v2, p5

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 200
    :cond_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_3

    .line 201
    const/16 v18, -0x3

    move-object v0, v5

    move/from16 v1, v18

    move-object/from16 v2, p4

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 202
    :cond_3
    if-eqz p7, :cond_4

    .line 204
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v6

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 205
    .local v6, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 207
    .end local v6           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    const/16 v18, 0x0

    move-object v0, v5

    move/from16 v1, v18

    invoke-static {v0, v1}, Lanywheresoftware/b4a/Msgbox;->msgbox(Landroid/app/AlertDialog;Z)V

    .line 208
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->input:Ljava/lang/String;

    .line 209
    move-object v0, v10

    iget v0, v0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->response:I

    .line 212
    invoke-static {}, Lanywheresoftware/b4a/Msgbox;->sendCloseMyLoopMessage()V

    .line 213
    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lanywheresoftware/b4a/Msgbox;->waitForMessage(ZZ)V

    .line 214
    sget-object v18, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v19, "input_method"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodManager;

    .line 215
    .local v13, imm:Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p6

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lanywheresoftware/b4a/BALayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v18

    const/16 v19, 0x0

    move-object v0, v13

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 216
    move-object v0, v10

    iget v0, v0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    move/from16 v18, v0

    return v18

    .line 185
    .end local v10           #dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    .end local v13           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    const/16 v18, 0x0

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto/16 :goto_0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public getHintColor()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->hintcolor:I

    return v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->input:Ljava/lang/String;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->inputtype:I

    return v0
.end method

.method public getPasswordMode()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->password:Z

    return v0
.end method

.method public getResponse()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->response:I

    return v0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 224
    const-wide v0, 0x400599999999999aL

    return-wide v0
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 288
    iput-object p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->hint:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setHintColor(I)V
    .locals 0
    .parameter "hintcolor"

    .prologue
    .line 301
    iput p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->hintcolor:I

    .line 302
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 232
    iput-object p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->input:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setInputType(I)V
    .locals 0
    .parameter "inputtype"

    .prologue
    .line 254
    iput p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->inputtype:I

    .line 255
    return-void
.end method

.method public setPasswordMode(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 267
    iput-boolean p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->password:Z

    .line 268
    return-void
.end method
