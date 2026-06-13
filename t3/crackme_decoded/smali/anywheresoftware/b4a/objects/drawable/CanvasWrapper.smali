.class public Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;
.super Ljava/lang/Object;
.source "CanvasWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Canvas"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;,
        Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$PathWrapper;,
        Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$RectWrapper;
    }
.end annotation


# instance fields
.field private bw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

.field public canvas:Landroid/graphics/Canvas;
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation
.end field

.field private eraseMode:Landroid/graphics/PorterDuffXfermode;

.field private paint:Landroid/graphics/Paint;

.field private rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkAndSetTransparent(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->eraseMode:Landroid/graphics/PorterDuffXfermode;

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->eraseMode:Landroid/graphics/PorterDuffXfermode;

    .line 90
    :cond_1
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->eraseMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0
.end method


# virtual methods
.method public ClipPath(Landroid/graphics/Path;)V
    .locals 1
    .parameter "Path1"

    .prologue
    .line 451
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 452
    return-void
.end method

.method public DrawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "Bitmap1"
    .parameter "SrcRect"
    .parameter "DestRect"

    .prologue
    .line 233
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 234
    return-void
.end method

.method public DrawBitmapFlipped(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 5
    .parameter "Bitmap1"
    .parameter "SrcRect"
    .parameter "DestRect"
    .parameter "Vertically"
    .parameter "Horizontally"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 263
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 265
    :try_start_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    if-eqz p5, :cond_0

    move v1, v2

    :goto_0
    int-to-float v1, v1

    if-eqz p4, :cond_1

    :goto_1
    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 266
    invoke-virtual {p0, p1, p2, p3}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->DrawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 271
    return-void

    :cond_0
    move v1, v3

    .line 265
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 268
    :catchall_0
    move-exception v0

    .line 269
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 270
    throw v0
.end method

.method public DrawBitmapRotated(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 3
    .parameter "Bitmap1"
    .parameter "SrcRect"
    .parameter "DestRect"
    .parameter "Degrees"

    .prologue
    .line 244
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 246
    :try_start_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, p4, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 247
    invoke-virtual {p0, p1, p2, p3}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->DrawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 252
    return-void

    .line 249
    :catchall_0
    move-exception v0

    .line 250
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 251
    throw v0
.end method

.method public DrawCircle(FFFIZF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "Radius"
    .parameter "Color"
    .parameter "Filled"
    .parameter "StrokeWidth"

    .prologue
    .line 207
    invoke-direct {p0, p4}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->checkAndSetTransparent(I)V

    .line 208
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    if-eqz p5, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 210
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 211
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 212
    return-void

    .line 209
    :cond_0
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0
.end method

.method public DrawColor(I)V
    .locals 1
    .parameter "Color"

    .prologue
    .line 125
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 126
    return-void
.end method

.method public DrawDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "Drawable1"
    .parameter "DestRect"

    .prologue
    .line 391
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 392
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 393
    return-void
.end method

.method public DrawDrawableRotate(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;F)V
    .locals 3
    .parameter "Drawable1"
    .parameter "DestRect"
    .parameter "Degrees"

    .prologue
    .line 399
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 401
    :try_start_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, p3, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 402
    invoke-virtual {p0, p1, p2}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->DrawDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 406
    return-void

    .line 403
    :catchall_0
    move-exception v0

    .line 404
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 405
    throw v0
.end method

.method public DrawLine(FFFFIF)V
    .locals 6
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "Color"
    .parameter "StrokeWidth"

    .prologue
    .line 113
    invoke-direct {p0, p5}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->checkAndSetTransparent(I)V

    .line 114
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 117
    return-void
.end method

.method public DrawOval(Landroid/graphics/Rect;IZF)V
    .locals 3
    .parameter "Rect1"
    .parameter "Color"
    .parameter "Filled"
    .parameter "StrokeWidth"

    .prologue
    .line 140
    invoke-direct {p0, p2}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->checkAndSetTransparent(I)V

    .line 141
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    if-eqz p3, :cond_1

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 144
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->rectF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->rectF:Landroid/graphics/RectF;

    .line 146
    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 147
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 148
    return-void

    .line 142
    :cond_1
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0
.end method

.method public DrawOvalRotated(Landroid/graphics/Rect;IZFF)V
    .locals 3
    .parameter "Rect1"
    .parameter "Color"
    .parameter "Filled"
    .parameter "StrokeWidth"
    .parameter "Degrees"

    .prologue
    .line 156
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 158
    :try_start_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, p5, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 159
    invoke-virtual {p0, p1, p2, p3, p4}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->DrawOval(Landroid/graphics/Rect;IZF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 163
    return-void

    .line 160
    :catchall_0
    move-exception v0

    .line 161
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 162
    throw v0
.end method

.method public DrawPath(Landroid/graphics/Path;IZF)V
    .locals 2
    .parameter "Path1"
    .parameter "Color"
    .parameter "Filled"
    .parameter "StrokeWidth"

    .prologue
    .line 421
    invoke-direct {p0, p2}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->checkAndSetTransparent(I)V

    .line 422
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    if-eqz p3, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 424
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 425
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 426
    return-void

    .line 423
    :cond_0
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0
.end method

.method public DrawPoint(FFI)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "Color"

    .prologue
    .line 371
    invoke-direct {p0, p3}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->checkAndSetTransparent(I)V

    .line 372
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 373
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 374
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 375
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 376
    return-void
.end method

.method public DrawRect(Landroid/graphics/Rect;IZF)V
    .locals 2
    .parameter "Rect1"
    .parameter "Color"
    .parameter "Filled"
    .parameter "StrokeWidth"

    .prologue
    .line 177
    invoke-direct {p0, p2}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->checkAndSetTransparent(I)V

    .line 178
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    if-eqz p3, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 181
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 182
    return-void

    .line 179
    :cond_0
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0
.end method

.method public DrawRectRotated(Landroid/graphics/Rect;IZFF)V
    .locals 3
    .parameter "Rect1"
    .parameter "Color"
    .parameter "Filled"
    .parameter "StrokeWidth"
    .parameter "Degrees"

    .prologue
    .line 190
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 192
    :try_start_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, p5, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 193
    invoke-virtual {p0, p1, p2, p3, p4}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->DrawRect(Landroid/graphics/Rect;IZF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 197
    return-void

    .line 194
    :catchall_0
    move-exception v0

    .line 195
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 196
    throw v0
.end method

.method public DrawText(Lanywheresoftware/b4a/BA;Ljava/lang/String;FFLandroid/graphics/Typeface;FILandroid/graphics/Paint$Align;)V
    .locals 2
    .parameter "ba"
    .parameter "Text"
    .parameter "x"
    .parameter "y"
    .parameter "Typeface1"
    .parameter "TextSize"
    .parameter "Color"
    .parameter "Align1"

    .prologue
    .line 285
    invoke-direct {p0, p7}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->checkAndSetTransparent(I)V

    .line 286
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 287
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 288
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 289
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 291
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 292
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 293
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 294
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 295
    return-void
.end method

.method public DrawTextRotated(Lanywheresoftware/b4a/BA;Ljava/lang/String;FFLandroid/graphics/Typeface;FILandroid/graphics/Paint$Align;F)V
    .locals 2
    .parameter "ba"
    .parameter "Text"
    .parameter "x"
    .parameter "y"
    .parameter "Typeface1"
    .parameter "TextSize"
    .parameter "Color"
    .parameter "Align1"
    .parameter "Degree"

    .prologue
    .line 311
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 313
    :try_start_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p9, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 314
    invoke-virtual/range {p0 .. p8}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->DrawText(Lanywheresoftware/b4a/BA;Ljava/lang/String;FFLandroid/graphics/Typeface;FILandroid/graphics/Paint$Align;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 319
    return-void

    .line 316
    :catchall_0
    move-exception v0

    .line 317
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 318
    throw v0
.end method

.method public Initialize(Landroid/view/View;)V
    .locals 7
    .parameter "Target"

    .prologue
    const/4 v6, 0x0

    .line 69
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 71
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 72
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 78
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    new-instance v3, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-direct {v3}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    iput-object v3, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->bw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    .line 80
    iget-object v3, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->bw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-virtual {v3, v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->setObject(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public Initialize2(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "Bitmap"

    .prologue
    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bitmap is not mutable."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    .line 101
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->bw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    .line 102
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->bw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->setObject(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public MeasureStringHeight(Ljava/lang/String;Landroid/graphics/Typeface;F)F
    .locals 4
    .parameter "Text"
    .parameter "Typeface"
    .parameter "TextSize"

    .prologue
    .line 355
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v2, p3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 356
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 357
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 358
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 359
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 360
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 361
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 362
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    return v1
.end method

.method public MeasureStringWidth(Ljava/lang/String;Landroid/graphics/Typeface;F)F
    .locals 2
    .parameter "Text"
    .parameter "Typeface"
    .parameter "TextSize"

    .prologue
    .line 334
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 335
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 336
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 337
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 338
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 339
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public RemoveClip()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 457
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->bw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getWidth()I

    move-result v1

    iget-object v2, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->bw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-virtual {v2}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 458
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 459
    return-void
.end method

.method public getBitmap()Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->bw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    return-object v0
.end method
