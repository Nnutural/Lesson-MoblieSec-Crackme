.class public Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "CanvasWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Bitmap"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 477
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public GetPixel(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 545
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    return v0
.end method

.method public Initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "Dir"
    .parameter "FileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    sget-object v1, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {p1, p2}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v0

    .line 486
    .local v0, in:Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {p0, v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->Initialize2(Ljava/io/InputStream;)V

    .line 487
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->Close()V

    .line 488
    return-void
.end method

.method public Initialize2(Ljava/io/InputStream;)V
    .locals 3
    .parameter "InputStream"

    .prologue
    .line 493
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 494
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 495
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error loading bitmap."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :cond_0
    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 497
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->setObject(Ljava/lang/Object;)V

    .line 498
    return-void
.end method

.method public Initialize3(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "Bitmap"

    .prologue
    .line 531
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 532
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->setObject(Ljava/lang/Object;)V

    .line 533
    return-void
.end method

.method public InitializeMutable(II)V
    .locals 2
    .parameter "Width"
    .parameter "Height"

    .prologue
    .line 538
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 539
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->setObject(Ljava/lang/Object;)V

    .line 540
    return-void
.end method

.method public InitializeSample(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
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
    const/4 v6, 0x0

    .line 506
    sget-object v5, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {p1, p2}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v1

    .line 507
    .local v1, in:Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 508
    .local v2, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 509
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 510
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->Close()V

    .line 512
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v5, p3

    int-to-float v4, v5

    .line 513
    .local v4, r1:F
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v5, p4

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 514
    const/4 v3, 0x0

    .line 515
    .local v3, o2:Landroid/graphics/BitmapFactory$Options;
    const/high16 v5, 0x3f80

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    .line 516
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .end local v3           #o2:Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 517
    .restart local v3       #o2:Landroid/graphics/BitmapFactory$Options;
    float-to-int v5, v4

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 519
    :cond_0
    sget-object v5, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {p1, p2}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v1

    .line 520
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 521
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->Close()V

    .line 522
    if-nez v0, :cond_1

    .line 523
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Error loading bitmap."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 524
    :cond_1
    const/16 v5, 0xa0

    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 525
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->setObject(Ljava/lang/Object;)V

    .line 526
    return-void
.end method

.method public WriteToStream(Ljava/io/OutputStream;ILandroid/graphics/Bitmap$CompressFormat;)V
    .locals 0
    .parameter "OutputStream"
    .parameter "Quality"
    .parameter "Format"

    .prologue
    .line 572
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p3, p2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 573
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 557
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 577
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->baseToString()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, s:Ljava/lang/String;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->IsInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    :cond_0
    return-object v0
.end method
