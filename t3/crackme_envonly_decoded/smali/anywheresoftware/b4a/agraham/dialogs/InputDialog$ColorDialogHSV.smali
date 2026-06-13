.class public Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;
.super Ljava/lang/Object;
.source "InputDialog.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "ColorDialogHSV"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/agraham/dialogs/InputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorDialogHSV"
.end annotation


# instance fields
.field private hsv:[F

.field private response:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F

    .line 909
    return-void
.end method

.method static synthetic access$0(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;)[F
    .locals 1
    .parameter

    .prologue
    .line 914
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F

    return-object v0
.end method

.method static synthetic access$1(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 916
    invoke-direct {p0, p1, p2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->getColor(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    return-object v0
.end method

.method private getColor(IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 4
    .parameter "color"
    .parameter "radius"

    .prologue
    .line 918
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 919
    .local v0, gd:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 920
    return-object v0
.end method

.method private getGradient([IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 2
    .parameter "colors"
    .parameter "radius"

    .prologue
    .line 925
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 926
    .local v0, gd:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 927
    return-object v0
.end method


# virtual methods
.method public ARGB(I)I
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1163
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;Landroid/graphics/Bitmap;)I
    .locals 27
    .parameter "title"
    .parameter "Positive"
    .parameter "Cancel"
    .parameter "Negative"
    .parameter "ba"
    .parameter "icon"

    .prologue
    .line 941
    new-instance v24, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 943
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

    .line 944
    .local v10, diptopx:F
    const/high16 v24, 0x41a0

    mul-float v24, v24, v10

    move/from16 v0, v24

    float-to-int v0, v0

    move v13, v0

    .line 945
    .local v13, dps20:I
    const/high16 v24, 0x4120

    mul-float v24, v24, v10

    move/from16 v0, v24

    float-to-int v0, v0

    move v12, v0

    .line 946
    .local v12, dps10:I
    const/high16 v24, 0x40a0

    mul-float v24, v24, v10

    move/from16 v0, v24

    float-to-int v0, v0

    move v11, v0

    .line 947
    .local v11, dps05:I
    new-instance v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 948
    .local v23, view:Landroid/widget/LinearLayout;
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 949
    .local v16, lparams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 950
    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 959
    new-instance v9, Landroid/widget/TextView;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object v0, v9

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 960
    .local v9, ctext:Landroid/widget/TextView;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object v0, v8

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 961
    .local v8, cparams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v8, v13, v12, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 962
    mul-int/lit8 v24, v13, 0x2

    move/from16 v0, v24

    move-object v1, v8

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 963
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v24

    move v0, v11

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->getColor(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v24

    move-object v0, v9

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 966
    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 968
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 969
    .local v18, rtext:Landroid/widget/TextView;
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 970
    .local v22, tparams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move v1, v13

    move/from16 v2, v24

    move v3, v13

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 971
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    const/16 v24, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 973
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Hue = "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 976
    new-instance v21, Landroid/widget/SeekBar;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 977
    .local v21, sred:Landroid/widget/SeekBar;
    const/16 v24, 0xe10

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    const/high16 v25, 0x4120

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 980
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    fill-array-data v24, :array_0

    move v0, v11

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->getGradient([IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 981
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 982
    .local v17, rparams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v17

    move v1, v12

    move v2, v12

    move v3, v12

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 983
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 984
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 985
    new-instance v24, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object v3, v9

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV$1;-><init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1006
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1007
    .local v15, gtext:Landroid/widget/TextView;
    move-object v0, v15

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1008
    const/16 v24, 0x3

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1009
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Saturation = "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    move-object/from16 v0, v23

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1011
    new-instance v20, Landroid/widget/SeekBar;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 1012
    .local v20, sgreen:Landroid/widget/SeekBar;
    const/16 v24, 0x3e8

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    const/high16 v25, 0x447a

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1014
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    fill-array-data v24, :array_1

    move v0, v11

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->getGradient([IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1018
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1020
    new-instance v24, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v9

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV$2;-><init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1041
    new-instance v7, Landroid/widget/TextView;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1042
    .local v7, btext:Landroid/widget/TextView;
    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1043
    const/16 v24, 0x3

    move-object v0, v7

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1044
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Value = "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1046
    new-instance v19, Landroid/widget/SeekBar;

    move-object/from16 v0, p5

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 1047
    .local v19, sblue:Landroid/widget/SeekBar;
    const/16 v24, 0x3e8

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v24, v24, v25

    const/high16 v25, 0x447a

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1049
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    fill-array-data v24, :array_2

    move v0, v11

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->getGradient([IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1054
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1055
    new-instance v24, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v9

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV$3;-><init>(Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1075
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1077
    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1079
    new-instance v14, Lanywheresoftware/b4a/Msgbox$DialogResponse;

    const/16 v24, 0x0

    move-object v0, v14

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lanywheresoftware/b4a/Msgbox$DialogResponse;-><init>(Z)V

    .line 1080
    .local v14, dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1081
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_0

    .line 1082
    const/16 v24, -0x1

    move-object v0, v5

    move/from16 v1, v24

    move-object/from16 v2, p2

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1083
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_1

    .line 1084
    const/16 v24, -0x2

    move-object v0, v5

    move/from16 v1, v24

    move-object/from16 v2, p4

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1085
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_2

    .line 1086
    const/16 v24, -0x3

    move-object v0, v5

    move/from16 v1, v24

    move-object/from16 v2, p3

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1087
    :cond_2
    if-eqz p6, :cond_3

    .line 1089
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v6

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1090
    .local v6, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1092
    .end local v6           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    const/16 v24, 0x0

    move-object v0, v5

    move/from16 v1, v24

    invoke-static {v0, v1}, Lanywheresoftware/b4a/Msgbox;->msgbox(Landroid/app/AlertDialog;Z)V

    .line 1093
    move-object v0, v14

    iget v0, v0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->response:I

    .line 1094
    move-object v0, v14

    iget v0, v0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    move/from16 v24, v0

    return v24

    .line 980
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
        0x0t 0x0t 0xfft 0xfft
    .end array-data

    .line 1014
    :array_1
    .array-data 0x4
        0x44t 0x44t 0x44t 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 1049
    :array_2
    .array-data 0x4
        0x44t 0x44t 0x44t 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public getHue()F
    .locals 2

    .prologue
    .line 1104
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getRGB()I
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method public getResponse()I
    .locals 1

    .prologue
    .line 1179
    iget v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->response:I

    return v0
.end method

.method public getSaturation()F
    .locals 2

    .prologue
    .line 1119
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getValue()F
    .locals 2

    .prologue
    .line 1134
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 1171
    const-wide v0, 0x400599999999999aL

    return-wide v0
.end method

.method public setHue(F)V
    .locals 2
    .parameter "hue"

    .prologue
    .line 1109
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1110
    return-void
.end method

.method public setRGB(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 1154
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1155
    return-void
.end method

.method public setSaturation(F)V
    .locals 2
    .parameter "saturation"

    .prologue
    .line 1124
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1125
    return-void
.end method

.method public setValue(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1139
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog$ColorDialogHSV;->hsv:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1140
    return-void
.end method
