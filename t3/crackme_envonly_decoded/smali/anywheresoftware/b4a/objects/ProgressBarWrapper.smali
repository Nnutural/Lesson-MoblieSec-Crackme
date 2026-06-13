.class public Lanywheresoftware/b4a/objects/ProgressBarWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "ProgressBarWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "ProgressBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<",
        "Landroid/widget/ProgressBar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/View;
    .locals 8
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
    .local p1, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 62
    const-string v5, "indeterminate"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 63
    .local v1, indeterminate:Z
    if-nez p0, :cond_0

    .line 64
    new-instance v3, Landroid/widget/ProgressBar;

    move-object v0, p3

    check-cast v0, Landroid/content/Context;

    move-object v5, v0

    const v6, 0x1010078

    invoke-direct {v3, v5, v7, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    .local v3, pb1:Landroid/widget/ProgressBar;
    new-instance v2, Landroid/widget/ProgressBar;

    check-cast p3, Landroid/content/Context;

    .end local p3
    const v5, 0x1010077

    invoke-direct {v2, p3, v7, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    .local v2, pb:Landroid/widget/ProgressBar;
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    move-object p0, v3

    .line 69
    .end local v2           #pb:Landroid/widget/ProgressBar;
    .end local v3           #pb1:Landroid/widget/ProgressBar;
    .end local p0
    :cond_0
    invoke-static {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 70
    .local v4, v:Landroid/widget/ProgressBar;
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 71
    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 72
    if-eqz p2, :cond_1

    .line 73
    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 74
    :cond_1
    return-object v4
.end method


# virtual methods
.method public getIndeterminate()Z
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ProgressBarWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ProgressBarWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 5
    .parameter "ba"
    .parameter "eventName"
    .parameter "keepOldObject"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 30
    if-nez p3, :cond_0

    .line 31
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    const v3, 0x1010078

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    .local v1, pb1:Landroid/widget/ProgressBar;
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v2, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    const v3, 0x1010077

    invoke-direct {v0, v2, v4, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    .local v0, pb:Landroid/widget/ProgressBar;
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    invoke-virtual {p0, v1}, Lanywheresoftware/b4a/objects/ProgressBarWrapper;->setObject(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ProgressBarWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 36
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ProgressBarWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 38
    .end local v0           #pb:Landroid/widget/ProgressBar;
    .end local v1           #pb1:Landroid/widget/ProgressBar;
    :cond_0
    const/4 v2, 0x1

    invoke-super {p0, p1, p2, v2}, Lanywheresoftware/b4a/objects/ViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 39
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 54
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ProgressBarWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 55
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ProgressBarWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 56
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 48
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ProgressBarWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 49
    return-void
.end method
