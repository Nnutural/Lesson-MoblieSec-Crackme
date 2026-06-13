.class public Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;
.super Ljava/lang/Object;
.source "ByteConverter.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "ByteConverter"
.end annotation


# static fields
.field private static final version:D = 1.1


# instance fields
.field private endian:Ljava/nio/ByteOrder;

.field private hexArray:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->hexArray:[C

    .line 53
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->endian:Ljava/nio/ByteOrder;

    .line 32
    return-void

    .line 51
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method


# virtual methods
.method public ArrayCopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 0
    .parameter "src"
    .parameter "srcOffset"
    .parameter "dest"
    .parameter "destOffset"
    .parameter "count"

    .prologue
    .line 227
    invoke-static {p1, p2, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    return-void
.end method

.method public CharsFromBytes([B)[C
    .locals 4
    .parameter "bytes"

    .prologue
    .line 81
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->endian:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v1

    .line 82
    .local v1, cb:Ljava/nio/CharBuffer;
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [C

    .line 83
    .local v0, ca:[C
    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 84
    return-object v0
.end method

.method public CharsToBytes([C)[B
    .locals 4
    .parameter "vals"

    .prologue
    .line 93
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->endian:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 94
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v1

    .line 95
    .local v1, cb:Ljava/nio/CharBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    .line 96
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public DoublesFromBytes([B)[D
    .locals 4
    .parameter "bytes"

    .prologue
    .line 130
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->endian:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v1

    .line 131
    .local v1, db:Ljava/nio/DoubleBuffer;
    array-length v2, p1

    div-int/lit8 v2, v2, 0x8

    new-array v0, v2, [D

    .line 132
    .local v0, da:[D
    invoke-virtual {v1, v0}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    .line 133
    return-object v0
.end method

.method public DoublesToBytes([D)[B
    .locals 4
    .parameter "vals"

    .prologue
    .line 141
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->endian:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 142
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v1

    .line 143
    .local v1, db:Ljava/nio/DoubleBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    .line 144
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public FloatsFromBytes([B)[F
    .locals 4
    .parameter "bytes"

    .prologue
    .line 106
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->endian:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 107
    .local v1, fb:Ljava/nio/FloatBuffer;
    array-length v2, p1

    div-int/lit8 v2, v2, 0x4

    new-array v0, v2, [F

    .line 108
    .local v0, fa:[F
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 109
    return-object v0
.end method

.method public FloatsToBytes([F)[B
    .locals 4
    .parameter "vals"

    .prologue
    .line 117
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->endian:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 118
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 119
    .local v1, fb:Ljava/nio/FloatBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 120
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public FromChars([C)Ljava/lang/String;
    .locals 1
    .parameter "chars"

    .prologue
    .line 329
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public HexFromBytes([B)Ljava/lang/String;
    .locals 7
    .parameter "bytes"

    .prologue
    .line 237
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x2

    new-array v0, v5, [C

    .line 238
    .local v0, hexChars:[C
    const/4 v2, 0x0

    .line 239
    .local v2, j:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p1

    if-lt v1, v5, :cond_0

    .line 245
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 241
    :cond_0
    aget-byte v5, p1, v1

    and-int/lit16 v4, v5, 0xff

    .line 242
    .local v4, v:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    iget-object v5, p0, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->hexArray:[C

    shr-int/lit8 v6, v4, 0x4

    aget-char v5, v5, v6

    aput-char v5, v0, v2

    .line 243
    add-int/lit8 v2, v3, 0x1

    .end local v3           #j:I
    .restart local v2       #j:I
    iget-object v5, p0, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->hexArray:[C

    and-int/lit8 v6, v4, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v3

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public HexToBytes(Ljava/lang/String;)[B
    .locals 10
    .parameter "hex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    rem-int/lit8 v7, v7, 0x2

    if-lez v7, :cond_0

    .line 254
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "hex string has odd number of characters"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 255
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    new-array v0, v7, [B

    .line 256
    .local v0, bytes:[B
    const/4 v4, 0x0

    .local v4, i:I
    const/4 v2, 0x0

    .line 257
    .local v2, count:I
    const/4 v5, 0x1

    .line 258
    .local v5, next:Z
    const/4 v6, 0x0

    .line 261
    .local v6, val:B
    const/4 v4, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v4, v7, :cond_1

    .line 276
    return-object v0

    .line 263
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    sub-int v1, v7, v8

    .line 264
    .local v1, chr:I
    const/16 v7, 0x9

    if-le v1, v7, :cond_2

    .line 265
    add-int/lit8 v1, v1, -0x7

    .line 266
    :cond_2
    const/16 v7, 0xf

    if-le v1, v7, :cond_3

    .line 267
    add-int/lit8 v1, v1, -0x20

    .line 268
    :cond_3
    shl-int/lit8 v7, v6, 0x4

    add-int/2addr v7, v1

    int-to-byte v6, v7

    .line 269
    if-eqz v5, :cond_5

    const/4 v7, 0x0

    move v5, v7

    .line 270
    :goto_1
    if-eqz v5, :cond_4

    .line 272
    aput-byte v6, v0, v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    add-int/lit8 v2, v2, 0x1

    .line 261
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 269
    :cond_5
    const/4 v7, 0x1

    move v5, v7

    goto :goto_1

    .line 277
    .end local v1           #chr:I
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 279
    .local v3, e:Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Invalid character \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' in hex string"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public IntsFromBytes([B)[I
    .locals 4
    .parameter "bytes"

    .prologue
    .line 178
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->endian:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 179
    .local v1, ib:Ljava/nio/IntBuffer;
    array-length v2, p1

    div-int/lit8 v2, v2, 0x4

    new-array v0, v2, [I

    .line 180
    .local v0, ia:[I
    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 181
    return-object v0
.end method

.method public IntsToBytes([I)[B
    .locals 4
    .parameter "vals"

    .prologue
    .line 189
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->endian:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 190
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 191
    .local v1, ib:Ljava/nio/IntBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 192
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public LIBRARY_DOC()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public LongsFromBytes([B)[J
    .locals 4
    .parameter "bytes"

    .prologue
    .line 202
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->endian:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    .line 203
    .local v1, lb:Ljava/nio/LongBuffer;
    array-length v2, p1

    div-int/lit8 v2, v2, 0x8

    new-array v0, v2, [J

    .line 204
    .local v0, la:[J
    invoke-virtual {v1, v0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 205
    return-object v0
.end method

.method public LongsToBytes([J)[B
    .locals 4
    .parameter "vals"

    .prologue
    .line 213
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->endian:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 214
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    .line 215
    .local v1, lb:Ljava/nio/LongBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    .line 216
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public ShortsFromBytes([B)[S
    .locals 4
    .parameter "bytes"

    .prologue
    .line 154
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->endian:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 155
    .local v1, sb:Ljava/nio/ShortBuffer;
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [S

    .line 156
    .local v0, sa:[S
    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 157
    return-object v0
.end method

.method public ShortsToBytes([S)[B
    .locals 4
    .parameter "vals"

    .prologue
    .line 165
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->endian:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 166
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 167
    .local v1, sb:Ljava/nio/ShortBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 168
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public StringFromBytes([BLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "bytes"
    .parameter "encoding"

    .prologue
    .line 303
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-direct {v1, p1, v2, v3, p2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 304
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 306
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public StringToBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .parameter "str"
    .parameter "encoding"

    .prologue
    .line 317
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 320
    :goto_0
    return-object v1

    .line 318
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_0
.end method

.method public SupportedEncodings()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 290
    invoke-static {}, Ljava/nio/charset/Charset;->availableCharsets()Ljava/util/SortedMap;

    move-result-object v0

    .line 291
    .local v0, codings:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 292
    .local v2, set:Ljava/util/Set;,"Ljava/util/Set<*>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 293
    .local v1, sa:[Ljava/lang/String;
    return-object v1
.end method

.method public ToChars(Ljava/lang/String;)[C
    .locals 1
    .parameter "str"

    .prologue
    .line 337
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public getLittleEndian()Z
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->endian:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 347
    const-wide v0, 0x3ff199999999999aL

    return-wide v0
.end method

.method public setLittleEndian(Z)V
    .locals 1
    .parameter "littleEndian"

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->endian:Ljava/nio/ByteOrder;

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->endian:Ljava/nio/ByteOrder;

    goto :goto_0
.end method
