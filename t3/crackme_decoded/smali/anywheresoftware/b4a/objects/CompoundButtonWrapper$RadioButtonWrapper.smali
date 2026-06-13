.class public Lanywheresoftware/b4a/objects/CompoundButtonWrapper$RadioButtonWrapper;
.super Lanywheresoftware/b4a/objects/CompoundButtonWrapper;
.source "CompoundButtonWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "RadioButton"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/CompoundButtonWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioButtonWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/CompoundButtonWrapper$RadioButtonWrapper$RadioButtonListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/CompoundButtonWrapper",
        "<",
        "Landroid/widget/RadioButton;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/View;
    .locals 1
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
    .line 148
    .local p1, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 149
    new-instance p0, Landroid/widget/RadioButton;

    .end local p0
    check-cast p3, Landroid/content/Context;

    .end local p3
    invoke-direct {p0, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 151
    :cond_0
    invoke-static {p0, p1, p2}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper;->build(Ljava/lang/Object;Ljava/util/HashMap;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 152
    .local v0, v:Landroid/widget/RadioButton;
    return-object v0
.end method


# virtual methods
.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 2
    .parameter "ba"
    .parameter "eventName"
    .parameter "keepOldObject"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 108
    if-nez p3, :cond_0

    .line 109
    new-instance v0, Landroid/widget/RadioButton;

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$RadioButtonWrapper;->setObject(Ljava/lang/Object;)V

    .line 110
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, v0, v1}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;ZZ)V

    .line 111
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$RadioButtonWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    new-instance v1, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$RadioButtonWrapper$RadioButtonListener;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$RadioButtonWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/RadioButton;

    invoke-direct {v1, p2, p1, p0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$RadioButtonWrapper$RadioButtonListener;-><init>(Ljava/lang/String;Lanywheresoftware/b4a/BA;Landroid/widget/RadioButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    return-void
.end method
