.class public Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;
.super Ljava/lang/Thread;
.source "LruBitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novoda/imageloader/core/cache/LruBitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapRecycleTask"
.end annotation


# instance fields
.field private hasStarted:Z

.field private queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;->queue:Ljava/util/ArrayList;

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;->hasStarted:Z

    .line 198
    return-void
.end method


# virtual methods
.method public recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 208
    sget-object v1, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->recycleTask:Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->recycleTask:Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 214
    iget-boolean v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;->hasStarted:Z

    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;->hasStarted:Z

    .line 216
    invoke-virtual {p0}, Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;->start()V

    .line 208
    :cond_0
    monitor-exit v1

    .line 222
    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 226
    :cond_0
    :goto_0
    invoke-static {}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->access$0()Z

    move-result v2

    if-nez v2, :cond_1

    .line 254
    return-void

    .line 228
    :cond_1
    const/4 v1, 0x0

    .line 229
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v3, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->recycleTask:Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :try_start_1
    iget-object v2, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_2

    .line 231
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 235
    sget-object v2, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->recycleTask:Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 237
    :cond_2
    iget-object v2, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;->queue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 229
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v2

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
.end method
