.class public Lcom/jingdong/common/utils/cache/GlobalImageCache;
.super Ljava/lang/Object;
.source "GlobalImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;,
        Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;
    }
.end annotation


# static fields
.field public static final STATE_FAILURE:I = 0x2

.field public static final STATE_LOADING:I = 0x1

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_SUCCESS:I = 0x3

.field private static final digestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;",
            "Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;",
            ">;"
        }
    .end annotation
.end field

.field private static final imageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;",
            "Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;",
            ">;"
        }
    .end annotation
.end field

.field private static lruBitmapCache:Lcom/novoda/imageloader/core/cache/LruBitmapCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jingdong/common/utils/cache/GlobalImageCache;->imageMap:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jingdong/common/utils/cache/GlobalImageCache;->digestMap:Ljava/util/Map;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmapDigest(Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    .locals 1
    .parameter "imageState"

    .prologue
    .line 70
    sget-object v0, Lcom/jingdong/common/utils/cache/GlobalImageCache;->digestMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    return-object v0
.end method

.method public static declared-synchronized getImageState(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;
    .locals 3
    .parameter "bitmapDigest"

    .prologue
    .line 57
    const-class v2, Lcom/jingdong/common/utils/cache/GlobalImageCache;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/jingdong/common/utils/cache/GlobalImageCache;->imageMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    .line 58
    .local v0, is:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;
    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    .end local v0           #is:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;
    invoke-direct {v0}, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;-><init>()V

    .line 60
    .restart local v0       #is:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;
    sget-object v1, Lcom/jingdong/common/utils/cache/GlobalImageCache;->imageMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lcom/jingdong/common/utils/cache/GlobalImageCache;->digestMap:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit v2

    return-object v0

    .line 57
    .end local v0           #is:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;
    .locals 4

    .prologue
    .line 47
    const-class v1, Lcom/jingdong/common/utils/cache/GlobalImageCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jingdong/common/utils/cache/GlobalImageCache;->lruBitmapCache:Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-direct {v0, v2, v3}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/jingdong/common/utils/cache/GlobalImageCache;->lruBitmapCache:Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    .line 50
    :cond_0
    sget-object v0, Lcom/jingdong/common/utils/cache/GlobalImageCache;->lruBitmapCache:Lcom/novoda/imageloader/core/cache/LruBitmapCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static remove(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V
    .locals 2
    .parameter "bitmapDigest"

    .prologue
    .line 80
    sget-object v1, Lcom/jingdong/common/utils/cache/GlobalImageCache;->imageMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    .line 81
    .local v0, is:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;
    sget-object v1, Lcom/jingdong/common/utils/cache/GlobalImageCache;->digestMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method
