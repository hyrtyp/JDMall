.class public Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
.super Landroid/support/v4/app/Fragment;
.source "ImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/ImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageFragment"
.end annotation


# static fields
.field static final INTERNAL_CONTENT_CONTAINER_ID:I = 0xff0002

.field static final INTERNAL_CONTENT_ID:I = 0xff0003

.field static final INTERNAL_ERROR_CONTAINER_ID:I = 0xff0004

.field static final INTERNAL_PROGRESS_CONTAINER_ID:I = 0xff0001


# instance fields
.field isLoading:Z

.field mActivity:Lcom/jingdong/app/mall/product/ImageActivity;

.field mBitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

.field mContentContainer:Landroid/view/View;

.field mContentShown:Z

.field mErrorContainer:Landroid/view/View;

.field mHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field mImage:Lcom/jingdong/common/entity/Image;

.field mPos:I

.field mProgressContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mContentShown:Z

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->isLoading:Z

    .line 396
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;Lcom/jingdong/common/entity/Image;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->showImage(Lcom/jingdong/common/entity/Image;)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;ZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 348
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->setContentShown(ZZZ)V

    return-void
.end method

.method static newInstance(ILcom/jingdong/common/entity/Image;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    .locals 3
    .parameter "pos"
    .parameter "img"

    .prologue
    .line 384
    new-instance v1, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    invoke-direct {v1}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;-><init>()V

    .line 386
    .local v1, f:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 387
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "pos"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    const-string v2, "image"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 389
    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 391
    return-object v1
.end method

.method private setContentShown(ZZZ)V
    .locals 4
    .parameter "shown"
    .parameter "animate"
    .parameter "isError"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 350
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0xff0001

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mProgressContainer:Landroid/view/View;

    .line 351
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0xff0002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mContentContainer:Landroid/view/View;

    .line 352
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0xff0004

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mErrorContainer:Landroid/view/View;

    .line 353
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mContentShown:Z

    .line 355
    if-eqz p1, :cond_4

    .line 356
    if-eqz p2, :cond_1

    .line 357
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mProgressContainer:Landroid/view/View;

    invoke-static {v0}, Lcom/jingdong/app/mall/product/ImageActivity;->fadeOut(Landroid/view/View;)V

    .line 358
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mErrorContainer:Landroid/view/View;

    :goto_0
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ImageActivity;->fadeIn(Landroid/view/View;)V

    .line 364
    :goto_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mContentContainer:Landroid/view/View;

    if-eqz p3, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mErrorContainer:Landroid/view/View;

    if-nez p3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    :goto_4
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mContentContainer:Landroid/view/View;

    goto :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 361
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mContentContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 362
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mErrorContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 365
    goto :goto_2

    :cond_3
    move v1, v2

    .line 366
    goto :goto_3

    .line 368
    :cond_4
    if-eqz p2, :cond_5

    .line 369
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mProgressContainer:Landroid/view/View;

    invoke-static {v0}, Lcom/jingdong/app/mall/product/ImageActivity;->fadeIn(Landroid/view/View;)V

    .line 370
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mContentContainer:Landroid/view/View;

    invoke-static {v0}, Lcom/jingdong/app/mall/product/ImageActivity;->fadeOut(Landroid/view/View;)V

    .line 371
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mErrorContainer:Landroid/view/View;

    invoke-static {v0}, Lcom/jingdong/app/mall/product/ImageActivity;->fadeOut(Landroid/view/View;)V

    .line 377
    :goto_5
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mContentContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mErrorContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 373
    :cond_5
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 374
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mContentContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 375
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mErrorContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_5
.end method

.method private showImage(Lcom/jingdong/common/entity/Image;)V
    .locals 3
    .parameter "image"

    .prologue
    .line 423
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mActivity:Lcom/jingdong/app/mall/product/ImageActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mActivity:Lcom/jingdong/app/mall/product/ImageActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/product/ImageActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0xff0002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0xff0003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/utils/TouchImageView;

    .line 427
    .local v0, imageView:Lcom/jingdong/common/utils/TouchImageView;
    invoke-direct {p0, v0, p1}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->showImage(Lcom/jingdong/common/utils/TouchImageView;Lcom/jingdong/common/entity/Image;)V

    goto :goto_0
.end method

.method private showImage(Lcom/jingdong/common/utils/TouchImageView;Lcom/jingdong/common/entity/Image;)V
    .locals 6
    .parameter "imageView"
    .parameter "image"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 431
    sget-object v3, Lcom/jingdong/app/mall/product/ImageActivity;->mCacheImagePaths:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v3, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    if-eqz p1, :cond_0

    .line 437
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mActivity:Lcom/jingdong/app/mall/product/ImageActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/product/ImageActivity;->checkSaveState()V

    .line 438
    invoke-direct {p0, v5, v5, v5}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->setContentShown(ZZZ)V

    .line 439
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/jingdong/common/entity/Image;->getBig()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 440
    :cond_2
    invoke-direct {p0, v4, v4, v4}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->setContentShown(ZZZ)V

    goto :goto_0

    .line 444
    :cond_3
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mBitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    if-eqz v3, :cond_4

    .line 445
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mBitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-static {v3}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getImageState(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    move-result-object v2

    .line 446
    .local v2, imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;
    invoke-virtual {v2}, Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 447
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 448
    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/TouchImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 449
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mActivity:Lcom/jingdong/app/mall/product/ImageActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/product/ImageActivity;->checkSaveState()V

    .line 450
    invoke-direct {p0, v4, v5, v5}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->setContentShown(ZZZ)V

    goto :goto_0

    .line 455
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mBitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    .line 457
    iget-boolean v3, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->isLoading:Z

    if-nez v3, :cond_0

    .line 460
    iput-boolean v4, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->isLoading:Z

    .line 462
    sget-object v3, Lcom/jingdong/app/mall/product/ImageActivity;->mCacheImagePaths:Landroid/support/v4/util/SparseArrayCompat;

    iget v4, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mPos:I

    invoke-virtual {v3, v4}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 463
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 464
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 465
    invoke-virtual {p2}, Lcom/jingdong/common/entity/Image;->getBig()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 466
    new-instance v3, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    invoke-direct {v3, p0, p2}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;-><init>(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;Lcom/jingdong/common/entity/Image;)V

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 546
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    if-eqz v3, :cond_0

    .line 547
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 415
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 416
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mPos:I

    .line 417
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    :goto_1
    check-cast v0, Lcom/jingdong/common/entity/Image;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mImage:Lcom/jingdong/common/entity/Image;

    .line 418
    const/16 v0, 0x1388

    invoke-static {v0}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 419
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/product/ImageActivity;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mActivity:Lcom/jingdong/app/mall/product/ImageActivity;

    .line 420
    return-void

    .line 416
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 417
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 271
    .local v1, context:Landroid/content/Context;
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 273
    .local v7, root:Landroid/widget/FrameLayout;
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 274
    .local v5, llError:Landroid/widget/LinearLayout;
    const v8, 0xff0004

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setId(I)V

    .line 275
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 276
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    const/16 v8, 0x11

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 279
    new-instance v0, Landroid/widget/Button;

    const/4 v8, 0x0

    const v9, 0x1010207

    invoke-direct {v0, v1, v8, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 280
    .local v0, button:Landroid/widget/Button;
    const-string v8, "\u70b9\u51fb\u91cd\u65b0\u52a0\u8f7d"

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 282
    new-instance v8, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$1;

    invoke-direct {v8, p0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$1;-><init>(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v5, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 294
    .local v4, ll:Landroid/widget/LinearLayout;
    const v8, 0xff0001

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setId(I)V

    .line 295
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 296
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    const/16 v8, 0x11

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 298
    new-instance v6, Landroid/widget/ProgressBar;

    const/4 v8, 0x0

    const v9, 0x1010077

    invoke-direct {v6, v1, v8, v9}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 299
    .local v6, progress:Landroid/widget/ProgressBar;
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v4, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 304
    .local v2, fl:Landroid/widget/FrameLayout;
    const v8, 0xff0002

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setId(I)V

    .line 306
    new-instance v3, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$2;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v3, p0, v8}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$2;-><init>(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;Landroid/content/Context;)V

    .line 315
    .local v3, imageView:Lcom/jingdong/common/utils/TouchImageView;
    const/4 v8, -0x1

    invoke-virtual {v3, v8}, Lcom/jingdong/common/utils/TouchImageView;->setBackgroundColor(I)V

    .line 316
    new-instance v8, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$3;

    invoke-direct {v8, p0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$3;-><init>(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;)V

    invoke-virtual {v3, v8}, Lcom/jingdong/common/utils/TouchImageView;->setTapListener(Lcom/jingdong/common/utils/TouchImageView$ControllListener;)V

    .line 326
    const v8, 0xff0003

    invoke-virtual {v3, v8}, Lcom/jingdong/common/utils/TouchImageView;->setId(I)V

    .line 327
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    return-object v7
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 400
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 402
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mContentShown:Z

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mErrorContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mContentContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mProgressContainer:Landroid/view/View;

    .line 345
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 346
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 406
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 407
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mBitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    if-eqz v0, :cond_0

    .line 408
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mBitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->remove(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mBitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    .line 411
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 337
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 338
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mImage:Lcom/jingdong/common/entity/Image;

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->showImage(Lcom/jingdong/common/entity/Image;)V

    .line 339
    return-void
.end method
