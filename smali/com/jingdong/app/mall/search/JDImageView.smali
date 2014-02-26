.class public Lcom/jingdong/app/mall/search/JDImageView;
.super Landroid/widget/ImageView;
.source "JDImageView.java"


# static fields
.field private static final LEFT_AREA_ALPHA:I = 0x7f

.field private static final PRESS_LB:I = 0x0

.field private static final PRESS_LT:I = 0x1

.field private static final PRESS_RB:I = 0x2

.field private static final PRESS_RT:I = 0x3


# instance fields
.field private ChooseArea:Landroid/graphics/RectF;

.field private bitMap:Landroid/graphics/Bitmap;

.field private cutFlag:Z

.field private dot:Landroid/graphics/Bitmap;

.field private dotOfferX:I

.field private dotOfferY:I

.field private dst:Landroid/graphics/RectF;

.field private firstFlag:Z

.field private isDrawRect:Z

.field private leftAreaPaint:Landroid/graphics/Paint;

.field private leftRectB:Landroid/graphics/RectF;

.field private leftRectL:Landroid/graphics/RectF;

.field private leftRectR:Landroid/graphics/RectF;

.field private leftRectT:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private matrix:Landroid/graphics/Matrix;

.field private mx:I

.field private my:I

.field private options:Landroid/graphics/BitmapFactory$Options;

.field private recFlag:I

.field private recLB:Landroid/graphics/RectF;

.field private recLT:Landroid/graphics/RectF;

.field private recRB:Landroid/graphics/RectF;

.field private recRT:Landroid/graphics/RectF;

.field private src:Landroid/graphics/RectF;

.field private touchFlag:Z

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->bitMap:Landroid/graphics/Bitmap;

    .line 33
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->src:Landroid/graphics/RectF;

    .line 34
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    .line 35
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    .line 36
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->mPaint:Landroid/graphics/Paint;

    .line 37
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->matrix:Landroid/graphics/Matrix;

    .line 39
    iput v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->mx:I

    .line 40
    iput v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->my:I

    .line 47
    iput-boolean v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->touchFlag:Z

    .line 48
    iput-boolean v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->cutFlag:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->recFlag:I

    .line 50
    iput-boolean v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->firstFlag:Z

    .line 52
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recLT:Landroid/graphics/RectF;

    .line 53
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recRT:Landroid/graphics/RectF;

    .line 54
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recLB:Landroid/graphics/RectF;

    .line 55
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recRB:Landroid/graphics/RectF;

    .line 57
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectL:Landroid/graphics/RectF;

    .line 58
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectR:Landroid/graphics/RectF;

    .line 59
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectT:Landroid/graphics/RectF;

    .line 60
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectB:Landroid/graphics/RectF;

    .line 61
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftAreaPaint:Landroid/graphics/Paint;

    .line 65
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->bitMap:Landroid/graphics/Bitmap;

    .line 33
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->src:Landroid/graphics/RectF;

    .line 34
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    .line 35
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    .line 36
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->mPaint:Landroid/graphics/Paint;

    .line 37
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->matrix:Landroid/graphics/Matrix;

    .line 39
    iput v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->mx:I

    .line 40
    iput v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->my:I

    .line 47
    iput-boolean v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->touchFlag:Z

    .line 48
    iput-boolean v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->cutFlag:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->recFlag:I

    .line 50
    iput-boolean v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->firstFlag:Z

    .line 52
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recLT:Landroid/graphics/RectF;

    .line 53
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recRT:Landroid/graphics/RectF;

    .line 54
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recLB:Landroid/graphics/RectF;

    .line 55
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recRB:Landroid/graphics/RectF;

    .line 57
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectL:Landroid/graphics/RectF;

    .line 58
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectR:Landroid/graphics/RectF;

    .line 59
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectT:Landroid/graphics/RectF;

    .line 60
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectB:Landroid/graphics/RectF;

    .line 61
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftAreaPaint:Landroid/graphics/Paint;

    .line 70
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->init()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->bitMap:Landroid/graphics/Bitmap;

    .line 33
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->src:Landroid/graphics/RectF;

    .line 34
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    .line 35
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    .line 36
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->mPaint:Landroid/graphics/Paint;

    .line 37
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->matrix:Landroid/graphics/Matrix;

    .line 39
    iput v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->mx:I

    .line 40
    iput v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->my:I

    .line 47
    iput-boolean v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->touchFlag:Z

    .line 48
    iput-boolean v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->cutFlag:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->recFlag:I

    .line 50
    iput-boolean v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->firstFlag:Z

    .line 52
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recLT:Landroid/graphics/RectF;

    .line 53
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recRT:Landroid/graphics/RectF;

    .line 54
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recLB:Landroid/graphics/RectF;

    .line 55
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recRB:Landroid/graphics/RectF;

    .line 57
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectL:Landroid/graphics/RectF;

    .line 58
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectR:Landroid/graphics/RectF;

    .line 59
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectT:Landroid/graphics/RectF;

    .line 60
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectB:Landroid/graphics/RectF;

    .line 61
    iput-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftAreaPaint:Landroid/graphics/Paint;

    .line 75
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->init()V

    .line 76
    return-void
