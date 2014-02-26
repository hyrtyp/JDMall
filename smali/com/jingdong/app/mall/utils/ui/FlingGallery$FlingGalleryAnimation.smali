.class Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;
.super Landroid/view/animation/Animation;
.source "FlingGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/utils/ui/FlingGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingGalleryAnimation"
.end annotation


# instance fields
.field private mInitialOffset:I

.field private mIsAnimationInProgres:Z

.field private mRelativeViewNumber:I

.field private mTargetDistance:I

.field private mTargetOffset:I

.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/FlingGallery;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 380
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/jingdong/app/mall/utils/ui/FlingGallery;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 381
    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mIsAnimationInProgres:Z

    .line 382
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    .line 383
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mInitialOffset:I

    .line 384
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    .line 385
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mTargetDistance:I

    .line 386
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .parameter "interpolatedTime"
    .parameter "transformation"

    .prologue
    const/high16 v2, 0x3f80

    .line 428
    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    move p1, v2

    .line 429
    :cond_0
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mInitialOffset:I

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mTargetDistance:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int v0, v2, v3

    .line 431
    .local v0, offset:I
    const/4 v1, 0x0

    .local v1, viewNumber:I
    :goto_0
    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 437
    return-void

    .line 433
    :cond_1
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mTargetDistance:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/jingdong/app/mall/utils/ui/FlingGallery;

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    #calls: Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getNextViewNumber(I)I
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->access$7(Lcom/jingdong/app/mall/utils/ui/FlingGallery;I)I

    move-result v2

    if-ne v1, v2, :cond_3

    :cond_2
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mTargetDistance:I

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/jingdong/app/mall/utils/ui/FlingGallery;

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    #calls: Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getPrevViewNumber(I)I
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->access$3(Lcom/jingdong/app/mall/utils/ui/FlingGallery;I)I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 434
    :cond_3
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/jingdong/app/mall/utils/ui/FlingGallery;

    #getter for: Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->access$4(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    move-result-object v2

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v2, v0, v3, v4}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 431
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 5
    .parameter "currentTime"
    .parameter "outTransformation"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 441
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 443
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/jingdong/app/mall/utils/ui/FlingGallery;

    #getter for: Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->access$4(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    move-result-object v2

    aget-object v2, v2, v0

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v2, v3, v0, v4}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 444
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/jingdong/app/mall/utils/ui/FlingGallery;

    #getter for: Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->access$4(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    move-result-object v2

    aget-object v1, v2, v1

    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 445
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/jingdong/app/mall/utils/ui/FlingGallery;

    #getter for: Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->access$4(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 448
    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mIsAnimationInProgres:Z

    .line 462
    :cond_0
    :goto_0
    return v0

    .line 454
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/jingdong/app/mall/utils/ui/FlingGallery;

    #getter for: Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsTouched:Z
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->access$8(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/jingdong/app/mall/utils/ui/FlingGallery;

    #getter for: Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsDragging:Z
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->access$9(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 462
    goto :goto_0
.end method

.method public prepareAnimation(I)V
    .locals 7
    .parameter "relativeViewNumber"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 390
    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    if-eq v4, p1, :cond_1

    .line 391
    iget-boolean v4, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mIsAnimationInProgres:Z

    if-eqz v4, :cond_0

    .line 393
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/jingdong/app/mall/utils/ui/FlingGallery;

    iget v5, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    #calls: Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getPrevViewNumber(I)I
    invoke-static {v4, v5}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->access$3(Lcom/jingdong/app/mall/utils/ui/FlingGallery;I)I

    move-result v4

    if-ne p1, v4, :cond_2

    move v1, v2

    .line 394
    .local v1, newDirection:I
    :goto_0
    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mTargetDistance:I

    if-gez v4, :cond_3

    move v0, v2

    .line 397
    .local v0, animDirection:I
    :goto_1
    if-ne v0, v1, :cond_0

    .line 399
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/jingdong/app/mall/utils/ui/FlingGallery;

    #getter for: Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->access$4(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    move-result-object v3

    aget-object v3, v3, v6

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v5, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v3, v4, v6, v5}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 400
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/jingdong/app/mall/utils/ui/FlingGallery;

    #getter for: Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->access$4(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    move-result-object v3

    aget-object v3, v3, v2

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v5, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v3, v4, v6, v5}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 401
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/jingdong/app/mall/utils/ui/FlingGallery;

    #getter for: Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->access$4(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v5, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    invoke-virtual {v3, v4, v6, v5}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 406
    .end local v0           #animDirection:I
    .end local v1           #newDirection:I
    :cond_0
    iput p1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    .line 413
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/jingdong/app/mall/utils/ui/FlingGallery;

    #getter for: Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->access$4(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    move-result-object v3

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->getCurrentOffset()I

    move-result v3

    iput v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mInitialOffset:I

    .line 414
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/jingdong/app/mall/utils/ui/FlingGallery;

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    iget v5, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mRelativeViewNumber:I

    #calls: Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getViewOffset(II)I
    invoke-static {v3, v4, v5}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->access$2(Lcom/jingdong/app/mall/utils/ui/FlingGallery;II)I

    move-result v3

    iput v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    .line 415
    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mTargetOffset:I

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mInitialOffset:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mTargetDistance:I

    .line 418
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/jingdong/app/mall/utils/ui/FlingGallery;

    #getter for: Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mAnimationDuration:I
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->access$5(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->setDuration(J)V

    .line 419
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->this$0:Lcom/jingdong/app/mall/utils/ui/FlingGallery;

    #getter for: Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mDecelerateInterpolater:Landroid/view/animation/Interpolator;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->access$6(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 422
    iput-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->mIsAnimationInProgres:Z

    .line 423
    return-void

    :cond_2
    move v1, v3

    .line 393
    goto :goto_0

    .restart local v1       #newDirection:I
    :cond_3
    move v0, v3

    .line 394
    goto :goto_1
.end method
