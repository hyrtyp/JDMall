.class Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;
.super Ljava/lang/Object;
.source "ImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/droidlib/net/image/ImageFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageViewSpec"
.end annotation


# instance fields
.field final cacheKey:Ljava/lang/String;

.field final configHint:Landroid/graphics/Bitmap$Config;

.field final crossFadeMillis:I

.field final heightHint:I

.field final imgUrl:Ljava/lang/String;

.field private final imgViewHash:I

.field final imgViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final inBitmapRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final listener:Lcom/jd/droidlib/net/image/ImageFetchListener;

.field final reshaper:Lcom/jd/droidlib/net/image/ImageReshaper;

.field final widthHint:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/jd/droidlib/net/image/ImageReshaper;Lcom/jd/droidlib/net/image/ImageFetchListener;)V
    .locals 2
    .parameter "imgView"
    .parameter "imgUrl"
    .parameter "inBitmap"
    .parameter "crossFadeMillis"
    .parameter "reshaper"
    .parameter "listener"

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->imgViewRef:Ljava/lang/ref/WeakReference;

    .line 324
    iput-object p2, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->imgUrl:Ljava/lang/String;

    .line 325
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->inBitmapRef:Ljava/lang/ref/WeakReference;

    .line 326
    iput p4, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->crossFadeMillis:I

    .line 327
    iput-object p5, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->reshaper:Lcom/jd/droidlib/net/image/ImageReshaper;

    .line 328
    iput-object p6, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->listener:Lcom/jd/droidlib/net/image/ImageFetchListener;

    .line 329
    invoke-direct {p0, p1}, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->getCacheKey(Landroid/widget/ImageView;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->cacheKey:Ljava/lang/String;

    .line 330
    invoke-direct {p0}, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->getConfigHint()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    iput-object v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->configHint:Landroid/graphics/Bitmap$Config;

    .line 331
    invoke-direct {p0, p1}, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->getSizeHint(Landroid/widget/ImageView;)Landroid/graphics/Point;

    move-result-object v0

    .line 332
    .local v0, p:Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->widthHint:I

    .line 333
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->heightHint:I

    .line 334
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->imgViewHash:I

    .line 335
    return-void
.end method

.method private getCacheKey(Landroid/widget/ImageView;)Ljava/lang/String;
    .locals 3
    .parameter "imgView"

    .prologue
    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->imgUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget-object v2, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->reshaper:Lcom/jd/droidlib/net/image/ImageReshaper;

    if-eqz v2, :cond_0

    .line 341
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget-object v2, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->reshaper:Lcom/jd/droidlib/net/image/ImageReshaper;

    invoke-interface {v2}, Lcom/jd/droidlib/net/image/ImageReshaper;->getCacheId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_0
    invoke-direct {p0, p1}, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->getSizeHint(Landroid/widget/ImageView;)Landroid/graphics/Point;

    move-result-object v0

    .line 345
    .local v0, p:Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    if-gtz v2, :cond_1

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-lez v2, :cond_2

    .line 346
    :cond_1
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getConfigHint()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->reshaper:Lcom/jd/droidlib/net/image/ImageReshaper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->reshaper:Lcom/jd/droidlib/net/image/ImageReshaper;

    invoke-interface {v0}, Lcom/jd/droidlib/net/image/ImageReshaper;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSizeHint(Landroid/widget/ImageView;)Landroid/graphics/Point;
    .locals 2
    .parameter "imgView"

    .prologue
    .line 359
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 360
    .local v0, p:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->reshaper:Lcom/jd/droidlib/net/image/ImageReshaper;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->reshaper:Lcom/jd/droidlib/net/image/ImageReshaper;

    invoke-interface {v1}, Lcom/jd/droidlib/net/image/ImageReshaper;->getImageWidthHint()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 362
    iget-object v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->reshaper:Lcom/jd/droidlib/net/image/ImageReshaper;

    invoke-interface {v1}, Lcom/jd/droidlib/net/image/ImageReshaper;->getImageHeightHint()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 364
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-gtz v1, :cond_1

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-gtz v1, :cond_1

    .line 365
    invoke-static {p1}, Lcom/jd/droidlib/inner/BitmapFactoryUtils;->calcDecodeSizeHint(Landroid/widget/ImageView;)Landroid/graphics/Point;

    move-result-object v0

    .line 367
    :cond_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, eq:Z
    if-ne p0, p1, :cond_1

    .line 374
    const/4 v0, 0x1

    .line 378
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 375
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

    if-eqz v1, :cond_0

    .line 376
    iget v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->imgViewHash:I

    check-cast p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

    .end local p1
    iget v2, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->imgViewHash:I

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->imgViewHash:I

    return v0
.end method
