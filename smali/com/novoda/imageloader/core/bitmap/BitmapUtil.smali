.class public Lcom/novoda/imageloader/core/bitmap/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x10000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 297
    if-eqz p1, :cond_0

    .line 298
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private decodeFile(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "f"
    .parameter "suggestedSize"

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 251
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->evaluateScale(Ljava/io/File;I)I

    move-result v4

    .line 256
    .local v4, scale:I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 257
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 258
    const/high16 v5, 0x1

    new-array v5, v5, [B

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 259
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 260
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 261
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    :try_start_1
    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 268
    invoke-direct {p0, v2}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 270
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #scale:I
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :goto_0
    return-object v0

    .line 263
    :catch_0
    move-exception v5

    .line 268
    :goto_1
    invoke-direct {p0, v1}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v5

    .line 268
    :goto_2
    invoke-direct {p0, v1}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 269
    throw v5

    .line 267
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #scale:I
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 263
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v5

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private decodeFileAndScale2(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "f"
    .parameter "width"
    .parameter "height"
    .parameter "upsampling"

    .prologue
    .line 318
    invoke-virtual {p0, p1, p2, p3}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 319
    .local v9, unscaledBitmap:Landroid/graphics/Bitmap;
    if-nez v9, :cond_1

    .line 320
    const/4 v0, 0x0

    .line 360
    :cond_0
    :goto_0
    return-object v0

    .line 323
    :cond_1
    move-object v0, v9

    .line 325
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 326
    .local v6, imageHeight:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 327
    .local v7, imageWidth:I
    if-nez p4, :cond_2

    if-gt v6, p3, :cond_2

    if-le v7, p2, :cond_0

    .line 330
    :cond_2
    move v5, p2

    .line 331
    .local v5, finalWidth:I
    move v4, p3

    .line 333
    .local v4, finalHeight:I
    const/4 v1, 0x0

    .line 334
    .local v1, factor:F
    if-lez v6, :cond_3

    if-lez v7, :cond_3

    .line 335
    int-to-float v10, p3

    int-to-float v11, v6

    div-float v2, v10, v11

    .line 336
    .local v2, factorH:F
    int-to-float v10, p2

    int-to-float v11, v7

    div-float v3, v10, v11

    .line 337
    .local v3, factorW:F
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 340
    .end local v2           #factorH:F
    .end local v3           #factorW:F
    :cond_3
    const/4 v10, 0x0

    cmpl-float v10, v1, v10

    if-nez v10, :cond_4

    .line 341
    if-le v6, v7, :cond_6

    .line 342
    int-to-float v10, p3

    int-to-float v11, v6

    div-float v1, v10, v11

    .line 348
    :cond_4
    :goto_1
    new-instance v10, Ljava/lang/Float;

    int-to-float v11, v6

    mul-float/2addr v11, v1

    invoke-direct {v10, v11}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v10}, Ljava/lang/Float;->intValue()I

    move-result v4

    .line 349
    new-instance v10, Ljava/lang/Float;

    int-to-float v11, v7

    mul-float/2addr v11, v1

    invoke-direct {v10, v11}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v10}, Ljava/lang/Float;->intValue()I

    move-result v5

    .line 351
    const/4 v8, 0x0

    .line 353
    .local v8, scaled:Landroid/graphics/Bitmap;
    const/4 v10, 0x1

    :try_start_0
    invoke-static {v0, v5, v4, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 357
    :goto_2
    if-eq v8, v0, :cond_5

    .line 358
    invoke-direct {p0, v0}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->recycle(Landroid/graphics/Bitmap;)V

    :cond_5
    move-object v0, v8

    .line 360
    goto :goto_0

    .line 344
    .end local v8           #scaled:Landroid/graphics/Bitmap;
    :cond_6
    int-to-float v10, p2

    int-to-float v11, v7

    div-float v1, v10, v11

    goto :goto_1

    .line 354
    .restart local v8       #scaled:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method private decodeFileToPopulateOptions(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .parameter "f"
    .parameter "o"

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 283
    .local v0, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v0           #fis:Ljava/io/FileInputStream;
    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 285
    invoke-direct {p0, v1}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 291
    invoke-direct {p0, v1}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 293
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v2

    .line 291
    :goto_1
    invoke-direct {p0, v0}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v2

    .line 291
    :goto_2
    invoke-direct {p0, v0}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 292
    throw v2

    .line 290
    .end local v0           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 286
    .end local v0           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private evaluateScale(Ljava/io/File;I)I
    .locals 3
    .parameter "f"
    .parameter "suggestedSize"

    .prologue
    .line 274
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 275
    .local v0, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 276
    invoke-direct {p0, p1, v0}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeFileToPopulateOptions(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)V

    .line 277
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, p2, v1, v2}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->calculateScale(III)I

    move-result v1

    return v1
.end method

.method private recycle(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "scaled"

    .prologue
    .line 237
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateLastModifiedForCache(Ljava/io/File;)V
    .locals 2
    .parameter "f"

    .prologue
    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 245
    return-void
.end method


# virtual methods
.method calculateScale(III)I
    .locals 2
    .parameter "requiredSize"
    .parameter "widthTmp"
    .parameter "heightTmp"

    .prologue
    .line 305
    const/4 v0, 0x1

    .line 307
    .local v0, scale:I
    :goto_0
    div-int/lit8 v1, p2, 0x2

    if-lt v1, p1, :cond_0

    div-int/lit8 v1, p3, 0x2

    if-ge v1, p1, :cond_1

    .line 314
    :cond_0
    return v0

    .line 310
    :cond_1
    div-int/lit8 p2, p2, 0x2

    .line 311
    div-int/lit8 p3, p3, 0x2

    .line 312
    mul-int/lit8 v0, v0, 0x2

    .line 306
    goto :goto_0
.end method

.method public createBitmapWithClean(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "f"
    .parameter "width"
    .parameter "height"
    .parameter "upsampling"

    .prologue
    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 374
    :cond_0
    return-object v0

    .line 367
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeFileAndScale2(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    :cond_2
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cleanMost()V

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public decodeFile(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "f"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->updateLastModifiedForCache(Ljava/io/File;)V

    .line 42
    move v0, p3

    .line 43
    .local v0, suggestedSize:I
    if-le p2, p3, :cond_0

    .line 44
    move v0, p2

    .line 46
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeFile(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 47
    .local v1, unscaledBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 48
    const/4 v1, 0x0

    .line 50
    .end local v1           #unscaledBitmap:Landroid/graphics/Bitmap;
    :cond_1
    return-object v1
.end method

.method public decodeFileAndScale(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "f"
    .parameter "width"
    .parameter "height"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeFileAndScale(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public decodeFileAndScale(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "f"
    .parameter "width"
    .parameter "height"
    .parameter "upsampling"

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, unscaledBitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 71
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->scaleBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public decodeInputStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "is"

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 224
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 230
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 232
    :goto_0
    return-object v0

    .line 225
    :catch_0
    move-exception v1

    .line 230
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v1

    .line 230
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 231
    throw v1
.end method

.method public decodeResourceBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "c"
    .parameter "width"
    .parameter "height"
    .parameter "resourceId"

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, unscaledBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 99
    :goto_0
    return-object v1

    .line 94
    :catch_0
    move-exception v1

    .line 99
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public decodeResourceBitmapAndScale(Landroid/content/Context;IIIZ)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "c"
    .parameter "width"
    .parameter "height"
    .parameter "resourceId"
    .parameter "upsampling"

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, unscaledBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    invoke-virtual {p0, v0, p2, p3, p5}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->scaleBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 112
    :goto_0
    return-object v1

    .line 107
    :catch_0
    move-exception v1

    .line 112
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "b"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->scaleBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public scaleBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "b"
    .parameter "width"
    .parameter "height"
    .parameter "upsampling"

    .prologue
    const/4 v5, 0x1

    const v8, 0x44268000

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 144
    .local v3, imageHeight:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 154
    .local v4, imageWidth:I
    invoke-static {v8}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v7

    if-gt v4, v7, :cond_0

    .line 155
    invoke-static {v8}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v7

    if-le v3, v7, :cond_1

    .line 156
    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 158
    invoke-static {v8}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result p2

    .line 159
    invoke-static {v8}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result p3

    .line 162
    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    if-nez p4, :cond_4

    if-gt v3, p3, :cond_4

    if-gt v4, p2, :cond_4

    .line 209
    .end local p1
    :cond_3
    :goto_0
    return-object p1

    .line 167
    .restart local p1
    :cond_4
    if-nez p3, :cond_7

    .line 168
    const/4 v5, 0x0

    .line 175
    .local v5, isHeight:Z
    :goto_1
    move v2, p2

    .line 176
    .local v2, finalWidth:I
    move v1, p3

    .line 177
    .local v1, finalHeight:I
    const/high16 v0, 0x3f80

    .line 179
    .local v0, factor:F
    if-eqz v5, :cond_a

    .line 180
    int-to-float v7, p3

    int-to-float v8, v3

    div-float v0, v7, v8

    .line 185
    :goto_2
    if-nez p4, :cond_5

    const/high16 v7, 0x3f80

    cmpl-float v7, v0, v7

    if-gtz v7, :cond_3

    .line 189
    :cond_5
    new-instance v7, Ljava/lang/Float;

    int-to-float v8, v3

    mul-float/2addr v8, v0

    invoke-direct {v7, v8}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v7}, Ljava/lang/Float;->intValue()I

    move-result v1

    .line 190
    new-instance v7, Ljava/lang/Float;

    int-to-float v8, v4

    mul-float/2addr v8, v0

    invoke-direct {v7, v8}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v7}, Ljava/lang/Float;->intValue()I

    move-result v2

    .line 191
    const/4 v6, 0x0

    .line 193
    .local v6, scaled:Landroid/graphics/Bitmap;
    const/4 v7, 0x1

    :try_start_0
    invoke-static {p1, v2, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 201
    :goto_3
    if-eq p1, v6, :cond_6

    .line 202
    invoke-direct {p0, p1}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->recycle(Landroid/graphics/Bitmap;)V

    :cond_6
    move-object p1, v6

    .line 209
    goto :goto_0

    .line 169
    .end local v0           #factor:F
    .end local v1           #finalHeight:I
    .end local v2           #finalWidth:I
    .end local v5           #isHeight:Z
    .end local v6           #scaled:Landroid/graphics/Bitmap;
    :cond_7
    if-nez p2, :cond_8

    .line 170
    const/4 v5, 0x1

    .line 171
    .restart local v5       #isHeight:Z
    goto :goto_1

    .line 172
    .end local v5           #isHeight:Z
    :cond_8
    if-le v3, v4, :cond_9

    .restart local v5       #isHeight:Z
    :goto_4
    goto :goto_1

    .end local v5           #isHeight:Z
    :cond_9
    const/4 v5, 0x0

    goto :goto_4

    .line 182
    .restart local v0       #factor:F
    .restart local v1       #finalHeight:I
    .restart local v2       #finalWidth:I
    .restart local v5       #isHeight:Z
    :cond_a
    int-to-float v7, p2

    int-to-float v8, v4

    div-float v0, v7, v8

    goto :goto_2

    .line 194
    .restart local v6       #scaled:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v7

    goto :goto_3
.end method

.method public scaleResourceBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "c"
    .parameter "width"
    .parameter "height"
    .parameter "resourceId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->decodeResourceBitmapAndScale(Landroid/content/Context;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
