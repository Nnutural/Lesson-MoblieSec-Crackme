.class public Lanywheresoftware/b4a/objects/streams/File;
.super Ljava/lang/Object;
.source "File.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;,
        Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;,
        Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;,
        Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;
    }
.end annotation


# static fields
.field public static final ContentDir:Ljava/lang/String; = "ContentDir"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation
.end field

.field private static final assetsDir:Ljava/lang/String; = "AssetsDir"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "Dir"
    .parameter "FileName"

    .prologue
    .line 138
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "DirSource"
    .parameter "FileSource"
    .parameter "DirTarget"
    .parameter "FileTarget"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-static {p2, p3}, Lanywheresoftware/b4a/objects/streams/File;->Delete(Ljava/lang/String;Ljava/lang/String;)Z

    .line 319
    invoke-static {p0, p1}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 320
    .local v0, in:Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {p2, p3, v2}, Lanywheresoftware/b4a/objects/streams/File;->OpenOutput(Ljava/lang/String;Ljava/lang/String;Z)Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    .line 321
    .local v1, out:Ljava/io/OutputStream;
    invoke-static {v0, v1}, Lanywheresoftware/b4a/objects/streams/File;->Copy2(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 322
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 323
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 324
    return-void
.end method

.method public static Copy2(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "In"
    .parameter "Out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    const/16 v2, 0x2000

    new-array v0, v2, [B

    .line 331
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 332
    .local v1, count:I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_0

    .line 335
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 336
    return-void

    .line 333
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static Delete(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "Dir"
    .parameter "FileName"

    .prologue
    .line 97
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static Exists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "Dir"
    .parameter "FileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const-string v0, "AssetsDir"

    if-eq p0, v0, :cond_0

    .line 85
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 88
    sget-object v1, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 87
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static GetText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "Dir"
    .parameter "FileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p0, p1}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v0

    .line 203
    .local v0, in:Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    new-instance v1, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;-><init>()V

    .line 204
    .local v1, tr:Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {v1, p0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->Initialize(Ljava/io/InputStream;)V

    .line 205
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->ReadAll()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static IsDirectory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "Dir"
    .parameter "FileName"

    .prologue
    .line 131
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public static LastModified(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .parameter "Dir"
    .parameter "FileName"

    .prologue
    .line 125
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public static ListFiles(Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/List;
    .locals 6
    .parameter "Dir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v2, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v2}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 147
    .local v2, list:Lanywheresoftware/b4a/objects/collections/List;
    const-string v3, "AssetsDir"

    if-eq p0, v3, :cond_2

    .line 148
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, folder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " is not a folder."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 151
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, f:[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 153
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 158
    .end local v0           #f:[Ljava/lang/String;
    .end local v1           #folder:Ljava/io/File;
    :cond_1
    :goto_0
    return-object v2

    .line 156
    :cond_2
    sget-object v3, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static MakeDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "Parent"
    .parameter "Dir"

    .prologue
    .line 105
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 107
    return-void
.end method

.method public static OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    .locals 4
    .parameter "Dir"
    .parameter "FileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;-><init>()V

    .line 186
    .local v0, is:Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    const-string v1, "AssetsDir"

    if-ne p0, v1, :cond_0

    .line 187
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sget-object v2, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->setObject(Ljava/lang/Object;)V

    .line 195
    :goto_0
    return-object v0

    .line 189
    :cond_0
    const-string v1, "ContentDir"

    if-ne p0, v1, :cond_1

    .line 190
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->setObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    :cond_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 194
    const/16 v3, 0x1000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 193
    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->setObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static OpenOutput(Ljava/lang/String;Ljava/lang/String;Z)Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;
    .locals 4
    .parameter "Dir"
    .parameter "FileName"
    .parameter "Append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;-><init>()V

    .line 344
    .local v0, o:Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 343
    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->setObject(Ljava/lang/Object;)V

    .line 345
    return-object v0
.end method

.method public static ReadList(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/List;
    .locals 3
    .parameter "Dir"
    .parameter "FileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {p0, p1}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v0

    .line 218
    .local v0, in:Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    new-instance v1, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;-><init>()V

    .line 219
    .local v1, tr:Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {v1, p0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->Initialize(Ljava/io/InputStream;)V

    .line 220
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->ReadList()Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v2

    return-object v2
.end method

.method public static ReadMap(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/Map;
    .locals 1
    .parameter "Dir"
    .parameter "FileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lanywheresoftware/b4a/objects/streams/File;->ReadMap2(Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/objects/collections/Map;)Lanywheresoftware/b4a/objects/collections/Map;

    move-result-object v0

    return-object v0
.end method

.method public static ReadMap2(Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/objects/collections/Map;)Lanywheresoftware/b4a/objects/collections/Map;
    .locals 6
    .parameter "Dir"
    .parameter "FileName"
    .parameter "Map"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-static {p0, p1}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v1

    .line 299
    .local v1, in:Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 300
    .local v2, p:Ljava/util/Properties;
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 301
    if-nez p2, :cond_0

    .line 302
    new-instance p2, Lanywheresoftware/b4a/objects/collections/Map;

    .end local p2
    invoke-direct {p2}, Lanywheresoftware/b4a/objects/collections/Map;-><init>()V

    .line 304
    .restart local p2
    :cond_0
    invoke-virtual {p2}, Lanywheresoftware/b4a/objects/collections/Map;->IsInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    .line 305
    invoke-virtual {p2}, Lanywheresoftware/b4a/objects/collections/Map;->Initialize()V

    .line 307
    :cond_1
    invoke-virtual {v2}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 310
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->Close()V

    .line 311
    return-object p2

    .line 307
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 308
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lanywheresoftware/b4a/objects/collections/Map;->Put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static ReadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "Dir"
    .parameter "FileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-static {p0, p1}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v0

    .line 256
    .local v0, in:Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    new-instance v2, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;

    invoke-direct {v2}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;-><init>()V

    .line 257
    .local v2, tr:Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {v2, p0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->Initialize(Ljava/io/InputStream;)V

    .line 258
    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->ReadAll()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, res:Ljava/lang/String;
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->Close()V

    .line 260
    return-object v1
.end method

.method public static Size(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .parameter "Dir"
    .parameter "FileName"

    .prologue
    .line 113
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static WriteList(Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/objects/collections/List;)V
    .locals 3
    .parameter "Dir"
    .parameter "FileName"
    .parameter "List"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lanywheresoftware/b4a/objects/streams/File;->OpenOutput(Ljava/lang/String;Ljava/lang/String;Z)Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;

    move-result-object v0

    .line 231
    .local v0, out:Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;
    new-instance v1, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;-><init>()V

    .line 232
    .local v1, tw:Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {v1, p0}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->Initialize(Ljava/io/OutputStream;)V

    .line 233
    invoke-virtual {v1, p2}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->WriteList(Lanywheresoftware/b4a/objects/collections/List;)V

    .line 234
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->Close()V

    .line 235
    return-void
.end method

.method public static WriteMap(Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/objects/collections/Map;)V
    .locals 7
    .parameter "Dir"
    .parameter "FileName"
    .parameter "Map"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v4, 0x0

    invoke-static {p0, p1, v4}, Lanywheresoftware/b4a/objects/streams/File;->OpenOutput(Ljava/lang/String;Ljava/lang/String;Z)Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;

    move-result-object v2

    .line 270
    .local v2, out:Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 271
    .local v3, p:Ljava/util/Properties;
    invoke-virtual {p2}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 272
    .local v1, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 275
    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->Close()V

    .line 277
    return-void

    .line 272
    .restart local p0
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 273
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static WriteString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "Dir"
    .parameter "FileName"
    .parameter "Text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lanywheresoftware/b4a/objects/streams/File;->OpenOutput(Ljava/lang/String;Ljava/lang/String;Z)Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;

    move-result-object v0

    .line 243
    .local v0, out:Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;
    new-instance v1, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;-><init>()V

    .line 244
    .local v1, tw:Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {v1, p0}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->Initialize(Ljava/io/OutputStream;)V

    .line 245
    invoke-virtual {v1, p2}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->Write(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->Close()V

    .line 247
    return-void
.end method

.method public static getDirAssets()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "AssetsDir"

    return-object v0
.end method

.method public static getDirDefaultExternal()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/Android/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/files/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDirInternal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirInternalCache()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirRootExternal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalReadable()Z
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    :cond_0
    const/4 v1, 0x1

    .line 178
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getExternalWritable()Z
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x1

    .line 168
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
