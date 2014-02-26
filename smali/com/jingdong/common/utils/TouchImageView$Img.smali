.class public Lcom/jingdong/common/utils/TouchImageView$Img;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Img"
.end annotation


# static fields
.field public static final MAX_SCALE_FACTOR:F = 3.0f

.field public static final MIN_SCALE_FACTOR:F = 1.0f


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private centerX:F

.field private centerY:F

.field private displayHeight:I

.field private displayWidth:I

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private height:I

.field isOnError:Z

.field private maxX:F

.field private maxY:F

.field private minX:F

.field private minY:F

.field private scaleX:F

.field private scaleY:F

.field final synthetic this$0:Lcom/jingdong/common/utils/TouchImageView;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/TouchImageView;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter "bitmap"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->isOnError:Z

    .line 284
    iput-object p2, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->bitmap:Landroid/graphics/Bitmap;

    .line 285
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->drawable:Landroid/graphics/drawable/Drawable;

    .line 286
    invoke-virtual {p0}, Lcom/jingdong/common/utils/TouchImageView$Img;->load()V

    .line 287
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/TouchImageView$Img;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 398
    invoke-direct {p0, p1, p2}, Lcom/jingdong/common/utils/TouchImageView$Img;->setPos(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/common/utils/TouchImageView$Img;)Z
    .locals 1
    .parameter

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/jingdong/common/utils/TouchImageView$Img;->computeFling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/jingdong/common/utils/TouchImageView$Img;FFFF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 479
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jingdong/common/utils/TouchImageView$Img;->scrollTo(FFFF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/jingdong/common/utils/TouchImageView$Img;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Lcom/jingdong/common/utils/TouchImageView$Img;->flingTo(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/jingdong/common/utils/TouchImageView$Img;FFFF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jingdong/common/utils/TouchImageView$Img;->scale(FFFF)Z

    move-result v0

    return v0
.end method

.method private checkImg()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 595
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    .line 596
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 597
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 598
    :cond_0
    iget-boolean v1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->isOnError:Z

    if-nez v1, :cond_1

    .line 599
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/TouchImageView;->onImgRecycled()V

    .line 600
    iput-boolean v2, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->isOnError:Z

    .line 611
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 603
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->isOnError:Z

    goto :goto_0

    .line 606
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_3
    iget-boolean v1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->isOnError:Z

    if-nez v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/TouchImageView;->onImgRecycled()V

    .line 608
    iput-boolean v2, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->isOnError:Z

    goto :goto_0
.end method

.method private computeFling()Z
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 348
    iget v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->width:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleX:F

    mul-float v2, v3, v4

    .local v2, ws:F
    iget v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->height:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleY:F

    mul-float v1, v3, v4

    .line 350
    .local v1, hs:F
    const/4 v0, 0x0

    .line 352
    .local v0, canFling:Z
    mul-float v3, v2, v6

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayWidth:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 353
    iget v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerX:F

    sub-float/2addr v3, v2

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerX:F

    add-float/2addr v3, v2

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayWidth:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 354
    const/4 v0, 0x1

    .line 358
    :cond_0
    mul-float v3, v1, v6

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayHeight:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 359
    iget v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerY:F

    sub-float/2addr v3, v1

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerY:F

    add-float/2addr v3, v1

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayHeight:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 360
    const/4 v0, 0x1

    .line 364
    :cond_1
    return v0
.end method

.method private flingTo(FF)Z
    .locals 7
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 369
    iget v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->width:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleX:F

    mul-float v2, v3, v4

    .local v2, ws:F
    iget v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->height:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleY:F

    mul-float v0, v3, v4

    .line 371
    .local v0, hs:F
    const/4 v1, 0x0

    .line 373
    .local v1, needInvalidate:Z
    mul-float v3, v2, v6

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayWidth:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    sub-float v3, p1, v2

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    add-float v3, p1, v2

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayWidth:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 374
    iput p1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerX:F

    .line 375
    sub-float v3, p1, v2

    iput v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->minX:F

    .line 376
    add-float v3, p1, v2

    iput v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->maxX:F

    .line 377
    const/4 v1, 0x1

    .line 381
    :cond_0
    mul-float v3, v0, v6

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayHeight:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    sub-float v3, p2, v0

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    add-float v3, p2, v0

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayHeight:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 382
    iput p2, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerY:F

    .line 383
    sub-float v3, p2, v0

    iput v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->minY:F

    .line 384
    add-float v3, p2, v0

    iput v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->maxY:F

    .line 385
    const/4 v1, 0x1

    .line 389
    :cond_1
    return v1
.end method

.method private scale(FFFF)Z
    .locals 13
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 426
    move/from16 v6, p3

    .line 427
    .local v6, tmpScaleX:F
    move/from16 v7, p4

    .line 428
    .local v7, tmpScaleY:F
    const/high16 v11, 0x3f00

    const v12, 0x40533334

    move/from16 v0, p4

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 429
    const/high16 v11, 0x3f00

    const v12, 0x40533334

    move/from16 v0, p3

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 434
    cmpl-float v11, p3, p4

    if-eqz v11, :cond_0

    .line 435
    move/from16 p3, p4

    .line 438
    :cond_0
    iget v11, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->width:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    mul-float v10, v11, p3

    .local v10, ws:F
    iget v11, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->height:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    mul-float v1, v11, p4

    .line 440
    .local v1, hs:F
    iget v11, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->width:I

    int-to-float v11, v11

    mul-float v9, v11, p3

    .line 441
    .local v9, twoWs:F
    iget v11, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->height:I

    int-to-float v11, v11

    mul-float v8, v11, p4

    .line 464
    .local v8, twoHs:F
    sub-float v4, p1, v10

    .local v4, newMinX:F
    sub-float v5, p2, v1

    .local v5, newMinY:F
    add-float v2, p1, v10

    .local v2, newMaxX:F
    add-float v3, p2, v1

    .line 466
    .local v3, newMaxY:F
    iput p1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerX:F

    .line 467
    move/from16 v0, p3

    iput v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleX:F

    .line 468
    iput v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->minX:F

    .line 469
    iput v2, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->maxX:F

    .line 471
    iput p2, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerY:F

    .line 472
    move/from16 v0, p4

    iput v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleY:F

    .line 473
    iput v5, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->minY:F

    .line 474
    iput v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->maxY:F

    .line 475
    const/4 v11, 0x1

    return v11
.end method

.method private scrollTo(FFFF)Z
    .locals 11
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    const v10, 0x40533334

    const/high16 v9, 0x3f00

    .line 480
    move v5, p3

    .line 481
    .local v5, tmpScaleX:F
    move v6, p4

    .line 482
    .local v6, tmpScaleY:F
    invoke-static {v10, p4}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 483
    invoke-static {v10, p3}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 484
    cmpl-float v8, p3, v5

    if-nez v8, :cond_0

    cmpl-float v8, p4, v6

    if-eqz v8, :cond_1

    .line 485
    :cond_0
    const/4 v8, 0x0

    .line 529
    :goto_0
    return v8

    .line 488
    :cond_1
    cmpl-float v8, p3, p4

    if-eqz v8, :cond_2

    .line 489
    move p3, p4

    .line 492
    :cond_2
    iget v8, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->width:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    mul-float v7, v8, p3

    .local v7, ws:F
    iget v8, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->height:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    mul-float v0, v8, p4

    .line 518
    .local v0, hs:F
    sub-float v3, p1, v7

    .local v3, newMinX:F
    sub-float v4, p2, v0

    .local v4, newMinY:F
    add-float v1, p1, v7

    .local v1, newMaxX:F
    add-float v2, p2, v0

    .line 520
    .local v2, newMaxY:F
    iput p1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerX:F

    .line 521
    iput p3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleX:F

    .line 522
    iput v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->minX:F

    .line 523
    iput v1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->maxX:F

    .line 525
    iput p2, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerY:F

    .line 526
    iput p4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleY:F

    .line 527
    iput v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->minY:F

    .line 528
    iput v2, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->maxY:F

    .line 529
    const/4 v8, 0x1

    goto :goto_0
.end method

.method private setPos(FF)Z
    .locals 7
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 400
    iget v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->width:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleX:F

    mul-float v2, v3, v4

    .local v2, ws:F
    iget v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->height:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleY:F

    mul-float v0, v3, v4

    .line 402
    .local v0, hs:F
    const/4 v1, 0x0

    .line 404
    .local v1, needInvalidate:Z
    mul-float v3, v2, v6

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayWidth:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 405
    sub-float v3, p1, v2

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    add-float v3, p1, v2

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayWidth:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 406
    iput p1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerX:F

    .line 407
    sub-float v3, p1, v2

    iput v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->minX:F

    .line 408
    add-float v3, p1, v2

    iput v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->maxX:F

    .line 409
    const/4 v1, 0x1

    .line 413
    :cond_0
    if-eqz v1, :cond_1

    .line 414
    mul-float v3, v0, v6

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayHeight:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    sub-float v3, p2, v0

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    add-float v3, p2, v0

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayHeight:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 415
    iput p2, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerY:F

    .line 416
    sub-float v3, p2, v0

    iput v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->minY:F

    .line 417
    add-float v3, p2, v0

    iput v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->maxY:F

    .line 421
    :cond_1
    return v1
.end method

.method private setPos(FFFF)Z
    .locals 13
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 534
    move/from16 v6, p3

    .line 535
    .local v6, tmpScaleX:F
    move/from16 v7, p4

    .line 536
    .local v7, tmpScaleY:F
    const/high16 v11, 0x3f00

    const v12, 0x40533334

    move/from16 v0, p4

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 537
    const/high16 v11, 0x3f00

    const v12, 0x40533334

    move/from16 v0, p3

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 538
    cmpl-float v11, p3, v6

    if-nez v11, :cond_0

    cmpl-float v11, p4, v7

    if-eqz v11, :cond_1

    .line 539
    :cond_0
    const/4 v11, 0x0

    .line 583
    :goto_0
    return v11

    .line 542
    :cond_1
    cmpl-float v11, p3, p4

    if-eqz v11, :cond_2

    .line 543
    move/from16 p3, p4

    .line 546
    :cond_2
    iget v11, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->width:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    mul-float v10, v11, p3

    .local v10, ws:F
    iget v11, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->height:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    mul-float v1, v11, p4

    .line 548
    .local v1, hs:F
    iget v11, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->width:I

    int-to-float v11, v11

    mul-float v9, v11, p3

    .line 549
    .local v9, twoWs:F
    iget v11, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->height:I

    int-to-float v11, v11

    mul-float v8, v11, p4

    .line 550
    .local v8, twoHs:F
    iget v11, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayWidth:I

    int-to-float v11, v11

    cmpg-float v11, v9, v11

    if-gtz v11, :cond_3

    iget v11, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-float p1, v11

    .line 551
    :cond_3
    iget v11, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayHeight:I

    int-to-float v11, v11

    cmpg-float v11, v8, v11

    if-gtz v11, :cond_4

    iget v11, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayHeight:I

    div-int/lit8 v11, v11, 0x2

    int-to-float p2, v11

    .line 553
    :cond_4
    iget v11, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayWidth:I

    int-to-float v11, v11

    cmpg-float v11, v9, v11

    if-gtz v11, :cond_7

    .line 554
    iget v11, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-float p1, v11

    .line 562
    :cond_5
    :goto_1
    iget v11, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayHeight:I

    int-to-float v11, v11

    cmpg-float v11, v8, v11

    if-gtz v11, :cond_9

    .line 563
    iget v11, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayHeight:I

    div-int/lit8 v11, v11, 0x2

    int-to-float p2, v11

    .line 572
    :cond_6
    :goto_2
    sub-float v4, p1, v10

    .local v4, newMinX:F
    sub-float v5, p2, v1

    .local v5, newMinY:F
    add-float v2, p1, v10

    .local v2, newMaxX:F
    add-float v3, p2, v1

    .line 574
    .local v3, newMaxY:F
    iput p1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerX:F

    .line 575
    move/from16 v0, p3

    iput v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleX:F

    .line 576
    iput v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->minX:F

    .line 577
    iput v2, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->maxX:F

    .line 579
    iput p2, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerY:F

    .line 580
    move/from16 v0, p4

    iput v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleY:F

    .line 581
    iput v5, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->minY:F

    .line 582
    iput v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->maxY:F

    .line 583
    const/4 v11, 0x1

    goto :goto_0

    .line 556
    .end local v2           #newMaxX:F
    .end local v3           #newMaxY:F
    .end local v4           #newMinX:F
    .end local v5           #newMinY:F
    :cond_7
    sub-float v11, p1, v10

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_8

    .line 557
    move p1, v10

    .line 558
    goto :goto_1

    :cond_8
    add-float v11, p1, v10

    iget v12, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayWidth:I

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_5

    .line 559
    iget v11, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayWidth:I

    int-to-float v11, v11

    sub-float p1, v11, v10

    goto :goto_1

    .line 565
    :cond_9
    sub-float v11, p2, v1

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_a

    .line 566
    move p2, v1

    .line 567
    goto :goto_2

    :cond_a
    add-float v11, p2, v1

    iget v12, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayHeight:I

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_6

    .line 568
    iget v11, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayHeight:I

    int-to-float v11, v11

    sub-float p2, v11, v1

    goto :goto_2
.end method


# virtual methods
.method public containsPoint(FF)Z
    .locals 1
    .parameter "scrnX"
    .parameter "scrnY"

    .prologue
    .line 589
    iget v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->minX:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->maxX:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->minY:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->maxY:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/jingdong/common/utils/TouchImageView$Img;->checkImg()V

    .line 615
    iget-boolean v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->isOnError:Z

    if-eqz v0, :cond_0

    .line 622
    :goto_0
    return-void

    .line 618
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 619
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->drawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->minX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->minY:F

    float-to-int v2, v2

    iget v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->maxX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->maxY:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 620
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 621
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getCenterX()F
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerY:F

    return v0
.end method

.method public getDisplayHeight()I
    .locals 1

    .prologue
    .line 678
    iget v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayHeight:I

    return v0
.end method

.method public getDisplayWidth()I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayWidth:I

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->height:I

    return v0
.end method

.method public getMaxX()F
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->maxX:F

    return v0
.end method

.method public getMaxY()F
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->maxY:F

    return v0
.end method

.method public getMinX()F
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->minX:F

    return v0
.end method

.method public getMinY()F
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->minY:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 649
    iget v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->width:I

    return v0
.end method

.method public load()V
    .locals 13

    .prologue
    const v12, 0x40533334

    const/high16 v11, 0x3f00

    .line 290
    iget v10, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayWidth:I

    if-lez v10, :cond_0

    iget v10, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayHeight:I

    if-lez v10, :cond_0

    .line 320
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v10, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    invoke-virtual {v10}, Lcom/jingdong/common/utils/TouchImageView;->getWidth()I

    move-result v10

    iput v10, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayWidth:I

    .line 294
    iget-object v10, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    invoke-virtual {v10}, Lcom/jingdong/common/utils/TouchImageView;->getHeight()I

    move-result v10

    iput v10, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayHeight:I

    .line 296
    iget-object v10, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iput v10, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->width:I

    .line 297
    iget-object v10, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iput v10, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->height:I

    .line 299
    iget v10, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayWidth:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v0, v10

    .line 300
    .local v0, cx:F
    iget v10, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayHeight:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v1, v10

    .line 301
    .local v1, cy:F
    const/high16 v8, 0x3f80

    .local v8, sy:F
    move v7, v8

    .line 303
    .local v7, sx:F
    invoke-static {v12, v8}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 304
    invoke-static {v12, v7}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 305
    cmpl-float v10, v7, v8

    if-eqz v10, :cond_1

    .line 306
    move v7, v8

    .line 309
    :cond_1
    iget v10, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->width:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    mul-float v9, v10, v7

    .local v9, ws:F
    iget v10, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->height:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    mul-float v2, v10, v8

    .line 310
    .local v2, hs:F
    sub-float v5, v0, v9

    .local v5, newMinX:F
    sub-float v6, v1, v2

    .local v6, newMinY:F
    add-float v3, v0, v9

    .local v3, newMaxX:F
    add-float v4, v1, v2

    .line 311
    .local v4, newMaxY:F
    iput v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerX:F

    .line 312
    iput v7, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleX:F

    .line 313
    iput v5, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->minX:F

    .line 314
    iput v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->maxX:F

    .line 315
    iput v1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerY:F

    .line 316
    iput v8, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleY:F

    .line 317
    iput v6, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->minY:F

    .line 318
    iput v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->maxY:F

    goto :goto_0
.end method

.method public setDisplayHeight(I)V
    .locals 0
    .parameter "displayHeight"

    .prologue
    .line 682
    iput p1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayHeight:I

    .line 683
    return-void
.end method

.method public setDisplayWidth(I)V
    .locals 0
    .parameter "displayWidth"

    .prologue
    .line 674
    iput p1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->displayWidth:I

    .line 675
    return-void
.end method

.method public setPos(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)Z
    .locals 4
    .parameter

    .prologue
    .line 343
    .local p1, newImgPosAndScale:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;,"Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;"
    invoke-virtual {p1}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->getXOff()F

    move-result v2

    invoke-virtual {p1}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->getYOff()F

    move-result v3

    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    #getter for: Lcom/jingdong/common/utils/TouchImageView;->mUIMode:I
    invoke-static {v0}, Lcom/jingdong/common/utils/TouchImageView;->access$2(Lcom/jingdong/common/utils/TouchImageView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->getScaleX()F

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    #getter for: Lcom/jingdong/common/utils/TouchImageView;->mUIMode:I
    invoke-static {v1}, Lcom/jingdong/common/utils/TouchImageView;->access$2(Lcom/jingdong/common/utils/TouchImageView;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->getScaleY()F

    move-result v1

    :goto_1
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/jingdong/common/utils/TouchImageView$Img;->setPos(FFFF)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->getScale()F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->getScale()F

    move-result v1

    goto :goto_1
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->drawable:Landroid/graphics/drawable/Drawable;

    .line 339
    return-void
.end method

.method public zoomIn()V
    .locals 6

    .prologue
    const v5, 0x3f4ccccd

    .line 329
    iget v1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerX:F

    iget v2, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerY:F

    iget v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleX:F

    sub-float/2addr v3, v5

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleY:F

    sub-float/2addr v4, v5

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/jingdong/common/utils/TouchImageView$Img;->setPos(FFFF)Z

    move-result v0

    .line 330
    .local v0, ok:Z
    if-eqz v0, :cond_0

    .line 331
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/TouchImageView;->invalidate()V

    .line 332
    :cond_0
    return-void
.end method

.method public zoomOut()V
    .locals 6

    .prologue
    const v5, 0x3f4ccccd

    .line 323
    iget v1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerX:F

    iget v2, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->centerY:F

    iget v3, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleX:F

    add-float/2addr v3, v5

    iget v4, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->scaleY:F

    add-float/2addr v4, v5

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/jingdong/common/utils/TouchImageView$Img;->setPos(FFFF)Z

    move-result v0

    .line 324
    .local v0, ok:Z
    if-eqz v0, :cond_0

    .line 325
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$Img;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/TouchImageView;->invalidate()V

    .line 326
    :cond_0
    return-void
.end method
