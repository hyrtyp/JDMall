.class public Lcom/jingdong/common/utils/cache/WidgetImageCache;
.super Ljava/lang/Object;
.source "WidgetImageCache.java"


# static fields
.field protected static bitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jingdong/common/utils/cache/WidgetImageCache;->bitmapCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearAllBitmap()V
    .locals 5

    .prologue
    .line 14
    const-class v3, Lcom/jingdong/common/utils/cache/WidgetImageCache;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/jingdong/common/utils/cache/WidgetImageCache;->bitmapCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 15
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 22
    sget-object v2, Lcom/jingdong/common/utils/cache/WidgetImageCache;->bitmapCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit v3

    return-void

    .line 16
    :cond_1
    :try_start_1
    sget-object v2, Lcom/jingdong/common/utils/cache/WidgetImageCache;->bitmapCache:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 17
    .local v1, reference:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 14
    .end local v1           #reference:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized containsKeyBitmap(Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 26
    const-class v1, Lcom/jingdong/common/utils/cache/WidgetImageCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jingdong/common/utils/cache/WidgetImageCache;->bitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "key"

    .prologue
    .line 30
    const-class v1, Lcom/jingdong/common/utils/cache/WidgetImageCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jingdong/common/utils/cache/WidgetImageCache;->bitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 34
    const-class v1, Lcom/jingdong/common/utils/cache/WidgetImageCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jingdong/common/utils/cache/WidgetImageCache;->bitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
