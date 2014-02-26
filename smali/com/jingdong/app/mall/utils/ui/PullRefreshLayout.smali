.class public Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;
.super Landroid/widget/FrameLayout;
.source "PullRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;,
        Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullStateListener;
    }
.end annotation


# static fields
.field private static final ACTIONVIEW_ONTOUCH_PREF:F = 0.6f

.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final SCROLL_MIN_DISTANCE_Y:I = 0x32

.field private static final TAG:Ljava/lang/String; = null

.field private static final TOOLVIEW_SPLIT_PREF:F = 0.6f

.field private static final TOP_IN_ACTION:I = 0x2

.field private static final TOP_IN_TOOL:I = 0x1

.field private static final TOP_OUT_VIEWS:I = 0x4


# instance fields
.field private mActionView:Landroid/view/View;

.field private mActionViewHeight:I

.field private final mActionViewId:I

.field private mActionViewPullListener:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;

.field private mCancelSended:Z

.field private mEnableStopInAction:Z

.field private mInTouch:Z

.field private mIsMotioned:Z

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMotionScrollY:I

.field private mPullStateListener:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullStateListener;

.field private mScrollbarStoreTarget:Landroid/view/View;

.field private final mScroller:Landroid/widget/Scroller;

.field private mTargetAdapterView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field private mTargetScrollbarEnable:Z

.field private mTargetView:Landroid/view/View;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mToolView:Landroid/view/View;

.field private mToolViewHeight:I

.field private final mToolViewId:I

.field private mToolViewPullListener:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;

.field private mTopState:I

.field private final mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionViewHeight:I

    .line 46
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewHeight:I

    .line 49
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTempRect:Landroid/graphics/Rect;

    .line 54
    iput-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mInTouch:Z

    .line 55
    iput-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mIsMotioned:Z

    .line 56
    iput-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mCancelSended:Z

    .line 59
    iput-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mEnableStopInAction:Z

    .line 84
    const v1, 0x7f0c0281

    iput v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionViewId:I

    .line 85
    const v1, 0x7f0c0282

    iput v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewId:I

    .line 86
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mScroller:Landroid/widget/Scroller;

    .line 88
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 89
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTouchSlop:I

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionViewHeight:I

    .line 46
    iput v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewHeight:I

    .line 49
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTempRect:Landroid/graphics/Rect;

    .line 54
    iput-boolean v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mInTouch:Z

    .line 55
    iput-boolean v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mIsMotioned:Z

    .line 56
    iput-boolean v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mCancelSended:Z

    .line 59
    iput-boolean v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mEnableStopInAction:Z

    .line 67
    sget-object v2, Lcom/jingdong/app/mall/R$styleable;->pullrefresh:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, a:Landroid/content/res/TypedArray;
    const v2, 0x7f0c0281

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionViewId:I

    .line 70
    const/4 v2, 0x1

    const v3, 0x7f0c0282

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewId:I

    .line 72
    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mScroller:Landroid/widget/Scroller;

    .line 74
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 75
    .local v1, cfg:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTouchSlop:I

    .line 76
    return-void
.end method

.method private checkViewId(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 93
    if-nez p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionViewId:I

    if-ne v0, v1, :cond_2

    .line 97
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewId:I

    if-ne v0, v1, :cond_0

    .line 101
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    goto :goto_0
.end method

.method private completeTouch()V
    .locals 6

    .prologue
    const v5, 0x3f19999a

    .line 563
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mInTouch:Z

    .line 564
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getScrollY()I

    move-result v2

    .line 565
    .local v2, y:I
    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewHeight:I

    neg-int v0, v3

    .line 566
    .local v0, toolTop:I
    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionViewHeight:I

    sub-int v1, v0, v3

    .line 570
    .local v1, top:I
    if-ltz v2, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    if-ge v2, v1, :cond_2

    .line 578
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->snapToActionViewTop()V

    goto :goto_0

    .line 579
    :cond_2
    iget-boolean v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mEnableStopInAction:Z

    if-nez v3, :cond_3

    if-ge v2, v0, :cond_3

    if-lt v2, v1, :cond_3

    .line 580
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->hideActionView()V

    goto :goto_0

    .line 581
    :cond_3
    int-to-float v3, v2

    int-to-float v4, v0

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_4

    if-le v2, v0, :cond_4

    .line 582
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->snapToToolViewTop()V

    goto :goto_0

    .line 583
    :cond_4
    int-to-float v3, v2

    int-to-float v4, v0

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->snapToToolViewBottom()V

    goto :goto_0
.end method

.method private findTargetView(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 15
    .parameter "group"
    .parameter "ev"

    .prologue
    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 470
    .local v11, xf:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 471
    .local v13, yf:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v14

    int-to-float v14, v14

    add-float v6, v11, v14

    .line 472
    .local v6, scrolledXFloat:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v14

    int-to-float v14, v14

    add-float v8, v13, v14

    .line 473
    .local v8, scrolledYFloat:F
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTempRect:Landroid/graphics/Rect;

    .line 474
    .local v3, frame:Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 476
    .local v5, orgAction:I
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->setAction(I)V

    .line 478
    float-to-int v7, v6

    .line 479
    .local v7, scrolledXInt:I
    float-to-int v9, v8

    .line 481
    .local v9, scrolledYInt:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 482
    .local v2, count:I
    add-int/lit8 v4, v2, -0x1

    .local v4, i:I
    :goto_0
    if-gez v4, :cond_0

    .line 506
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 507
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v13}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 508
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 483
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 484
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 485
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 486
    invoke-virtual {v3, v7, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-nez v14, :cond_3

    .line 482
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 488
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    int-to-float v14, v14

    sub-float v10, v6, v14

    .line 489
    .local v10, xc:F
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    int-to-float v14, v14

    sub-float v12, v8, v14

    .line 490
    .local v12, yc:F
    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v12}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 496
    const/4 v14, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->setAction(I)V

    .line 497
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 499
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 500
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v13}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1
.end method

