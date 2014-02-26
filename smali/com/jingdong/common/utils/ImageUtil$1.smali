.class Lcom/jingdong/common/utils/ImageUtil$1;
.super Ljava/lang/Object;
.source "ImageUtil.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/ImageUtil;->loadImageWithUrl(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;ZLcom/jingdong/common/utils/ImageUtil$ImageLoadListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$digest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

.field private final synthetic val$listener:Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/ImageUtil$1;->val$listener:Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;

    iput-object p2, p0, Lcom/jingdong/common/utils/ImageUtil$1;->val$digest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    const/4 v2, 0x0

    .line 609
    iget-object v1, p0, Lcom/jingdong/common/utils/ImageUtil$1;->val$listener:Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;

    if-eqz v1, :cond_0

    .line 610
    invoke-static {p1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->createInputWay(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Lcom/jingdong/common/utils/ImageUtil$InputWay;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 611
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 612
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/common/utils/ImageUtil$1;->val$digest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-virtual {v1, v2, v0}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->put(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;)V

    .line 613
    iget-object v1, p0, Lcom/jingdong/common/utils/ImageUtil$1;->val$listener:Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;

    iget-object v2, p0, Lcom/jingdong/common/utils/ImageUtil$1;->val$digest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-interface {v1, v2, v0}, Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;->onSuccess(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;)V

    .line 618
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 615
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/jingdong/common/utils/ImageUtil$1;->val$listener:Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;

    iget-object v2, p0, Lcom/jingdong/common/utils/ImageUtil$1;->val$digest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-interface {v1, v2}, Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;->onError(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/jingdong/common/utils/ImageUtil$1;->val$listener:Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/jingdong/common/utils/ImageUtil$1;->val$listener:Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;

    iget-object v1, p0, Lcom/jingdong/common/utils/ImageUtil$1;->val$digest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-interface {v0, v1}, Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;->onError(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V

    .line 604
    :cond_0
    return-void
.end method

.method public onProgress(II)V
    .locals 2
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/jingdong/common/utils/ImageUtil$1;->val$listener:Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/jingdong/common/utils/ImageUtil$1;->val$listener:Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;

    iget-object v1, p0, Lcom/jingdong/common/utils/ImageUtil$1;->val$digest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-interface {v0, v1, p1, p2}, Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;->onProgress(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;II)V

    .line 597
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/jingdong/common/utils/ImageUtil$1;->val$listener:Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/jingdong/common/utils/ImageUtil$1;->val$listener:Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;

    iget-object v1, p0, Lcom/jingdong/common/utils/ImageUtil$1;->val$digest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-interface {v0, v1}, Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;->onStart(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V

    .line 625
    :cond_0
    return-void
.end method
