.class public Lanywheresoftware/b4a/objects/collections/List;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "List.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Add(Ljava/lang/Object;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 72
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public AddAll(Lanywheresoftware/b4a/objects/collections/List;)V
    .locals 1
    .parameter "List"

    .prologue
    .line 81
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-virtual {p1}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    return-void
.end method

.method public AddAllAt(ILanywheresoftware/b4a/objects/collections/List;)V
    .locals 1
    .parameter "Index"
    .parameter "List"

    .prologue
    .line 87
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-virtual {p2}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 88
    return-void
.end method

.method public Clear()V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 67
    return-void
.end method

.method public Get(I)Ljava/lang/Object;
    .locals 1
    .parameter "Index"

    .prologue
    .line 106
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public IndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "Item"

    .prologue
    .line 124
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public Initialize()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public Initialize2(Lanywheresoftware/b4a/objects/collections/List;)V
    .locals 1
    .parameter "Array"

    .prologue
    .line 60
    invoke-virtual {p1}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public InsertAt(ILjava/lang/Object;)V
    .locals 0
    .parameter "Index"
    .parameter "Item"

    .prologue
    .line 100
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 101
    return-void
.end method

.method public RemoveAt(I)V
    .locals 0
    .parameter "Index"

    .prologue
    .line 93
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public Set(ILjava/lang/Object;)V
    .locals 0
    .parameter "Index"
    .parameter "Item"

    .prologue
    .line 112
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public Sort(Z)V
    .locals 2
    .parameter "Ascending"

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 142
    :goto_0
    return-void

    .line 135
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lanywheresoftware/b4a/objects/collections/List$1;

    invoke-direct {v1, p0}, Lanywheresoftware/b4a/objects/collections/List$1;-><init>(Lanywheresoftware/b4a/objects/collections/List;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public SortCaseInsensitive(Z)V
    .locals 2
    .parameter "Ascending"

    .prologue
    .line 149
    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lanywheresoftware/b4a/objects/collections/List$2;

    invoke-direct {v1, p0}, Lanywheresoftware/b4a/objects/collections/List$2;-><init>(Lanywheresoftware/b4a/objects/collections/List;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 165
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lanywheresoftware/b4a/objects/collections/List$3;

    invoke-direct {v1, p0}, Lanywheresoftware/b4a/objects/collections/List$3;-><init>(Lanywheresoftware/b4a/objects/collections/List;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
