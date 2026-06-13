.class public Lanywheresoftware/b4a/BALayout;
.super Landroid/view/ViewGroup;
.source "BALayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/BALayout$LayoutParams;
    }
.end annotation


# static fields
.field private static deviceScale:F

.field private static scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput v0, Lanywheresoftware/b4a/BALayout;->scale:F

    .line 12
    sput v0, Lanywheresoftware/b4a/BALayout;->deviceScale:F

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method static synthetic access$0()F
    .locals 1

    .prologue
    .line 11
    sget v0, Lanywheresoftware/b4a/BALayout;->scale:F

    return v0
.end method

.method public static getDeviceScale()F
    .locals 1

    .prologue
    .line 26
    sget v0, Lanywheresoftware/b4a/BALayout;->deviceScale:F

    return v0
.end method

.method public static setDeviceScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 17
    sput p0, Lanywheresoftware/b4a/BALayout;->deviceScale:F

    .line 18
    return-void
.end method

.method public static setUserScale(F)V
    .locals 1
    .parameter "userScale"

    .prologue
    .line 20
    sget v0, Lanywheresoftware/b4a/BALayout;->deviceScale:F

    invoke-static {v0, p0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 21
    const/high16 v0, 0x3f80

    sput v0, Lanywheresoftware/b4a/BALayout;->scale:F

    .line 24
    :goto_0
    return-void

    .line 23
    :cond_0
    sget v0, Lanywheresoftware/b4a/BALayout;->deviceScale:F

    div-float/2addr v0, p0

    sput v0, Lanywheresoftware/b4a/BALayout;->scale:F

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 30
    invoke-virtual {p0}, Lanywheresoftware/b4a/BALayout;->getChildCount()I

    move-result v1

    .line 31
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 42
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0, v2}, Lanywheresoftware/b4a/BALayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lanywheresoftware/b4a/BALayout$LayoutParams;

    .line 36
    .local v3, lp:Lanywheresoftware/b4a/BALayout$LayoutParams;
    iget v4, v3, Lanywheresoftware/b4a/BALayout$LayoutParams;->left:I

    iget v5, v3, Lanywheresoftware/b4a/BALayout$LayoutParams;->top:I

    .line 37
    iget v6, v3, Lanywheresoftware/b4a/BALayout$LayoutParams;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 38
    iget v7, v3, Lanywheresoftware/b4a/BALayout$LayoutParams;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 36
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 31
    .end local v3           #lp:Lanywheresoftware/b4a/BALayout$LayoutParams;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lanywheresoftware/b4a/BALayout;->measureChildren(II)V

    .line 46
    invoke-virtual {p0}, Lanywheresoftware/b4a/BALayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, p1}, Lanywheresoftware/b4a/BALayout;->resolveSize(II)I

    move-result v0

    .line 47
    invoke-virtual {p0}, Lanywheresoftware/b4a/BALayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, p2}, Lanywheresoftware/b4a/BALayout;->resolveSize(II)I

    move-result v1

    .line 46
    invoke-virtual {p0, v0, v1}, Lanywheresoftware/b4a/BALayout;->setMeasuredDimension(II)V

    .line 48
    return-void
.end method
