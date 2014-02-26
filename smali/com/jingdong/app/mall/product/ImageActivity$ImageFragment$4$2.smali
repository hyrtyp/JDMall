.class Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;
.super Ljava/lang/Object;
.source "ImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

.field private final synthetic val$httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

.field private final synthetic val$image:Lcom/jingdong/common/entity/Image;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Lcom/jingdong/common/entity/Image;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->val$httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->val$image:Lcom/jingdong/common/entity/Image;

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 497
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mActivity:Lcom/jingdong/app/mall/product/ImageActivity;

    invoke-virtual {v6}, Lcom/jingdong/app/mall/product/ImageActivity;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    sget-object v6, Lcom/jingdong/app/mall/product/ImageActivity;->mCacheImagePaths:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v6, :cond_0

    .line 503
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v6

    iput-boolean v11, v6, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->isLoading:Z

    .line 504
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->isRemoving()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->isDetached()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, bmp:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->val$httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->val$httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getSaveFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 510
    new-instance v0, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;

    invoke-direct {v0}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;-><init>()V

    .line 511
    .local v0, bitmapUtil:Lcom/novoda/imageloader/core/bitmap/BitmapUtil;
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->val$httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getSaveFile()Ljava/io/File;

    move-result-object v6

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    const/16 v8, 0x320

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v8, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v8}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    const/16 v9, 0x500

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v0, v6, v7, v8, v11}, Lcom/novoda/imageloader/core/bitmap/BitmapUtil;->createBitmapWithClean(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 513
    .end local v0           #bitmapUtil:Lcom/novoda/imageloader/core/bitmap/BitmapUtil;
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 514
    :cond_3
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v6

    #calls: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->setContentShown(ZZZ)V
    invoke-static {v6, v10, v10, v10}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->access$1(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;ZZZ)V

    goto/16 :goto_0

    .line 517
    :cond_4
    move-object v5, v1

    .line 518
    .local v5, result:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v6

    new-instance v7, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    iget-object v8, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->val$image:Lcom/jingdong/common/entity/Image;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/Image;->getBig()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;-><init>(Ljava/lang/String;)V

    iput-object v7, v6, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mBitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    .line 519
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mBitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->setWidth(I)V

    .line 520
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mBitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->setHeight(I)V

    .line 521
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mBitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-static {v6}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getImageState(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    move-result-object v3

    .line 522
    .local v3, imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;
    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->success(Landroid/graphics/Bitmap;)V

    .line 527
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0xff0002

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0xff0003

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/utils/TouchImageView;

    .line 528
    .local v4, imageView:Lcom/jingdong/common/utils/TouchImageView;
    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/TouchImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 530
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->val$httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getSaveFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, cacheImagePath:Ljava/lang/String;
    sget-object v6, Lcom/jingdong/app/mall/product/ImageActivity;->mCacheImagePaths:Landroid/support/v4/util/SparseArrayCompat;

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v7

    iget v7, v7, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mPos:I

    invoke-virtual {v6, v7, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 532
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mActivity:Lcom/jingdong/app/mall/product/ImageActivity;

    if-eqz v6, :cond_5

    .line 533
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v6

    iget-object v6, v6, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mActivity:Lcom/jingdong/app/mall/product/ImageActivity;

    invoke-virtual {v6}, Lcom/jingdong/app/mall/product/ImageActivity;->checkSaveState()V

    .line 535
    :cond_5
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$2;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v6

    #calls: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->setContentShown(ZZZ)V
    invoke-static {v6, v10, v10, v11}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->access$1(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;ZZZ)V

    goto/16 :goto_0
.end method
