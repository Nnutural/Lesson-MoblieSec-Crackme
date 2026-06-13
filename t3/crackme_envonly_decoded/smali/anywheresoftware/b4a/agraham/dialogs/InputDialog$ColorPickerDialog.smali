.class public Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;
.super Ljava/lang/Object;
.source "InputDialog.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "ColorPickerDialog"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/agraham/dialogs/InputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorPickerDialog"
.end annotation


# instance fields
.field private chosen:I

.field green:I

.field maroon:I

.field navy:I

.field orange:I

.field private palette:[I

.field private response:I

.field royalblue:I

.field springgreen:I

.field private stdpalette:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v2, 0xff

    const/16 v1, 0x80

    const/4 v3, 0x0

    .line 1207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1196
    const/16 v0, 0x8c

    invoke-static {v2, v0, v3}, Lanywheresoftware/b4a/keywords/constants/Colors;->RGB(III)I

    move-result v0

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->orange:I

    .line 1197
    invoke-static {v3, v1, v3}, Lanywheresoftware/b4a/keywords/constants/Colors;->RGB(III)I

    move-result v0

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->green:I

    .line 1198
    const/16 v0, 0x7f

    invoke-static {v3, v2, v0}, Lanywheresoftware/b4a/keywords/constants/Colors;->RGB(III)I

    move-result v0

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->springgreen:I

    .line 1199
    invoke-static {v1, v3, v3}, Lanywheresoftware/b4a/keywords/constants/Colors;->RGB(III)I

    move-result v0

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->maroon:I

    .line 1200
    invoke-static {v3, v3, v1}, Lanywheresoftware/b4a/keywords/constants/Colors;->RGB(III)I

    move-result v0

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->navy:I

    .line 1201
    const/16 v0, 0x41

    const/16 v1, 0x69

    const/16 v2, 0xe1

    invoke-static {v0, v1, v2}, Lanywheresoftware/b4a/keywords/constants/Colors;->RGB(III)I

    move-result v0

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->royalblue:I

    .line 1203
    const/16 v0, 0xf

    new-array v0, v0, [I

    const/high16 v1, -0x1

    aput v1, v0, v3

    const/4 v1, 0x1

    const v2, -0xff01

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->orange:I

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->maroon:I

    aput v2, v0, v1

    const/4 v1, 0x4

    const/high16 v2, -0x100

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, -0xff0100

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, -0x100

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 1204
    iget v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->springgreen:I

    aput v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->green:I

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, -0x333334

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0xffff01

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, -0xff0001

    aput v2, v0, v1

    const/16 v1, 0xc

    iget v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->royalblue:I

    aput v2, v0, v1

    const/16 v1, 0xd

    iget v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->navy:I

    aput v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, -0x1

    aput v2, v0, v1

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->stdpalette:[I

    .line 1209
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->stdpalette:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->palette:[I

    .line 1210
    invoke-virtual {p0}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->ResetPalette()V

    .line 1211
    return-void
.end method

.method static synthetic access$0(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1195
    iput p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->chosen:I

    return-void
.end method

.method static synthetic access$1(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 1195
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->chosen:I

    return v0
.end method

.method static synthetic access$2(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1213
    invoke-direct {p0, p1, p2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->getColor(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    return-object v0
.end method

.method private getColor(IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 4
    .parameter "color"
    .parameter "radius"

    .prologue
    .line 1215
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1216
    .local v0, gd:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1217
    return-object v0
.end method


# virtual methods
.method public ARGB(I)I
    .locals 4
    .parameter "alpha"

    .prologue
    .line 1372
    iget v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->chosen:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v2, v3, 0xff

    .line 1373
    .local v2, red:I
    iget v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->chosen:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v1, v3, 0xff

    .line 1374
    .local v1, green:I
    iget v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->chosen:I

    and-int/lit16 v0, v3, 0xff

    .line 1375
    .local v0, blue:I
    invoke-static {p1, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method public GetPaletteAt(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1354
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->palette:[I

    aget v0, v0, p1

    return v0
.end method

.method public ResetPalette()V
    .locals 3

    .prologue
    .line 1331
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->stdpalette:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1333
    return-void

    .line 1332
    :cond_0
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->palette:[I

    iget-object v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->stdpalette:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 1331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public SetPaletteAt(II)V
    .locals 2
    .parameter "index"
    .parameter "color"

    .prologue
    .line 1363
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->palette:[I

    const/high16 v1, -0x100

    or-int/2addr v1, p2

    aput v1, v0, p1

    .line 1364
    return-void
.end method

.method public Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;Landroid/graphics/Bitmap;)I
    .locals 25
    .parameter "title"
    .parameter "Positive"
    .parameter "Cancel"
    .parameter "Negative"
    .parameter "ba"
    .parameter "icon"

    .prologue
    .line 1231
    new-instance v23, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1233
    .local v5, ad:Landroid/app/AlertDialog;
    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move v11, v0

    .line 1234
    .local v11, diptopx:F
    const/high16 v23, 0x4220

    mul-float v23, v23, v11

    move/from16 v0, v23

    float-to-int v0, v0

    move v15, v0

    .line 1235
    .local v15, dps40:I
    const/high16 v23, 0x41a0

    mul-float v23, v23, v11

    move/from16 v0, v23

    float-to-int v0, v0

    move v14, v0

    .line 1236
    .local v14, dps20:I
    const/high16 v23, 0x4120

    mul-float v23, v23, v11

    move/from16 v0, v23

    float-to-int v0, v0

    move v13, v0

    .line 1237
    .local v13, dps10:I
    const/high16 v23, 0x40a0

    mul-float v23, v23, v11

    move/from16 v0, v23

    float-to-int v0, v0

    move v12, v0

    .line 1239
    .local v12, dps05:I
    new-instance v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1240
    .local v20, lview:Landroid/widget/LinearLayout;
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1241
    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1242
    .local v10, ctext:Landroid/widget/TextView;
    new-instance v9, Landroid/widget/TableRow$LayoutParams;

    const/16 v23, -0x1

    .line 1243
    const/16 v24, -0x1

    .line 1242
    move-object v0, v9

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 1244
    .local v9, cparams:Landroid/widget/TableRow$LayoutParams;
    invoke-virtual {v9, v14, v13, v14, v14}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 1245
    iput v15, v9, Landroid/widget/TableRow$LayoutParams;->height:I

    .line 1246
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object v1, v9

    iput v0, v1, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 1247
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1248
    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->chosen:I

    move/from16 v23, v0

    move v0, v12

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->getColor(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1249
    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1251
    new-instance v22, Landroid/widget/TableLayout;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 1252
    .local v22, view:Landroid/widget/TableLayout;
    new-instance v19, Landroid/widget/TableLayout$LayoutParams;

    const/16 v23, -0x1

    .line 1253
    const/16 v24, -0x2

    .line 1252
    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    .line 1254
    .local v19, lparams:Landroid/widget/TableLayout$LayoutParams;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1255
    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TableLayout;->setOrientation(I)V

    .line 1256
    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    .line 1258
    const/16 v18, 0x0

    .local v18, j:I
    :goto_0
    const/16 v23, 0x3

    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    .line 1285
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1286
    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1288
    new-instance v16, Lanywheresoftware/b4a/Msgbox$DialogResponse;

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lanywheresoftware/b4a/Msgbox$DialogResponse;-><init>(Z)V

    .line 1289
    .local v16, dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1290
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_0

    .line 1291
    const/16 v23, -0x1

    move-object v0, v5

    move/from16 v1, v23

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1292
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_1

    .line 1293
    const/16 v23, -0x2

    move-object v0, v5

    move/from16 v1, v23

    move-object/from16 v2, p4

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1294
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_2

    .line 1295
    const/16 v23, -0x3

    move-object v0, v5

    move/from16 v1, v23

    move-object/from16 v2, p3

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1296
    :cond_2
    if-eqz p6, :cond_3

    .line 1298
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v6

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1299
    .local v6, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1301
    .end local v6           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    const/16 v23, 0x0

    move-object v0, v5

    move/from16 v1, v23

    invoke-static {v0, v1}, Lanywheresoftware/b4a/Msgbox;->msgbox(Landroid/app/AlertDialog;Z)V

    .line 1302
    move-object/from16 v0, v16

    iget v0, v0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->response:I

    .line 1303
    move-object/from16 v0, v16

    iget v0, v0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    move/from16 v23, v0

    return v23

    .line 1260
    .end local v16           #dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    :cond_4
    new-instance v21, Landroid/widget/TableRow;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 1261
    .local v21, row1:Landroid/widget/TableRow;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    const/16 v23, 0x5

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_5

    .line 1283
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1258
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 1263
    :cond_5
    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object v0, v8

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1264
    .local v8, btn0:Landroid/widget/TextView;
    new-instance v7, Landroid/widget/TableRow$LayoutParams;

    const/16 v23, -0x1

    .line 1265
    const/16 v24, -0x1

    .line 1264
    move-object v0, v7

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 1266
    .local v7, bparams:Landroid/widget/TableRow$LayoutParams;
    const/16 v23, 0x5

    move-object v0, v7

    move v1, v12

    move v2, v12

    move v3, v12

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 1267
    iput v15, v7, Landroid/widget/TableRow$LayoutParams;->height:I

    .line 1268
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object v1, v7

    iput v0, v1, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 1269
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->palette:[I

    move-object/from16 v23, v0

    mul-int/lit8 v24, v18, 0x5

    add-int v24, v24, v17

    aget v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object v0, v8

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->palette:[I

    move-object/from16 v23, v0

    mul-int/lit8 v24, v18, 0x5

    add-int v24, v24, v17

    aget v23, v23, v24

    move v0, v12

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->getColor(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v23

    move-object v0, v8

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1272
    new-instance v23, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v2, v10

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog$1;-><init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;Landroid/widget/TextView;I)V

    move-object v0, v8

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1281
    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 1261
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1
.end method

.method public getPalette()[I
    .locals 3

    .prologue
    .line 1313
    iget-object v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->palette:[I

    array-length v2, v2

    new-array v1, v2, [I

    .line 1314
    .local v1, newpalette:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->palette:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 1316
    return-object v1

    .line 1315
    :cond_0
    iget-object v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->palette:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 1314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRGB()I
    .locals 1

    .prologue
    .line 1341
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->chosen:I

    return v0
.end method

.method public getResponse()I
    .locals 1

    .prologue
    .line 1391
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->response:I

    return v0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 1383
    const-wide v0, 0x400599999999999aL

    return-wide v0
.end method

.method public setPalette([I)V
    .locals 4
    .parameter "palette"

    .prologue
    .line 1321
    const/16 v2, 0xf

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1322
    .local v1, numcols:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 1324
    return-void

    .line 1323
    :cond_0
    iget-object v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->palette:[I

    aget v3, p1, v0

    aput v3, v2, v0

    .line 1322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setRGB(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 1346
    const/high16 v0, -0x100

    or-int/2addr v0, p1

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorPickerDialog;->chosen:I

    .line 1347
    return-void
.end method
