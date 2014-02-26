.class public Lcom/jingdong/app/mall/product/TabIndicator;
.super Landroid/view/View;
.source "TabIndicator.java"

# interfaces
.implements Lcom/jingdong/app/mall/product/PageIndicator;


# static fields
.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mCurrX:F

.field private mHeight:I

.field mNewTab:Landroid/view/View;

.field private mOffsetX:F

.field mOldTab:Landroid/view/View;

.field private final mPaint:Landroid/graphics/Paint;

.field private mScroller:Landroid/widget/Scroller;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/jingdong/app/mall/product/TabIndicator$1;

    invoke-direct {v0}, Lcom/jingdong/app/mall/product/TabIndicator$1;-><init>()V

    sput-object v0, Lcom/jingdong/app/mall/product/TabIndicator;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jingdong/app/mall/product/TabIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mPaint:Landroid/graphics/Paint;

    .line 18
    iput v5, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mHeight:I

    .line 19
    const/16 v2, 0x5a

    iput v2, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mWidth:I

    .line 27
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/TabIndicator;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    :goto_0
    return-void

    .line 30
    :cond_0
    const v1, -0xcc4a1b

    .line 31
    .local v1, defaultSelectedColor:I
    sget-object v2, Lcom/jingdong/app/mall/R$styleable;->tabIndicator:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mWidth:I

    .line 33
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mHeight:I

    .line 34
    iget-object v2, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x2

    const v4, -0xcc4a1b

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/jingdong/app/mall/product/TabIndicator;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, p1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mScroller:Landroid/widget/Scroller;

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    iget-object v0, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mNewTab:Landroid/view/View;

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/TabIndicator;->getPaddingLeft()I

    move-result v6

    .line 63
    .local v6, paddingLeft:I
    iget v0, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mWidth:I

    int-to-float v7, v0

    .line 64
    .local v7, pageWidth:F
    int-to-float v0, v6

    iget v5, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mCurrX:F

    add-float/2addr v0, v5

    iget v5, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mOffsetX:F

    add-float v1, v0, v5

    .line 65
    .local v1, left:F
    add-float v3, v1, v7

    .line 66
    .local v3, right:F
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/TabIndicator;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    .line 67
    .local v2, top:F
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/TabIndicator;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/TabIndicator;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v4, v0

    .line 68
    .local v4, bottom:F
    iget-object v5, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 70
    iget-object v0, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mCurrX:F

    .line 72
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/TabIndicator;->invalidate()V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_0
.end method

.method public onTabSelected(Landroid/view/View;Landroid/view/View;)V
    .locals 10
    .parameter "oldTab"
    .parameter "newTab"

    .prologue
    const/4 v2, 0x0

    .line 81
    if-eqz p2, :cond_1

    .line 82
    iget v0, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mWidth:I

    if-gtz v0, :cond_0

    .line 83
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v6, v0

    const-wide v8, 0x3fe6666666666666L

    mul-double/2addr v6, v8

    double-to-int v0, v6

    iput v0, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mWidth:I

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mOldTab:Landroid/view/View;

    .line 86
    iput-object p2, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mNewTab:Landroid/view/View;

    .line 87
    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_2

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 89
    .local v1, startX:I
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v3, v0, v1

    .line 90
    .local v3, dx:I
    const/16 v5, 0x190

    .line 91
    .local v5, duration:I
    iget-object v0, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mScroller:Landroid/widget/Scroller;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 96
    .end local v1           #startX:I
    .end local v3           #dx:I
    .end local v5           #duration:I
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mOffsetX:F

    .line 98
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/TabIndicator;->invalidate()V

    .line 100
    :cond_1
    return-void

    .line 93
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jingdong/app/mall/product/TabIndicator;->mCurrX:F

    goto :goto_0
.end method
