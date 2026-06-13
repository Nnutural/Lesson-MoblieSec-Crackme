.class public Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;
.super Ljava/lang/Object;
.source "InputDialog.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "ColorDialog"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/agraham/dialogs/InputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorDialog"
.end annotation


# instance fields
.field private blue:I

.field private green:I

.field private red:I

.field private response:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 638
    iput p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->red:I

    return-void
.end method

.method static synthetic access$1(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 638
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->red:I

    return v0
.end method

.method static synthetic access$2(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 639
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->green:I

    return v0
.end method

.method static synthetic access$3(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 640
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->blue:I

    return v0
.end method

.method static synthetic access$4(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 642
    invoke-direct {p0, p1, p2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->getColor(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 639
    iput p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->green:I

    return-void
.end method

.method static synthetic access$6(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 640
    iput p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->blue:I

    return-void
.end method

.method private getColor(IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 4
    .parameter "color"
    .parameter "radius"

    .prologue
    .line 644
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 645
    .local v0, gd:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 646
    return-object v0
.end method


# virtual methods
.method public ARGB(I)I
    .locals 3
    .parameter "alpha"

    .prologue
    .line 883
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->red:I

    iget v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->green:I

    iget v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->blue:I

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;Landroid/graphics/Bitmap;)I
    .locals 28
    .parameter "title"
    .parameter "Positive"
    .parameter "Cancel"
    .parameter "Negative"
    .parameter "ba"
    .parameter "icon"

    .prologue
    .line 660
    new-instance v24, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 662
    .local v5, ad:Landroid/app/AlertDialog;
    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move v10, v0

    .line 663
    .local v10, diptopx:F
    const/high16 v24, 0x41a0

    mul-float v24, v24, v10

    move/from16 v0, v24

    float-to-int v0, v0

    move v13, v0

    .line 664
    .local v13, dps20:I
    const/high16 v24, 0x4120

    mul-float v24, v24, v10

    move/from16 v0, v24

    float-to-int v0, v0

    move v12, v0

    .line 665
    .local v12, dps10:I
    const/high16 v24, 0x40a0

    mul-float v24, v24, v10

    move/from16 v0, v24

    float-to-int v0, v0

    move v11, v0

    .line 666
    .local v11, dps05:I
    new-instance v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 667
    .local v23, view:Landroid/widget/LinearLayout;
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 668
    .local v16, lparams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 678
    new-instance v9, Landroid/widget/TextView;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object v0, v9

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 679
    .local v9, ctext:Landroid/widget/TextView;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object v0, v8

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 680
    .local v8, cparams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v8, v13, v12, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 681
    mul-int/lit8 v24, v13, 0x2

    move/from16 v0, v24

    move-object v1, v8

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 682
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 684
    const/16 v24, 0xff

    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->red:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->green:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->blue:I

    move/from16 v27, v0

    invoke-static/range {v24 .. v27}, Landroid/graphics/Color;->argb(IIII)I

    move-result v24

    move v0, v11

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->getColor(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v24

    move-object v0, v9

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 685
    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 687
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 688
    .local v18, rtext:Landroid/widget/TextView;
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 689
    .local v22, tparams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move v1, v13

    move/from16 v2, v24

    move v3, v13

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 690
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    const/16 v24, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 692
    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->red:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 695
    new-instance v21, Landroid/widget/SeekBar;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 696
    .local v21, sred:Landroid/widget/SeekBar;
    const/16 v24, 0xff

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 697
    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->red:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 698
    const/high16 v24, -0x1

    move v0, v11

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->getColor(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 699
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 700
    .local v17, rparams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v17

    move v1, v12

    move v2, v12

    move v3, v12

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 701
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 703
    new-instance v24, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object v3, v9

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog$1;-><init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 724
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 725
    .local v15, gtext:Landroid/widget/TextView;
    move-object v0, v15

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    const/16 v24, 0x3

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 727
    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->green:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    move-object/from16 v0, v23

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 729
    new-instance v20, Landroid/widget/SeekBar;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 730
    .local v20, sgreen:Landroid/widget/SeekBar;
    const/16 v24, 0xff

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 731
    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->green:I

    move/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 732
    const v24, -0xff0100

    move v0, v11

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->getColor(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 736
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 737
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 738
    new-instance v24, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v9

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog$2;-><init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 759
    new-instance v7, Landroid/widget/TextView;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 760
    .local v7, btext:Landroid/widget/TextView;
    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 761
    const/16 v24, 0x3

    move-object v0, v7

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 762
    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->blue:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 764
    new-instance v19, Landroid/widget/SeekBar;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 765
    .local v19, sblue:Landroid/widget/SeekBar;
    const/16 v24, 0xff

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 766
    move-object/from16 v0, p0

    iget v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->blue:I

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 767
    const v24, -0xffff01

    move v0, v11

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->getColor(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 772
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    new-instance v24, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v9

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog$3;-><init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 793
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 795
    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 797
    new-instance v14, Lanywheresoftware/b4a/Msgbox$DialogResponse;

    const/16 v24, 0x0

    move-object v0, v14

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lanywheresoftware/b4a/Msgbox$DialogResponse;-><init>(Z)V

    .line 798
    .local v14, dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 799
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_0

    .line 800
    const/16 v24, -0x1

    move-object v0, v5

    move/from16 v1, v24

    move-object/from16 v2, p2

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 801
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_1

    .line 802
    const/16 v24, -0x2

    move-object v0, v5

    move/from16 v1, v24

    move-object/from16 v2, p4

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 803
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_2

    .line 804
    const/16 v24, -0x3

    move-object v0, v5

    move/from16 v1, v24

    move-object/from16 v2, p3

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 805
    :cond_2
    if-eqz p6, :cond_3

    .line 807
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v6

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 808
    .local v6, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 810
    .end local v6           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    const/16 v24, 0x0

    move-object v0, v5

    move/from16 v1, v24

    invoke-static {v0, v1}, Lanywheresoftware/b4a/Msgbox;->msgbox(Landroid/app/AlertDialog;Z)V

    .line 811
    invoke-virtual/range {v21 .. v21}, Landroid/widget/SeekBar;->getProgress()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->red:I

    .line 812
    invoke-virtual/range {v20 .. v20}, Landroid/widget/SeekBar;->getProgress()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->green:I

    .line 813
    invoke-virtual/range {v19 .. v19}, Landroid/widget/SeekBar;->getProgress()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->blue:I

    .line 814
    move-object v0, v14

    iget v0, v0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->response:I

    .line 815
    move-object v0, v14

    iget v0, v0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    move/from16 v24, v0

    return v24
.end method

.method public getBlue()I
    .locals 1

    .prologue
    .line 852
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->blue:I

    return v0
.end method

.method public getGreen()I
    .locals 1

    .prologue
    .line 838
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->green:I

    return v0
.end method

.method public getRGB()I
    .locals 3

    .prologue
    .line 867
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->red:I

    iget v1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->green:I

    iget v2, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->blue:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public getRed()I
    .locals 1

    .prologue
    .line 824
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->red:I

    return v0
.end method

.method public getResponse()I
    .locals 1

    .prologue
    .line 899
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->response:I

    return v0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 891
    const-wide v0, 0x400599999999999aL

    return-wide v0
.end method

.method public setBlue(I)V
    .locals 0
    .parameter "blue"

    .prologue
    .line 857
    iput p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->blue:I

    .line 858
    return-void
.end method

.method public setGreen(I)V
    .locals 0
    .parameter "green"

    .prologue
    .line 843
    iput p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->green:I

    .line 844
    return-void
.end method

.method public setRGB(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 872
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->red:I

    .line 873
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->green:I

    .line 874
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->blue:I

    .line 875
    return-void
.end method

.method public setRed(I)V
    .locals 0
    .parameter "red"

    .prologue
    .line 829
    iput p1, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialog;->red:I

    .line 830
    return-void
.end method
