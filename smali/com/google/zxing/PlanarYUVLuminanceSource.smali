.class public final Lcom/google/zxing/PlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "PlanarYUVLuminanceSource.java"


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final top:I

.field private final yuvData:[B


# direct methods
.method public constructor <init>([BIIIIIIZ)V
    .locals 2
    .parameter "yuvData"
    .parameter "dataWidth"
    .parameter "dataHeight"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "reverseHorizontal"

    .prologue
    .line 45
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 47
    add-int v0, p4, p6

    if-gt v0, p2, :cond_0

    add-int v0, p5, p7

    if-le v0, p3, :cond_1

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crop rectangle does not fit within image data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput-object p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 52
    iput p2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 53
    iput p3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    .line 54
    iput p4, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    .line 55
    iput p5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    .line 56
    if-eqz p8, :cond_2

    .line 57
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/PlanarYUVLuminanceSource;->reverseHorizontal(II)V

    .line 59
    :cond_2
    return-void
.end method

.method private reverseHorizontal(II)V
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    .line 142
    iget-object v6, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 143
    .local v6, yuvData:[B
    const/4 v5, 0x0

    .local v5, y:I
    iget v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    iget v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int v1, v7, v8

    .local v1, rowStart:I
    :goto_0
    if-ge v5, p2, :cond_1

    .line 144
    div-int/lit8 v7, p1, 0x2

    add-int v0, v1, v7

    .line 145
    .local v0, middle:I
    move v3, v1

    .local v3, x1:I
    add-int v7, v1, p1

    add-int/lit8 v4, v7, -0x1

    .local v4, x2:I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 146
    aget-byte v2, v6, v3

    .line 147
    .local v2, temp:B
    aget-byte v7, v6, v4

    aput-byte v7, v6, v3

    .line 148
    aput-byte v2, v6, v4

    .line 145
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 143
    .end local v2           #temp:B
    :cond_0
    add-int/lit8 v5, v5, 0x1

    iget v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v1, v7

    goto :goto_0

    .line 151
    .end local v0           #middle:I
    .end local v3           #x1:I
    .end local v4           #x2:I
    :cond_1
    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 9
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 113
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget-object v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    iget v4, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v4, p1

    iget v5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    add-int/2addr v5, p2

    const/4 v8, 0x0

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v0
.end method

.method public getMatrix()[B
    .locals 10

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v5

    .line 78
    .local v5, width:I
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result v1

    .line 82
    .local v1, height:I
    iget v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v5, v8, :cond_1

    iget v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    if-ne v1, v8, :cond_1

    .line 83
    iget-object v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 103
    :cond_0
    :goto_0
    return-object v3

    .line 86
    :cond_1
    mul-int v0, v5, v1

    .line 87
    .local v0, area:I
    new-array v3, v0, [B

    .line 88
    .local v3, matrix:[B
    iget v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    iget v9, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int v2, v8, v9

    .line 91
    .local v2, inputOffset:I
    iget v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v5, v8, :cond_2

    .line 92
    iget-object v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v9, 0x0

    invoke-static {v8, v2, v3, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 98
    .local v7, yuv:[B
    const/4 v6, 0x0

    .local v6, y:I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 99
    mul-int v4, v6, v5

    .line 100
    .local v4, outputOffset:I
    invoke-static {v7, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v2, v8

    .line 98
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public getRow(I[B)[B
    .locals 5
    .parameter "y"
    .parameter "row"

    .prologue
    .line 63
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 64
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested row is outside the image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v1

    .line 67
    .local v1, width:I
    if-eqz p2, :cond_2

    array-length v2, p2

    if-ge v2, v1, :cond_3

    .line 68
    :cond_2
    new-array p2, v1, [B

    .line 70
    :cond_3
    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int v0, v2, v3

    .line 71
    .local v0, offset:I
    iget-object v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    return-object p2
.end method

.method public isCropSupported()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public renderCroppedGreyscaleBitmap()[I
    .locals 12

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v5

    .line 125
    .local v5, width:I
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result v1

    .line 126
    .local v1, height:I
    mul-int v9, v5, v1

    new-array v4, v9, [I

    .line 127
    .local v4, pixels:[I
    iget-object v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 128
    .local v8, yuv:[B
    iget v9, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    iget v10, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int v2, v9, v10

    .line 130
    .local v2, inputOffset:I
    const/4 v7, 0x0

    .local v7, y:I
    :goto_0
    if-ge v7, v1, :cond_1

    .line 131
    mul-int v3, v7, v5

    .line 132
    .local v3, outputOffset:I
    const/4 v6, 0x0

    .local v6, x:I
    :goto_1
    if-ge v6, v5, :cond_0

    .line 133
    add-int v9, v2, v6

    aget-byte v9, v8, v9

    and-int/lit16 v0, v9, 0xff

    .line 134
    .local v0, grey:I
    add-int v9, v3, v6

    const/high16 v10, -0x100

    const v11, 0x10101

    mul-int/2addr v11, v0

    or-int/2addr v10, v11

    aput v10, v4, v9

    .line 132
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 136
    .end local v0           #grey:I
    :cond_0
    iget v9, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v2, v9

    .line 130
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 138
    .end local v3           #outputOffset:I
    .end local v6           #x:I
    :cond_1
    return-object v4
.end method
