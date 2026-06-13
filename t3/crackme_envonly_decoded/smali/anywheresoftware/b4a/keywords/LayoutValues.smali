.class public Lanywheresoftware/b4a/keywords/LayoutValues;
.super Ljava/lang/Object;
.source "LayoutValues.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "LayoutValues"
.end annotation


# instance fields
.field public Height:I

.field public Scale:F

.field public Width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromStream(Ljava/io/DataInputStream;)Lanywheresoftware/b4a/keywords/LayoutValues;
    .locals 2
    .parameter "din"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lanywheresoftware/b4a/keywords/LayoutValues;

    invoke-direct {v0}, Lanywheresoftware/b4a/keywords/LayoutValues;-><init>()V

    .line 37
    .local v0, lv:Lanywheresoftware/b4a/keywords/LayoutValues;
    invoke-static {p0}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iput v1, v0, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    .line 38
    invoke-static {p0}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v1

    iput v1, v0, Lanywheresoftware/b4a/keywords/LayoutValues;->Width:I

    .line 39
    invoke-static {p0}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v1

    iput v1, v0, Lanywheresoftware/b4a/keywords/LayoutValues;->Height:I

    .line 40
    return-object v0
.end method


# virtual methods
.method public calcDistance(Lanywheresoftware/b4a/keywords/LayoutValues;)F
    .locals 11
    .parameter "device"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    const v10, 0x7f7fffff

    const/high16 v9, 0x4248

    const-wide v7, 0x3ff3333333333333L

    .line 44
    iget v3, p1, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    iget v4, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    div-float v0, v3, v4

    .line 45
    .local v0, fixedScale:F
    iget v3, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Width:I

    int-to-float v3, v3

    mul-float v2, v3, v0

    .line 46
    .local v2, w:F
    iget v3, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Height:I

    int-to-float v3, v3

    mul-float v1, v3, v0

    .line 47
    .local v1, h:F
    float-to-double v3, v2

    iget v5, p1, Lanywheresoftware/b4a/keywords/LayoutValues;->Width:I

    int-to-double v5, v5

    mul-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    move v3, v10

    .line 55
    :goto_0
    return v3

    .line 49
    :cond_0
    float-to-double v3, v1

    iget v5, p1, Lanywheresoftware/b4a/keywords/LayoutValues;->Height:I

    int-to-double v5, v5

    mul-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    move v3, v10

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget v3, p1, Lanywheresoftware/b4a/keywords/LayoutValues;->Width:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 52
    add-float/2addr v2, v9

    .line 53
    :cond_2
    iget v3, p1, Lanywheresoftware/b4a/keywords/LayoutValues;->Height:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_3

    .line 54
    add-float/2addr v1, v9

    .line 55
    :cond_3
    iget v3, p1, Lanywheresoftware/b4a/keywords/LayoutValues;->Width:I

    int-to-float v3, v3

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p1, Lanywheresoftware/b4a/keywords/LayoutValues;->Height:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x42c8

    iget v5, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    iget v6, p1, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    const-string v1, ", scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    const/high16 v2, 0x4320

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dpi)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
