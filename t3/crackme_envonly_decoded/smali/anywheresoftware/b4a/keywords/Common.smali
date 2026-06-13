.class public Lanywheresoftware/b4a/keywords/Common;
.super Ljava/lang/Object;
.source "Common.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$Version;
    value = 1.67f
.end annotation


# static fields
.field public static final Bit:Lanywheresoftware/b4a/keywords/Bit; = null

.field public static final CRLF:Ljava/lang/String; = "\n"

.field public static final Colors:Lanywheresoftware/b4a/keywords/constants/Colors; = null

.field public static final DateTime:Lanywheresoftware/b4a/keywords/DateTime; = null

#the value of this static final field might be set in the static constructor
.field public static final Density:F = 0.0f

.field public static final DialogResponse:Lanywheresoftware/b4a/keywords/constants/DialogResponse; = null

.field public static final False:Z = false

.field public static final File:Lanywheresoftware/b4a/objects/streams/File; = null

.field public static final Gravity:Lanywheresoftware/b4a/keywords/constants/Gravity; = null

.field public static KeyCodes:Lanywheresoftware/b4a/keywords/constants/KeyCodes; = null

.field public static final Null:Ljava/lang/Object; = null

.field public static final QUOTE:Ljava/lang/String; = "\""

.field public static final Regex:Lanywheresoftware/b4a/keywords/Regex; = null

.field public static final TAB:Ljava/lang/String; = "\t"

.field public static final True:Z = true

.field public static final Typeface:Lanywheresoftware/b4a/keywords/constants/TypefaceWrapper; = null

.field public static final cE:D = 2.718281828459045

.field public static final cPI:D = 3.141592653589793

.field private static random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->Null:Ljava/lang/Object;

    .line 77
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->KeyCodes:Lanywheresoftware/b4a/keywords/constants/KeyCodes;

    .line 82
    sget v0, Lanywheresoftware/b4a/BA;->density:F

    sput v0, Lanywheresoftware/b4a/keywords/Common;->Density:F

    .line 86
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->Colors:Lanywheresoftware/b4a/keywords/constants/Colors;

    .line 90
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->Gravity:Lanywheresoftware/b4a/keywords/constants/Gravity;

    .line 94
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    .line 98
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->Bit:Lanywheresoftware/b4a/keywords/Bit;

    .line 102
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->Typeface:Lanywheresoftware/b4a/keywords/constants/TypefaceWrapper;

    .line 106
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->DateTime:Lanywheresoftware/b4a/keywords/DateTime;

    .line 110
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->DialogResponse:Lanywheresoftware/b4a/keywords/constants/DialogResponse;

    .line 114
    sput-object v1, Lanywheresoftware/b4a/keywords/Common;->Regex:Lanywheresoftware/b4a/keywords/Regex;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ACos(D)D
    .locals 2
    .parameter "Value"

    .prologue
    .line 285
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ACosD(D)D
    .locals 4
    .parameter "Value"

    .prologue
    .line 291
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static ASin(D)D
    .locals 2
    .parameter "Value"

    .prologue
    .line 273
    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ASinD(D)D
    .locals 4
    .parameter "Value"

    .prologue
    .line 279
    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static ATan(D)D
    .locals 2
    .parameter "Value"

    .prologue
    .line 297
    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ATan2(DD)D
    .locals 2
    .parameter "Y"
    .parameter "X"

    .prologue
    .line 309
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ATan2D(DD)D
    .locals 4
    .parameter "Y"
    .parameter "X"

    .prologue
    .line 315
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static ATanD(D)D
    .locals 4
    .parameter "Value"

    .prologue
    .line 303
    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static Abs(D)D
    .locals 2
    .parameter "Number"

    .prologue
    .line 195
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Abs(I)I
    .locals 1
    .parameter "Number"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 199
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public static Array()V
    .locals 0

    .prologue
    .line 936
    return-void
.end method

