.class public final Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "PlanarYUVLuminanceSource.java"


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final top:I

.field private final yuvData:[B


# direct methods
.method public constructor <init>([BIIIIII)V
    .locals 2
    .parameter "yuvData"
    .parameter "dataWidth"
    .parameter "dataHeight"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 43
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 45
    add-int v0, p4, p6

    if-gt v0, p2, :cond_0

    add-int v0, p5, p7

    if-le v0, p3, :cond_1

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crop rectangle does not fit within image data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iput-object p1, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->yuvData:[B

    .line 50
    iput p2, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->dataWidth:I

    .line 51
    iput p3, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->dataHeight:I

    .line 52
    iput p4, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->left:I

    .line 53
    iput p5, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->top:I

    .line 54
    return-void
.end method


# virtual methods
.method public getDataHeight()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->dataHeight:I

    return v0
.end method

.method public getDataWidth()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->dataWidth:I

    return v0
.end method

.method public getMatrix()[B
    .locals 10

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->getWidth()I

    move-result v5

    .line 77
    .local v5, width:I
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->getHeight()I

    move-result v1

    .line 81
    .local v1, height:I
    iget v8, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v5, v8, :cond_1

    iget v8, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->dataHeight:I

    if-ne v1, v8, :cond_1

    .line 82
    iget-object v3, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->yuvData:[B

    .line 106
    :cond_0
    :goto_0
    return-object v3

    .line 85
    :cond_1
    mul-int v0, v5, v1

    .line 86
    .local v0, area:I
    new-array v3, v0, [B

    .line 87
    .local v3, matrix:[B
    iget v8, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->top:I

    iget v9, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->left:I

    add-int v2, v8, v9

    .line 90
    .local v2, inputOffset:I
    iget v8, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v5, v8, :cond_2

    .line 91
    iget-object v8, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v9, 0x0

    invoke-static {v8, v2, v3, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v7, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->yuvData:[B

    .line 97
    .local v7, yuv:[B
    const/4 v6, 0x0

    .local v6, y:I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 98
    mul-int v4, v6, v5

    .line 100
    .local v4, outputOffset:I
    :try_start_0
    invoke-static {v7, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_2
    iget v8, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v2, v8

    .line 97
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 101
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public getRow(I[B)[B
    .locals 5
    .parameter "y"
    .parameter "row"

    .prologue
    .line 58
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->getHeight()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 59
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Requested row is outside the image: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->getWidth()I

    move-result v1

    .line 62
    .local v1, width:I
    if-eqz p2, :cond_2

    array-length v2, p2

    if-ge v2, v1, :cond_3

    .line 63
    :cond_2
    new-array p2, v1, [B

    .line 65
    :cond_3
    iget v2, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->top:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->left:I

    add-int v0, v2, v3

    .line 67
    .local v0, offset:I
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-object p2

    .line 68
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isCropSupported()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->getWidth()I

    move-result v3

    .line 124
    .local v3, width:I
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->getHeight()I

    move-result v7

    .line 125
    .local v7, height:I
    mul-int v4, v3, v7

    new-array v1, v4, [I

    .line 126
    .local v1, pixels:[I
    iget-object v13, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->yuvData:[B

    .line 127
    .local v13, yuv:[B
    iget v4, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->top:I

    iget v5, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->left:I

    add-int v9, v4, v5

    .line 129
    .local v9, inputOffset:I
    const/4 v12, 0x0

    .local v12, y:I
    :goto_0
    if-lt v12, v7, :cond_0

    .line 138
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    move v4, v2

    move v5, v2

    move v6, v3

    .line 139
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 140
    return-object v0

    .line 130
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    mul-int v10, v12, v3

    .line 131
    .local v10, outputOffset:I
    const/4 v11, 0x0

    .local v11, x:I
    :goto_1
    if-lt v11, v3, :cond_1

    .line 135
    iget v4, p0, Lcom/jingdong/lib/zxing/client/android/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v9, v4

    .line 129
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 132
    :cond_1
    add-int v4, v9, v11

    aget-byte v4, v13, v4

    and-int/lit16 v8, v4, 0xff

    .line 133
    .local v8, grey:I
    add-int v4, v10, v11

    const/high16 v5, -0x100

    const v6, 0x10101

    mul-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v1, v4

    .line 131
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method