.method private isOnTargetTop()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 544
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 545
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    if-gtz v4, :cond_1

    .line 556
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 545
    goto :goto_0

    .line 547
    :cond_2
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetAdapterView:Landroid/widget/AdapterView;

    if-eqz v4, :cond_0

    .line 548
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 549
    .local v0, first:I
    const/4 v1, 0x0

    .line 550
    .local v1, firstView:Landroid/view/View;
    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v4, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 551
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 553
    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->checkViewId(Landroid/view/View;)V

    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 108
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->checkViewId(Landroid/view/View;)V

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->checkViewId(Landroid/view/View;)V

    .line 195
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 196
    return-void
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 448
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getScrollY()I

    move-result v0

    .line 450
    .local v0, oldY:I
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 452
    .local v1, scrollY:I
    invoke-virtual {p0, v3, v1}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->scrollTo(II)V

    .line 454
    if-eq v0, v1, :cond_0

    .line 455
    invoke-virtual {p0, v3, v1, v3, v0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->onScrollChanged(IIII)V

    .line 457
    :cond_0
    if-lez v1, :cond_1

    .line 458
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 461
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->postInvalidate()V

    .line 463
    .end local v0           #oldY:I
    .end local v1           #scrollY:I
    :cond_2
    return-void
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 611
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 10

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getHeight()I

    move-result v2

    .line 590
    .local v2, scrollRange:I
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 591
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 593
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetAdapterView:Landroid/widget/AdapterView;

    if-eqz v4, :cond_1

    .line 594
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    .line 595
    .local v1, itemCount:I
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    .line 597
    .local v0, count:I
    const/4 v4, 0x1

    sub-int v5, v1, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 600
    .end local v0           #count:I
    .end local v1           #itemCount:I
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getScrollY()I

    move-result v3

    .line 601
    .local v3, scrollY:I
    if-gez v3, :cond_2

    .line 602
    int-to-double v4, v2

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getHeight()I

    move-result v6

    mul-int/2addr v6, v3

    int-to-double v6, v6

    const-wide v8, 0x3fb999999999999aL

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v2, v4

    .line 605
    :cond_2
    return v2
.end method

.method protected detachAllViewsFromParent()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    .line 238
    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    .line 239
    invoke-super {p0}, Landroid/widget/FrameLayout;->detachAllViewsFromParent()V

    .line 240
    return-void
.end method

.method protected detachViewFromParent(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 211
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 212
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    if-ne v1, v0, :cond_0

    .line 213
    iput-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    if-ne v1, v0, :cond_1

    .line 216
    iput-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    .line 218
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->detachViewFromParent(I)V

    .line 219
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 201
    iput-object v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 204
    iput-object v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    .line 206
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->detachViewFromParent(Landroid/view/View;)V

    .line 207
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .locals 4
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    .line 223
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v2, p1, p2

    if-lt v0, v2, :cond_0

    .line 232
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->detachViewsFromParent(II)V

    .line 233
    return-void

    .line 224
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 225
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    if-ne v2, v1, :cond_1

    .line 226
    iput-object v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    if-ne v2, v1, :cond_2

    .line 229
    iput-object v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    .line 223
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 299
    .local v2, eventFloatY:F
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->isOnTargetTop()Z

    move-result v4

    .line 300
    .local v4, targetOnTop:Z
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getScrollY()I

    move-result v3

    .line 301
    .local v3, scrollY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 303
    .local v0, action:I
    if-nez v0, :cond_0

    .line 304
    iput-boolean v9, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mCancelSended:Z

    .line 305
    iput-boolean v6, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mInTouch:Z

    .line 306
    iput-boolean v9, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mIsMotioned:Z

    .line 307
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mLastMotionY:F

    .line 308
    iput-object v7, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetView:Landroid/view/View;

    .line 309
    iput-object v7, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetAdapterView:Landroid/widget/AdapterView;

    .line 310
    invoke-direct {p0, p0, p1}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->findTargetView(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v5

    .line 311
    .local v5, v:Landroid/view/View;
    instance-of v7, v5, Landroid/widget/AdapterView;

    if-eqz v7, :cond_6

    .line 312
    check-cast v5, Landroid/widget/AdapterView;

    .end local v5           #v:Landroid/view/View;
    iput-object v5, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetAdapterView:Landroid/widget/AdapterView;

    .line 318
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 351
    :cond_1
    :goto_1
    if-gez v3, :cond_2

    if-eqz v4, :cond_2

    if-eq v0, v10, :cond_b

    .line 352
    :cond_2
    iget-boolean v7, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mCancelSended:Z

    if-eqz v7, :cond_3

    if-eq v0, v6, :cond_3

    if-eq v0, v11, :cond_3

    .line 353
    iput-boolean v9, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mCancelSended:Z

    .line 354
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 362
    :cond_3
    :goto_2
    iget-boolean v7, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mCancelSended:Z

    if-nez v7, :cond_4

    .line 363
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 366
    :cond_4
    iget-boolean v7, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mIsMotioned:Z

    if-nez v7, :cond_5

    .line 367
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mLastMotionY:F

    .line 369
    :cond_5
    :goto_3
    return v6

    .line 314
    .restart local v5       #v:Landroid/view/View;
    :cond_6
    iput-object v5, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetView:Landroid/view/View;

    goto :goto_0

    .line 320
    .end local v5           #v:Landroid/view/View;
    :pswitch_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getScrollY()I

    move-result v7

    iput v7, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mMotionScrollY:I

    .line 323
    :pswitch_1
    iget v7, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mLastMotionY:F

    sub-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x4248

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getScrollY()I

    move-result v7

    if-ltz v7, :cond_7

    .line 324
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_3

    .line 327
    :cond_7
    iget-boolean v7, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mIsMotioned:Z

    if-nez v7, :cond_8

    if-gtz v3, :cond_8

    if-eqz v4, :cond_8

    .line 328
    iput-boolean v6, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mIsMotioned:Z

    .line 329
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mLastMotionY:F

    .line 330
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getScrollY()I

    move-result v7

    if-ltz v7, :cond_a

    .line 331
    add-int/lit8 v7, v3, 0x32

    iput v7, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mMotionScrollY:I

    .line 337
    :cond_8
    :goto_4
    if-nez v4, :cond_9

    .line 338
    iput-boolean v9, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mIsMotioned:Z

    .line 340
    :cond_9
    iget-boolean v7, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mIsMotioned:Z

    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    .line 341
    iget v7, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mMotionScrollY:I

    int-to-float v7, v7

    sub-float/2addr v7, v2

    iget v8, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mLastMotionY:F

    add-float v1, v7, v8

    .line 342
    .local v1, d:F
    float-to-int v7, v1

    invoke-virtual {p0, v9, v7}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->scrollTo(II)V

    goto :goto_1

    .line 333
    .end local v1           #d:F
    :cond_a
    add-int/lit8 v7, v3, -0x32

    iput v7, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mMotionScrollY:I

    goto :goto_4

    .line 348
    :pswitch_2
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->completeTouch()V

    goto :goto_1

    .line 356
    :cond_b
    iget-boolean v7, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mCancelSended:Z

    if-nez v7, :cond_3

    if-ne v0, v10, :cond_3

    iget v7, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mMotionScrollY:I

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTouchSlop:I

    if-le v7, v8, :cond_3

    .line 357
    iput-boolean v6, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mCancelSended:Z

    .line 358
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 359
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hideActionView()V
    .locals 3

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getScrollY()I

    move-result v1

    .line 622
    .local v1, y:I
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewHeight:I

    neg-int v0, v2

    .line 623
    .local v0, bottom:I
    if-ge v1, v0, :cond_0

    iget-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mInTouch:Z

    if-eqz v2, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->smoothScrollTo(I)V

    goto :goto_0
.end method

.method public isPullOut()Z
    .locals 3

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionViewHeight:I

    neg-int v1, v1

    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewHeight:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 270
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, b:I
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 278
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    .line 279
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v3, v5

    sub-int v1, v0, v3

    .line 280
    .local v1, t:I
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v2, v3, v1, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 281
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    sub-int v3, v0, v1

    :goto_0
    iput v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewHeight:I

    .line 282
    move v0, v1

    .line 284
    .end local v1           #t:I
    .end local v2           #v:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 285
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    .line 286
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v3, v5

    sub-int v1, v0, v3

    .line 287
    .restart local v1       #t:I
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v2, v3, v1, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 288
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    sub-int v4, v0, v1

    :cond_1
    iput v4, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionViewHeight:I

    .line 293
    .end local v1           #t:I
    .end local v2           #v:Landroid/view/View;
    :cond_2
    return-void

    .restart local v1       #t:I
    .restart local v2       #v:Landroid/view/View;
    :cond_3
    move v3, v4

    .line 281
    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    .line 181
    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    .line 182
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 183
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    .line 188
    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    .line 189
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 190
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 119
    iput-object v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 122
    iput-object v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    .line 124
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 125
    return-void
.end method

.method public removeViewAt(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    if-ne v1, v0, :cond_0

    .line 156
    iput-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    if-ne v1, v0, :cond_1

    .line 159
    iput-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    .line 161
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 162
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 130
    iput-object v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 133
    iput-object v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    .line 135
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 136
    return-void
.end method

.method public removeViews(II)V
    .locals 4
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    .line 166
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v2, p1, p2

    if-lt v0, v2, :cond_0

    .line 175
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    .line 176
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 168
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    if-ne v2, v1, :cond_1

    .line 169
    iput-object v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    if-ne v2, v1, :cond_2

    .line 172
    iput-object v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    .line 166
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeViewsInLayout(II)V
    .locals 4
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    .line 140
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v2, p1, p2

    if-lt v0, v2, :cond_0

    .line 149
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViewsInLayout(II)V

    .line 150
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 142
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    if-ne v2, v1, :cond_1

    .line 143
    iput-object v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    if-ne v2, v1, :cond_2

    .line 146
    iput-object v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    .line 140
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 377
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 378
    .local v0, destY:I
    iget-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mInTouch:Z

    if-eqz v2, :cond_0

    .line 379
    int-to-float v2, v0

    const v4, 0x3f19999a

    mul-float/2addr v2, v4

    float-to-int v0, v2

    .line 381
    :cond_0
    const/4 v1, 0x0

    .line 382
    .local v1, newState:I
    if-gez v0, :cond_1

    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewHeight:I

    if-lez v2, :cond_1

    .line 383
    or-int/lit8 v1, v1, 0x1

    .line 385
    :cond_1
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewHeight:I

    if-ge v0, v2, :cond_2

    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionViewHeight:I

    if-lez v2, :cond_2

    .line 386
    or-int/lit8 v1, v1, 0x2

    .line 388
    :cond_2
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionViewHeight:I

    neg-int v2, v2

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewHeight:I

    sub-int/2addr v2, v4

    if-ge v0, v2, :cond_3

    .line 389
    or-int/lit8 v1, v1, 0x4

    .line 392
    :cond_3
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTopState:I

    if-eq v1, v2, :cond_7

    .line 393
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mPullStateListener:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullStateListener;

    if-eqz v2, :cond_4

    .line 394
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTopState:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_b

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_b

    .line 395
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mPullStateListener:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullStateListener;

    invoke-interface {v2}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullStateListener;->onPullOut()V

    .line 401
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionViewPullListener:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;

    if-eqz v2, :cond_5

    .line 402
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTopState:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_c

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_c

    .line 403
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionViewPullListener:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;

    invoke-interface {v2}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;->onShow()V

    .line 409
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewPullListener:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;

    if-eqz v2, :cond_6

    .line 410
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTopState:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_d

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_d

    .line 411
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewPullListener:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;

    invoke-interface {v2}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;->onShow()V

    .line 417
    :cond_6
    :goto_2
    iput v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTopState:I

    .line 420
    :cond_7
    if-gez v0, :cond_e

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->setVerticalScrollBarEnabled(Z)V

    .line 422
    if-gez v0, :cond_9

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mScrollbarStoreTarget:Landroid/view/View;

    if-nez v2, :cond_9

    .line 423
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 424
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetView:Landroid/view/View;

    iput-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mScrollbarStoreTarget:Landroid/view/View;

    .line 425
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetScrollbarEnable:Z

    .line 426
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 428
    :cond_8
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetAdapterView:Landroid/widget/AdapterView;

    if-eqz v2, :cond_9

    .line 429
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetAdapterView:Landroid/widget/AdapterView;

    iput-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mScrollbarStoreTarget:Landroid/view/View;

    .line 430
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->isVerticalScrollBarEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetScrollbarEnable:Z

    .line 431
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setVerticalScrollBarEnabled(Z)V

    .line 434
    :cond_9
    if-ltz v0, :cond_a

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mScrollbarStoreTarget:Landroid/view/View;

    if-eqz v2, :cond_a

    .line 435
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mScrollbarStoreTarget:Landroid/view/View;

    iget-boolean v4, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTargetScrollbarEnable:Z

    invoke-virtual {v2, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 436
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mScrollbarStoreTarget:Landroid/view/View;

    .line 437
    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->setVerticalScrollBarEnabled(Z)V

    .line 443
    :cond_a
    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 444
    return-void

    .line 396
    :cond_b
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTopState:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_4

    .line 397
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mPullStateListener:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullStateListener;

    invoke-interface {v2}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullStateListener;->onPullIn()V

    goto/16 :goto_0

    .line 404
    :cond_c
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTopState:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_5

    .line 405
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionViewPullListener:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;

    invoke-interface {v2}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;->onHide()V

    goto/16 :goto_1

    .line 412
    :cond_d
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mTopState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_6

    .line 413
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewPullListener:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;

    invoke-interface {v2}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;->onHide()V

    goto :goto_2

    :cond_e
    move v2, v3

    .line 420
    goto :goto_3
.end method

.method public setActionView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 249
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->addView(Landroid/view/View;)V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionView:Landroid/view/View;

    goto :goto_0
.end method

.method public setEnableStopInActionView(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 516
    iput-boolean p1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mEnableStopInAction:Z

    .line 517
    return-void
.end method

.method public setOnActionPullListener(Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 524
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionViewPullListener:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;

    .line 525
    return-void
.end method

.method public setOnPullStateChangeListener(Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mPullStateListener:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullStateListener;

    .line 541
    return-void
.end method

.method public setOnToolPullListener(Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewPullListener:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;

    .line 533
    return-void
.end method

.method public setToolView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 260
    if-eqz p1, :cond_0

    .line 261
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 262
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->addView(Landroid/view/View;)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolView:Landroid/view/View;

    goto :goto_0
.end method

.method public final smoothScrollBy(I)V
    .locals 7
    .parameter "dy"

    .prologue
    const/4 v6, 0x0

    .line 697
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mLastScroll:J

    sub-long v0, v2, v4

    .line 698
    .local v0, duration:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 699
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getScrollY()I

    move-result v3

    invoke-virtual {v2, v6, v3, v6, p1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 700
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->invalidate()V

    .line 707
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mLastScroll:J

    .line 708
    return-void

    .line 702
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 703
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 705
    :cond_1
    invoke-virtual {p0, v6, p1}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollTo(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getScrollY()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->smoothScrollBy(I)V

    .line 720
    return-void
.end method

.method public snapToActionViewTop()V
    .locals 4

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getScrollY()I

    move-result v1

    .line 639
    .local v1, y:I
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionViewHeight:I

    sub-int v0, v2, v3

    .line 640
    .local v0, top:I
    if-ge v1, v0, :cond_0

    iget-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mInTouch:Z

    if-eqz v2, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->smoothScrollTo(I)V

    .line 644
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionViewPullListener:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;

    if-eqz v2, :cond_0

    .line 645
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mActionViewPullListener:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;

    invoke-interface {v2}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;->onSnapToTop()V

    goto :goto_0
.end method

.method public snapToToolViewBottom()V
    .locals 2

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getScrollY()I

    move-result v0

    .line 674
    .local v0, y:I
    if-gez v0, :cond_0

    iget-boolean v1, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mInTouch:Z

    if-eqz v1, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->smoothScrollTo(I)V

    goto :goto_0
.end method

.method public snapToToolViewTop()V
    .locals 3

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->getScrollY()I

    move-result v1

    .line 657
    .local v1, y:I
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewHeight:I

    neg-int v0, v2

    .line 658
    .local v0, top:I
    if-gez v1, :cond_0

    iget-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mInTouch:Z

    if-eqz v2, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->smoothScrollTo(I)V

    .line 662
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewPullListener:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;

    if-eqz v2, :cond_0

    .line 663
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->mToolViewPullListener:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;

    invoke-interface {v2}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;->onSnapToTop()V

    goto :goto_0
.end method
