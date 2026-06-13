.class public Lanywheresoftware/b4a/objects/ViewWrapper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "ViewWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static lastId:I
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation
.end field


# instance fields
.field protected ba:Lanywheresoftware/b4a/BA;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;
    .locals 8
    .parameter "prev"
    .parameter
    .parameter "designer"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 268
    .local p1, props:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    .line 269
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    .line 270
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 271
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lanywheresoftware/b4a/BALayout$LayoutParams;

    .line 272
    .local v1, lp:Lanywheresoftware/b4a/BALayout$LayoutParams;
    if-nez v1, :cond_1

    .line 273
    new-instance v1, Lanywheresoftware/b4a/BALayout$LayoutParams;

    .end local v1           #lp:Lanywheresoftware/b4a/BALayout$LayoutParams;
    invoke-direct {v1}, Lanywheresoftware/b4a/BALayout$LayoutParams;-><init>()V

    .line 274
    .restart local v1       #lp:Lanywheresoftware/b4a/BALayout$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    :cond_1
    const-string v4, "left"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "top"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 277
    const-string v6, "width"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "height"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 276
    invoke-virtual {v1, v4, v5, v6, v7}, Lanywheresoftware/b4a/BALayout$LayoutParams;->setFromUserPlane(IIII)V

    .line 278
    const-string v4, "enabled"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 279
    if-nez p2, :cond_3

    .line 280
    const/4 v3, 0x0

    .line 281
    .local v3, visibile:I
    const-string v4, "visible"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 282
    const/16 v3, 0x8

    .line 283
    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 284
    const-string v4, "tag"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 286
    .end local v3           #visibile:I
    :cond_3
    return-object v2
.end method


# virtual methods
.method public BringToFront()V
    .locals 2

    .prologue
    .line 200
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 202
    .local v0, vg:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 203
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 205
    .end local v0           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 2
    .parameter "ba"
    .parameter "EventName"

    .prologue
    .line 38
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    sget-object v0, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 39
    return-void
.end method

.method public Invalidate()V
    .locals 0

    .prologue
    .line 86
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 87
    return-void
.end method

