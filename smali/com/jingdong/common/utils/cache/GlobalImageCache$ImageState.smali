.class public Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;
.super Ljava/lang/Object;
.source "GlobalImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/cache/GlobalImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageState"
.end annotation


# instance fields
.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->mState:I

    .line 87
    return-void
.end method


# virtual methods
.method public failure()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x2

    iput v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->mState:I

    .line 100
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 133
    invoke-static {p0}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getBitmapDigest(Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    move-result-object v0

    .line 134
    .local v0, bd:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->get(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->mState:I

    .line 129
    :cond_0
    iget v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->mState:I

    return v0
.end method

.method public loading()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->mState:I

    .line 96
    return-void
.end method

.method public none()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->mState:I

    .line 121
    return-void
.end method

.method public success(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "b"

    .prologue
    .line 108
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v1

    invoke-static {p0}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getBitmapDigest(Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->put(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;)V

    .line 109
    const/4 v1, 0x3

    iput v1, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->mState:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {p0}, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->failure()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageState [bitmap="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
