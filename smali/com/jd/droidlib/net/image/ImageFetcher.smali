.class public Lcom/jd/droidlib/net/image/ImageFetcher;
.super Ljava/lang/Object;
.source "ImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/droidlib/net/image/ImageFetcher$FetchAndCacheRunnable;,
        Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;,
        Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpecRunnable;,
        Lcom/jd/droidlib/net/image/ImageFetcher$ReadFromCacheRunnable;,
        Lcom/jd/droidlib/net/image/ImageFetcher$SetBitmapRunnable;
    }
.end annotation


# instance fields
.field protected final cacheExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final diskCache:Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;

.field protected final fetchExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private handler:Landroid/os/Handler;

.field private final memoryCache:Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;

.field private volatile paused:Z

.field private final pending:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final restClient:Lcom/jd/droidlib/net/http/RESTClient;

.field private final wip:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "ctx"

    .prologue
    .line 71
    new-instance v2, Lcom/jd/droidlib/executor/concurrent/BackgroundExecutor;

    const/4 v0, 0x2

    invoke-direct {v2, v0}, Lcom/jd/droidlib/executor/concurrent/BackgroundExecutor;-><init>(I)V

    new-instance v3, Lcom/jd/droidlib/net/http/RESTClient;

    invoke-direct {v3, p1}, Lcom/jd/droidlib/net/http/RESTClient;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-static {p1}, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;->getDefaultInstance(Landroid/content/Context;)Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;

    move-result-object v4

    .line 73
    invoke-static {p1}, Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;->getDefaultInstance(Landroid/content/Context;)Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/jd/droidlib/net/image/ImageFetcher;-><init>(Landroid/content/Context;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/jd/droidlib/net/http/RESTClient;Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;)V

    .line 74
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/jd/droidlib/net/http/RESTClient;Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;)V
    .locals 2
    .parameter "ctx"
    .parameter "fetchExecutor"
    .parameter "restClient"
    .parameter "memoryCache"
    .parameter "diskCache"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->pending:Ljava/util/LinkedHashSet;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->wip:Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    iput-object p2, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->fetchExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 80
    iput-object p3, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->restClient:Lcom/jd/droidlib/net/http/RESTClient;

    .line 81
    iput-object p4, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->memoryCache:Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;

    .line 82
    iput-object p5, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->diskCache:Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->handler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/jd/droidlib/executor/concurrent/BackgroundExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/jd/droidlib/executor/concurrent/BackgroundExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->cacheExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 85
    return-void
.end method

.method static synthetic access$0(Lcom/jd/droidlib/net/image/ImageFetcher;)Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->diskCache:Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;

    return-object v0
.end method


# virtual methods
.method attachIfMostRecent(Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;JLandroid/graphics/Bitmap;)V
    .locals 4
    .parameter "spec"
    .parameter "submitted"
    .parameter "bitmap"

    .prologue
    .line 283
    iget-object v2, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->wip:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 284
    .local v0, mostRecent:Ljava/lang/Long;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->wip:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-boolean v2, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->paused:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->pending:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    :cond_0
    new-instance v1, Lcom/jd/droidlib/net/image/ImageFetcher$SetBitmapRunnable;

    invoke-direct {v1, p0, p1, p4}, Lcom/jd/droidlib/net/image/ImageFetcher$SetBitmapRunnable;-><init>(Lcom/jd/droidlib/net/image/ImageFetcher;Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;Landroid/graphics/Bitmap;)V

    .line 288
    .local v1, r:Lcom/jd/droidlib/net/image/ImageFetcher$SetBitmapRunnable;
    invoke-virtual {p0, v1}, Lcom/jd/droidlib/net/image/ImageFetcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 291
    .end local v1           #r:Lcom/jd/droidlib/net/image/ImageFetcher$SetBitmapRunnable;
    :cond_1
    return-void
.end method

.method public attachImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .parameter "imageView"
    .parameter "imgUrl"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jd/droidlib/net/image/ImageFetcher;->attachImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 110
    return-void
.end method

