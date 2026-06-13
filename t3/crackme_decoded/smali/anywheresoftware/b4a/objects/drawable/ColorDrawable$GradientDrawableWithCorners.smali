.class public Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;
.super Landroid/graphics/drawable/GradientDrawable;
.source "ColorDrawable.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/drawable/ColorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GradientDrawableWithCorners"
.end annotation


# instance fields
.field public cornerRadius:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 0
    .parameter "o"
    .parameter "colors"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 44
    return-void
.end method


# virtual methods
.method public setCornerRadius(F)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 48
    iput p1, p0, Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;->cornerRadius:F

    .line 49
    return-void
.end method
