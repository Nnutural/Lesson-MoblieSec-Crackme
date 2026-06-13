.class public Lanywheresoftware/b4a/objects/drawable/StateListDrawable;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "StateListDrawable.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "StateListDrawable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Landroid/graphics/drawable/StateListDrawable;",
        ">;"
    }
.end annotation


# static fields
.field public static final State_Checked:I = 0x10100a0

.field public static final State_Disabled:I = -0x101009e

.field public static final State_Enabled:I = 0x101009e

.field public static final State_Pressed:I = 0x10100a7

.field public static final State_Selected:I = 0x10100a1

.field public static final State_Unchecked:I = -0x10100a0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/graphics/drawable/Drawable;
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
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .local p1, d:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 70
    .local v3, sld:Landroid/graphics/drawable/StateListDrawable;
    const-string v4, "disabledDrawable"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-static {p0, v4, p2, p3}, Lanywheresoftware/b4a/DynamicBuilder;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 72
    .local v0, disabled:Landroid/graphics/drawable/Drawable;
    const-string v4, "enabledDrawable"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-static {p0, v4, p2, p3}, Lanywheresoftware/b4a/DynamicBuilder;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 74
    .local v1, enabled:Landroid/graphics/drawable/Drawable;
    const-string v4, "pressedDrawable"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-static {p0, v4, p2, p3}, Lanywheresoftware/b4a/DynamicBuilder;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 76
    .local v2, pressed:Landroid/graphics/drawable/Drawable;
    new-array v4, v7, [I

    const v5, -0x101009e

    aput v5, v4, v6

    invoke-virtual {v3, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 77
    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 78
    new-array v4, v6, [I

    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 79
    return-object v3
.end method


# virtual methods
.method public AddCatchAllState(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "Drawable"

    .prologue
    .line 61
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/StateListDrawable;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 62
    return-void
.end method

.method public AddState(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "State"
    .parameter "Drawable"

    .prologue
    .line 46
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/StateListDrawable;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 47
    return-void
.end method

.method public AddState2([ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "State"
    .parameter "Drawable"

    .prologue
    .line 54
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/StateListDrawable;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 55
    return-void
.end method

.method public Initialize()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/drawable/StateListDrawable;->setObject(Ljava/lang/Object;)V

    .line 40
    return-void
.end method
