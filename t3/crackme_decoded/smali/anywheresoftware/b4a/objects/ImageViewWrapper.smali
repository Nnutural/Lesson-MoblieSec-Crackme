.class public Lanywheresoftware/b4a/objects/ImageViewWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "ImageViewWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "ImageView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/View;
    .locals 6
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
            "Landroid/view/View;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    .local p1, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 94
    new-instance p0, Landroid/widget/ImageView;

    .end local p0
    check-cast p3, Landroid/content/Context;

    .end local p3
    invoke-direct {p0, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 96
    :cond_0
    invoke-static {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 97
    .local v4, iv:Landroid/widget/ImageView;
    const-string v5, "drawable"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 98
    .local v2, drawProps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    invoke-static {p0, v2, p2, v5}, Lanywheresoftware/b4a/DynamicBuilder;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 99
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_2

    .line 100
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, -0x1

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 101
    .local v0, cd:Landroid/graphics/drawable/ColorDrawable;
    const-string v5, "gravity"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 102
    .local v3, gravity:Ljava/lang/Integer;
    if-nez v3, :cond_1

    .line 103
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 104
    :cond_1
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/ColorDrawable;->setLevel(I)Z

    .line 109
    .end local v0           #cd:Landroid/graphics/drawable/ColorDrawable;
    .end local v3           #gravity:Ljava/lang/Integer;
    :goto_0
    return-object v4

    .line 108
    :cond_2
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public SetBackgroundImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "Bitmap"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 88
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    .line 74
    :cond_0
    const/4 v1, 0x0

    .line 76
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public getGravity()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 47
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    move v1, v2

    .line 54
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :goto_0
    return v1

    .line 49
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 50
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getGravity()I

    move-result v1

    goto :goto_0

    .line 51
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 52
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 54
    goto :goto_0
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 2
    .parameter "ba"
    .parameter "eventName"
    .parameter "keepOldObject"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 36
    if-nez p3, :cond_0

    .line 37
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 38
    :cond_0
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 39
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 79
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->getGravity()I

    move-result v1

    .line 80
    .local v1, gravity:I
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;-><init>()V

    .line 81
    .local v0, bd:Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->Initialize(Landroid/graphics/Bitmap;)V

    .line 82
    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->setGravity(I)V

    .line 83
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    return-void
.end method

.method public setGravity(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 57
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 58
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_1

    .line 59
    :cond_0
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;-><init>()V

    .line 60
    .local v0, bd:Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->Initialize(Landroid/graphics/Bitmap;)V

    .line 61
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 64
    .end local v0           #bd:Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 65
    return-void
.end method
