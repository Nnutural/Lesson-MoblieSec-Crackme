.class public Lanywheresoftware/b4a/objects/PanelWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "PanelWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Panel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/ViewGroup;
    .locals 5
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
            "Landroid/view/ViewGroup;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    .local p1, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v3, v0

    .line 88
    .local v3, vg:Landroid/view/ViewGroup;
    if-nez v3, :cond_0

    .line 89
    new-instance v3, Lanywheresoftware/b4a/BALayout;

    .end local v3           #vg:Landroid/view/ViewGroup;
    check-cast p3, Landroid/content/Context;

    .end local p3
    invoke-direct {v3, p3}, Lanywheresoftware/b4a/BALayout;-><init>(Landroid/content/Context;)V

    .line 91
    .restart local v3       #vg:Landroid/view/ViewGroup;
    :cond_0
    invoke-static {v3, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    move-result-object v3

    .end local v3           #vg:Landroid/view/ViewGroup;
    check-cast v3, Landroid/view/ViewGroup;

    .line 92
    .restart local v3       #vg:Landroid/view/ViewGroup;
    const-string v4, "drawable"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 93
    .local v2, drawProps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    invoke-static {v3, v2, p2, v4}, Lanywheresoftware/b4a/DynamicBuilder;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 94
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-object v3
.end method


# virtual methods
.method public AddView(Landroid/view/View;IIII)V
    .locals 1
    .parameter "View"
    .parameter "Left"
    .parameter "Top"
    .parameter "Width"
    .parameter "Height"

    .prologue
    .line 56
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    new-instance v0, Lanywheresoftware/b4a/BALayout$LayoutParams;

    invoke-direct {v0, p2, p3, p4, p5}, Lanywheresoftware/b4a/BALayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    return-void
.end method

.method public GetView(I)Lanywheresoftware/b4a/objects/ConcreteViewWrapper;
    .locals 2
    .parameter "Index"

    .prologue
    .line 62
    new-instance v0, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;-><init>()V

    .line 63
    .local v0, c:Lanywheresoftware/b4a/objects/ConcreteViewWrapper;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 64
    return-object v0
.end method

.method public LoadLayout(Ljava/lang/String;Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/keywords/LayoutValues;
    .locals 1
    .parameter "Layout"
    .parameter "ba"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p1, p2, v0, p0}, Lanywheresoftware/b4a/keywords/LayoutBuilder;->loadLayout(Ljava/lang/String;Lanywheresoftware/b4a/BA;ZLandroid/view/ViewGroup;)Lanywheresoftware/b4a/keywords/LayoutValues;

    move-result-object v0

    return-object v0
.end method

.method public RemoveViewAt(I)V
    .locals 0
    .parameter "Index"

    .prologue
    .line 70
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 71
    return-void
.end method

.method public getNumberOfViews()I
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

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
    .line 33
    if-nez p3, :cond_0

    .line 34
    new-instance v0, Lanywheresoftware/b4a/BALayout;

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lanywheresoftware/b4a/BALayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->setObject(Ljava/lang/Object;)V

    .line 35
    :cond_0
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lanywheresoftware/b4a/objects/PanelWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lanywheresoftware/b4a/objects/PanelWrapper$1;-><init>(Lanywheresoftware/b4a/objects/PanelWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51
    :cond_1
    return-void
.end method
