.class public Lanywheresoftware/b4a/keywords/StringBuilderWrapper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "StringBuilderWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "StringBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;
    .locals 1
    .parameter "Text"

    .prologue
    .line 50
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    return-object p0
.end method

.method public Initialize()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->setObject(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public Insert(ILjava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;
    .locals 1
    .parameter "Offset"
    .parameter "Text"

    .prologue
    .line 72
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    return-object p0
.end method

.method public Remove(II)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;
    .locals 1
    .parameter "StartOffset"
    .parameter "EndOffset"

    .prologue
    .line 65
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 66
    return-object p0
.end method

.method public ToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->getObjectOrNull()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
