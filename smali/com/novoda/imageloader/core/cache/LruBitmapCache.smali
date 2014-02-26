.class public Lcom/novoda/imageloader/core/cache/LruBitmapCache;
.super Ljava/lang/Object;
.source "LruBitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;
    }
.end annotation


# static fields
.field public static final DEFAULT_MEMORY_CACHE_PERCENTAGE:I = 0x19

.field private static final DEFAULT_MEMORY_CAPACITY_FOR_DEVICES_OLDER_THAN_API_LEVEL_4:I = 0xc

.field private static final MAX_IMAGE_MEMERY_CACHE:J = 0x10L

.field private static final ONE_M_BYTES:J = 0x100000L

.field private static needAlive:Z

.field public static final recycleTask:Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;


# instance fields
.field private cache:Lcom/novoda/imageloader/core/cache/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/novoda/imageloader/core/cache/util/LruCache",
            "<",
            "Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private capacity:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;

    invoke-direct {v0}, Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;-><init>()V

    sput-object v0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->recycleTask:Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->needAlive:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 114
    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;-><init>(Landroid/content/Context;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "percentageOfMemoryForCache"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 66
    .local v0, manager:Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .line 67
    .local v1, memClass:I
    invoke-static {}, Lcom/jingdong/common/utils/SDKUtils;->isSDKVersionMoreThan16()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-static {v0}, Lcom/jingdong/common/utils/ActivityManagerUtils;->getMemoryClass(Landroid/app/ActivityManager;)I

    move-result v1

    .line 75
    :cond_0
    if-nez v1, :cond_1

    .line 76
    const/16 v1, 0xc

    .line 83
    :cond_1
    if-gez p2, :cond_2

    .line 84
    const/4 p2, 0x0

    .line 86
    :cond_2
    const/16 v2, 0x51

    if-le p2, v2, :cond_3

    .line 87
    const/16 p2, 0x50

    .line 89
    :cond_3
    mul-int v2, v1, p2

    int-to-long v2, v2

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->capacity:J

    .line 93
    iget-wide v2, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->capacity:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    .line 94
    const-wide/16 v2, 0x4

    iput-wide v2, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->capacity:J

    .line 104
    :cond_4
    iget-wide v2, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->capacity:J

    const-wide/32 v4, 0x100000

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->capacity:J

    .line 105
    invoke-direct {p0}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->reset()V

    .line 106
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->needAlive:Z

    return v0
.end method

.method public static quit()V
    .locals 2

    .prologue
    .line 262
    const/4 v0, 0x0

    sput-boolean v0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->needAlive:Z

    .line 263
    sget-object v1, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->recycleTask:Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;

    monitor-enter v1

    .line 264
    :try_start_0
    sget-object v0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->recycleTask:Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 263
    monitor-exit v1

    .line 266
    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private recycleMemery()V
    .locals 0

    .prologue
    .line 184
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 185
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cache:Lcom/novoda/imageloader/core/cache/util/LruCache;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cache:Lcom/novoda/imageloader/core/cache/util/LruCache;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/cache/util/LruCache;->evictAll()V

    .line 121
    :cond_0
    new-instance v0, Lcom/novoda/imageloader/core/cache/LruBitmapCache$1;

    iget-wide v1, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->capacity:J

    invoke-direct {v0, p0, v1, v2}, Lcom/novoda/imageloader/core/cache/LruBitmapCache$1;-><init>(Lcom/novoda/imageloader/core/cache/LruBitmapCache;J)V

    iput-object v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cache:Lcom/novoda/imageloader/core/cache/util/LruCache;

    .line 150
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 0

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cleanMost()V

    .line 173
    return-void
.end method

.method public cleanMost()V
    .locals 6

    .prologue
    .line 176
    iget-wide v2, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->capacity:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 180
    .local v0, maxSize:J
    iget-object v2, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cache:Lcom/novoda/imageloader/core/cache/util/LruCache;

    invoke-virtual {v2, v0, v1}, Lcom/novoda/imageloader/core/cache/util/LruCache;->evict(J)V

    .line 181
    return-void
.end method

.method public get(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bd"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cache:Lcom/novoda/imageloader/core/cache/util/LruCache;

    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/cache/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public put(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bd"
    .parameter "bmp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cache:Lcom/novoda/imageloader/core/cache/util/LruCache;

    invoke-virtual {v0, p1, p2}, Lcom/novoda/imageloader/core/cache/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method public remove(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V
    .locals 1
    .parameter "bd"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cache:Lcom/novoda/imageloader/core/cache/util/LruCache;

    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/cache/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method
