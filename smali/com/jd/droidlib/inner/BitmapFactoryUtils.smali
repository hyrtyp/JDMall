.class public Lcom/jd/droidlib/inner/BitmapFactoryUtils;
.super Ljava/lang/Object;
.source "BitmapFactoryUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcDecodeSizeHint(Landroid/widget/ImageView;)Landroid/graphics/Point;
    .locals 4
    .parameter "imageView"

    .prologue
    .line 34
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 35
    .local v1, p:Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 36
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_3

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 37
    if-eqz v2, :cond_4

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 38
    iget v3, v1, Landroid/graphics/Point;->x:I

    if-lez v3, :cond_0

    iget v3, v1, Landroid/graphics/Point;->y:I

    if-gtz v3, :cond_2

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 40
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 41
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/graphics/Point;->x:I

    if-gtz v3, :cond_1

    .line 42
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 44
    :cond_1
    iget v3, v1, Landroid/graphics/Point;->y:I

    if-gtz v3, :cond_2

    .line 45
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 48
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    :cond_2
    return-object v1

    .line 36
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    goto :goto_0

    .line 37
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    goto :goto_1
.end method

.method private static calcInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .parameter "opts"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 105
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 106
    .local v0, height:I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 107
    .local v3, width:I
    const/4 v2, 0x1

    .line 108
    .local v2, inSampleSize:I
    if-gt v0, p2, :cond_0

    if-le v3, p1, :cond_3

    .line 109
    :cond_0
    const/4 v1, 0x1

    .line 110
    .local v1, heightRatio:I
    if-lez p2, :cond_1

    .line 111
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 113
    :cond_1
    const/4 v4, 0x1

    .line 114
    .local v4, widthRatio:I
    if-lez p1, :cond_2

    .line 115
    int-to-float v5, v3

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 117
    :cond_2
    if-ge v1, v4, :cond_4

    move v2, v1

    .line 120
    .end local v1           #heightRatio:I
    .end local v4           #widthRatio:I
    :cond_3
    :goto_0
    return v2

    .restart local v1       #heightRatio:I
    .restart local v4       #widthRatio:I
    :cond_4
    move v2, v4

    .line 118
    goto :goto_0
.end method

.method public static decodeScaled([BIILandroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)Landroid/util/Pair;
    .locals 11
    .parameter "data"
    .parameter "reqWidth"
    .parameter "reqHeight"
    .parameter "config"
    .parameter "inBitmap"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 55
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    if-gtz p1, :cond_4

    if-gtz p2, :cond_4

    const/4 v2, 0x0

    .line 56
    .local v2, gotSizeHint:Z
    :goto_0
    if-eqz p3, :cond_5

    const/4 v1, 0x1

    .line 57
    .local v1, gotConfig:Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v1, :cond_3

    .line 58
    :cond_0
    if-eqz v1, :cond_1

    .line 59
    iput-object p3, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 61
    :cond_1
    if-eqz v2, :cond_2

    .line 62
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 63
    const/4 v6, 0x0

    array-length v7, p0

    invoke-static {p0, v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 64
    invoke-static {v3, p1, p2}, Lcom/jd/droidlib/inner/BitmapFactoryUtils;->calcInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 65
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 67
    :cond_2
    invoke-static {}, Lcom/jd/droidlib/inner/BitmapFactoryUtils;->inBitmapSupported()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 68
    iput-object p4, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 71
    :cond_3
    const/4 v0, 0x0

    .line 73
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    :try_start_0
    array-length v7, p0

    invoke-static {p0, v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_2
    if-nez v0, :cond_7

    .line 91
    new-instance v6, Ljava/io/IOException;

    const-string v7, "BitmapFactory returned null."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 55
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #gotConfig:Z
    .end local v2           #gotSizeHint:Z
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 56
    .restart local v2       #gotSizeHint:Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 74
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #gotConfig:Z
    :catch_0
    move-exception v4

    .line 75
    .local v4, t:Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 76
    invoke-static {}, Lcom/jd/droidlib/inner/BitmapFactoryUtils;->inBitmapSupported()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz p4, :cond_6

    .line 77
    const/4 v6, 0x0

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 79
    const/4 v6, 0x0

    :try_start_1
    array-length v7, p0

    invoke-static {p0, v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    invoke-static {v4}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 82
    :catch_1
    move-exception v5

    .line 83
    .local v5, th:Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 84
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 87
    .end local v5           #th:Ljava/lang/Throwable;
    :cond_6
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 92
    .end local v4           #t:Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-lez v6, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-gtz v6, :cond_9

    .line 93
    :cond_8
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Invalid Bitmap: w:%d, h:%d."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 94
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 93
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 96
    :cond_9
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6
.end method

.method private static inBitmapSupported()Z
    .locals 2

    .prologue
    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
