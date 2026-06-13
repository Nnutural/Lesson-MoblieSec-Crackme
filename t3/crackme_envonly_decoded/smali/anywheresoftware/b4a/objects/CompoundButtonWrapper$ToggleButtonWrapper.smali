.class public Lanywheresoftware/b4a/objects/CompoundButtonWrapper$ToggleButtonWrapper;
.super Lanywheresoftware/b4a/objects/CompoundButtonWrapper;
.source "CompoundButtonWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "ToggleButton"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/CompoundButtonWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleButtonWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/CompoundButtonWrapper",
        "<",
        "Landroid/widget/ToggleButton;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/View;
    .locals 3
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
    .line 206
    .local p1, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 207
    new-instance p0, Landroid/widget/ToggleButton;

    .end local p0
    check-cast p3, Landroid/content/Context;

    .end local p3
    invoke-direct {p0, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    .line 209
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/widget/ToggleButton;

    move-object v1, v0

    .line 210
    .local v1, v:Landroid/widget/ToggleButton;
    const-string v2, "textOn"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 211
    const-string v2, "textOff"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 212
    invoke-static {p0, p1, p2}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper;->build(Ljava/lang/Object;Ljava/util/HashMap;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #v:Landroid/widget/ToggleButton;
    check-cast v1, Landroid/widget/ToggleButton;

    .line 213
    .restart local v1       #v:Landroid/widget/ToggleButton;
    const-string v2, "textColor"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 214
    return-object v1
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 197
    const-string v0, ""

    return-object v0
.end method

.method public getTextOff()Ljava/lang/String;
    .locals 0

    .prologue
    .line 188
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$ToggleButtonWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Landroid/widget/ToggleButton;->getTextOff()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTextOn()Ljava/lang/String;
    .locals 0

    .prologue
    .line 177
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$ToggleButtonWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Landroid/widget/ToggleButton;->getTextOn()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 2
    .parameter "ba"
    .parameter "eventName"
    .parameter "keepOldObject"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 167
    if-nez p3, :cond_0

    .line 168
    new-instance v0, Landroid/widget/ToggleButton;

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$ToggleButtonWrapper;->setObject(Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$ToggleButtonWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_0
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 172
    return-void
.end method

.method public setText(Ljava/lang/Object;)V
    .locals 0
    .parameter "Text"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 203
    return-void
.end method

.method public setTextOff(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 191
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$ToggleButtonWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$ToggleButtonWrapper;->getChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$ToggleButtonWrapper;->setChecked(Z)V

    .line 193
    return-void
.end method

.method public setTextOn(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 180
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$ToggleButtonWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$ToggleButtonWrapper;->getChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$ToggleButtonWrapper;->setChecked(Z)V

    .line 183
    return-void
.end method
