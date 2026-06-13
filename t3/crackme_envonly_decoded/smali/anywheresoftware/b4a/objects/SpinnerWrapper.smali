.class public Lanywheresoftware/b4a/objects/SpinnerWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "SpinnerWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Spinner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;,
        Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<",
        "Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/View;
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
            "Landroid/view/View;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 207
    .local p1, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 208
    new-instance p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    .end local p0
    check-cast p3, Landroid/content/Context;

    .end local p3
    invoke-direct {p0, p3}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;-><init>(Landroid/content/Context;)V

    .line 210
    :cond_0
    invoke-static {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    .line 211
    .local v1, list:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;
    const-string v3, "fontsize"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 212
    .local v0, f:Ljava/lang/Float;
    if-eqz v0, :cond_1

    .line 213
    iget-object v3, v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v3, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textSize:F

    .line 214
    iget-object v3, v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    const-string v4, "textColor"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    .line 215
    iget-object v3, v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget v3, v3, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 216
    iget-object v3, v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    const/4 v4, 0x0

    iput v4, v3, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    .line 218
    :cond_1
    if-eqz p2, :cond_2

    .line 219
    iget-object v3, v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget-object v3, v3, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 220
    iget-object v3, v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget-object v3, v3, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    const-string v4, "name"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v3, v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {v3}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->notifyDataSetChanged()V

    .line 223
    :cond_2
    const-string v3, "prompt"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 224
    .local v2, prompt:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 225
    invoke-virtual {v1, v2}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 226
    :cond_3
    return-object v1
.end method


# virtual methods
.method public Add(Ljava/lang/String;)V
    .locals 3
    .parameter "Item"

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->notifyDataSetChanged()V

    .line 102
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    const/4 v1, 0x0

    iput v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 109
    return-void

    .line 106
    .restart local p0
    :catchall_0
    move-exception v0

    .line 107
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 108
    throw v0
.end method

.method public AddAll(Lanywheresoftware/b4a/objects/collections/List;)V
    .locals 3
    .parameter "List"

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget-object v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->notifyDataSetChanged()V

    .line 121
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    const/4 v1, 0x0

    iput v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 126
    return-void

    .line 123
    .restart local p0
    :catchall_0
    move-exception v0

    .line 124
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 125
    throw v0
.end method

.method public Clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 155
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->notifyDataSetChanged()V

    .line 156
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    const/4 v1, -0x1

    iput v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 160
    return-void

    .line 157
    .restart local p0
    :catchall_0
    move-exception v0

    .line 158
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 159
    throw v0
.end method

.method public GetItem(I)Ljava/lang/String;
    .locals 1
    .parameter "Index"

    .prologue
    .line 131
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IndexOf(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 79
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public RemoveAt(I)V
    .locals 4
    .parameter "Index"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 137
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v3, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 140
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->notifyDataSetChanged()V

    .line 141
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->getCount()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    sub-int/2addr v1, v3

    iput v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 147
    return-void

    .line 144
    .restart local p0
    :catchall_0
    move-exception v0

    .line 145
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 146
    throw v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 0

    .prologue
    .line 85
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    invoke-virtual {v1, v2}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 76
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget v0, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v1, v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget v0, v1, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textSize:F

    .line 179
    .local v0, pixels:F
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v1, v0, v1

    return v1
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 2
    .parameter "ba"
    .parameter "eventName"
    .parameter "keepOldObject"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 41
    if-nez p3, :cond_0

    .line 42
    new-instance v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->setObject(Ljava/lang/Object;)V

    .line 44
    :cond_0
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Lanywheresoftware/b4a/objects/ViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 45
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-object p1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->ba:Lanywheresoftware/b4a/BA;

    .line 46
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-object p2, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->eventName:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 49
    return-void
.end method

.method public setPrompt(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 88
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    const/4 p1, 0x0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->setSelection(I)V

    .line 66
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput p1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 70
    return-void

    .line 67
    .restart local p0
    :catchall_0
    move-exception v0

    .line 68
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iput-boolean v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 69
    throw v0
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "Color"

    .prologue
    .line 166
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iput p1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    .line 167
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "TextSize"

    .prologue
    .line 175
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/SpinnerWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iput p1, v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textSize:F

    .line 176
    return-void
.end method
