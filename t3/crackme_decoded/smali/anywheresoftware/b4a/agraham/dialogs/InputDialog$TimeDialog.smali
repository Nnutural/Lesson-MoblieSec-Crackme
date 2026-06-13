.class public Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;
.super Ljava/lang/Object;
.source "InputDialog.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "TimeDialog"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/agraham/dialogs/InputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeDialog"
.end annotation


# instance fields
.field private hour:I

.field private hours24:Z

.field private minute:I

.field private response:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SetTime(IIZ)V
    .locals 0
    .parameter "hour"
    .parameter "minutes"
    .parameter "hours24"

    .prologue
    .line 613
    iput p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->hour:I

    .line 614
    iput p2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->minute:I

    .line 615
    iput-boolean p3, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->hours24:Z

    .line 616
    return-void
.end method

.method public Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;Landroid/graphics/Bitmap;)I
    .locals 18
    .parameter "Message"
    .parameter "Title"
    .parameter "Positive"
    .parameter "Cancel"
    .parameter "Negative"
    .parameter "ba"
    .parameter "icon"

    .prologue
    .line 491
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p6

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 493
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

    .line 494
    .local v7, diptopx:F
    const/high16 v16, 0x41a0

    mul-float v16, v16, v7

    move/from16 v0, v16

    float-to-int v0, v0

    move v9, v0

    .line 495
    .local v9, dps20:I
    const/high16 v16, 0x4120

    mul-float v16, v16, v7

    move/from16 v0, v16

    float-to-int v0, v0

    move v8, v0

    .line 496
    .local v8, dps10:I
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p6

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 497
    .local v15, view:Landroid/widget/LinearLayout;
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x2

    move-object v0, v11

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 498
    .local v11, lparams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v15, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 508
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p6

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 509
    .local v12, text:Landroid/widget/TextView;
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x2

    const/16 v17, -0x2

    move-object v0, v14

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 510
    .local v14, tparams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v14

    move v1, v9

    move/from16 v2, v16

    move v3, v8

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 512
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    const/16 v16, 0x3

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 514
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    invoke-virtual {v15, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 517
    new-instance v13, Landroid/widget/TimePicker;

    move-object/from16 v0, p6

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;)V

    .line 518
    .local v13, tp:Landroid/widget/TimePicker;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->hours24:Z

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 519
    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->hour:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 520
    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->minute:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 521
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 522
    invoke-virtual {v5, v15}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 524
    new-instance v10, Lanywheresoftware/b4a/Msgbox$DialogResponse;

    const/16 v16, 0x0

    move-object v0, v10

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lanywheresoftware/b4a/Msgbox$DialogResponse;-><init>(Z)V

    .line 525
    .local v10, dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 526
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_0

    .line 527
    const/16 v16, -0x1

    move-object v0, v5

    move/from16 v1, v16

    move-object/from16 v2, p3

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 528
    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_1

    .line 529
    const/16 v16, -0x2

    move-object v0, v5

    move/from16 v1, v16

    move-object/from16 v2, p5

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 530
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_2

    .line 531
    const/16 v16, -0x3

    move-object v0, v5

    move/from16 v1, v16

    move-object/from16 v2, p4

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 532
    :cond_2
    if-eqz p7, :cond_3

    .line 534
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v6

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 535
    .local v6, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 537
    .end local v6           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    const/16 v16, 0x0

    move-object v0, v5

    move/from16 v1, v16

    invoke-static {v0, v1}, Lanywheresoftware/b4a/Msgbox;->msgbox(Landroid/app/AlertDialog;Z)V

    .line 538
    invoke-virtual {v13}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->hour:I

    .line 539
    invoke-virtual {v13}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->minute:I

    .line 540
    move-object v0, v10

    iget v0, v0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->response:I

    .line 541
    move-object v0, v10

    iget v0, v0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    move/from16 v16, v0

    return v16
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->hour:I

    return v0
.end method

.method public getIs24Hours()Z
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->hours24:Z

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->minute:I

    return v0
.end method

.method public getResponse()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->response:I

    return v0
.end method

.method public getTimeTicks()J
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 599
    new-instance v0, Ljava/util/GregorianCalendar;

    iget v4, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->hour:I

    iget v5, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->minute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 549
    const-wide v0, 0x400599999999999aL

    return-wide v0
.end method

.method public setHour(I)V
    .locals 0
    .parameter "hour"

    .prologue
    .line 563
    iput p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->hour:I

    .line 564
    return-void
.end method

.method public setIs24Hours(Z)V
    .locals 0
    .parameter "is24hours"

    .prologue
    .line 590
    iput-boolean p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->hours24:Z

    .line 591
    return-void
.end method

.method public setMinute(I)V
    .locals 0
    .parameter "minute"

    .prologue
    .line 577
    iput p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->minute:I

    .line 578
    return-void
.end method

.method public setTimeTicks(J)V
    .locals 1
    .parameter "ticks"

    .prologue
    .line 604
    invoke-static {p1, p2}, Lanywheresoftware/b4a/keywords/DateTime;->GetHour(J)I

    move-result v0

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->hour:I

    .line 605
    invoke-static {p1, p2}, Lanywheresoftware/b4a/keywords/DateTime;->GetMinute(J)I

    move-result v0

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$TimeDialog;->minute:I

    .line 606
    return-void
.end method