.method public Invalidate2(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "Rect"

    .prologue
    .line 93
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 94
    return-void
.end method

.method public Invalidate3(IIII)V
    .locals 0
    .parameter "Left"
    .parameter "Top"
    .parameter "Right"
    .parameter "Bottom"

    .prologue
    .line 100
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    .line 101
    return-void
.end method

.method public RemoveView()V
    .locals 2

    .prologue
    .line 220
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 222
    .local v0, vg:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 224
    .end local v0           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public RequestFocus()Z
    .locals 1

    .prologue
    .line 241
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public SendToBack()V
    .locals 2

    .prologue
    .line 210
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 212
    .local v0, vg:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 213
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 215
    .end local v0           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public SetBackgroundImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "Bitmap"

    .prologue
    .line 77
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;-><init>()V

    .line 78
    .local v0, bd:Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->Initialize(Landroid/graphics/Bitmap;)V

    .line 79
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    return-void
.end method

.method public SetLayout(IIII)V
    .locals 2
    .parameter "Left"
    .parameter "Top"
    .parameter "Width"
    .parameter "Height"

    .prologue
    .line 229
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/BALayout$LayoutParams;

    .line 230
    .local v0, lp:Lanywheresoftware/b4a/BALayout$LayoutParams;
    iput p1, v0, Lanywheresoftware/b4a/BALayout$LayoutParams;->left:I

    .line 231
    iput p2, v0, Lanywheresoftware/b4a/BALayout$LayoutParams;->top:I

    .line 232
    iput p3, v0, Lanywheresoftware/b4a/BALayout$LayoutParams;->width:I

    .line 233
    iput p4, v0, Lanywheresoftware/b4a/BALayout$LayoutParams;->height:I

    .line 234
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 235
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 71
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1

    .prologue
    .line 194
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 114
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public getLeft()I
    .locals 2

    .prologue
    .line 118
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/BALayout$LayoutParams;

    .line 119
    .local v0, lp:Lanywheresoftware/b4a/BALayout$LayoutParams;
    iget v1, v0, Lanywheresoftware/b4a/BALayout$LayoutParams;->left:I

    return v1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTop()I
    .locals 2

    .prologue
    .line 122
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/BALayout$LayoutParams;

    .line 123
    .local v0, lp:Lanywheresoftware/b4a/BALayout$LayoutParams;
    iget v1, v0, Lanywheresoftware/b4a/BALayout$LayoutParams;->top:I

    return v1
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 188
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 111
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 2
    .parameter "ba"
    .parameter "eventName"
    .parameter "keepOldObject"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    iput-object p1, p0, Lanywheresoftware/b4a/objects/ViewWrapper;->ba:Lanywheresoftware/b4a/BA;

    .line 43
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lanywheresoftware/b4a/objects/ViewWrapper;->lastId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lanywheresoftware/b4a/objects/ViewWrapper;->lastId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_click"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lanywheresoftware/b4a/objects/ViewWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper$1;-><init>(Lanywheresoftware/b4a/objects/ViewWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_longclick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lanywheresoftware/b4a/objects/ViewWrapper$2;

    invoke-direct {v1, p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper$2;-><init>(Lanywheresoftware/b4a/objects/ViewWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 66
    :cond_1
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 74
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method

.method public setColor(I)V
    .locals 10
    .parameter "color"

    .prologue
    .line 147
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 148
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    instance-of v8, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v8, :cond_1

    .line 149
    const/4 v5, 0x0

    .line 150
    .local v5, radius:F
    instance-of v8, v1, Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;

    if-eqz v8, :cond_0

    .line 151
    check-cast v1, Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    iget v5, v1, Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;->cornerRadius:F

    .line 166
    :goto_0
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;-><init>()V

    .line 167
    .local v0, cd:Lanywheresoftware/b4a/objects/drawable/ColorDrawable;
    float-to-int v8, v5

    invoke-virtual {v0, p1, v8}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;->Initialize(II)V

    .line 168
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/drawable/ColorDrawable;->getObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    .end local v0           #cd:Lanywheresoftware/b4a/objects/drawable/ColorDrawable;
    .end local v5           #radius:F
    :goto_1
    return-void

    .line 154
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v5       #radius:F
    .restart local p0       #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 156
    .local v3, g:Landroid/graphics/drawable/GradientDrawable;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "mGradientState"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 157
    .local v7, state:Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 158
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 159
    .local v4, gstate:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "mRadius"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 160
    .local v6, radiusF:Ljava/lang/reflect/Field;
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 162
    .end local v4           #gstate:Ljava/lang/Object;
    .end local v6           #radiusF:Ljava/lang/reflect/Field;
    .end local v7           #state:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 163
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lanywheresoftware/b4a/keywords/Common;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #g:Landroid/graphics/drawable/GradientDrawable;
    .end local v5           #radius:F
    :cond_1
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "Enabled"

    .prologue
    .line 191
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 192
    return-void
.end method

.method public setHeight(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 126
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 127
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 129
    return-void
.end method

.method public setLeft(I)V
    .locals 2
    .parameter "left"

    .prologue
    .line 132
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/BALayout$LayoutParams;

    .line 133
    .local v0, lp:Lanywheresoftware/b4a/BALayout$LayoutParams;
    iput p1, v0, Lanywheresoftware/b4a/BALayout$LayoutParams;->left:I

    .line 134
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 135
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 176
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public setTop(I)V
    .locals 2
    .parameter "top"

    .prologue
    .line 138
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/BALayout$LayoutParams;

    .line 139
    .local v0, lp:Lanywheresoftware/b4a/BALayout$LayoutParams;
    iput p1, v0, Lanywheresoftware/b4a/BALayout$LayoutParams;->top:I

    .line 140
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 141
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .parameter "Visible"

    .prologue
    .line 185
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 186
    return-void

    .line 185
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setWidth(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 106
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 107
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 108
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 246
    .local p0, this:Lanywheresoftware/b4a/objects/ViewWrapper;,"Lanywheresoftware/b4a/objects/ViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->baseToString()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, s:Ljava/lang/String;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->IsInitialized()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Enabled=false, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Visible=false, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_1
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 254
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lanywheresoftware/b4a/BALayout$LayoutParams;

    if-nez v1, :cond_4

    .line 255
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Layout not available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", Tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_3
    return-object v0

    .line 258
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Left="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 259
    const-string v2, ", Height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
