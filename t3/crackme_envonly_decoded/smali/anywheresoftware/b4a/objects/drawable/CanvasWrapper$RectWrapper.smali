.class public Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "CanvasWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Rect"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RectWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Initialize(IIII)V
    .locals 1
    .parameter "Left"
    .parameter "Top"
    .parameter "Right"
    .parameter "Bottom"

    .prologue
    .line 590
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 591
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->setObject(Ljava/lang/Object;)V

    .line 592
    return-void
.end method

.method public getBottom()I
    .locals 1

    .prologue
    .line 596
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getCenterX()I
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getRight()I
    .locals 1

    .prologue
    .line 595
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 594
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public setBottom(I)V
    .locals 0
    .parameter "Bottom"

    .prologue
    .line 596
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Rect;

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setLeft(I)V
    .locals 0
    .parameter "Left"

    .prologue
    .line 593
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Rect;

    iput p1, p0, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method public setRight(I)V
    .locals 0
    .parameter "Right"

    .prologue
    .line 595
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Rect;

    iput p1, p0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public setTop(I)V
    .locals 0
    .parameter "Top"

    .prologue
    .line 594
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Rect;

    iput p1, p0, Landroid/graphics/Rect;->top:I

    return-void
.end method
