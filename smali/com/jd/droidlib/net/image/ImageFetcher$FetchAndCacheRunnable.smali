.class Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;
.super Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpecRunnable;
.source "ImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/droidlib/net/image/ImageFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FetchAndCacheRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/droidlib/net/image/ImageFetcher;


# direct methods
.method public constructor <init>(Lcom/jd/droidlib/net/image/ImageFetcher;Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;J)V
    .locals 0
    .parameter
    .parameter "spec"
    .parameter "submitted"

    .prologue
    .line 438
    iput-object p1, p0, Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;->this$0:Lcom/jd/droidlib/net/image/ImageFetcher;

    .line 439
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpecRunnable;-><init>(Lcom/jd/droidlib/net/image/ImageFetcher;Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;J)V

    .line 440
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 445
    :try_start_0
    iget-object v4, p0, Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;->this$0:Lcom/jd/droidlib/net/image/ImageFetcher;

    iget-object v5, p0, Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;->spec:Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

    invoke-virtual {v4, v5}, Lcom/jd/droidlib/net/image/ImageFetcher;->fetchAndDecode(Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;)Landroid/util/Pair;

    move-result-object v1

    .line 446
    .local v1, bmData:Landroid/util/Pair;,"Landroid/util/Pair<[BLandroid/util/Pair<Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;>;>;"
    iget-object v5, p0, Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;->this$0:Lcom/jd/droidlib/net/image/ImageFetcher;

    iget-object v4, p0, Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;->spec:Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

    iget-object v6, v4, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->imgUrl:Ljava/lang/String;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {v5, v6, v4}, Lcom/jd/droidlib/net/image/ImageFetcher;->cacheRawImage(Ljava/lang/String;[B)V

    .line 447
    iget-object v5, p0, Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;->this$0:Lcom/jd/droidlib/net/image/ImageFetcher;

    iget-object v6, p0, Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;->spec:Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    invoke-virtual {v5, v6, v4}, Lcom/jd/droidlib/net/image/ImageFetcher;->reshapeAndCache(Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;Landroid/util/Pair;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 448
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;->this$0:Lcom/jd/droidlib/net/image/ImageFetcher;

    iget-object v5, p0, Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;->spec:Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

    iget-wide v6, p0, Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;->submitted:J

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/jd/droidlib/net/image/ImageFetcher;->attachIfMostRecent(Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;JLandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #bmData:Landroid/util/Pair;,"Landroid/util/Pair<[BLandroid/util/Pair<Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;>;>;"
    :cond_0
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v2

    .line 450
    .local v2, e:Ljava/lang/Exception;
    invoke-static {v2}, Lcom/jd/droidlib/net/http/worker/HTTPWorker;->throwIfNetworkOnMainThreadException(Ljava/lang/Exception;)V

    .line 451
    const-string v4, "Failed to fetch %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;->spec:Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

    iget-object v7, v7, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->imgUrl:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    invoke-static {v2}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 453
    iget-object v4, p0, Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;->spec:Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

    iget-object v4, v4, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->imgViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 454
    .local v3, imgView:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;->spec:Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

    iget-object v4, v4, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->listener:Lcom/jd/droidlib/net/image/ImageFetchListener;

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 455
    iget-object v4, p0, Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;->this$0:Lcom/jd/droidlib/net/image/ImageFetcher;

    new-instance v5, Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable$1;

    invoke-direct {v5, p0, v3, v2}, Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable$1;-><init>(Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;Landroid/widget/ImageView;Ljava/lang/Exception;)V

    invoke-virtual {v4, v5}, Lcom/jd/droidlib/net/image/ImageFetcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
