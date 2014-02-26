.class public Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;
.super Ljava/lang/Object;
.source "BitmapMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache$BitmapLruCache;
    }
.end annotation


# static fields
.field private static final DEFAULT_APP_MEMORY_PERCENT:I = 0x14

.field private static final DEFAULT_MAX_ITEM_SIZE:I = 0x40000

.field private static instance:Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;


# instance fields
.field private cache:Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache$BitmapLruCache;

.field private final maxItemSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 7
    .parameter "ctx"
    .parameter "appMemoryPercent"
    .parameter "maxItemSize"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p3, p0, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;->maxItemSize:I

    .line 54
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 53
    check-cast v4, Landroid/app/ActivityManager;

    .line 54
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 55
    .local v0, maxAvailableMemory:I
    int-to-float v4, v0

    int-to-float v5, p2

    const/high16 v6, 0x42c8

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit16 v4, v4, 0x400

    mul-int/lit16 v1, v4, 0x400

    .line 57
    .local v1, maxBytes:I
    :try_start_0
    new-instance v4, Lcom/jd/droidlib/net/image/cache/StockBitmapLruCache;

    invoke-direct {v4, v1}, Lcom/jd/droidlib/net/image/cache/StockBitmapLruCache;-><init>(I)V

    iput-object v4, p0, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;->cache:Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache$BitmapLruCache;

    .line 58
    const-string v4, "Using stock LruCache."

    invoke-static {v4}, Lcom/jd/droidlib/util/L;->i(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v2

    .line 61
    .local v2, t:Ljava/lang/Throwable;
    :try_start_1
    new-instance v4, Lcom/jd/droidlib/net/image/cache/SupportBitmapLruCache;

    invoke-direct {v4, v1}, Lcom/jd/droidlib/net/image/cache/SupportBitmapLruCache;-><init>(I)V

    iput-object v4, p0, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;->cache:Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache$BitmapLruCache;

    .line 62
    const-string v4, "Using Support Package LruCache."

    invoke-static {v4}, Lcom/jd/droidlib/util/L;->i(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 63
    :catch_1
    move-exception v3

    .line 64
    .local v3, tr:Ljava/lang/Throwable;
    const-string v4, "LruCache not available."

    invoke-static {v4}, Lcom/jd/droidlib/util/L;->i(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getDefaultInstance(Landroid/content/Context;)Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 41
    sget-object v0, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;->instance:Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;

    const/16 v1, 0x14

    .line 43
    const/high16 v2, 0x4

    .line 42
    invoke-direct {v0, p0, v1, v2}, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;->instance:Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;

    .line 45
    :cond_0
    sget-object v0, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;->instance:Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "key"

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;->cache:Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache$BitmapLruCache;

    invoke-interface {v1, p1}, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache$BitmapLruCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "MemoryCache "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string v1, "miss"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for \'%s\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 88
    aput-object p1, v2, v3

    .line 87
    invoke-static {v1, v2}, Lcom/jd/droidlib/util/L;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    return-object v0

    .line 87
    :cond_1
    const-string v1, "hit"

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;->cache:Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache$BitmapLruCache;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "key"
    .parameter "bm"

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, put:Z
    invoke-virtual {p0}, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/jd/droidlib/util/ui/BitmapUtils;->getSize(Landroid/graphics/Bitmap;)I

    move-result v1

    iget v2, p0, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;->maxItemSize:I

    if-gt v1, v2, :cond_0

    .line 76
    iget-object v1, p0, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache;->cache:Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache$BitmapLruCache;

    invoke-interface {v1, p1, p2}, Lcom/jd/droidlib/net/image/cache/BitmapMemoryCache$BitmapLruCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 77
    const/4 v0, 0x1

    .line 79
    :cond_0
    return v0
.end method
