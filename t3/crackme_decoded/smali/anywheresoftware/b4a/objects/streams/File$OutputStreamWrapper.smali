.class public Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "File.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "OutputStream"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/streams/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStreamWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Ljava/io/OutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 417
    return-void
.end method

.method public Flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 423
    return-void
.end method

.method public InitializeToBytesArray(I)V
    .locals 1
    .parameter "StartSize"

    .prologue
    .line 401
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->setObject(Ljava/lang/Object;)V

    .line 402
    return-void
.end method

.method public ToBytesArray()[B
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ToBytes can only be called after InitializeToBytesArray."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public WriteBytes([BII)V
    .locals 0
    .parameter "Buffer"
    .parameter "StartOffset"
    .parameter "Length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 430
    return-void
.end method
