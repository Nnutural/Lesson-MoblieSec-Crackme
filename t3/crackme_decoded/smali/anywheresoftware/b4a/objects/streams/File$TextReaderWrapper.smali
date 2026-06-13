.class public Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "File.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "TextReader"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/streams/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextReaderWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Ljava/io/BufferedReader;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 505
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
    .line 595
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/BufferedReader;

    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 596
    return-void
.end method

.method public Initialize(Ljava/io/InputStream;)V
    .locals 3
    .parameter "InputStream"

    .prologue
    .line 510
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 511
    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 510
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->setObject(Ljava/lang/Object;)V

    .line 512
    return-void
.end method

.method public Initialize2(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .parameter "InputStream"
    .parameter "Encoding"

    .prologue
    .line 517
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 518
    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 517
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->setObject(Ljava/lang/Object;)V

    .line 519
    return-void
.end method

.method public Read([CII)I
    .locals 1
    .parameter "Buffer"
    .parameter "StartOffset"
    .parameter "Length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/BufferedReader;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v0

    return v0
.end method

.method public ReadAll()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x400

    const/4 v4, 0x0

    .line 557
    new-array v0, v3, [C

    .line 558
    .local v0, buffer:[C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 560
    .local v2, sb:Ljava/lang/StringBuilder;
    :goto_0
    array-length v3, v0

    invoke-virtual {p0, v0, v4, v3}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->Read([CII)I

    move-result v1

    .local v1, count:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 566
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->Close()V

    .line 567
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 561
    :cond_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 562
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 564
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public ReadLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/BufferedReader;

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ReadList()Lanywheresoftware/b4a/objects/collections/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    new-instance v0, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 575
    .local v0, List:Lanywheresoftware/b4a/objects/collections/List;
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    .line 577
    :goto_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->ReadLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 580
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->Close()V

    .line 581
    return-object v0

    .line 578
    :cond_0
    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/collections/List;->Add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/BufferedReader;

    invoke-virtual {p0}, Ljava/io/BufferedReader;->ready()Z

    move-result v0

    return v0
.end method

.method public Skip(I)I
    .locals 2
    .parameter "NumberOfCharaceters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/BufferedReader;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/io/BufferedReader;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
