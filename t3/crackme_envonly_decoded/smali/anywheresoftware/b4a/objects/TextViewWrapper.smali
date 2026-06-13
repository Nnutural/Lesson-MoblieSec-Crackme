.class public Lanywheresoftware/b4a/objects/TextViewWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "TextViewWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/TextView;",
        ">",
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;
    .locals 10
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
    .local p1, props:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    const-class v9, Landroid/view/Gravity;

    const-class v8, Landroid/graphics/Typeface;

    .line 77
    invoke-static {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 78
    .local v4, v:Landroid/widget/TextView;
    const-string v6, "text"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const-string v6, "typeface"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 81
    .local v3, typeFace:Ljava/lang/String;
    const-class v6, Landroid/graphics/Typeface;

    invoke-virtual {v8, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 82
    .local v2, tf:Landroid/graphics/Typeface;
    const-class v6, Landroid/graphics/Typeface;

    const-string v6, "style"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 83
    .local v1, style:I
    const-string v6, "fontsize"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 84
    invoke-virtual {v4, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 85
    const-class v6, Landroid/view/Gravity;

    const-string v6, "vAlignment"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v9, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 86
    .local v5, vAlign:I
    const-class v6, Landroid/view/Gravity;

    const-string v6, "hAlignment"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v9, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 87
    .local v0, hAlign:I
    or-int v6, v5, v0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 88
    const-string v6, "textColor"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    if-eqz p2, :cond_1

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 90
    :cond_0
    const-string v6, "name"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v6, -0x777778

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    :cond_1
    return-object v4
.end method


# virtual methods
.method public getGravity()I
    .locals 1

    .prologue
    .line 54
    .local p0, this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    .local p0, this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 41
    .local p0, this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 2

    .prologue
    .line 47
    .local p0, this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 48
    .local v0, pixels:F
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v1, v0, v1

    return v1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 60
    .local p0, this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public setGravity(I)V
    .locals 0
    .parameter "Gravity"

    .prologue
    .line 51
    .local p0, this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 52
    return-void
.end method

.method public setText(Ljava/lang/Object;)V
    .locals 3
    .parameter "Text"

    .prologue
    .line 31
    .local p0, this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    instance-of v2, p1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 32
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v0

    .line 35
    .local v1, cs:Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void

    .line 34
    .end local v1           #cs:Ljava/lang/CharSequence;
    .restart local p0       #this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #cs:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "Color"

    .prologue
    .line 38
    .local p0, this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .parameter "TextSize"

    .prologue
    .line 44
    .local p0, this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 45
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .parameter "Typeface"

    .prologue
    .line 57
    .local p0, this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lanywheresoftware/b4a/objects/TextViewWrapper;,"Lanywheresoftware/b4a/objects/TextViewWrapper<TT;>;"
    invoke-super {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, s:Ljava/lang/String;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->IsInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", Text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 69
    .end local v0           #s:Ljava/lang/String;
    .local v1, s:Ljava/lang/String;
    :goto_0
    return-object v1

    .end local v1           #s:Ljava/lang/String;
    .restart local v0       #s:Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .end local v0           #s:Ljava/lang/String;
    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0
.end method
