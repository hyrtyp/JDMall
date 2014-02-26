.class Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;
.super Ljava/lang/Object;
.source "FlingGallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/ui/FlingGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/ui/FlingGallery;


# direct methods
.method private constructor <init>(Lcom/jingdong/common/ui/FlingGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/ui/FlingGallery;Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;-><init>(Lcom/jingdong/common/ui/FlingGallery;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 470
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #setter for: Lcom/jingdong/common/ui/FlingGallery;->mIsTouched:Z
    invoke-static {v0, v2}, Lcom/jingdong/common/ui/FlingGallery;->access$10(Lcom/jingdong/common/ui/FlingGallery;Z)V

    .line 473
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/common/ui/FlingGallery;->mFlingDirection:I
    invoke-static {v0, v1}, Lcom/jingdong/common/ui/FlingGallery;->access$11(Lcom/jingdong/common/ui/FlingGallery;I)V

    .line 474
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v3, 0x43c8

    const/high16 v2, 0x42f0

    .line 518
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x437a

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 519
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    invoke-virtual {v0}, Lcom/jingdong/common/ui/FlingGallery;->movePrevious()V

    .line 523
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    invoke-virtual {v0}, Lcom/jingdong/common/ui/FlingGallery;->moveNext()V

    .line 528
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/common/ui/FlingGallery;->mFlingDirection:I
    invoke-static {v0, v1}, Lcom/jingdong/common/ui/FlingGallery;->access$11(Lcom/jingdong/common/ui/FlingGallery;I)V

    .line 535
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    invoke-virtual {v0}, Lcom/jingdong/common/ui/FlingGallery;->processGesture()V

    .line 536
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 479
    iget-object v6, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    invoke-virtual {v6}, Lcom/jingdong/common/ui/FlingGallery;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 480
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 481
    iget-object v6, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mIsDragging:Z
    invoke-static {v6}, Lcom/jingdong/common/ui/FlingGallery;->access$9(Lcom/jingdong/common/ui/FlingGallery;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 483
    iget-object v6, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    const/4 v7, 0x1

    #setter for: Lcom/jingdong/common/ui/FlingGallery;->mIsTouched:Z
    invoke-static {v6, v7}, Lcom/jingdong/common/ui/FlingGallery;->access$10(Lcom/jingdong/common/ui/FlingGallery;Z)V

    .line 486
    iget-object v6, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    const/4 v7, 0x1

    #setter for: Lcom/jingdong/common/ui/FlingGallery;->mIsDragging:Z
    invoke-static {v6, v7}, Lcom/jingdong/common/ui/FlingGallery;->access$12(Lcom/jingdong/common/ui/FlingGallery;Z)V

    .line 487
    iget-object v6, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    const/4 v7, 0x0

    #setter for: Lcom/jingdong/common/ui/FlingGallery;->mFlingDirection:I
    invoke-static {v6, v7}, Lcom/jingdong/common/ui/FlingGallery;->access$11(Lcom/jingdong/common/ui/FlingGallery;I)V

    .line 488
    iget-object v6, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    #setter for: Lcom/jingdong/common/ui/FlingGallery;->mScrollTimestamp:J
    invoke-static {v6, v7, v8}, Lcom/jingdong/common/ui/FlingGallery;->access$13(Lcom/jingdong/common/ui/FlingGallery;J)V

    .line 489
    iget-object v6, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    iget-object v7, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mViews:[Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;
    invoke-static {v7}, Lcom/jingdong/common/ui/FlingGallery;->access$4(Lcom/jingdong/common/ui/FlingGallery;)[Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;

    move-result-object v7

    iget-object v8, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mCurrentViewNumber:I
    invoke-static {v8}, Lcom/jingdong/common/ui/FlingGallery;->access$14(Lcom/jingdong/common/ui/FlingGallery;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->getCurrentOffset()I

    move-result v7

    int-to-float v7, v7

    #setter for: Lcom/jingdong/common/ui/FlingGallery;->mCurrentOffset:F
    invoke-static {v6, v7}, Lcom/jingdong/common/ui/FlingGallery;->access$15(Lcom/jingdong/common/ui/FlingGallery;F)V

    .line 492
    :cond_0
    iget-object v6, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mGalleryWidth:I
    invoke-static {v6}, Lcom/jingdong/common/ui/FlingGallery;->access$16(Lcom/jingdong/common/ui/FlingGallery;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mAnimationDuration:I
    invoke-static {v7}, Lcom/jingdong/common/ui/FlingGallery;->access$5(Lcom/jingdong/common/ui/FlingGallery;)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x447a

    div-float/2addr v7, v8

    div-float v2, v6, v7

    .line 493
    .local v2, maxVelocity:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mScrollTimestamp:J
    invoke-static {v8}, Lcom/jingdong/common/ui/FlingGallery;->access$17(Lcom/jingdong/common/ui/FlingGallery;)J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 494
    .local v4, timestampDelta:J
    long-to-float v6, v4

    const/high16 v7, 0x447a

    div-float/2addr v6, v7

    mul-float v1, v2, v6

    .line 495
    .local v1, maxScrollDelta:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v0, v6, v7

    .line 497
    .local v0, currentScrollDelta:F
    const/high16 v6, -0x4080

    mul-float/2addr v6, v1

    cmpg-float v6, v0, v6

    if-gez v6, :cond_1

    .line 498
    const/high16 v6, -0x4080

    mul-float v0, v1, v6

    .line 499
    :cond_1
    cmpl-float v6, v0, v1

    if-lez v6, :cond_2

    .line 500
    move v0, v1

    .line 501
    :cond_2
    iget-object v6, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mCurrentOffset:F
    invoke-static {v6}, Lcom/jingdong/common/ui/FlingGallery;->access$18(Lcom/jingdong/common/ui/FlingGallery;)F

    move-result v6

    add-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 504
    .local v3, scrollOffset:I
    iget-object v6, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mGalleryWidth:I
    invoke-static {v6}, Lcom/jingdong/common/ui/FlingGallery;->access$16(Lcom/jingdong/common/ui/FlingGallery;)I

    move-result v6

    if-lt v3, v6, :cond_3

    .line 505
    iget-object v6, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mGalleryWidth:I
    invoke-static {v6}, Lcom/jingdong/common/ui/FlingGallery;->access$16(Lcom/jingdong/common/ui/FlingGallery;)I

    move-result v3

    .line 506
    :cond_3
    iget-object v6, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mGalleryWidth:I
    invoke-static {v6}, Lcom/jingdong/common/ui/FlingGallery;->access$16(Lcom/jingdong/common/ui/FlingGallery;)I

    move-result v6

    mul-int/lit8 v6, v6, -0x1

    if-gt v3, v6, :cond_4

    .line 507
    iget-object v6, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mGalleryWidth:I
    invoke-static {v6}, Lcom/jingdong/common/ui/FlingGallery;->access$16(Lcom/jingdong/common/ui/FlingGallery;)I

    move-result v6

    mul-int/lit8 v3, v6, -0x1

    .line 509
    :cond_4
    iget-object v6, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mViews:[Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;
    invoke-static {v6}, Lcom/jingdong/common/ui/FlingGallery;->access$4(Lcom/jingdong/common/ui/FlingGallery;)[Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mCurrentViewNumber:I
    invoke-static {v8}, Lcom/jingdong/common/ui/FlingGallery;->access$14(Lcom/jingdong/common/ui/FlingGallery;)I

    move-result v8

    invoke-virtual {v6, v3, v7, v8}, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 510
    iget-object v6, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mViews:[Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;
    invoke-static {v6}, Lcom/jingdong/common/ui/FlingGallery;->access$4(Lcom/jingdong/common/ui/FlingGallery;)[Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mCurrentViewNumber:I
    invoke-static {v8}, Lcom/jingdong/common/ui/FlingGallery;->access$14(Lcom/jingdong/common/ui/FlingGallery;)I

    move-result v8

    invoke-virtual {v6, v3, v7, v8}, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 511
    iget-object v6, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mViews:[Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;
    invoke-static {v6}, Lcom/jingdong/common/ui/FlingGallery;->access$4(Lcom/jingdong/common/ui/FlingGallery;)[Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mCurrentViewNumber:I
    invoke-static {v8}, Lcom/jingdong/common/ui/FlingGallery;->access$14(Lcom/jingdong/common/ui/FlingGallery;)I

    move-result v8

    invoke-virtual {v6, v3, v7, v8}, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 513
    .end local v0           #currentScrollDelta:F
    .end local v1           #maxScrollDelta:F
    .end local v2           #maxVelocity:F
    .end local v3           #scrollOffset:I
    .end local v4           #timestampDelta:J
    :cond_5
    const/4 v6, 0x0

    return v6
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 540
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    .line 545
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGestureDetector;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #setter for: Lcom/jingdong/common/ui/FlingGallery;->mFlingDirection:I
    invoke-static {v0, v1}, Lcom/jingdong/common/ui/FlingGallery;->access$11(Lcom/jingdong/common/ui/FlingGallery;I)V

    .line 546
    return v1
.end method
