.class public Lanywheresoftware/b4a/objects/collections/Map;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "Map.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Map"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/collections/Map$MyMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Lanywheresoftware/b4a/objects/collections/Map$MyMap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->clear()V

    .line 78
    return-void
.end method

.method public ContainsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "Key"

    .prologue
    .line 117
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public Get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "Key"

    .prologue
    .line 62
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public GetDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "Key"
    .parameter "Default"

    .prologue
    .line 68
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, res:Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v1, p2

    .line 71
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public GetKeyAt(I)Ljava/lang/Object;
    .locals 1
    .parameter "Index"

    .prologue
    .line 90
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public GetValueAt(I)Ljava/lang/Object;
    .locals 1
    .parameter "Index"

    .prologue
    .line 103
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public Initialize()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;-><init>()V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/collections/Map;->setObject(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public Put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "Key"
    .parameter "Value"

    .prologue
    .line 49
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {p0, p1, p2}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public Remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "Key"

    .prologue
    .line 56
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->size()I

    move-result v0

    return v0
.end method