.method public static ArrayToList([B)Lanywheresoftware/b4a/objects/collections/List;
    .locals 4
    .parameter "Array"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 887
    new-instance v1, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 888
    .local v1, list:Lanywheresoftware/b4a/objects/collections/List;
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/Object;

    .line 889
    .local v2, o:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 892
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 893
    return-object v1

    .line 890
    :cond_0
    aget-byte v3, p0, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    .line 889
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ArrayToList([D)Lanywheresoftware/b4a/objects/collections/List;
    .locals 5
    .parameter "Array"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 857
    new-instance v1, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 858
    .local v1, list:Lanywheresoftware/b4a/objects/collections/List;
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/Object;

    .line 859
    .local v2, o:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 862
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 863
    return-object v1

    .line 860
    :cond_0
    aget-wide v3, p0, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v0

    .line 859
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ArrayToList([F)Lanywheresoftware/b4a/objects/collections/List;
    .locals 4
    .parameter "Array"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 847
    new-instance v1, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 848
    .local v1, list:Lanywheresoftware/b4a/objects/collections/List;
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/Object;

    .line 849
    .local v2, o:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 852
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 853
    return-object v1

    .line 850
    :cond_0
    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    .line 849
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ArrayToList([I)Lanywheresoftware/b4a/objects/collections/List;
    .locals 4
    .parameter "Array"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 827
    new-instance v1, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 828
    .local v1, list:Lanywheresoftware/b4a/objects/collections/List;
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/Object;

    .line 829
    .local v2, o:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 832
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 833
    return-object v1

    .line 830
    :cond_0
    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 829
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ArrayToList([J)Lanywheresoftware/b4a/objects/collections/List;
    .locals 5
    .parameter "Array"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 837
    new-instance v1, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 838
    .local v1, list:Lanywheresoftware/b4a/objects/collections/List;
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/Object;

    .line 839
    .local v2, o:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 842
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 843
    return-object v1

    .line 840
    :cond_0
    aget-wide v3, p0, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    .line 839
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ArrayToList([Ljava/lang/Object;)Lanywheresoftware/b4a/objects/collections/List;
    .locals 2
    .parameter "Array"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 821
    new-instance v0, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 822
    .local v0, list:Lanywheresoftware/b4a/objects/collections/List;
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 823
    return-object v0
.end method

.method public static ArrayToList([S)Lanywheresoftware/b4a/objects/collections/List;
    .locals 4
    .parameter "Array"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 877
    new-instance v1, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 878
    .local v1, list:Lanywheresoftware/b4a/objects/collections/List;
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/Object;

    .line 879
    .local v2, o:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 882
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 883
    return-object v1

    .line 880
    :cond_0
    aget-short v3, p0, v0

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v0

    .line 879
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ArrayToList([Z)Lanywheresoftware/b4a/objects/collections/List;
    .locals 4
    .parameter "Array"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 867
    new-instance v1, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 868
    .local v1, list:Lanywheresoftware/b4a/objects/collections/List;
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/Object;

    .line 869
    .local v2, o:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 872
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 873
    return-object v1

    .line 870
    :cond_0
    aget-boolean v3, p0, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    .line 869
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static Asc(C)I
    .locals 0
    .parameter "Char"

    .prologue
    .line 350
    return p0
.end method

.method public static BytesToString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "Data"
    .parameter "StartOffset"
    .parameter "Length"
    .parameter "CharSet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 817
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public static CallSub(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mine"
    .parameter "Component"
    .parameter "Sub"

    .prologue
    .line 753
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lanywheresoftware/b4a/keywords/Common;->CallSub4(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static CallSub2(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "mine"
    .parameter "Component"
    .parameter "Sub"
    .parameter "Argument"

    .prologue
    .line 759
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p0, p1, p2, v0}, Lanywheresoftware/b4a/keywords/Common;->CallSub4(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static CallSub3(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "mine"
    .parameter "Component"
    .parameter "Sub"
    .parameter "Argument1"
    .parameter "Argument2"

    .prologue
    .line 765
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p0, p1, p2, v0}, Lanywheresoftware/b4a/keywords/Common;->CallSub4(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static CallSub4(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .parameter "mine"
    .parameter "Component"
    .parameter "Sub"
    .parameter "Arguments"

    .prologue
    .line 769
    :try_start_0
    invoke-static {p0, p1}, Lanywheresoftware/b4a/keywords/Common;->getComponentBA(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Lanywheresoftware/b4a/BA;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 770
    .local v0, ba:Lanywheresoftware/b4a/BA;
    if-nez v0, :cond_0

    .line 771
    const-string v3, ""

    .line 775
    :goto_0
    return-object v3

    .line 772
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    sget-object v4, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, p3}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 773
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 774
    const-string v2, ""

    .line 775
    .end local v2           #o:Ljava/lang/Object;
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    .line 776
    .end local v0           #ba:Lanywheresoftware/b4a/BA;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 777
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static CancelScheduledService(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)V
    .locals 6
    .parameter "mine"
    .parameter "Service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 707
    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 708
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {p0, p1}, Lanywheresoftware/b4a/keywords/Common;->getComponentIntent(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v4

    .line 709
    const/high16 v5, 0x800

    .line 708
    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 710
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 711
    return-void
.end method

.method public static Catch()V
    .locals 0

    .prologue
    .line 978
    return-void
.end method

.method public static Ceil(D)D
    .locals 2
    .parameter "Number"

    .prologue
    .line 344
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static CharsToString([CII)Ljava/lang/String;
    .locals 1
    .parameter "Chars"
    .parameter "StartOffset"
    .parameter "Length"

    .prologue
    .line 804
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static Chr(I)C
    .locals 1
    .parameter "UnicodeValue"

    .prologue
    .line 356
    int-to-char v0, p0

    return v0
.end method

.method public static ConfigureHomeWidget(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Landroid/widget/RemoteViews;
    .locals 1
    .parameter "LayoutFile"
    .parameter "EventName"
    .parameter "UpdateIntervalMinutes"
    .parameter "WidgetName"
    .parameter "CenterWidget"

    .prologue
    .line 1134
    const/4 v0, 0x0

    return-object v0
.end method

.method public static Continue()V
    .locals 0

    .prologue
    .line 1081
    return-void
.end method

.method public static Cos(D)D
    .locals 2
    .parameter "Radians"

    .prologue
    .line 237
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static CosD(D)D
    .locals 4
    .parameter "Degrees"

    .prologue
    .line 243
    const-wide v0, 0x4066800000000000L

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Dim()V
    .locals 0

    .prologue
    .line 997
    return-void
.end method

.method public static DipToCurrent(I)I
    .locals 2
    .parameter "Length"

    .prologue
    .line 583
    sget v0, Lanywheresoftware/b4a/keywords/Common;->Density:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static DoEvents()V
    .locals 2

    .prologue
    .line 364
    invoke-static {}, Lanywheresoftware/b4a/Msgbox;->sendCloseMyLoopMessage()V

    .line 365
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lanywheresoftware/b4a/Msgbox;->waitForMessage(ZZ)V

    .line 367
    return-void
.end method

.method public static Exit()V
    .locals 0

    .prologue
    .line 1075
    return-void
.end method

.method public static ExitApplication()V
    .locals 1

    .prologue
    .line 1120
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1121
    return-void
.end method

.method public static Floor(D)D
    .locals 2
    .parameter "Number"

    .prologue
    .line 338
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static For()V
    .locals 0

    .prologue
    .line 1031
    return-void
.end method

.method public static GetDeviceLayoutValues(Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/keywords/LayoutValues;
    .locals 3
    .parameter "ba"

    .prologue
    .line 639
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 641
    .local v1, dm:Landroid/util/DisplayMetrics;
    new-instance v0, Lanywheresoftware/b4a/keywords/LayoutValues;

    invoke-direct {v0}, Lanywheresoftware/b4a/keywords/LayoutValues;-><init>()V

    .line 642
    .local v0, deviceValues:Lanywheresoftware/b4a/keywords/LayoutValues;
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iput v2, v0, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    .line 643
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v0, Lanywheresoftware/b4a/keywords/LayoutValues;->Width:I

    .line 644
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v0, Lanywheresoftware/b4a/keywords/LayoutValues;->Height:I

    .line 645
    return-object v0
.end method

.method public static GetType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "object"

    .prologue
    .line 566
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static If()V
    .locals 0

    .prologue
    .line 952
    return-void
.end method

.method public static InputList(Lanywheresoftware/b4a/objects/collections/List;Ljava/lang/String;ILanywheresoftware/b4a/BA;)I
    .locals 7
    .parameter "Items"
    .parameter "Title"
    .parameter "CheckedItem"
    .parameter "ba"

    .prologue
    .line 427
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p3, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v5

    new-array v3, v5, [Ljava/lang/CharSequence;

    .line 429
    .local v3, items:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 436
    new-instance v1, Lanywheresoftware/b4a/Msgbox$DialogResponse;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Lanywheresoftware/b4a/Msgbox$DialogResponse;-><init>(Z)V

    .line 437
    .local v1, dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    invoke-virtual {v0, v3, p2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 439
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lanywheresoftware/b4a/Msgbox;->msgbox(Landroid/app/AlertDialog;Z)V

    .line 440
    iget v5, v1, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    return v5

    .line 430
    .end local v1           #dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    :cond_0
    invoke-virtual {p0, v2}, Lanywheresoftware/b4a/objects/collections/List;->Get(I)Ljava/lang/Object;

    move-result-object v4

    .line 431
    .local v4, o:Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    .line 432
    check-cast v4, Ljava/lang/CharSequence;

    .end local v4           #o:Ljava/lang/Object;
    aput-object v4, v3, v2

    .line 429
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    .restart local v4       #o:Ljava/lang/Object;
    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    goto :goto_1
.end method

.method public static InputMap(Lanywheresoftware/b4a/objects/collections/Map;Ljava/lang/String;Lanywheresoftware/b4a/BA;)V
    .locals 10
    .parameter "Items"
    .parameter "Title"
    .parameter "ba"

    .prologue
    const/4 v9, 0x0

    .line 458
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p2, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 459
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getSize()I

    move-result v7

    new-array v5, v7, [Ljava/lang/CharSequence;

    .line 460
    .local v5, items:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getSize()I

    move-result v7

    new-array v1, v7, [Z

    .line 461
    .local v1, checked:[Z
    const/4 v4, 0x0

    .line 462
    .local v4, i:I
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/Map;->getObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lanywheresoftware/b4a/objects/collections/Map$MyMap;

    invoke-virtual {v7}, Lanywheresoftware/b4a/objects/collections/Map$MyMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 473
    new-instance v2, Lanywheresoftware/b4a/Msgbox$DialogResponse;

    invoke-direct {v2, v9}, Lanywheresoftware/b4a/Msgbox$DialogResponse;-><init>(Z)V

    .line 474
    .local v2, dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    new-instance v7, Lanywheresoftware/b4a/keywords/Common$1;

    invoke-direct {v7, p0, v5}, Lanywheresoftware/b4a/keywords/Common$1;-><init>(Lanywheresoftware/b4a/objects/collections/Map;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5, v1, v7}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 488
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 489
    const-string v7, "Ok"

    invoke-virtual {v0, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 490
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-static {v7, v9}, Lanywheresoftware/b4a/Msgbox;->msgbox(Landroid/app/AlertDialog;Z)V

    .line 491
    return-void

    .line 462
    .end local v2           #dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 463
    .local v3, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-nez v7, :cond_1

    .line 464
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Keys must be strings."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 465
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v4

    .line 466
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 467
    .local v6, o:Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_2

    .line 468
    check-cast v6, Ljava/lang/Boolean;

    .end local v6           #o:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    aput-boolean v7, v1, v4

    .line 471
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 470
    .restart local v6       #o:Ljava/lang/Object;
    :cond_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    aput-boolean v7, v1, v4

    goto :goto_1
.end method

.method public static InputMultiList(Lanywheresoftware/b4a/objects/collections/List;Ljava/lang/String;Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/objects/collections/List;
    .locals 9
    .parameter "Items"
    .parameter "Title"
    .parameter "ba"

    .prologue
    const/4 v8, 0x0

    .line 499
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p2, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 500
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v6

    new-array v3, v6, [Ljava/lang/CharSequence;

    .line 501
    .local v3, items:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v6

    if-lt v2, v6, :cond_0

    .line 508
    new-instance v1, Lanywheresoftware/b4a/Msgbox$DialogResponse;

    invoke-direct {v1, v8}, Lanywheresoftware/b4a/Msgbox$DialogResponse;-><init>(Z)V

    .line 509
    .local v1, dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    new-instance v5, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v5}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 510
    .local v5, result:Lanywheresoftware/b4a/objects/collections/List;
    invoke-virtual {v5}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    .line 511
    const/4 v6, 0x0

    new-instance v7, Lanywheresoftware/b4a/keywords/Common$2;

    invoke-direct {v7, v5}, Lanywheresoftware/b4a/keywords/Common$2;-><init>(Lanywheresoftware/b4a/objects/collections/List;)V

    invoke-virtual {v0, v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 526
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 527
    const-string v6, "Ok"

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 528
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-static {v6, v8}, Lanywheresoftware/b4a/Msgbox;->msgbox(Landroid/app/AlertDialog;Z)V

    .line 529
    iget v6, v1, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 530
    invoke-virtual {v5}, Lanywheresoftware/b4a/objects/collections/List;->Clear()V

    .line 534
    :goto_1
    return-object v5

    .line 502
    .end local v1           #dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    .end local v5           #result:Lanywheresoftware/b4a/objects/collections/List;
    :cond_0
    invoke-virtual {p0, v2}, Lanywheresoftware/b4a/objects/collections/List;->Get(I)Ljava/lang/Object;

    move-result-object v4

    .line 503
    .local v4, o:Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    .line 504
    check-cast v4, Ljava/lang/CharSequence;

    .end local v4           #o:Ljava/lang/Object;
    aput-object v4, v3, v2

    .line 501
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 506
    .restart local v4       #o:Ljava/lang/Object;
    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    goto :goto_2

    .line 533
    .end local v4           #o:Ljava/lang/Object;
    .restart local v1       #dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    .restart local v5       #result:Lanywheresoftware/b4a/objects/collections/List;
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lanywheresoftware/b4a/objects/collections/List;->Sort(Z)V

    goto :goto_1
.end method

.method public static Is()V
    .locals 0

    .prologue
    .line 1114
    return-void
.end method

.method public static IsBackgroundTaskRunning(Lanywheresoftware/b4a/BA;Ljava/lang/Object;I)Z
    .locals 1
    .parameter "ba"
    .parameter "ContainerObject"
    .parameter "TaskId"

    .prologue
    .line 899
    invoke-static {p1, p2}, Lanywheresoftware/b4a/BA;->isTaskRunning(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public static IsNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "Text"

    .prologue
    .line 618
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    const/4 v1, 0x1

    .line 621
    :goto_0
    return v1

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static IsPaused(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Z
    .locals 2
    .parameter "mine"
    .parameter "Component"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 786
    invoke-static {p0, p1}, Lanywheresoftware/b4a/keywords/Common;->getComponentBA(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Lanywheresoftware/b4a/BA;

    move-result-object v0

    .line 787
    .local v0, ba:Lanywheresoftware/b4a/BA;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lanywheresoftware/b4a/BA;->isActivityPaused()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static LastException(Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/objects/B4AException;
    .locals 2
    .parameter "ba"

    .prologue
    .line 628
    new-instance v0, Lanywheresoftware/b4a/objects/B4AException;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/B4AException;-><init>()V

    .line 629
    .local v0, e:Lanywheresoftware/b4a/objects/B4AException;
    invoke-virtual {p0}, Lanywheresoftware/b4a/BA;->getLastException()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/B4AException;->setObject(Ljava/lang/Object;)V

    .line 630
    return-object v0
.end method

.method public static LoadBitmap(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    .locals 1
    .parameter "Dir"
    .parameter "FileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 910
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    .line 911
    .local v0, bw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    invoke-virtual {v0, p0, p1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->Initialize(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    return-object v0
.end method

.method public static LoadBitmapSample(Ljava/lang/String;Ljava/lang/String;II)Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    .locals 1
    .parameter "Dir"
    .parameter "FileName"
    .parameter "MaxWidth"
    .parameter "MaxHeight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 922
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    .line 923
    .local v0, bw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    invoke-virtual {v0, p0, p1, p2, p3}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->InitializeSample(Ljava/lang/String;Ljava/lang/String;II)V

    .line 924
    return-object v0
.end method

.method public static Log(Ljava/lang/String;)V
    .locals 2
    .parameter "Message"

    .prologue
    .line 151
    const-string v0, "B4A"

    if-nez p0, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    :cond_0
    move-object v1, p0

    .line 151
    goto :goto_0
.end method

.method public static Logarithm(DD)D
    .locals 4
    .parameter "Number"
    .parameter "Base"

    .prologue
    .line 319
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static Max(DD)D
    .locals 2
    .parameter "Number1"
    .parameter "Number2"

    .prologue
    .line 205
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Max(II)D
    .locals 2
    .parameter "Number1"
    .parameter "Number2"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 209
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public static Min(DD)D
    .locals 2
    .parameter "Number1"
    .parameter "Number2"

    .prologue
    .line 215
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Min(II)D
    .locals 2
    .parameter "Number1"
    .parameter "Number2"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 219
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public static Msgbox(Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;)V
    .locals 7
    .parameter "Message"
    .parameter "Title"
    .parameter "ba"

    .prologue
    const-string v3, ""

    .line 383
    const-string v2, "OK"

    const-string v0, ""

    const-string v0, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lanywheresoftware/b4a/keywords/Common;->Msgbox2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lanywheresoftware/b4a/BA;)I

    .line 384
    return-void
.end method

.method public static Msgbox2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lanywheresoftware/b4a/BA;)I
    .locals 6
    .parameter "Message"
    .parameter "Title"
    .parameter "Positive"
    .parameter "Cancel"
    .parameter "Negative"
    .parameter "Icon"
    .parameter "ba"

    .prologue
    const/4 v5, 0x0

    .line 401
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p6, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 402
    .local v1, b:Landroid/app/AlertDialog$Builder;
    new-instance v3, Lanywheresoftware/b4a/Msgbox$DialogResponse;

    invoke-direct {v3, v5}, Lanywheresoftware/b4a/Msgbox$DialogResponse;-><init>(Z)V

    .line 403
    .local v3, dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 404
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 405
    invoke-virtual {v1, p2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 406
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 407
    invoke-virtual {v1, p4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 408
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 409
    invoke-virtual {v1, p3, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 410
    :cond_2
    if-eqz p5, :cond_3

    .line 411
    new-instance v2, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;

    invoke-direct {v2}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;-><init>()V

    .line 412
    .local v2, bd:Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    invoke-virtual {v2, p5}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->Initialize(Landroid/graphics/Bitmap;)V

    .line 413
    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 415
    .end local v2           #bd:Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    :cond_3
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 416
    .local v0, ad:Landroid/app/AlertDialog;
    invoke-static {v0, v5}, Lanywheresoftware/b4a/Msgbox;->msgbox(Landroid/app/AlertDialog;Z)V

    .line 417
    iget v4, v3, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    return v4
.end method

.method public static Not(Z)Z
    .locals 1
    .parameter "Value"

    .prologue
    .line 170
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static NumberFormat(DII)Ljava/lang/String;
    .locals 1
    .parameter "Number"
    .parameter "MinimumIntegers"
    .parameter "MaximumFractions"

    .prologue
    .line 124
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    .line 126
    :cond_0
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p3}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 127
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 128
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static NumberFormat2(DIIIZ)Ljava/lang/String;
    .locals 1
    .parameter "Number"
    .parameter "MinimumIntegers"
    .parameter "MaximumFractions"
    .parameter "MinimumFractions"
    .parameter "GroupingUsed"

    .prologue
    .line 139
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 140
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    .line 141
    :cond_0
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p3}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 142
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 143
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p4}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 144
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p5}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 145
    sget-object v0, Lanywheresoftware/b4a/BA;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static PerXToCurrent(FLanywheresoftware/b4a/BA;)I
    .locals 2
    .parameter "Percentage"
    .parameter "ba"

    .prologue
    .line 597
    const/high16 v0, 0x42c8

    div-float v0, p0, v0

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v1}, Lanywheresoftware/b4a/BALayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static PerYToCurrent(FLanywheresoftware/b4a/BA;)I
    .locals 2
    .parameter "Percentage"
    .parameter "ba"

    .prologue
    .line 611
    const/high16 v0, 0x42c8

    div-float v0, p0, v0

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {v1}, Lanywheresoftware/b4a/BALayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static Power(DD)D
    .locals 2
    .parameter "Base"
    .parameter "Exponent"

    .prologue
    .line 261
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ProgressDialogHide()V
    .locals 0

    .prologue
    .line 560
    invoke-static {}, Lanywheresoftware/b4a/Msgbox;->dismissProgressDialog()V

    .line 561
    return-void
.end method

.method public static ProgressDialogShow(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 1
    .parameter "ba"
    .parameter "Text"

    .prologue
    .line 543
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lanywheresoftware/b4a/keywords/Common;->ProgressDialogShow2(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 544
    return-void
.end method

.method public static ProgressDialogShow2(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 4
    .parameter "ba"
    .parameter "Text"
    .parameter "Cancelable"

    .prologue
    .line 552
    invoke-static {}, Lanywheresoftware/b4a/keywords/Common;->ProgressDialogHide()V

    .line 553
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 554
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3, p2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 553
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lanywheresoftware/b4a/Msgbox;->pd:Ljava/lang/ref/WeakReference;

    .line 555
    return-void
.end method

.method public static Return()V
    .locals 0

    .prologue
    .line 1053
    return-void
.end method

.method public static Rnd(II)I
    .locals 2
    .parameter "Min"
    .parameter "Max"

    .prologue
    .line 187
    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->random:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lanywheresoftware/b4a/keywords/Common;->random:Ljava/util/Random;

    .line 189
    :cond_0
    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->random:Ljava/util/Random;

    sub-int v1, p1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static RndSeed(J)V
    .locals 1
    .parameter "Seed"

    .prologue
    .line 177
    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->random:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p0, p1}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lanywheresoftware/b4a/keywords/Common;->random:Ljava/util/Random;

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->random:Ljava/util/Random;

    invoke-virtual {v0, p0, p1}, Ljava/util/Random;->setSeed(J)V

    goto :goto_0
.end method

.method public static Round(D)J
    .locals 2
    .parameter "Number"

    .prologue
    .line 325
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static Round2(DI)D
    .locals 6
    .parameter "Number"
    .parameter "DecimalPlaces"

    .prologue
    .line 331
    const-wide/high16 v2, 0x4024

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 332
    .local v0, shift:D
    mul-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public static Select()V
    .locals 0

    .prologue
    .line 1100
    return-void
.end method

.method public static Sender(Lanywheresoftware/b4a/BA;)Ljava/lang/Object;
    .locals 1
    .parameter "ba"

    .prologue
    .line 164
    invoke-virtual {p0}, Lanywheresoftware/b4a/BA;->getSender()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static Sin(D)D
    .locals 2
    .parameter "Radians"

    .prologue
    .line 225
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static SinD(D)D
    .locals 4
    .parameter "Degrees"

    .prologue
    .line 231
    const-wide v0, 0x4066800000000000L

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Sqrt(D)D
    .locals 2
    .parameter "Value"

    .prologue
    .line 267
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static StartActivity(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)V
    .locals 2
    .parameter "mine"
    .parameter "Activity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 658
    invoke-static {p0, p1}, Lanywheresoftware/b4a/keywords/Common;->getComponentIntent(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 659
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 660
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 665
    :goto_0
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 667
    return-void

    .line 663
    :cond_0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static StartService(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)V
    .locals 2
    .parameter "mine"
    .parameter "Service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 677
    sget-object v0, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    new-instance v1, Lanywheresoftware/b4a/keywords/Common$3;

    invoke-direct {v1}, Lanywheresoftware/b4a/keywords/Common$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 683
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lanywheresoftware/b4a/keywords/Common;->getComponentIntent(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 684
    const/4 v0, 0x1

    sput-boolean v0, Lanywheresoftware/b4a/Msgbox;->isDismissing:Z

    .line 685
    return-void
.end method

.method public static StartServiceAt(Lanywheresoftware/b4a/BA;Ljava/lang/Object;JZ)V
    .locals 6
    .parameter "mine"
    .parameter "Service"
    .parameter "Time"
    .parameter "DuringSleep"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 698
    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 699
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lanywheresoftware/b4a/keywords/Common;->getComponentIntent(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v3

    .line 700
    const/high16 v4, 0x800

    .line 699
    invoke-static {v2, v5, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 701
    .local v1, pi:Landroid/app/PendingIntent;
    if-eqz p4, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 702
    return-void

    :cond_0
    move v2, v5

    .line 701
    goto :goto_0
.end method

.method public static StopService(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)V
    .locals 2
    .parameter "mine"
    .parameter "Service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 738
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lanywheresoftware/b4a/keywords/Common;->getComponentIntent(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 739
    return-void
.end method

.method public static Sub()V
    .locals 0

    .prologue
    .line 1069
    return-void
.end method

.method public static Tan(D)D
    .locals 2
    .parameter "Radians"

    .prologue
    .line 249
    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static TanD(D)D
    .locals 4
    .parameter "Degrees"

    .prologue
    .line 255
    const-wide v0, 0x4066800000000000L

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ToastMessageShow(Ljava/lang/String;Z)V
    .locals 2
    .parameter "Message"
    .parameter "LongDuration"

    .prologue
    .line 374
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 375
    return-void

    .line 374
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static Try()V
    .locals 0

    .prologue
    .line 965
    return-void
.end method

.method public static Type()V
    .locals 0

    .prologue
    .line 1046
    return-void
.end method

.method public static Until()V
    .locals 0

    .prologue
    .line 1017
    return-void
.end method

.method public static While()V
    .locals 0

    .prologue
    .line 1007
    return-void
.end method

.method private static getComponentBA(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Lanywheresoftware/b4a/BA;
    .locals 4
    .parameter "mine"
    .parameter "Component"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 791
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 792
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    .line 797
    .end local p1
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    const-string v2, "processBA"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/BA;

    move-object v2, p0

    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    return-object v2

    .line 793
    .restart local p0
    .restart local p1
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object v2, p0

    .line 794
    goto :goto_1

    .line 796
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p1, Ljava/lang/String;

    .end local p1
    sget-object v3, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .restart local v1       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0
.end method

.method public static getComponentIntent(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 6
    .parameter "mine"
    .parameter "component"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const-string v5, "."

    .line 715
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 716
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    check-cast p1, Ljava/lang/Class;

    .end local p1
    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 729
    .local v1, i:Landroid/content/Intent;
    :goto_0
    return-object v1

    .line 718
    .end local v1           #i:Landroid/content/Intent;
    .restart local p1
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 719
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 720
    iget-object v4, p0, Lanywheresoftware/b4a/BA;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 719
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1       #i:Landroid/content/Intent;
    goto :goto_0

    .line 722
    .end local v1           #i:Landroid/content/Intent;
    :cond_2
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 723
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 724
    check-cast p1, Ljava/lang/String;

    .end local p1
    sget-object v4, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 723
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1       #i:Landroid/content/Intent;
    goto :goto_0

    .line 727
    .end local v1           #i:Landroid/content/Intent;
    .restart local p1
    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    move-object v1, v0

    .restart local v1       #i:Landroid/content/Intent;
    goto :goto_0
.end method
