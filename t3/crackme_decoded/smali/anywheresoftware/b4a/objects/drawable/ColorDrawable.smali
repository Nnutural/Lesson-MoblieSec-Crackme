.class public Lanywheresoftware/b4a/objects/drawable/ColorDrawable;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "ColorDrawable.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "ColorDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "prev"
    .parameter
    .parameter "designer"
    .parameter "tag"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/lang/Object;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, d:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "alpha"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 54
    .local v0, alpha:I
    const-string v5, "color"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 55
    .local v4, solidColor:I
    shl-int/lit8 v5, v0, 0x18

    shl-int/lit8 v6, v4, 0x8

    ushr-int/lit8 v6, v6, 0x8

    or-int v2, v5, v6

    .line 56
    .local v2, color:I
    const-string v5, "cornerRadius"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 57
    .local v3, corners:Ljava/lang/Integer;
    if-nez v3, :cond_0

    .line 58
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 59
    :cond_0
    new-instance v1, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;-><init>()V

    .line 60
    .local v1, cd:Lanywheresoftware/b4a/objects/drawable/ColorDrawable;
    invoke-static {}, Lanywheresoftware/b4a/BALayout;->getDeviceScale()F

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v2, v5}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;->Initialize(II)V

    .line 61
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method


# virtual methods
.method public Initialize(II)V
    .locals 4
    .parameter "Color"
    .parameter "CornerRadius"

    .prologue
    .line 30
    if-nez p2, :cond_0

    .line 31
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;->setObject(Ljava/lang/Object;)V

    .line 38
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;

    .line 34
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    .line 33
    invoke-direct {v0, v1, v2}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 35
    .local v0, gd:Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;
    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;->setCornerRadius(F)V

    .line 36
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;->setObject(Ljava/lang/Object;)V

    goto :goto_0
.end method
