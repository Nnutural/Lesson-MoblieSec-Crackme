.class public Lanywheresoftware/b4a/ConnectorUtils;
.super Ljava/lang/Object;
.source "ConnectorUtils.java"


# static fields
.field public static final BOOL:B = 0x5t

.field public static final COLOR:B = 0x6t

.field public static final ENDOFMAP:B = 0x4t

.field public static final FLOAT:B = 0x7t

.field public static final INT:B = 0x1t

.field public static final MAP:B = 0x3t

.field public static final SCALED_INT:B = 0x8t

.field public static final STRING:B = 0x2t

.field private static charset:Ljava/nio/charset/Charset;

.field private static myBb:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lanywheresoftware/b4a/ConnectorUtils$1;

    invoke-direct {v0}, Lanywheresoftware/b4a/ConnectorUtils$1;-><init>()V

    sput-object v0, Lanywheresoftware/b4a/ConnectorUtils;->myBb:Ljava/lang/ThreadLocal;

    .line 30
    const-string v0, "UTF8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lanywheresoftware/b4a/ConnectorUtils;->charset:Ljava/nio/charset/Charset;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mark()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lanywheresoftware/b4a/ConnectorUtils;->myBb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 54
    return-void
.end method

.method public static readInt(Ljava/io/DataInputStream;)I
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public static readMap(Ljava/io/DataInputStream;)Ljava/util/HashMap;
    .locals 9
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 93
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v2, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-static {p0}, Lanywheresoftware/b4a/ConnectorUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 97
    .local v0, b:B
    const/4 v3, 0x0

    .line 98
    .local v3, value:Ljava/lang/Object;
    if-ne v0, v8, :cond_0

    .line 99
    invoke-static {p0}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 118
    .end local v3           #value:Ljava/lang/Object;
    :goto_1
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 100
    .restart local v3       #value:Ljava/lang/Object;
    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 101
    invoke-static {p0}, Lanywheresoftware/b4a/ConnectorUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    .local v3, value:Ljava/lang/String;
    goto :goto_1

    .line 102
    .local v3, value:Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x7

    if-ne v0, v4, :cond_2

    .line 103
    invoke-static {p0}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .local v3, value:Ljava/lang/Float;
    goto :goto_1

    .line 105
    .local v3, value:Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 106
    invoke-static {p0}, Lanywheresoftware/b4a/ConnectorUtils;->readMap(Ljava/io/DataInputStream;)Ljava/util/HashMap;

    move-result-object v3

    .local v3, value:Ljava/util/HashMap;
    goto :goto_1

    .line 107
    .local v3, value:Ljava/lang/Object;
    :cond_3
    const/4 v4, 0x5

    if-ne v0, v4, :cond_5

    .line 108
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    if-ne v4, v8, :cond_4

    move v4, v8

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .local v3, value:Ljava/lang/Boolean;
    goto :goto_1

    .local v3, value:Ljava/lang/Object;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 110
    :cond_5
    const/4 v4, 0x6

    if-ne v0, v4, :cond_6

    .line 111
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 112
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    .line 111
    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .local v3, value:Ljava/lang/Integer;
    goto :goto_1

    .line 114
    .local v3, value:Ljava/lang/Object;
    :cond_6
    const/4 v4, 0x4

    if-ne v0, v4, :cond_7

    .line 120
    return-object v2

    .line 117
    :cond_7
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "unknown type"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static readString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p0}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v2

    .line 85
    .local v2, size:I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 86
    .local v0, bb:Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 88
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 89
    sget-object v3, Lanywheresoftware/b4a/ConnectorUtils;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, s:Ljava/lang/String;
    return-object v1
.end method

.method public static resetToMark()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lanywheresoftware/b4a/ConnectorUtils;->myBb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 57
    return-void
.end method

.method public static sendMessage(Lanywheresoftware/b4a/ConnectorConsumer;)V
    .locals 3
    .parameter "consumer"

    .prologue
    .line 39
    sget-object v2, Lanywheresoftware/b4a/ConnectorUtils;->myBb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 40
    .local v1, bbW:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 41
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v0, v2, [B

    .line 42
    .local v0, b:[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 43
    if-eqz p0, :cond_0

    .line 44
    invoke-interface {p0, v0}, Lanywheresoftware/b4a/ConnectorConsumer;->putTask([B)V

    .line 45
    :cond_0
    return-void
.end method

.method public static startMessage(B)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "message"

    .prologue
    .line 32
    sget-object v1, Lanywheresoftware/b4a/ConnectorUtils;->myBb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 33
    .local v0, bbW:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 34
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 35
    return-object v0
.end method

.method public static writeFloat(F)V
    .locals 1
    .parameter "f"

    .prologue
    .line 50
    sget-object v0, Lanywheresoftware/b4a/ConnectorUtils;->myBb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 51
    return-void
.end method

.method public static writeInt(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 47
    sget-object v0, Lanywheresoftware/b4a/ConnectorUtils;->myBb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 48
    return-void
.end method

.method public static writeString(Ljava/lang/String;)Z
    .locals 6
    .parameter "str"

    .prologue
    const/4 v5, 0x0

    .line 62
    if-nez p0, :cond_0

    .line 63
    const-string p0, ""

    .line 64
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x2bc

    if-le v3, v4, :cond_1

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2bb

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "......"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 66
    :cond_1
    sget-object v3, Lanywheresoftware/b4a/ConnectorUtils;->myBb:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 67
    .local v1, bbW:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 68
    .local v2, pos:I
    sget-object v3, Lanywheresoftware/b4a/ConnectorUtils;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v3, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 69
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    sub-int/2addr v3, v4

    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_2

    move v3, v5

    .line 77
    :goto_0
    return v3

    .line 73
    :cond_2
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 77
    const/4 v3, 0x1

    goto :goto_0
.end method
