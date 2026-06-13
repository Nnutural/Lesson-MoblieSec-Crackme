.class public Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;
.super Ljava/lang/Object;
.source "InputDialog.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "NumberDialog"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/agraham/dialogs/InputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberDialog"
.end annotation


# instance fields
.field private decimal:I

.field private decimalchar:C

.field private figures:[Landroid/widget/TextView;

.field private final maxdigits:I

.field private negative:Z

.field private numbers:[I

.field private numdigits:I

.field private response:I

.field private showsign:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x0

    .line 1404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1409
    const/4 v0, 0x5

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numdigits:I

    .line 1410
    iput v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->maxdigits:I

    .line 1411
    iput v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->decimal:I

    .line 1412
    const/16 v0, 0x2e

    iput-char v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->decimalchar:C

    .line 1413
    iput-boolean v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->showsign:Z

    .line 1414
    iput-boolean v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->negative:Z

    .line 1415
    new-array v0, v2, [I

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numbers:[I

    .line 1416
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->figures:[Landroid/widget/TextView;

    .line 1404
    return-void
.end method

.method static synthetic access$0(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)Z
    .locals 1
    .parameter

    .prologue
    .line 1413
    iget-boolean v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->showsign:Z

    return v0
.end method

.method static synthetic access$1(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 1409
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numdigits:I

    return v0
.end method

.method static synthetic access$2(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)[Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 1416
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->figures:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)[I
    .locals 1
    .parameter

    .prologue
    .line 1415
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numbers:[I

    return-object v0
.end method

.method static synthetic access$4(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 1411
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->decimal:I

    return v0
.end method

.method static synthetic access$5(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)C
    .locals 1
    .parameter

    .prologue
    .line 1412
    iget-char v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->decimalchar:C

    return v0
.end method


# virtual methods
.method public Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;Landroid/graphics/Bitmap;)I
    .locals 22
    .parameter "title"
    .parameter "Positive"
    .parameter "Cancel"
    .parameter "Negative"
    .parameter "ba"
    .parameter "icon"

    .prologue
    .line 1429
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1431
    .local v5, ad:Landroid/app/AlertDialog;
    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move v9, v0

    .line 1432
    .local v9, diptopx:F
    const/high16 v18, 0x4248

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move v12, v0

    .line 1433
    .local v12, dps50:I
    const/high16 v18, 0x4220

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move v11, v0

    .line 1434
    .local v11, dps40:I
    const/high16 v18, 0x40a0

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move v10, v0

    .line 1436
    .local v10, dps05:I
    new-instance v17, Landroid/widget/TableLayout;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 1437
    .local v17, view:Landroid/widget/TableLayout;
    new-instance v15, Landroid/widget/TableLayout$LayoutParams;

    const/16 v18, -0x1

    .line 1438
    const/16 v19, -0x2

    .line 1437
    move-object v0, v15

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    .line 1439
    .local v15, lparams:Landroid/widget/TableLayout$LayoutParams;
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1440
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TableLayout;->setOrientation(I)V

    .line 1441
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    .line 1444
    new-instance v16, Landroid/widget/TableRow;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 1445
    .local v16, row1:Landroid/widget/TableRow;
    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numdigits:I

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v14, v18, v19

    .local v14, i:I
    :goto_0
    if-gez v14, :cond_4

    .line 1481
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1484
    new-instance v16, Landroid/widget/TableRow;

    .end local v16           #row1:Landroid/widget/TableRow;
    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 1485
    .restart local v16       #row1:Landroid/widget/TableRow;
    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numdigits:I

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v14, v18, v19

    :goto_1
    if-gez v14, :cond_5

    .line 1511
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1514
    new-instance v16, Landroid/widget/TableRow;

    .end local v16           #row1:Landroid/widget/TableRow;
    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 1515
    .restart local v16       #row1:Landroid/widget/TableRow;
    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numdigits:I

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v14, v18, v19

    :goto_2
    if-gez v14, :cond_9

    .line 1551
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1552
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1554
    new-instance v13, Lanywheresoftware/b4a/Msgbox$DialogResponse;

    const/16 v18, 0x0

    move-object v0, v13

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lanywheresoftware/b4a/Msgbox$DialogResponse;-><init>(Z)V

    .line 1555
    .local v13, dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1556
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_0

    .line 1557
    const/16 v18, -0x1

    move-object v0, v5

    move/from16 v1, v18

    move-object/from16 v2, p2

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1558
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_1

    .line 1559
    const/16 v18, -0x2

    move-object v0, v5

    move/from16 v1, v18

    move-object/from16 v2, p4

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1560
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_2

    .line 1561
    const/16 v18, -0x3

    move-object v0, v5

    move/from16 v1, v18

    move-object/from16 v2, p3

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1562
    :cond_2
    if-eqz p6, :cond_3

    .line 1564
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v6

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1565
    .local v6, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1567
    .end local v6           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    const/16 v18, 0x0

    move-object v0, v5

    move/from16 v1, v18

    invoke-static {v0, v1}, Lanywheresoftware/b4a/Msgbox;->msgbox(Landroid/app/AlertDialog;Z)V

    .line 1568
    move-object v0, v13

    iget v0, v0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->response:I

    .line 1569
    move-object v0, v13

    iget v0, v0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    move/from16 v18, v0

    return v18

    .line 1447
    .end local v13           #dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    :cond_4
    new-instance v8, Landroid/widget/Button;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1448
    .local v8, btn0:Landroid/widget/Button;
    new-instance v7, Landroid/widget/TableRow$LayoutParams;

    const/16 v18, -0x1

    .line 1449
    const/16 v19, -0x1

    .line 1448
    move-object v0, v7

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 1450
    .local v7, bparams:Landroid/widget/TableRow$LayoutParams;
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v7

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 1451
    iput v12, v7, Landroid/widget/TableRow$LayoutParams;->height:I

    .line 1452
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object v1, v7

    iput v0, v1, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 1453
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1454
    const/16 v18, 0x0

    move v0, v10

    neg-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v8

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1455
    const-string v18, "+"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1457
    const/high16 v18, 0x4200

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 1458
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1459
    new-instance v18, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog$1;-><init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)V

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1479
    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 1445
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    .line 1487
    .end local v7           #bparams:Landroid/widget/TableRow$LayoutParams;
    .end local v8           #btn0:Landroid/widget/Button;
    :cond_5
    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1488
    .local v8, btn0:Landroid/widget/TextView;
    new-instance v7, Landroid/widget/TableRow$LayoutParams;

    const/16 v18, -0x1

    .line 1489
    const/16 v19, -0x1

    .line 1488
    move-object v0, v7

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 1490
    .restart local v7       #bparams:Landroid/widget/TableRow$LayoutParams;
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v7

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 1491
    iput v11, v7, Landroid/widget/TableRow$LayoutParams;->height:I

    .line 1492
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object v1, v7

    iput v0, v1, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 1493
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1494
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v8

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1495
    const/16 v18, 0x11

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numbers:[I

    move-object/from16 v18, v0

    aget v18, v18, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1499
    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->decimal:I

    move/from16 v18, v0

    if-lez v18, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->decimal:I

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v14

    if-ne v0, v1, :cond_6

    .line 1500
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numbers:[I

    move-object/from16 v19, v0

    aget v19, v19, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-char v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->decimalchar:C

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1501
    :cond_6
    const/high16 v18, 0x4200

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1502
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1503
    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->figures:[Landroid/widget/TextView;

    move-object/from16 v18, v0

    aput-object v8, v18, v14

    .line 1505
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->showsign:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numdigits:I

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move v0, v14

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->figures:[Landroid/widget/TextView;

    move-object/from16 v18, v0

    aget-object v18, v18, v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->negative:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    const-string v19, "-"

    :goto_3
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1485
    :cond_7
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_1

    .line 1507
    :cond_8
    const-string v19, "+"

    goto :goto_3

    .line 1517
    .end local v7           #bparams:Landroid/widget/TableRow$LayoutParams;
    .end local v8           #btn0:Landroid/widget/TextView;
    :cond_9
    new-instance v8, Landroid/widget/Button;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1518
    .local v8, btn0:Landroid/widget/Button;
    new-instance v7, Landroid/widget/TableRow$LayoutParams;

    const/16 v18, -0x1

    .line 1519
    const/16 v19, -0x1

    .line 1518
    move-object v0, v7

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 1520
    .restart local v7       #bparams:Landroid/widget/TableRow$LayoutParams;
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v7

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 1521
    iput v12, v7, Landroid/widget/TableRow$LayoutParams;->height:I

    .line 1522
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object v1, v7

    iput v0, v1, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 1523
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1524
    const/16 v18, 0x0

    move v0, v10

    neg-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v8

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1525
    const-string v18, "-"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1526
    const/high16 v18, 0x4200

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 1527
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1528
    new-instance v18, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog$2;-><init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;)V

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1549
    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 1515
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_2
.end method

.method public getDecimal()I
    .locals 1

    .prologue
    .line 1630
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->decimal:I

    return v0
.end method

.method public getDecimalChar()C
    .locals 1

    .prologue
    .line 1644
    iget-char v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->decimalchar:C

    return v0
.end method

.method public getDigits()I
    .locals 1

    .prologue
    .line 1616
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numdigits:I

    return v0
.end method

.method public getNumber()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1588
    const/4 v2, 0x0

    .line 1589
    .local v2, num:I
    iget v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numdigits:I

    sub-int v0, v3, v5

    .line 1590
    .local v0, count:I
    iget-boolean v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->showsign:Z

    if-eqz v3, :cond_0

    move v3, v5

    :goto_0
    sub-int/2addr v0, v3

    .line 1591
    move v1, v0

    .local v1, i:I
    :goto_1
    if-gez v1, :cond_1

    .line 1593
    iget-boolean v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->showsign:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->figures:[Landroid/widget/TextView;

    iget v4, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numdigits:I

    sub-int/2addr v4, v5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "-"

    if-ne v3, v4, :cond_2

    .line 1594
    neg-int v3, v2

    .line 1595
    :goto_2
    return v3

    .line 1590
    .end local v1           #i:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1592
    .restart local v1       #i:I
    :cond_1
    mul-int/lit8 v3, v2, 0xa

    iget-object v4, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numbers:[I

    aget v4, v4, v1

    add-int v2, v3, v4

    .line 1591
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 1595
    goto :goto_2
.end method

.method public getResponse()I
    .locals 1

    .prologue
    .line 1671
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->response:I

    return v0
.end method

.method public getShowSign()Z
    .locals 1

    .prologue
    .line 1658
    iget-boolean v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->showsign:Z

    return v0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 1577
    const-wide v0, 0x400599999999999aL

    return-wide v0
.end method

.method public setDecimal(I)V
    .locals 2
    .parameter "digits"

    .prologue
    .line 1635
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->decimal:I

    .line 1636
    return-void
.end method

.method public setDecimalChar(C)V
    .locals 0
    .parameter "decimalchar"

    .prologue
    .line 1649
    iput-char p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->decimalchar:C

    .line 1650
    return-void
.end method

.method public setDigits(I)V
    .locals 2
    .parameter "digits"

    .prologue
    .line 1621
    const/16 v0, 0x9

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numdigits:I

    .line 1622
    return-void
.end method

.method public setNumber(I)V
    .locals 3
    .parameter "number"

    .prologue
    .line 1600
    if-gez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->negative:Z

    .line 1601
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1602
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numdigits:I

    if-lt v0, v1, :cond_1

    .line 1607
    return-void

    .line 1600
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1604
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->numbers:[I

    rem-int/lit8 v2, p1, 0xa

    aput v2, v1, v0

    .line 1605
    div-int/lit8 p1, p1, 0xa

    .line 1602
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setShowSign(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 1663
    iput-boolean p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$NumberDialog;->showsign:Z

    .line 1664
    return-void
.end method
