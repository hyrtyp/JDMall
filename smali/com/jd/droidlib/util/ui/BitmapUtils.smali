.class public final Lcom/jd/droidlib/util/ui/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRounded(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bm"
    .parameter "cornerRadiusPx"

    .prologue
    const/4 v8, 0x0

    .line 53
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 54
    .local v6, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 56
    .local v2, h:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    .local v0, bmOut:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 59
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 60
    .local v3, paint:Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v8, v8, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 64
    .local v4, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 66
    .local v5, rectF:Landroid/graphics/RectF;
    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 67
    int-to-float v7, p1

    int-to-float v8, p1

    invoke-virtual {v1, v5, v7, v8, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 69
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 70
    invoke-virtual {v1, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 72
    return-object v0
.end method

.method public static getScaled(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bm"
    .parameter "sidePx"
    .parameter "max"

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v3, v5

    .line 36
    .local v3, w:F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v0, v5

    .line 37
    .local v0, h:F
    int-to-float v5, p1

    div-float v4, v5, v3

    .line 38
    .local v4, wRatio:F
    int-to-float v5, p1

    div-float v1, v5, v0

    .line 39
    .local v1, hRatio:F
    if-eqz p2, :cond_0

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 40
    .local v2, ratio:F
    :goto_0
    mul-float/2addr v3, v2

    .line 41
    mul-float/2addr v0, v2

    .line 42
    float-to-int v5, v3

    float-to-int v6, v0

    const/4 v7, 0x1

    invoke-static {p0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5

    .line 39
    .end local v2           #ratio:F
    :cond_0
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_0
.end method

.method public static getSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "bm"

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public static getSquare(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bm"

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 47
    .local v2, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 48
    .local v0, h:I
    if-le v2, v0, :cond_0

    move v1, v0

    .line 49
    .local v1, side:I
    :goto_0
    invoke-static {p0, v3, v3, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .end local v1           #side:I
    :cond_0
    move v1, v2

    .line 48
    goto :goto_0
.end method

.method public static getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 77
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 78
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 77
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 80
    invoke-virtual {p0, v4}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 83
    return-object v0
.end method
