.class public interface abstract Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/ImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageLoadListener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V
.end method

.method public abstract onProgress(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;II)V
.end method

.method public abstract onStart(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V
.end method

.method public abstract onSuccess(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Landroid/graphics/Bitmap;)V
.end method