.method public attachImage(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 1
    .parameter "imageView"
    .parameter "imgUrl"
    .parameter "crossFadeMillis"

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jd/droidlib/net/image/ImageFetcher;->attachImage(Landroid/widget/ImageView;Ljava/lang/String;ILcom/jd/droidlib/net/image/ImageReshaper;)V

    .line 115
    return-void
.end method

.method public attachImage(Landroid/widget/ImageView;Ljava/lang/String;ILcom/jd/droidlib/net/image/ImageReshaper;)V
    .locals 6
    .parameter "imageView"
    .parameter "imgUrl"
    .parameter "crossFadeMillis"
    .parameter "reshaper"

    .prologue
    .line 119
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jd/droidlib/net/image/ImageFetcher;->attachImage(Landroid/widget/ImageView;Ljava/lang/String;ILcom/jd/droidlib/net/image/ImageReshaper;Lcom/jd/droidlib/net/image/ImageFetchListener;)V

    .line 120
    return-void
.end method

.method public attachImage(Landroid/widget/ImageView;Ljava/lang/String;ILcom/jd/droidlib/net/image/ImageReshaper;Lcom/jd/droidlib/net/image/ImageFetchListener;)V
    .locals 7
    .parameter "imageView"
    .parameter "imgUrl"
    .parameter "crossFadeMillis"
    .parameter "reshaper"
    .parameter "listener"

    .prologue
    .line 125
    .line 126
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 125
    invoke-virtual/range {v0 .. v6}, Lcom/jd/droidlib/net/image/ImageFetcher;->attachImage(Landroid/widget/ImageView;Ljava/lang/String;ILcom/jd/droidlib/net/image/ImageReshaper;Lcom/jd/droidlib/net/image/ImageFetchListener;Landroid/graphics/Bitmap;)V

    .line 127
    return-void
.end method

.method public attachImage(Landroid/widget/ImageView;Ljava/lang/String;ILcom/jd/droidlib/net/image/ImageReshaper;Lcom/jd/droidlib/net/image/ImageFetchListener;Landroid/graphics/Bitmap;)V
    .locals 10
    .parameter "imageView"
    .parameter "imgUrl"
    .parameter "crossFadeMillis"
    .parameter "reshaper"
    .parameter "listener"
    .parameter "inBitmap"

    .prologue
    .line 132
    new-instance v0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p6

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/jd/droidlib/net/image/ImageReshaper;Lcom/jd/droidlib/net/image/ImageFetchListener;)V

    .line 134
    .local v0, spec:Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 135
    .local v8, submitted:J
    iget-object v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->wip:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-boolean v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->paused:Z

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->pending:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 138
    iget-object v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->pending:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    if-eqz p5, :cond_2

    .line 141
    invoke-interface {p5, p1, p2}, Lcom/jd/droidlib/net/image/ImageFetchListener;->onFetchAdded(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 143
    :cond_2
    new-instance v7, Lcom/jd/droidlib/net/image/ImageFetcher$ReadFromCacheRunnable;

    invoke-direct {v7, p0, v0, v8, v9}, Lcom/jd/droidlib/net/image/ImageFetcher$ReadFromCacheRunnable;-><init>(Lcom/jd/droidlib/net/image/ImageFetcher;Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;J)V

    .line 144
    .local v7, r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->cacheExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 145
    iget-object v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->fetchExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 146
    invoke-static {p2}, Lcom/jd/droidlib/util/Strings;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    iget-object v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->cacheExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 149
    :cond_3
    if-eqz p5, :cond_0

    .line 150
    const/4 v1, 0x0

    invoke-interface {p5, p1, p2, v1}, Lcom/jd/droidlib/net/image/ImageFetchListener;->onFetchCompleted(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method cacheRawImage(Ljava/lang/String;[B)V
    .locals 1
    .parameter "imgUrl"
    .parameter "data"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->diskCache:Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->diskCache:Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;

    invoke-virtual {v0, p1, p2}, Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;->put(Ljava/lang/String;[B)Z

    .line 259
    :cond_0
    return-void
.end method

.method public clearCacheOlderThan(I)V
    .locals 6
    .parameter "hours"

    .prologue
    .line 172
    iget-object v2, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->diskCache:Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;

    if-eqz v2, :cond_0

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int/lit8 v4, p1, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    .line 174
    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    .line 173
    sub-long v0, v2, v4

    .line 175
    .local v0, timestamp:J
    iget-object v2, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->cacheExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/jd/droidlib/net/image/ImageFetcher$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/jd/droidlib/net/image/ImageFetcher$1;-><init>(Lcom/jd/droidlib/net/image/ImageFetcher;J)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 185
    .end local v0           #timestamp:J
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v2, "Disk cache not set."

    invoke-static {v2}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method fetchAndDecode(Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;)Landroid/util/Pair;
    .locals 16
    .parameter "spec"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;",
            ")",
            "Landroid/util/Pair",
            "<[B",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 191
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->imgViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 192
    .local v4, imgView:Landroid/widget/ImageView;
    if-nez v4, :cond_0

    .line 193
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ImageView has been GCed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_0
    const/4 v12, 0x0

    .line 196
    .local v12, bytesReadTotal:I
    const/16 v1, 0x2000

    new-array v10, v1, [B

    .line 197
    .local v10, buffer:[B
    const/4 v8, 0x0

    .line 198
    .local v8, bis:Ljava/io/BufferedInputStream;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 200
    .local v7, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jd/droidlib/net/image/ImageFetcher;->restClient:Lcom/jd/droidlib/net/http/RESTClient;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->imgUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jd/droidlib/net/http/RESTClient;->getInputStream(Ljava/lang/String;)Lcom/jd/droidlib/net/http/HTTPResponse;

    move-result-object v14

    .line 201
    .local v14, resp:Lcom/jd/droidlib/net/http/HTTPResponse;
    const-string v1, "Content-Length"

    invoke-virtual {v14, v1}, Lcom/jd/droidlib/net/http/HTTPResponse;->getHeaderInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v5, v1, 0x400

    .line 202
    .local v5, kBTotal:I
    iget-object v8, v14, Lcom/jd/droidlib/net/http/HTTPResponse;->inputStream:Lcom/jd/droidlib/net/http/worker/HTTPInputStream;

    .line 204
    :cond_1
    :goto_0
    invoke-virtual {v8, v10}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v11

    .local v11, bytesRead:I
    const/4 v1, -0x1

    if-ne v11, v1, :cond_2

    .line 219
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 221
    .local v13, data:[B
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->widthHint:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->heightHint:I

    .line 222
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->configHint:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->inBitmapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 221
    invoke-static {v13, v2, v3, v15, v1}, Lcom/jd/droidlib/inner/BitmapFactoryUtils;->decodeScaled([BIILandroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)Landroid/util/Pair;

    move-result-object v9

    .line 223
    .local v9, bm:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;>;"
    invoke-static {v13, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 224
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    .line 225
    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v7, v2, v3

    invoke-static {v2}, Lcom/jd/droidlib/util/IOUtils;->silentlyClose([Ljava/io/Closeable;)V

    .line 223
    return-object v1

    .line 205
    .end local v9           #bm:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;>;"
    .end local v13           #data:[B
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v7, v10, v1, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 206
    add-int/2addr v12, v11

    .line 207
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->listener:Lcom/jd/droidlib/net/image/ImageFetchListener;

    if-eqz v1, :cond_1

    .line 208
    div-int/lit16 v6, v12, 0x400

    .line 209
    .local v6, kBReceived:I
    new-instance v1, Lcom/jd/droidlib/net/image/ImageFetcher$2;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/jd/droidlib/net/image/ImageFetcher$2;-><init>(Lcom/jd/droidlib/net/image/ImageFetcher;Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;Landroid/widget/ImageView;II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jd/droidlib/net/image/ImageFetcher;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 224
    .end local v5           #kBTotal:I
    .end local v6           #kBReceived:I
    .end local v11           #bytesRead:I
    .end local v14           #resp:Lcom/jd/droidlib/net/http/HTTPResponse;
    :catchall_0
    move-exception v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    .line 225
    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v7, v2, v3

    invoke-static {v2}, Lcom/jd/droidlib/util/IOUtils;->silentlyClose([Ljava/io/Closeable;)V

    .line 226
    throw v1
.end method

.method public getImage(Ljava/lang/String;Lcom/jd/droidlib/net/image/ImageReshaper;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "imgUrl"
    .parameter "reshaper"
    .parameter "hintImageView"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 158
    new-instance v0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

    const/4 v4, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v5, p2

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/jd/droidlib/net/image/ImageReshaper;Lcom/jd/droidlib/net/image/ImageFetchListener;)V

    .line 160
    .local v0, spec:Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;
    invoke-virtual {p0, v0}, Lcom/jd/droidlib/net/image/ImageFetcher;->readCached(Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 161
    .local v7, bm:Landroid/graphics/Bitmap;
    if-nez v7, :cond_0

    .line 162
    invoke-virtual {p0, v0}, Lcom/jd/droidlib/net/image/ImageFetcher;->fetchAndDecode(Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;)Landroid/util/Pair;

    move-result-object v8

    .line 163
    .local v8, bmData:Landroid/util/Pair;,"Landroid/util/Pair<[BLandroid/util/Pair<Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;>;>;"
    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {p0, p1, v1}, Lcom/jd/droidlib/net/image/ImageFetcher;->cacheRawImage(Ljava/lang/String;[B)V

    .line 164
    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    invoke-virtual {p0, v0, v1}, Lcom/jd/droidlib/net/image/ImageFetcher;->reshapeAndCache(Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;Landroid/util/Pair;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 166
    .end local v8           #bmData:Landroid/util/Pair;,"Landroid/util/Pair<[BLandroid/util/Pair<Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;>;>;"
    :cond_0
    return-object v7
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->paused:Z

    .line 89
    return-void
.end method

.method readCached(Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "spec"

    .prologue
    .line 230
    const/4 v6, 0x0

    .line 231
    .local v6, bm:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->memoryCache:Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->memoryCache:Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;

    iget-object v1, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 234
    :cond_0
    if-nez v6, :cond_1

    iget-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->diskCache:Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->diskCache:Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;

    .line 236
    iget-object v1, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->cacheKey:Ljava/lang/String;

    iget v2, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->widthHint:I

    iget v3, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->heightHint:I

    .line 237
    iget-object v4, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->configHint:Landroid/graphics/Bitmap$Config;

    iget-object v5, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->inBitmapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 235
    invoke-virtual/range {v0 .. v5}, Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;->get(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)Landroid/util/Pair;

    move-result-object v7

    .line 238
    .local v7, bmData:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;>;"
    if-eqz v7, :cond_2

    .line 239
    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v6           #bm:Landroid/graphics/Bitmap;
    check-cast v6, Landroid/graphics/Bitmap;

    .line 240
    .restart local v6       #bm:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->memoryCache:Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->memoryCache:Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;

    iget-object v1, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 252
    .end local v7           #bmData:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;>;"
    :cond_1
    :goto_0
    return-object v6

    .line 244
    .restart local v7       #bmData:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;>;"
    :cond_2
    iget-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->diskCache:Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;

    iget-object v1, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->imgUrl:Ljava/lang/String;

    iget v2, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->widthHint:I

    .line 245
    iget v3, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->heightHint:I

    iget-object v4, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->configHint:Landroid/graphics/Bitmap$Config;

    .line 246
    iget-object v5, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->inBitmapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 244
    invoke-virtual/range {v0 .. v5}, Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;->get(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)Landroid/util/Pair;

    move-result-object v7

    .line 247
    if-eqz v7, :cond_1

    .line 248
    invoke-virtual {p0, p1, v7}, Lcom/jd/droidlib/net/image/ImageFetcher;->reshapeAndCache(Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;Landroid/util/Pair;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0
.end method

.method reshapeAndCache(Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;Landroid/util/Pair;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "spec"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 263
    .local p2, bmData:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;>;"
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 264
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v3, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->reshaper:Lcom/jd/droidlib/net/image/ImageReshaper;

    if-eqz v3, :cond_1

    .line 265
    iget-object v3, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->reshaper:Lcom/jd/droidlib/net/image/ImageReshaper;

    invoke-interface {v3, v0}, Lcom/jd/droidlib/net/image/ImageReshaper;->reshape(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 266
    .local v2, reshapedBm:Landroid/graphics/Bitmap;
    if-eq v0, v2, :cond_0

    .line 267
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 269
    :cond_0
    move-object v0, v2

    .line 271
    .end local v2           #reshapedBm:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v3, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->memoryCache:Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;

    if-eqz v3, :cond_2

    .line 272
    iget-object v3, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->memoryCache:Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;

    iget-object v4, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->cacheKey:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 274
    :cond_2
    iget-object v3, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->diskCache:Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->reshaper:Lcom/jd/droidlib/net/image/ImageReshaper;

    if-eqz v3, :cond_3

    .line 275
    iget-object v4, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->reshaper:Lcom/jd/droidlib/net/image/ImageReshaper;

    .line 276
    iget-object v3, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/BitmapFactory$Options;

    iget-object v3, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-interface {v4, v3}, Lcom/jd/droidlib/net/image/ImageReshaper;->getCacheFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 277
    .local v1, cacheFormat:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->diskCache:Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;

    iget-object v4, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->cacheKey:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v1}, Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/util/Pair;)Z

    .line 279
    .end local v1           #cacheFormat:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/Integer;>;"
    :cond_3
    return-object v0
.end method

.method public resume(Z)V
    .locals 9
    .parameter "executePendingTasks"

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->paused:Z

    .line 93
    if-eqz p1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->pending:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->pending:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 104
    return-void

    .line 94
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

    .line 95
    .local v7, spec:Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;
    iget-object v0, v7, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->imgViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 96
    .local v1, imgView:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 97
    iget-object v2, v7, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->imgUrl:Ljava/lang/String;

    iget v3, v7, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->crossFadeMillis:I

    .line 98
    iget-object v4, v7, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->reshaper:Lcom/jd/droidlib/net/image/ImageReshaper;

    iget-object v5, v7, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->listener:Lcom/jd/droidlib/net/image/ImageFetchListener;

    .line 99
    iget-object v0, v7, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->inBitmapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    move-object v0, p0

    .line 97
    invoke-virtual/range {v0 .. v6}, Lcom/jd/droidlib/net/image/ImageFetcher;->attachImage(Landroid/widget/ImageView;Ljava/lang/String;ILcom/jd/droidlib/net/image/ImageReshaper;Lcom/jd/droidlib/net/image/ImageFetchListener;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 294
    iget-object v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    .line 296
    .local v0, success:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 300
    return-void

    .line 297
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher;->handler:Landroid/os/Handler;

    .line 298
    invoke-virtual {p0, p1}, Lcom/jd/droidlib/net/image/ImageFetcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
