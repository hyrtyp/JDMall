.class public Lcom/jingdong/app/mall/utils/ui/FlingGallery;
.super Landroid/widget/FrameLayout;
.source "FlingGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;,
        Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;,
        Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGestureDetector;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private mAnimation:Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;

.field private mAnimationDuration:I

.field private mContext:Landroid/content/Context;

.field private mCurrentOffset:F

.field private mCurrentPosition:I

.field private mCurrentViewNumber:I

.field private mDecelerateInterpolater:Landroid/view/animation/Interpolator;

.field private mFlingDirection:I

.field private mGalleryWidth:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsDragging:Z

.field private mIsGalleryCircular:Z

.field private mIsTouched:Z

.field private mScrollTimestamp:J

.field private mSnapBorderRatio:F

.field private mViewPaddingWidth:I

.field private mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

.field private final swipe_max_off_path:I

.field private final swipe_min_distance:I

.field private final swipe_threshold_veloicty:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/16 v1, 0xfa

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/16 v0, 0x78

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->swipe_min_distance:I

    .line 28
    iput v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->swipe_max_off_path:I

    .line 29
    const/16 v0, 0x190

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->swipe_threshold_veloicty:I

    .line 33
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViewPaddingWidth:I

    .line 34
    iput v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mAnimationDuration:I

    .line 35
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mSnapBorderRatio:F

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsGalleryCircular:Z

    .line 40
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mGalleryWidth:I

    .line 41
    iput-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsTouched:Z

    .line 42
    iput-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsDragging:Z

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentOffset:F

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mScrollTimestamp:J

    .line 45
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mFlingDirection:I

    .line 46
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentPosition:I

    .line 47
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    .line 58
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->init(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v1, 0xfa

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/16 v0, 0x78

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->swipe_min_distance:I

    .line 28
    iput v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->swipe_max_off_path:I

    .line 29
    const/16 v0, 0x190

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->swipe_threshold_veloicty:I

    .line 33
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViewPaddingWidth:I

    .line 34
    iput v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mAnimationDuration:I

    .line 35
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mSnapBorderRatio:F

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsGalleryCircular:Z

    .line 40
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mGalleryWidth:I

    .line 41
    iput-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsTouched:Z

    .line 42
    iput-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsDragging:Z

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentOffset:F

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mScrollTimestamp:J

    .line 45
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mFlingDirection:I

    .line 46
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentPosition:I

    .line 47
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    .line 63
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->init(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v1, 0xfa

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/16 v0, 0x78

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->swipe_min_distance:I

    .line 28
    iput v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->swipe_max_off_path:I

    .line 29
    const/16 v0, 0x190

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->swipe_threshold_veloicty:I

    .line 33
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViewPaddingWidth:I

    .line 34
    iput v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mAnimationDuration:I

    .line 35
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mSnapBorderRatio:F

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsGalleryCircular:Z

    .line 40
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mGalleryWidth:I

    .line 41
    iput-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsTouched:Z

    .line 42
    iput-boolean v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsDragging:Z

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentOffset:F

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mScrollTimestamp:J

    .line 45
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mFlingDirection:I

    .line 46
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentPosition:I

    .line 47
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    .line 68
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)Landroid/widget/Adapter;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/utils/ui/FlingGallery;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsTouched:Z

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/utils/ui/FlingGallery;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mFlingDirection:I

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/utils/ui/FlingGallery;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsDragging:Z

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/utils/ui/FlingGallery;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mScrollTimestamp:J

    return-void
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    return v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/utils/ui/FlingGallery;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentOffset:F

    return-void
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mGalleryWidth:I

    return v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)J
    .locals 2
    .parameter

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mScrollTimestamp:J

    return-wide v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)F
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentOffset:F

    return v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/utils/ui/FlingGallery;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getViewOffset(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/utils/ui/FlingGallery;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getPrevViewNumber(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)Landroid/view/animation/Interpolator;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mDecelerateInterpolater:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/utils/ui/FlingGallery;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getNextViewNumber(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsTouched:Z

    return v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsDragging:Z

    return v0
.end method

.method private getNextPosition(I)I
    .locals 2
    .parameter "relativePosition"

    .prologue
    .line 142
    add-int/lit8 v0, p1, 0x1

    .line 144
    .local v0, nextPosition:I
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getLastPosition()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getLastPosition()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 147
    iget-boolean v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsGalleryCircular:Z

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getFirstPosition()I

    move-result v0

    .line 152
    :cond_0
    return v0
.end method

.method private getNextViewNumber(I)I
    .locals 1
    .parameter "relativeViewNumber"

    .prologue
    .line 160
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private getPrevPosition(I)I
    .locals 2
    .parameter "relativePosition"

    .prologue
    .line 128
    add-int/lit8 v0, p1, -0x1

    .line 130
    .local v0, prevPosition:I
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getFirstPosition()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getFirstPosition()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 133
    iget-boolean v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsGalleryCircular:Z

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getLastPosition()I

    move-result v0

    .line 138
    :cond_0
    return v0
.end method

.method private getPrevViewNumber(I)I
    .locals 1
    .parameter "relativeViewNumber"

    .prologue
    .line 156
    if-nez p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    goto :goto_0
.end method

.method private getViewOffset(II)I
    .locals 3
    .parameter "viewNumber"
    .parameter "relativeViewNumber"

    .prologue
    .line 196
    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mGalleryWidth:I

    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViewPaddingWidth:I

    add-int v0, v1, v2

    .line 199
    .local v0, offsetWidth:I
    invoke-direct {p0, p2}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getPrevViewNumber(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 208
    .end local v0           #offsetWidth:I
    :goto_0
    return v0

    .line 204
    .restart local v0       #offsetWidth:I
    :cond_0
    invoke-direct {p0, p2}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getNextViewNumber(I)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 205
    mul-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 208
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 72
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mContext:Landroid/content/Context;

    .line 73
    iput-object v5, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mAdapter:Landroid/widget/Adapter;

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    .line 76
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    new-instance v1, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    invoke-direct {v1, p0, v3, p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;-><init>(Lcom/jingdong/app/mall/utils/ui/FlingGallery;ILandroid/widget/FrameLayout;)V

    aput-object v1, v0, v3

    .line 77
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    new-instance v1, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    invoke-direct {v1, p0, v2, p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;-><init>(Lcom/jingdong/app/mall/utils/ui/FlingGallery;ILandroid/widget/FrameLayout;)V

    aput-object v1, v0, v2

    .line 78
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    new-instance v1, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    invoke-direct {v1, p0, v4, p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;-><init>(Lcom/jingdong/app/mall/utils/ui/FlingGallery;ILandroid/widget/FrameLayout;)V

    aput-object v1, v0, v4

    .line 80
    new-instance v0, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;-><init>(Lcom/jingdong/app/mall/utils/ui/FlingGallery;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mAnimation:Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;

    .line 81
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGestureDetector;

    invoke-direct {v1, p0, v5}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGestureDetector;-><init>(Lcom/jingdong/app/mall/utils/ui/FlingGallery;Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGestureDetector;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 82
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mContext:Landroid/content/Context;

    const v1, 0x10a0006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mDecelerateInterpolater:Landroid/view/animation/Interpolator;

    .line 84
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->setStaticTransformationsEnabled(Z)V

    .line 85
    return-void
.end method


# virtual methods
.method public getFirstPosition()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getGalleryCount()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getLastPosition()I
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getGalleryCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getGalleryCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method moveNext()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mFlingDirection:I

    .line 220
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->processGesture()V

    .line 221
    return-void
.end method

.method movePrevious()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mFlingDirection:I

    .line 214
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->processGesture()V

    .line 215
    return-void
.end method

.method public onGalleryTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 242
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 244
    .local v0, consumed:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 245
    iget-boolean v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsTouched:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsDragging:Z

    if-eqz v1, :cond_1

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->processScrollSnap()V

    .line 247
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->processGesture()V

    .line 251
    :cond_1
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 225
    packed-switch p1, :pswitch_data_0

    .line 238
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 227
    :pswitch_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->movePrevious()V

    goto :goto_0

    .line 231
    :pswitch_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->moveNext()V

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 168
    sub-int v0, p4, p2

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mGalleryWidth:I

    .line 170
    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v2

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v0, v2, v2, v1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 173
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v0, v2, v2, v1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 174
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v0, v2, v2, v1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 176
    :cond_0
    return-void
.end method

.method processGesture()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 255
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    .line 256
    .local v0, newViewNumber:I
    const/4 v2, 0x0

    .line 257
    .local v2, reloadViewNumber:I
    const/4 v1, 0x0

    .line 259
    .local v1, reloadPosition:I
    iput-boolean v5, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsTouched:Z

    .line 260
    iput-boolean v5, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsDragging:Z

    .line 262
    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mFlingDirection:I

    if-lez v3, :cond_1

    .line 263
    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getFirstPosition()I

    move-result v4

    if-gt v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsGalleryCircular:Z

    if-eqz v3, :cond_1

    .line 265
    :cond_0
    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getPrevViewNumber(I)I

    move-result v0

    .line 266
    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getPrevPosition(I)I

    move-result v3

    iput v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentPosition:I

    .line 267
    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getNextViewNumber(I)I

    move-result v2

    .line 268
    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getPrevPosition(I)I

    move-result v1

    .line 272
    :cond_1
    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mFlingDirection:I

    if-gez v3, :cond_3

    .line 273
    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getLastPosition()I

    move-result v4

    if-lt v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsGalleryCircular:Z

    if-eqz v3, :cond_3

    .line 275
    :cond_2
    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getNextViewNumber(I)I

    move-result v0

    .line 276
    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getNextPosition(I)I

    move-result v3

    iput v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentPosition:I

    .line 277
    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getPrevViewNumber(I)I

    move-result v2

    .line 278
    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getNextPosition(I)I

    move-result v1

    .line 282
    :cond_3
    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    if-eq v0, v3, :cond_4

    .line 283
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    .line 286
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->recycleView(I)V

    .line 290
    :cond_4
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->requestFocus()V

    .line 293
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mAnimation:Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;->prepareAnimation(I)V

    .line 294
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mAnimation:Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryAnimation;

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->startAnimation(Landroid/view/animation/Animation;)V

    .line 297
    iput v5, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mFlingDirection:I

    .line 298
    return-void
.end method

.method processScrollSnap()V
    .locals 5

    .prologue
    .line 302
    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mGalleryWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mSnapBorderRatio:F

    mul-float v1, v3, v4

    .line 303
    .local v1, rollEdgeWidth:F
    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mGalleryWidth:I

    float-to-int v4, v1

    sub-int v2, v3, v4

    .line 304
    .local v2, rollOffset:I
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->getCurrentOffset()I

    move-result v0

    .line 306
    .local v0, currentOffset:I
    mul-int/lit8 v3, v2, -0x1

    if-gt v0, v3, :cond_0

    .line 308
    const/4 v3, 0x1

    iput v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mFlingDirection:I

    .line 311
    :cond_0
    if-lt v0, v2, :cond_1

    .line 313
    const/4 v3, -0x1

    iput v3, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mFlingDirection:I

    .line 315
    :cond_1
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mAdapter:Landroid/widget/Adapter;

    .line 180
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentPosition:I

    .line 181
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    .line 184
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v2

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->recycleView(I)V

    .line 185
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v3

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getNextPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->recycleView(I)V

    .line 186
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v4

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getPrevPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->recycleView(I)V

    .line 189
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v2

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v0, v2, v2, v1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 190
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v3

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v0, v2, v2, v1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 191
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    aget-object v0, v0, v4

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    invoke-virtual {v0, v2, v2, v1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->setOffset(III)V

    .line 192
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDuration"

    .prologue
    .line 92
    iput p1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mAnimationDuration:I

    .line 93
    return-void
.end method

.method public setIsGalleryCircular(Z)V
    .locals 2
    .parameter "isGalleryCircular"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsGalleryCircular:Z

    if-eq v0, p1, :cond_1

    .line 101
    iput-boolean p1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mIsGalleryCircular:Z

    .line 103
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getFirstPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getPrevViewNumber(I)I

    move-result v1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getPrevPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->recycleView(I)V

    .line 108
    :cond_0
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getLastPosition()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViews:[Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentViewNumber:I

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getNextViewNumber(I)I

    move-result v1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mCurrentPosition:I

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->getNextPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/FlingGallery$FlingGalleryView;->recycleView(I)V

    .line 113
    :cond_1
    return-void
.end method

.method public setPaddingWidth(I)V
    .locals 0
    .parameter "viewPaddingWidth"

    .prologue
    .line 88
    iput p1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mViewPaddingWidth:I

    .line 89
    return-void
.end method

.method public setSnapBorderRatio(F)V
    .locals 0
    .parameter "snapBorderRatio"

    .prologue
    .line 96
    iput p1, p0, Lcom/jingdong/app/mall/utils/ui/FlingGallery;->mSnapBorderRatio:F

    .line 97
    return-void
.end method
