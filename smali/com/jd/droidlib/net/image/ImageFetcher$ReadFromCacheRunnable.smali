.class Lcom/jd/droidlib/net/image/ImageFetcher$ReadFromCacheRunnable;
.super Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpecRunnable;
.source "ImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/droidlib/net/image/ImageFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadFromCacheRunnable"
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
    .line 418
    iput-object p1, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ReadFromCacheRunnable;->this$0:Lcom/jd/droidlib/net/image/ImageFetcher;

    .line 419
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpecRunnable;-><init>(Lcom/jd/droidlib/net/image/ImageFetcher;Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;J)V

    .line 420
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 424
    iget-object v2, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ReadFromCacheRunnable;->this$0:Lcom/jd/droidlib/net/image/ImageFetcher;

    iget-object v3, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ReadFromCacheRunnable;->spec:Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

    invoke-virtual {v2, v3}, Lcom/jd/droidlib/net/image/ImageFetcher;->readCached(Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 425
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 426
    new-instance v1, Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;

    iget-object v2, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ReadFromCacheRunnable;->this$0:Lcom/jd/droidlib/net/image/ImageFetcher;

    iget-object v3, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ReadFromCacheRunnable;->spec:Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

    .line 427
    iget-wide v4, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ReadFromCacheRunnable;->submitted:J

    .line 426
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;-><init>(Lcom/jd/droidlib/net/image/ImageFetcher;Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;J)V

    .line 428
    .local v1, r:Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;
    iget-object v2, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ReadFromCacheRunnable;->this$0:Lcom/jd/droidlib/net/image/ImageFetcher;

    iget-object v2, v2, Lcom/jd/droidlib/net/image/ImageFetcher;->fetchExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 432
    .end local v1           #r:Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v2, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ReadFromCacheRunnable;->this$0:Lcom/jd/droidlib/net/image/ImageFetcher;

    iget-object v3, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ReadFromCacheRunnable;->spec:Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

    iget-wide v4, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ReadFromCacheRunnable;->submitted:J

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/jd/droidlib/net/image/ImageFetcher;->attachIfMostRecent(Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;JLandroid/graphics/Bitmap;)V

    goto :goto_0
.end method
