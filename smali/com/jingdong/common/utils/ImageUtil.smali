.class public Lcom/jingdong/common/utils/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;,
        Lcom/jingdong/common/utils/ImageUtil$InputWay;
    }
.end annotation


# static fields
.field public static final DEFAULT_ROUND:I = 0x6

.field public static final IMAGE_MAX_HEIGHT:I = 0x29a

.field public static final IMAGE_MAX_WIDTH:I = 0x29a


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "inputWay"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    const v2, 0x44268000

    .line 339
    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    if-le p1, v1, :cond_0

    .line 340
    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result p1

    .line 343
    :cond_0
    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    if-le p2, v1, :cond_1

    .line 344
    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result p2

    .line 347
    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 348
    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result p1

    .line 349
    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result p2

    .line 352
    :cond_2
    new-instance v0, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    invoke-direct {v0}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;-><init>()V

    .line 354
    .local v0, bitmapUtil:Lcom/novoda/imageloader/core/bitmap/BitmapUtil;
    const/4 v6, 0x0

    .line 356
    .local v6, bitmap:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    const/4 v1, 0x2

    if-lt v7, v1, :cond_4

    .line 397
    :cond_3
    return-object v6

    .line 358
    :cond_4
    invoke-virtual {p0}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->getResourceId()I

    move-result v1

    if-eqz v1, :cond_6

    .line 359
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->getResourceId()I

    move-result v4

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeResourceBitmapAndScale(Landroid/content/Context;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 384
    :cond_5
    :goto_1
    if-nez v6, :cond_3

    .line 385
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->clean()V

    .line 356
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 360
    :cond_6
    invoke-virtual {p0}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 361
    invoke-virtual {p0}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, v5}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeFileAndScale(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 362
    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_5

    .line 370
    invoke-virtual {p0}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->getByteArray()[B

    move-result-object v1

    if-eqz v1, :cond_5

    .line 371
    const/4 v8, 0x0

    .line 373
    .local v8, unscaledBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->getByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->getByteArray()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 376
    :goto_2
    if-nez v8, :cond_8

    .line 377
    const/4 v6, 0x0

    .line 378
    goto :goto_1

    .line 379
    :cond_8
    invoke-virtual {v0, v8, p1, p2, v5}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->scaleBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    .line 374
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public static createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "inputWay"
    .parameter "bd"

    .prologue
    .line 307
    invoke-virtual {p1}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->isLarge()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cleanMost()V

    .line 314
    :cond_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->getWidth()I

    move-result v2

    .line 315
    .local v2, width:I
    invoke-virtual {p1}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->getHeight()I

    move-result v1

    .line 317
    .local v1, height:I
    invoke-static {p0, v2, v1}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 319
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 320
    const/4 v3, 0x0

    .line 327
    :goto_0
    return-object v3

    .line 323
    :cond_1
    invoke-virtual {p1}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->getRound()I

    move-result v3

    if-eqz v3, :cond_2

    .line 324
    invoke-virtual {p1}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->getRound()I

    move-result v3

    invoke-static {v0, v3}, Lcom/jingdong/common/utils/ImageUtil;->toRoundCorner(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    move-object v3, v0

    .line 327
    goto :goto_0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 257
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 259
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 263
    .local v2, height:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 261
    :goto_0
    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 267
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 269
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v6, v6, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 271
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 273
    return-object v0

    .line 265
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static drawableToDrawable16(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 286
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 288
    .local v4, width:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 290
    .local v2, height:I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 291
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 293
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v6, v6, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 295
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 297
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 298
    .local v3, newDrawable:Landroid/graphics/drawable/Drawable;
    return-object v3
.end method

.method private static getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 3

    .prologue
    .line 89
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/MyApplication;->getCurrentMyActivity()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v0

    .line 90
    .local v0, currentMyActivity:Lcom/jingdong/common/frame/IMyActivity;
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/MyApplication;->getMainFrameActivity()Lcom/jingdong/common/frame/IMainActivity;

    move-result-object v1

    .line 91
    .local v1, mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;
    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/common/utils/ImageUtil;->getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 96
    :goto_0
    return-object v2

    .line 93
    :cond_0
    if-eqz v1, :cond_1

    .line 94
    invoke-interface {v1}, Lcom/jingdong/common/frame/IMainActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/common/utils/ImageUtil;->getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/common/utils/ImageUtil;->getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    goto :goto_0
.end method

.method private static getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "context"

    .prologue
    .line 100
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"
    .parameter "roundPx"

    .prologue
    const/4 v9, 0x0

    .line 221
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 222
    .local v2, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 224
    .local v0, canvas:Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 226
    .local v1, color:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 228
    .local v3, paint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 230
    .local v4, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 232
    .local v5, rectF:Landroid/graphics/RectF;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 234
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 236
    const v6, -0xbdbdbe

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    invoke-virtual {v0, v5, p1, p1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 240
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 242
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 244
    return-object v2
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "drawable"
    .parameter "roundPx"

    .prologue
    .line 204
    invoke-static {p0}, Lcom/jingdong/common/utils/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/jingdong/common/utils/ImageUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "resource"
    .parameter "root"

    .prologue
    .line 54
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/ImageUtil;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 58
    :goto_0
    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Throwable;
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->clean()V

    .line 58
    invoke-static {}, Lcom/jingdong/common/utils/ImageUtil;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public static inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 2
    .parameter "resource"
    .parameter "root"
    .parameter "attachToRoot"

    .prologue
    .line 80
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/ImageUtil;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Throwable;
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->clean()V

    .line 84
    invoke-static {}, Lcom/jingdong/common/utils/ImageUtil;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "resource"
    .parameter "root"

    .prologue
    .line 71
    :try_start_0
    invoke-static {p0}, Lcom/jingdong/common/utils/ImageUtil;->getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 75
    :goto_0
    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Throwable;
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->clean()V

    .line 75
    invoke-static {p0}, Lcom/jingdong/common/utils/ImageUtil;->getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public static isBitmapCanUse(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 498
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadImageWithCache(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "digest"

    .prologue
    .line 638
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->get(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 639
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 643
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadImageWithUrl(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;)V
    .locals 1
    .parameter "group"
    .parameter "digest"
    .parameter "listener"

    .prologue
    .line 509
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/jingdong/common/utils/ImageUtil;->loadImageWithUrl(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;ZLcom/jingdong/common/utils/ImageUtil$ImageLoadListener;)V

    .line 510
    return-void
.end method

.method public static loadImageWithUrl(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;I)V
    .locals 1
    .parameter "group"
    .parameter "digest"
    .parameter "listener"
    .parameter "priority"

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/jingdong/common/utils/ImageUtil;->loadImageWithUrl(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;ZLcom/jingdong/common/utils/ImageUtil$ImageLoadListener;I)V

    .line 522
    return-void
.end method

.method public static loadImageWithUrl(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;ZLcom/jingdong/common/utils/ImageUtil$ImageLoadListener;)V
    .locals 1
    .parameter "group"
    .parameter "digest"
    .parameter "isNoImage"
    .parameter "listener"

    .prologue
    .line 546
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/jingdong/common/utils/ImageUtil;->loadImageWithUrl(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;ZLcom/jingdong/common/utils/ImageUtil$ImageLoadListener;I)V

    .line 547
    return-void
.end method

.method public static loadImageWithUrl(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;ZLcom/jingdong/common/utils/ImageUtil$ImageLoadListener;I)V
    .locals 3
    .parameter "group"
    .parameter "digest"
    .parameter "isNoImage"
    .parameter "listener"
    .parameter "priority"

    .prologue
    .line 561
    if-nez p1, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-static {p1}, Lcom/jingdong/common/utils/ImageUtil;->loadImageWithCache(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 567
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 568
    if-eqz p3, :cond_0

    .line 569
    invoke-interface {p3, p1, v0}, Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;->onSuccess(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 574
    :cond_2
    if-eqz p0, :cond_0

    .line 578
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 579
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 580
    invoke-virtual {p1}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 581
    if-eqz p4, :cond_3

    .line 582
    invoke-virtual {v1, p4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPriority(I)V

    .line 584
    :cond_3
    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 586
    if-eqz p2, :cond_4

    .line 587
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setCacheMode(I)V

    .line 590
    :cond_4
    new-instance v2, Lcom/jingdong/common/utils/ImageUtil$1;

    invoke-direct {v2, p3, p1}, Lcom/jingdong/common/utils/ImageUtil$1;-><init>(Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 628
    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method

.method public static loadImageWithUrlJugeNoImage(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;)V
    .locals 1
    .parameter "group"
    .parameter "digest"
    .parameter "listener"

    .prologue
    .line 532
    invoke-static {}, Lcom/jingdong/common/utils/NoImageUtils;->needNoImage()Z

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/jingdong/common/utils/ImageUtil;->loadImageWithUrl(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;ZLcom/jingdong/common/utils/ImageUtil$ImageLoadListener;)V

    .line 533
    return-void
.end method

.method public static scaleDrawable(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/drawable/Drawable;
    .locals 12
    .parameter "drawable"
    .parameter "originalWidth"
    .parameter "originalHeight"

    .prologue
    .line 733
    :try_start_0
    invoke-static {p0}, Lcom/jingdong/common/utils/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 735
    .local v0, oldbmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 736
    .local v3, bmpWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 737
    .local v4, bmpHeight:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 738
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v11, v1, p1

    .line 739
    .local v11, w:F
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v8, v1, p2

    .line 740
    .local v8, h:F
    invoke-virtual {v5, v11, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 742
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 743
    .local v10, newbmp:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    .end local v0           #oldbmp:Landroid/graphics/Bitmap;
    .end local v3           #bmpWidth:I
    .end local v4           #bmpHeight:I
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v8           #h:F
    .end local v10           #newbmp:Landroid/graphics/Bitmap;
    .end local v11           #w:F
    .local v9, newDrawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v9

    .line 744
    .end local v9           #newDrawable:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v7

    .line 748
    .local v7, e:Ljava/lang/Exception;
    move-object v9, p0

    .restart local v9       #newDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/view/View;Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;)V
    .locals 3
    .parameter "myActivity"
    .parameter "view"
    .parameter "group"
    .parameter "imageUrl"
    .parameter "loadListener"

    .prologue
    .line 696
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    new-instance v0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-direct {v0, p3}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;-><init>(Ljava/lang/String;)V

    .line 701
    .local v0, bd:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->setWidth(I)V

    .line 702
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->setHeight(I)V

    .line 704
    invoke-static {v0}, Lcom/jingdong/common/utils/ImageUtil;->loadImageWithCache(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 706
    .local v1, imageBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    .line 707
    invoke-static {p2, v0, p4}, Lcom/jingdong/common/utils/ImageUtil;->loadImageWithUrl(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;)V

    goto :goto_0

    .line 709
    :cond_2
    if-eqz p4, :cond_0

    .line 710
    invoke-interface {p4, v0, v1}, Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;->onSuccess(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static toRoundBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 33
    .parameter "bitmap"
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    .line 112
    .local v28, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 114
    .local v15, height:I
    move/from16 v0, v28

    if-le v0, v15, :cond_2

    .line 115
    move/from16 p2, v15

    move/from16 p1, v15

    .line 126
    :goto_0
    move-object/from16 v26, p0

    .line 127
    .local v26, tempBitmap:Landroid/graphics/Bitmap;
    move/from16 v0, p1

    move/from16 v1, v28

    if-lt v0, v1, :cond_0

    move/from16 v0, p2

    if-ge v0, v15, :cond_1

    .line 128
    :cond_0
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    move/from16 v24, p1

    .line 130
    .local v24, size:I
    :goto_1
    const/16 v29, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v24

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v26

    .line 143
    .end local v24           #size:I
    :cond_1
    :goto_2
    move/from16 v0, v28

    move/from16 v1, p1

    if-le v0, v1, :cond_4

    move/from16 v23, p1

    .line 144
    .local v23, rw:I
    :goto_3
    move/from16 v0, p2

    if-le v15, v0, :cond_5

    move/from16 v20, p2

    .line 147
    .local v20, rh:I
    :goto_4
    move/from16 v0, v28

    if-gt v0, v15, :cond_6

    .line 148
    div-int/lit8 v29, v23, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v22, v0

    .line 149
    .local v22, roundPx:F
    const/16 v27, 0x0

    .line 150
    .local v27, top:F
    move/from16 v0, v23

    int-to-float v5, v0

    .line 151
    .local v5, bottom:F
    const/16 v16, 0x0

    .line 152
    .local v16, left:F
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v21, v0

    .line 153
    .local v21, right:F
    move/from16 v15, v23

    .line 154
    const/4 v11, 0x0

    .line 155
    .local v11, dst_left:F
    const/4 v13, 0x0

    .line 156
    .local v13, dst_top:F
    move/from16 v0, v23

    int-to-float v12, v0

    .line 157
    .local v12, dst_right:F
    move/from16 v0, v23

    int-to-float v10, v0

    .line 172
    .local v10, dst_bottom:F
    :goto_5
    sget-object v29, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v23

    move/from16 v1, v20

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 173
    .local v17, output:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 175
    .local v6, canvas:Landroid/graphics/Canvas;
    const v8, -0xbdbdbe

    .line 176
    .local v8, color:I
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 177
    .local v18, paint:Landroid/graphics/Paint;
    new-instance v25, Landroid/graphics/Rect;

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v31, v0

    float-to-int v0, v5

    move/from16 v32, v0

    move-object/from16 v0, v25

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 178
    .local v25, src:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    float-to-int v0, v11

    move/from16 v29, v0

    float-to-int v0, v13

    move/from16 v30, v0

    float-to-int v0, v12

    move/from16 v31, v0

    float-to-int v0, v10

    move/from16 v32, v0

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 179
    .local v9, dst:Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/RectF;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 181
    .local v19, rectF:Landroid/graphics/RectF;
    const/16 v29, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 184
    const v29, -0xbdbdbe

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v22

    move-object/from16 v3, v18

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 187
    new-instance v29, Landroid/graphics/PorterDuffXfermode;

    sget-object v30, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v29 .. v30}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 188
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v6, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 190
    return-object v17

    .line 117
    .end local v5           #bottom:F
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v8           #color:I
    .end local v9           #dst:Landroid/graphics/Rect;
    .end local v10           #dst_bottom:F
    .end local v11           #dst_left:F
    .end local v12           #dst_right:F
    .end local v13           #dst_top:F
    .end local v16           #left:F
    .end local v17           #output:Landroid/graphics/Bitmap;
    .end local v18           #paint:Landroid/graphics/Paint;
    .end local v19           #rectF:Landroid/graphics/RectF;
    .end local v20           #rh:I
    .end local v21           #right:F
    .end local v22           #roundPx:F
    .end local v23           #rw:I
    .end local v25           #src:Landroid/graphics/Rect;
    .end local v26           #tempBitmap:Landroid/graphics/Bitmap;
    .end local v27           #top:F
    :cond_2
    move/from16 p2, v28

    move/from16 p1, v28

    goto/16 :goto_0

    .restart local v26       #tempBitmap:Landroid/graphics/Bitmap;
    :cond_3
    move/from16 v24, p2

    .line 128
    goto/16 :goto_1

    .line 131
    .restart local v24       #size:I
    :catch_0
    move-exception v14

    .line 132
    .local v14, e:Ljava/lang/Throwable;
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->clean()V

    .line 134
    const/16 v29, 0x1

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v24

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v26

    goto/16 :goto_2

    .end local v14           #e:Ljava/lang/Throwable;
    .end local v24           #size:I
    :cond_4
    move/from16 v23, v28

    .line 143
    goto/16 :goto_3

    .restart local v23       #rw:I
    :cond_5
    move/from16 v20, v15

    .line 144
    goto/16 :goto_4

    .line 159
    .restart local v20       #rh:I
    :cond_6
    div-int/lit8 v29, v20, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v22, v0

    .line 160
    .restart local v22       #roundPx:F
    sub-int v29, v23, v20

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    int-to-float v7, v0

    .line 161
    .local v7, clip:F
    move/from16 v16, v7

    .line 162
    .restart local v16       #left:F
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v21, v29, v7

    .line 163
    .restart local v21       #right:F
    const/16 v27, 0x0

    .line 164
    .restart local v27       #top:F
    move/from16 v0, v20

    int-to-float v5, v0

    .line 165
    .restart local v5       #bottom:F
    move/from16 v28, v20

    .line 166
    const/4 v11, 0x0

    .line 167
    .restart local v11       #dst_left:F
    const/4 v13, 0x0

    .line 168
    .restart local v13       #dst_top:F
    move/from16 v0, v20

    int-to-float v12, v0

    .line 169
    .restart local v12       #dst_right:F
    move/from16 v0, v20

    int-to-float v10, v0

    .restart local v10       #dst_bottom:F
    goto/16 :goto_5

    .line 135
    .end local v5           #bottom:F
    .end local v7           #clip:F
    .end local v10           #dst_bottom:F
    .end local v11           #dst_left:F
    .end local v12           #dst_right:F
    .end local v13           #dst_top:F
    .end local v16           #left:F
    .end local v20           #rh:I
    .end local v21           #right:F
    .end local v22           #roundPx:F
    .end local v23           #rw:I
    .end local v27           #top:F
    .restart local v14       #e:Ljava/lang/Throwable;
    .restart local v24       #size:I
    :catch_1
    move-exception v29

    goto/16 :goto_2
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "inBitmap"
    .parameter "dp"

    .prologue
    const/4 v10, 0x0

    .line 410
    int-to-float v7, p1

    invoke-static {v7}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v7

    int-to-float v4, v7

    .line 412
    .local v4, px:F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 413
    .local v2, outBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 415
    .local v0, canvas:Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 416
    .local v1, color:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 417
    .local v3, paint:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v5, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 418
    .local v5, rect:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 420
    .local v6, rectF:Landroid/graphics/RectF;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 421
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 422
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    invoke-virtual {v0, v6, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 425
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 426
    invoke-virtual {v0, p0, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 428
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 434
    return-object v2
.end method

.method public static zoomDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "drawable"

    .prologue
    const/4 v7, 0x0

    .line 717
    invoke-static {p0}, Lcom/jingdong/common/utils/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 719
    .local v1, oldbmp:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fe4cccccccccccdL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v1, v7, v7, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 720
    .local v0, newbmp:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v2
.end method
