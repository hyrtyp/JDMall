.class Lcom/novoda/imageloader/core/cache/LruBitmapCache$1;
.super Lcom/novoda/imageloader/core/cache/util/LruCache;
.source "LruBitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novoda/imageloader/core/cache/LruBitmapCache;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/cache/util/LruCache",
        "<",
        "Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novoda/imageloader/core/cache/LruBitmapCache;


# direct methods
.method constructor <init>(Lcom/novoda/imageloader/core/cache/LruBitmapCache;J)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache$1;->this$0:Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    .line 121
    invoke-direct {p0, p2, p3}, Lcom/novoda/imageloader/core/cache/util/LruCache;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "evicted"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 141
    invoke-virtual {p2}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->isAllowRecycle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->recycleTask:Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;

    invoke-virtual {v0, p3}, Lcom/novoda/imageloader/core/cache/LruBitmapCache$BitmapRecycleTask;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    :cond_0
    if-eqz p1, :cond_1

    .line 146
    invoke-static {p2}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->remove(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V

    .line 148
    :cond_1
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/novoda/imageloader/core/cache/LruBitmapCache$1;->entryRemoved(ZLcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected sizeOf(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;)J
    .locals 4
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 131
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/novoda/imageloader/core/cache/LruBitmapCache$1;->sizeOf(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;)J

    move-result-wide v0

    return-wide v0
.end method