.end method

.method private isOutOfArea(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 306
    iget v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->recFlag:I

    packed-switch v0, :pswitch_data_0

    .line 320
    const/4 v0, 0x0

    .line 325
    :goto_0
    return v0

    .line 308
    :pswitch_0
    iget v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->mx:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->my:I

    sub-int v1, p2, v1

    invoke-direct {p0, v0, v1}, Lcom/jingdong/app/mall/search/JDImageView;->pressLB(II)V

    .line 322
    :goto_1
    iput p1, p0, Lcom/jingdong/app/mall/search/JDImageView;->mx:I

    .line 323
    iput p2, p0, Lcom/jingdong/app/mall/search/JDImageView;->my:I

    .line 324
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->invalidate()V

    .line 325
    const/4 v0, 0x1

    goto :goto_0

    .line 311
    :pswitch_1
    iget v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->mx:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->my:I

    sub-int v1, p2, v1

    invoke-direct {p0, v0, v1}, Lcom/jingdong/app/mall/search/JDImageView;->pressLT(II)V

    goto :goto_1

    .line 314
    :pswitch_2
    iget v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->mx:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->my:I

    sub-int v1, p2, v1

    invoke-direct {p0, v0, v1}, Lcom/jingdong/app/mall/search/JDImageView;->pressRB(II)V

    goto :goto_1

    .line 317
    :pswitch_3
    iget v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->mx:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->my:I

    sub-int v1, p2, v1

    invoke-direct {p0, v0, v1}, Lcom/jingdong/app/mall/search/JDImageView;->pressRT(II)V

    goto :goto_1

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private pressLB(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x41f0

    .line 366
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    int-to-float v5, p1

    add-float v1, v4, v5

    .line 367
    .local v1, left:F
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v2, v4, Landroid/graphics/RectF;->right:F

    .line 368
    .local v2, right:F
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v3, v4, Landroid/graphics/RectF;->top:F

    .line 369
    .local v3, top:F
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, p2

    add-float v0, v4, v5

    .line 370
    .local v0, bottom:F
    sub-float v4, v2, v6

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_0

    add-float v4, v3, v6

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_0

    .line 371
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 390
    :goto_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/search/JDImageView;->setPressRecLoc()V

    .line 391
    return-void

    .line 373
    :cond_0
    int-to-float v4, p1

    add-float/2addr v4, v1

    iget-object v5, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 374
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v1, v4, Landroid/graphics/RectF;->left:F

    .line 377
    :cond_1
    int-to-float v4, p2

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 378
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    .line 381
    :cond_2
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    int-to-float v5, p1

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 382
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float v1, v4, v6

    .line 385
    :cond_3
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, p2

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 386
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float v0, v4, v6

    .line 388
    :cond_4
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method private pressLT(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x41f0

    .line 396
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    int-to-float v5, p1

    add-float v1, v4, v5

    .line 397
    .local v1, left:F
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v2, v4, Landroid/graphics/RectF;->right:F

    .line 398
    .local v2, right:F
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    int-to-float v5, p2

    add-float v3, v4, v5

    .line 399
    .local v3, top:F
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    .line 400
    .local v0, bottom:F
    sub-float v4, v2, v6

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_0

    sub-float v4, v0, v6

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    .line 401
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 420
    :goto_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/search/JDImageView;->setPressRecLoc()V

    .line 421
    return-void

    .line 403
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    .line 404
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v1, v4, Landroid/graphics/RectF;->left:F

    .line 407
    :cond_1
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    .line 408
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v3, v4, Landroid/graphics/RectF;->top:F

    .line 411
    :cond_2
    sub-float v4, v2, v6

    cmpl-float v4, v1, v4

    if-lez v4, :cond_3

    .line 412
    sub-float v1, v2, v6

    .line 415
    :cond_3
    sub-float v4, v0, v6

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    .line 416
    sub-float v3, v0, v6

    .line 418
    :cond_4
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method private pressRB(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x41f0

    .line 457
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v1, v4, Landroid/graphics/RectF;->left:F

    .line 458
    .local v1, left:F
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, p1

    add-float v2, v4, v5

    .line 459
    .local v2, right:F
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v3, v4, Landroid/graphics/RectF;->top:F

    .line 460
    .local v3, top:F
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, p2

    add-float v0, v4, v5

    .line 462
    .local v0, bottom:F
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_0

    add-float v4, v1, v6

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_0

    add-float v4, v3, v6

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_0

    .line 463
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 482
    :goto_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/search/JDImageView;->setPressRecLoc()V

    .line 483
    return-void

    .line 465
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    .line 466
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v2, v4, Landroid/graphics/RectF;->right:F

    .line 469
    :cond_1
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    .line 470
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    .line 473
    :cond_2
    add-float v4, v1, v6

    cmpg-float v4, v2, v4

    if-gez v4, :cond_3

    .line 474
    add-float v2, v1, v6

    .line 477
    :cond_3
    add-float v4, v3, v6

    cmpg-float v4, v0, v4

    if-gez v4, :cond_4

    .line 478
    add-float v0, v3, v6

    .line 480
    :cond_4
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method private pressRT(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x41f0

    .line 426
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v1, v4, Landroid/graphics/RectF;->left:F

    .line 427
    .local v1, left:F
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, p1

    add-float v2, v4, v5

    .line 428
    .local v2, right:F
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    int-to-float v5, p2

    add-float v3, v4, v5

    .line 429
    .local v3, top:F
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    .line 431
    .local v0, bottom:F
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_0

    add-float v4, v1, v6

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    sub-float v4, v0, v6

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    .line 432
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 451
    :goto_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/search/JDImageView;->setPressRecLoc()V

    .line 452
    return-void

    .line 434
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    .line 435
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v2, v4, Landroid/graphics/RectF;->right:F

    .line 438
    :cond_1
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    .line 439
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v3, v4, Landroid/graphics/RectF;->top:F

    .line 442
    :cond_2
    add-float v4, v1, v6

    cmpg-float v4, v2, v4

    if-gez v4, :cond_3

    .line 443
    add-float v2, v1, v6

    .line 446
    :cond_3
    sub-float v4, v0, v6

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    .line 447
    sub-float v3, v0, v6

    .line 449
    :cond_4
    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method private setPressRecLoc()V
    .locals 6

    .prologue
    const/high16 v5, 0x40a0

    .line 487
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->recLT:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->dotOfferX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/jingdong/app/mall/search/JDImageView;->dotOfferY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 488
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->recLB:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->dotOfferX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/jingdong/app/mall/search/JDImageView;->dotOfferY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 489
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->recRT:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->dotOfferX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/jingdong/app/mall/search/JDImageView;->dotOfferY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 490
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->recRB:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->dotOfferX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/jingdong/app/mall/search/JDImageView;->dotOfferY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 495
    return-void
.end method

.method private validateMoveChooseArea(II)V
    .locals 15
    .parameter "move_x"
    .parameter "move_y"

    .prologue
    .line 223
    iget-object v11, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    move/from16 v0, p1

    int-to-float v12, v0

    add-float v5, v11, v12

    .line 224
    .local v5, l:F
    iget-object v11, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    move/from16 v0, p1

    int-to-float v12, v0

    add-float v7, v11, v12

    .line 225
    .local v7, r:F
    iget-object v11, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    move/from16 v0, p2

    int-to-float v12, v0

    add-float v9, v11, v12

    .line 226
    .local v9, t:F
    iget-object v11, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    move/from16 v0, p2

    int-to-float v12, v0

    add-float v3, v11, v12

    .line 227
    .local v3, b:F
    iget-object v11, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    cmpl-float v11, v9, v11

    if-ltz v11, :cond_1

    const/4 v10, 0x1

    .line 228
    .local v10, top:Z
    :goto_0
    iget-object v11, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    cmpg-float v11, v3, v11

    if-gtz v11, :cond_2

    const/4 v4, 0x1

    .line 229
    .local v4, bottom:Z
    :goto_1
    iget-object v11, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    cmpl-float v11, v5, v11

    if-ltz v11, :cond_3

    const/4 v6, 0x1

    .line 230
    .local v6, left:Z
    :goto_2
    iget-object v11, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    cmpg-float v11, v7, v11

    if-gtz v11, :cond_4

    const/4 v8, 0x1

    .line 232
    .local v8, right:Z
    :goto_3
    if-eqz v10, :cond_5

    if-eqz v4, :cond_5

    if-eqz v6, :cond_5

    if-eqz v8, :cond_5

    .line 233
    iget-object v11, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    invoke-virtual {v11, v5, v9, v7, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 250
    .end local v3           #b:F
    .end local v9           #t:F
    :cond_0
    :goto_4
    return-void

    .line 227
    .end local v4           #bottom:Z
    .end local v6           #left:Z
    .end local v8           #right:Z
    .end local v10           #top:Z
    .restart local v3       #b:F
    .restart local v9       #t:F
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 228
    .restart local v10       #top:Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 229
    .restart local v4       #bottom:Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 230
    .restart local v6       #left:Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 235
    .restart local v8       #right:Z
    :cond_5
    if-eqz v10, :cond_6

    if-nez v4, :cond_a

    .line 237
    :cond_6
    if-ne v6, v8, :cond_9

    .line 238
    if-nez v6, :cond_7

    iget-object v11, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v1, v11, Landroid/graphics/RectF;->left:F

    .line 239
    .local v1, _left:F
    :goto_5
    if-nez v8, :cond_8

    iget-object v11, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v2, v11, Landroid/graphics/RectF;->right:F

    .line 244
    .local v2, _right:F
    :goto_6
    iget-object v11, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget-object v12, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    iget-object v13, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v11, v1, v12, v2, v13}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4

    .end local v1           #_left:F
    .end local v2           #_right:F
    :cond_7
    move v1, v5

    .line 238
    goto :goto_5

    .restart local v1       #_left:F
    :cond_8
    move v2, v7

    .line 239
    goto :goto_6

    .line 241
    .end local v1           #_left:F
    :cond_9
    iget-object v11, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v1, v11, Landroid/graphics/RectF;->left:F

    .line 242
    .restart local v1       #_left:F
    iget-object v11, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v2, v11, Landroid/graphics/RectF;->right:F

    .restart local v2       #_right:F
    goto :goto_6

    .line 246
    .end local v1           #_left:F
    .end local v2           #_right:F
    :cond_a
    if-eqz v8, :cond_b

    if-nez v6, :cond_0

    .line 247
    :cond_b
    iget-object v11, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget-object v12, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    if-nez v10, :cond_c

    iget-object v13, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v9, v13, Landroid/graphics/RectF;->top:F

    .end local v9           #t:F
    :cond_c
    iget-object v13, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    if-nez v4, :cond_d

    iget-object v14, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v3, v14, Landroid/graphics/RectF;->bottom:F

    .end local v3           #b:F
    :cond_d
    invoke-virtual {v11, v12, v9, v13, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4
.end method


# virtual methods
.method public findPresseddst(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, returnFlag:Z
    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recLB:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2, v1}, Lcom/jingdong/app/mall/search/JDImageView;->isInRect(IILandroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    const/4 v1, 0x0

    iput v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recFlag:I

    .line 335
    const/4 v0, 0x1

    .line 347
    :cond_0
    :goto_0
    return v0

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recLT:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2, v1}, Lcom/jingdong/app/mall/search/JDImageView;->isInRect(IILandroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    const/4 v1, 0x1

    iput v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recFlag:I

    .line 338
    const/4 v0, 0x1

    .line 339
    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recRB:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2, v1}, Lcom/jingdong/app/mall/search/JDImageView;->isInRect(IILandroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 340
    const/4 v1, 0x2

    iput v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recFlag:I

    .line 341
    const/4 v0, 0x1

    .line 342
    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recRT:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2, v1}, Lcom/jingdong/app/mall/search/JDImageView;->isInRect(IILandroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    const/4 v1, 0x3

    iput v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recFlag:I

    .line 344
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->bitMap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getChooseArea()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 9

    .prologue
    .line 194
    iget-object v6, p0, Lcom/jingdong/app/mall/search/JDImageView;->bitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float v3, v6, v7

    .line 195
    .local v3, ratioWidth:F
    iget-object v6, p0, Lcom/jingdong/app/mall/search/JDImageView;->bitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float v2, v6, v7

    .line 196
    .local v2, ratioHeight:F
    iget-object v6, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v3

    float-to-int v1, v6

    .line 197
    .local v1, left:I
    int-to-float v6, v1

    iget-object v7, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    float-to-int v4, v6

    .line 198
    .local v4, right:I
    iget-object v6, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    float-to-int v5, v6

    .line 199
    .local v5, top:I
    int-to-float v6, v5

    iget-object v7, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 203
    .local v0, bottom:I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v1, v5, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6
.end method

.method public getSubsetBitmap()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    .line 177
    iget-object v6, p0, Lcom/jingdong/app/mall/search/JDImageView;->bitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float v3, v6, v7

    .line 178
    .local v3, ratioWidth:F
    iget-object v6, p0, Lcom/jingdong/app/mall/search/JDImageView;->bitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float v2, v6, v7

    .line 179
    .local v2, ratioHeight:F
    iget-object v6, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v3

    float-to-int v1, v6

    .line 180
    .local v1, left:I
    int-to-float v6, v1

    iget-object v7, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    float-to-int v4, v6

    .line 181
    .local v4, right:I
    iget-object v6, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    float-to-int v5, v6

    .line 182
    .local v5, top:I
    int-to-float v6, v5

    iget-object v7, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 183
    .local v0, bottom:I
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v1

    int-to-float v8, v5

    int-to-float v9, v4

    int-to-float v10, v0

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lcom/jingdong/app/mall/search/JDImageView;->src:Landroid/graphics/RectF;

    .line 184
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/jingdong/app/mall/search/JDImageView;->firstFlag:Z

    .line 185
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->set_LeftArea_Alpha()V

    .line 186
    sub-int v6, v4, v1

    if-lez v6, :cond_0

    sub-int v6, v0, v5

    if-lez v6, :cond_0

    .line 187
    iget-object v6, p0, Lcom/jingdong/app/mall/search/JDImageView;->bitMap:Landroid/graphics/Bitmap;

    sub-int v7, v4, v1

    sub-int v8, v0, v5

    invoke-static {v6, v1, v5, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 189
    :goto_0
    return-object v6

    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0
.end method

.method public imageScale()V
    .locals 14

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    iput-object v8, p0, Lcom/jingdong/app/mall/search/JDImageView;->matrix:Landroid/graphics/Matrix;

    .line 154
    iget-object v8, p0, Lcom/jingdong/app/mall/search/JDImageView;->matrix:Landroid/graphics/Matrix;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/jingdong/app/mall/search/JDImageView;->src:Landroid/graphics/RectF;

    if-eqz v8, :cond_0

    .line 155
    iget-object v8, p0, Lcom/jingdong/app/mall/search/JDImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget-object v10, p0, Lcom/jingdong/app/mall/search/JDImageView;->src:Landroid/graphics/RectF;

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 156
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->getPaddingBottom()I

    move-result v3

    .line 157
    .local v3, paddingB:I
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->getPaddingLeft()I

    move-result v4

    .line 158
    .local v4, paddingL:I
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->getPaddingRight()I

    move-result v5

    .line 159
    .local v5, paddingR:I
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->getPaddingTop()I

    move-result v6

    .line 160
    .local v6, paddingT:I
    iget-object v8, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    int-to-float v10, v4

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    int-to-float v11, v6

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    int-to-float v12, v5

    add-float/2addr v11, v12

    iget-object v12, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    int-to-float v13, v3

    add-float/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 161
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 162
    .local v7, w:I
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 166
    .local v2, h:I
    iget-object v8, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    shr-int/lit8 v0, v8, 0x3

    .line 167
    .local v0, gapX:I
    iget-object v8, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    shr-int/lit8 v1, v8, 0x3

    .line 168
    .local v1, gapY:I
    new-instance v8, Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    int-to-float v10, v0

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    int-to-float v11, v1

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    int-to-float v12, v0

    sub-float/2addr v11, v12

    iget-object v12, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    int-to-float v13, v1

    sub-float/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    .line 169
    invoke-direct {p0}, Lcom/jingdong/app/mall/search/JDImageView;->setPressRecLoc()V

    .line 171
    .end local v0           #gapX:I
    .end local v1           #gapY:I
    .end local v2           #h:I
    .end local v3           #paddingB:I
    .end local v4           #paddingL:I
    .end local v5           #paddingR:I
    .end local v6           #paddingT:I
    .end local v7           #w:I
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 80
    iput-boolean v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->cutFlag:Z

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->recLT:Landroid/graphics/RectF;

    .line 82
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->recLB:Landroid/graphics/RectF;

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->recRT:Landroid/graphics/RectF;

    .line 84
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->recRB:Landroid/graphics/RectF;

    .line 85
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->mPaint:Landroid/graphics/Paint;

    .line 87
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    .line 90
    invoke-direct {p0}, Lcom/jingdong/app/mall/search/JDImageView;->setPressRecLoc()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->src:Landroid/graphics/RectF;

    .line 92
    iput-boolean v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->firstFlag:Z

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftAreaPaint:Landroid/graphics/Paint;

    .line 97
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftAreaPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftAreaPaint:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->options:Landroid/graphics/BitmapFactory$Options;

    .line 100
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 101
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b9

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->dot:Landroid/graphics/Bitmap;

    .line 102
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->dot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->dotOfferX:I

    .line 103
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->dot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->dotOfferY:I

    .line 104
    return-void
.end method

.method public isInRect(IILandroid/graphics/RectF;)Z
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "rect"

    .prologue
    const/high16 v2, 0x41a0

    .line 351
    int-to-float v0, p1

    iget v1, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    int-to-float v0, p1

    iget v1, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    int-to-float v0, p2

    iget v1, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    int-to-float v0, p2

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->vibrator()V

    .line 353
    const/4 v0, 0x1

    .line 355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public judgeLocation(FF)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v5, 0x4120

    .line 499
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->getChooseArea()Landroid/graphics/RectF;

    move-result-object v4

    iget v2, v4, Landroid/graphics/RectF;->left:F

    .line 500
    .local v2, start_x:F
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->getChooseArea()Landroid/graphics/RectF;

    move-result-object v4

    iget v3, v4, Landroid/graphics/RectF;->top:F

    .line 501
    .local v3, start_y:F
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->getChooseArea()Landroid/graphics/RectF;

    move-result-object v4

    iget v0, v4, Landroid/graphics/RectF;->right:F

    .line 502
    .local v0, last_x:F
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->getChooseArea()Landroid/graphics/RectF;

    move-result-object v4

    iget v1, v4, Landroid/graphics/RectF;->bottom:F

    .line 504
    .local v1, last_y:F
    add-float v4, v2, v5

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    sub-float v4, v0, v5

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    add-float v4, v3, v5

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    sub-float v4, v1, v5

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    .line 505
    const/4 v4, 0x1

    .line 507
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public moveChooseArea(Landroid/view/MotionEvent;II)V
    .locals 2
    .parameter "event"
    .parameter "move_x"
    .parameter "move_y"

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/jingdong/app/mall/search/JDImageView;->validateMoveChooseArea(II)V

    .line 217
    invoke-direct {p0}, Lcom/jingdong/app/mall/search/JDImageView;->setPressRecLoc()V

    .line 218
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x5ff25722

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->invalidate()V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 512
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 514
    iget-boolean v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->isDrawRect:Z

    if-eqz v0, :cond_1

    .line 515
    iget-boolean v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->firstFlag:Z

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->imageScale()V

    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->firstFlag:Z

    .line 518
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 520
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->set_LeftArea_Alpha()V

    .line 522
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectL:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 523
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectR:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 524
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectT:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 525
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectB:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 527
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 529
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 530
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->dot:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recLT:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->recLT:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/jingdong/app/mall/search/JDImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 531
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b7

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recLB:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->recLB:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/jingdong/app/mall/search/JDImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 532
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ba

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recRT:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->recRT:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/jingdong/app/mall/search/JDImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 533
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b8

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->recRB:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->recRB:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/jingdong/app/mall/search/JDImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :cond_1
    :goto_0
    return-void

    .line 535
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x1

    .line 253
    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->cutFlag:Z

    if-eqz v1, :cond_2

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->mx:I

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->my:I

    .line 263
    iget v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->mx:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->my:I

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/search/JDImageView;->judgeLocation(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    iput-boolean v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->touchFlag:Z

    .line 265
    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->mPaint:Landroid/graphics/Paint;

    const v2, -0x5ff25722

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->invalidate()V

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/search/JDImageView;->findPresseddst(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    iput-boolean v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->touchFlag:Z

    .line 272
    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->touchFlag:Z

    if-eqz v1, :cond_3

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/search/JDImageView;->isOutOfArea(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    .line 286
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "full screen"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 296
    iput v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->recFlag:I

    .line 297
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->invalidate()V

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->touchFlag:Z

    .line 300
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 288
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->mx:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/jingdong/app/mall/search/JDImageView;->my:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/jingdong/app/mall/search/JDImageView;->moveChooseArea(Landroid/view/MotionEvent;II)V

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->mx:I

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->my:I

    goto :goto_1
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "bitmap"

    .prologue
    const/4 v5, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/jingdong/app/mall/search/JDImageView;->init()V

    .line 131
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    const/high16 v1, 0x3f80

    .line 133
    .local v1, density:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 134
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getDensity()F

    move-result v1

    .line 136
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->src:Landroid/graphics/RectF;

    .line 143
    iput-object p1, p0, Lcom/jingdong/app/mall/search/JDImageView;->bitMap:Landroid/graphics/Bitmap;

    .line 145
    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->bitMap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/search/JDImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 146
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectB:Landroid/graphics/RectF;

    .line 147
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectL:Landroid/graphics/RectF;

    .line 148
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectR:Landroid/graphics/RectF;

    .line 149
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectT:Landroid/graphics/RectF;

    .line 150
    return-void
.end method

.method public setDSTRect(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "dst"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    .line 119
    return-void
.end method

.method public setDrawRect(Z)V
    .locals 0
    .parameter "isDraw"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/jingdong/app/mall/search/JDImageView;->isDrawRect:Z

    .line 127
    return-void
.end method

.method public setVibrator(Landroid/os/Vibrator;)V
    .locals 0
    .parameter "vibrator"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/jingdong/app/mall/search/JDImageView;->vibrator:Landroid/os/Vibrator;

    .line 108
    return-void
.end method

.method public set_LeftArea_Alpha()V
    .locals 5

    .prologue
    .line 548
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectB:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectL:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectR:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectT:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectL:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 550
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectR:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 551
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectT:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 552
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->leftRectB:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/jingdong/app/mall/search/JDImageView;->ChooseArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/jingdong/app/mall/search/JDImageView;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 554
    :cond_0
    return-void
.end method

.method public vibrator()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->vibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/search/JDImageView;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method
