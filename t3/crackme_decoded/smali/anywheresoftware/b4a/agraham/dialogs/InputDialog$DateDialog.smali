.class public Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;
.super Ljava/lang/Object;
.source "InputDialog.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "DateDialog"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/agraham/dialogs/InputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateDialog"
.end annotation


# instance fields
.field private day:I

.field private month:I

.field private response:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SetDate(III)V
    .locals 1
    .parameter "dayofmonth"
    .parameter "month"
    .parameter "year"

    .prologue
    .line 435
    iput p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->day:I

    .line 436
    const/4 v0, 0x1

    sub-int v0, p2, v0

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->month:I

    .line 437
    iput p3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->year:I

    .line 438
    return-void
.end method

.method public Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;Landroid/graphics/Bitmap;)I
    .locals 19
    .parameter "Message"
    .parameter "Title"
    .parameter "Positive"
    .parameter "Cancel"
    .parameter "Negative"
    .parameter "ba"
    .parameter "icon"

    .prologue
    .line 328
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p6

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 330
    .local v5, ad:Landroid/app/AlertDialog;
    move-object/from16 v0, p6

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move v7, v0

    .line 331
    .local v7, diptopx:F
    const/high16 v16, 0x41a0

    mul-float v16, v16, v7

    move/from16 v0, v16

    float-to-int v0, v0

    move v10, v0

    .line 332
    .local v10, dps20:I
    const/high16 v16, 0x4120

    mul-float v16, v16, v7

    move/from16 v0, v16

    float-to-int v0, v0

    move v9, v0

    .line 333
    .local v9, dps10:I
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p6

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 334
    .local v15, view:Landroid/widget/LinearLayout;
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x2

    move-object v0, v12

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 335
    .local v12, lparams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v15, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 345
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p6

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 346
    .local v13, text:Landroid/widget/TextView;
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x2

    const/16 v17, -0x2

    move-object v0, v14

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 347
    .local v14, tparams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v14

    move v1, v10

    move/from16 v2, v16

    move v3, v9

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 349
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    const/16 v16, 0x3

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 351
    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 354
    new-instance v8, Landroid/widget/DatePicker;

    move-object/from16 v0, p6

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;)V

    .line 355
    .local v8, dp:Landroid/widget/DatePicker;
    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->year:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->month:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->day:I

    move/from16 v18, v0

    move-object v0, v8

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 356
    invoke-virtual {v15, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    invoke-virtual {v5, v15}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 359
    new-instance v11, Lanywheresoftware/b4a/Msgbox$DialogResponse;

    const/16 v16, 0x0

    move-object v0, v11

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lanywheresoftware/b4a/Msgbox$DialogResponse;-><init>(Z)V

    .line 360
    .local v11, dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 361
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_0

    .line 362
    const/16 v16, -0x1

    move-object v0, v5

    move/from16 v1, v16

    move-object/from16 v2, p3

    move-object v3, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 363
    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_1

    .line 364
    const/16 v16, -0x2

    move-object v0, v5

    move/from16 v1, v16

    move-object/from16 v2, p5

    move-object v3, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 365
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_2

    .line 366
    const/16 v16, -0x3

    move-object v0, v5

    move/from16 v1, v16

    move-object/from16 v2, p4

    move-object v3, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 367
    :cond_2
    if-eqz p7, :cond_3

    .line 369
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v6

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 370
    .local v6, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 372
    .end local v6           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    const/16 v16, 0x0

    move-object v0, v5

    move/from16 v1, v16

    invoke-static {v0, v1}, Lanywheresoftware/b4a/Msgbox;->msgbox(Landroid/app/AlertDialog;Z)V

    .line 373
    invoke-virtual {v8}, Landroid/widget/DatePicker;->getYear()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->year:I

    .line 374
    invoke-virtual {v8}, Landroid/widget/DatePicker;->getMonth()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->month:I

    .line 375
    invoke-virtual {v8}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->day:I

    .line 376
    move-object v0, v11

    iget v0, v0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->response:I

    .line 377
    move-object v0, v11

    iget v0, v0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    move/from16 v16, v0

    return v16
.end method

.method public getDateTicks()J
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 446
    new-instance v0, Ljava/util/GregorianCalendar;

    iget v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->year:I

    iget v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->month:I

    iget v3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->day:I

    move v5, v4

    invoke-direct/range {v0 .. v5}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->month:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getResponse()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->response:I

    return v0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 385
    const-wide v0, 0x400599999999999aL

    return-wide v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->year:I

    return v0
.end method

.method public setDateTicks(J)V
    .locals 2
    .parameter "ticks"

    .prologue
    .line 451
    invoke-static {p1, p2}, Lanywheresoftware/b4a/keywords/DateTime;->GetDayOfMonth(J)I

    move-result v0

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->day:I

    .line 452
    invoke-static {p1, p2}, Lanywheresoftware/b4a/keywords/DateTime;->GetMonth(J)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->month:I

    .line 453
    invoke-static {p1, p2}, Lanywheresoftware/b4a/keywords/DateTime;->GetYear(J)I

    move-result v0

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->year:I

    .line 454
    return-void
.end method

.method public setDayOfMonth(I)V
    .locals 0
    .parameter "day"

    .prologue
    .line 427
    iput p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->day:I

    .line 428
    return-void
.end method

.method public setMonth(I)V
    .locals 1
    .parameter "month"

    .prologue
    .line 413
    const/4 v0, 0x1

    sub-int v0, p1, v0

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->month:I

    .line 414
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .parameter "year"

    .prologue
    .line 399
    iput p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$DateDialog;->year:I

    .line 400
    return-void
.end method
