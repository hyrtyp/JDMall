.class public Lcom/jingdong/app/mall/utils/ProductImagesView;
.super Landroid/widget/AdapterView;
.source "ProductImagesView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;,
        Lcom/jingdong/app/mall/utils/ProductImagesView$Border;,
        Lcom/jingdong/app/mall/utils/ProductImagesView$BorderListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/view/GestureDetector$OnGestureListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProductImagesView"


# instance fields
.field private alreadyMeasureChild:Z

.field private animationDelegate:Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;

.field private area:I

.field private border:Lcom/jingdong/app/mall/utils/ProductImagesView$Border;

.field private borderListener:Lcom/jingdong/app/mall/utils/ProductImagesView$BorderListener;

.field private childCount:I

.field private childHeightWithPadding:I

.field private childWidthWithPadding:I

.field private dataSetObserver:Landroid/database/DataSetObserver;

.field private flingFlag:I

.field private lastPageArea:I

.field private mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private minPaddingLeft:I

.field private minPaddingRight:I

.field private offset:I

.field private oldCount:I

.field private pageSize:I

.field private targetOffset:I

.field private thread:Ljava/lang/Thread;

.field private unitWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->area:I

    .line 98
    new-instance v0, Lcom/jingdong/app/mall/utils/ProductImagesView$Border;

    invoke-direct {v0}, Lcom/jingdong/app/mall/utils/ProductImagesView$Border;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->border:Lcom/jingdong/app/mall/utils/ProductImagesView$Border;

    .line 153
    new-instance v0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;-><init>(Lcom/jingdong/app/mall/utils/ProductImagesView;Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->animationDelegate:Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;

    .line 273
    new-instance v0, Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;-><init>(Lcom/jingdong/app/mall/utils/ProductImagesView;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->dataSetObserver:Landroid/database/DataSetObserver;

    .line 116
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->initProductImagesView()V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->area:I

    .line 98
    new-instance v0, Lcom/jingdong/app/mall/utils/ProductImagesView$Border;

    invoke-direct {v0}, Lcom/jingdong/app/mall/utils/ProductImagesView$Border;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->border:Lcom/jingdong/app/mall/utils/ProductImagesView$Border;

    .line 153
    new-instance v0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;-><init>(Lcom/jingdong/app/mall/utils/ProductImagesView;Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->animationDelegate:Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;

    .line 273
    new-instance v0, Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;-><init>(Lcom/jingdong/app/mall/utils/ProductImagesView;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->dataSetObserver:Landroid/database/DataSetObserver;

    .line 111
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->initProductImagesView()V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->area:I

    .line 98
    new-instance v0, Lcom/jingdong/app/mall/utils/ProductImagesView$Border;

    invoke-direct {v0}, Lcom/jingdong/app/mall/utils/ProductImagesView$Border;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->border:Lcom/jingdong/app/mall/utils/ProductImagesView$Border;

    .line 153
    new-instance v0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;-><init>(Lcom/jingdong/app/mall/utils/ProductImagesView;Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->animationDelegate:Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;

    .line 273
    new-instance v0, Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;-><init>(Lcom/jingdong/app/mall/utils/ProductImagesView;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->dataSetObserver:Landroid/database/DataSetObserver;

    .line 106
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->initProductImagesView()V

    .line 107
    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/utils/ProductImagesView;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->targetOffset:I

    return v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/utils/ProductImagesView;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->offset:I

    return v0
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/utils/ProductImagesView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->offset:I

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/utils/ProductImagesView;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->area:I

    return v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/utils/ProductImagesView;)I
    .locals 1
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->pageSize:I

    return v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/utils/ProductImagesView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->area:I

    return-void
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/utils/ProductImagesView;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->lastPageArea:I

    return v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/utils/ProductImagesView;)I
    .locals 1
    .parameter

    .prologue
    .line 88
    iget v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->unitWidth:I

    return v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/utils/ProductImagesView;)I
    .locals 1
    .parameter

    .prologue
    .line 63
    iget v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->childCount:I

    return v0
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/utils/ProductImagesView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput p1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->targetOffset:I

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/utils/ProductImagesView;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/utils/ProductImagesView;)Lcom/jingdong/app/mall/utils/ProductImagesView$Border;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->border:Lcom/jingdong/app/mall/utils/ProductImagesView$Border;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/utils/ProductImagesView;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->borderChange()V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/utils/ProductImagesView;)I
    .locals 1
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->oldCount:I

    return v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/utils/ProductImagesView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput p1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->oldCount:I

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/utils/ProductImagesView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->alreadyMeasureChild:Z

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/utils/ProductImagesView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->detachAllViewsFromParent()V

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/utils/ProductImagesView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/ProductImagesView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method private borderChange()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->borderListener:Lcom/jingdong/app/mall/utils/ProductImagesView$BorderListener;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->borderListener:Lcom/jingdong/app/mall/utils/ProductImagesView$BorderListener;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->border:Lcom/jingdong/app/mall/utils/ProductImagesView$Border;

    invoke-interface {v0, v1}, Lcom/jingdong/app/mall/utils/ProductImagesView$BorderListener;->onChange(Lcom/jingdong/app/mall/utils/ProductImagesView$Border;)V

    .line 266
    :cond_0
    return-void
.end method

.method private initProductImagesView()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 124
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 125
    return-void
.end method

.method private measureChild(Landroid/view/View;)V
    .locals 10
    .parameter "child"

    .prologue
    .line 340
    iget-boolean v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->alreadyMeasureChild:Z

    if-eqz v6, :cond_0

    .line 419
    :goto_0
    return-void

    .line 349
    :cond_0
    iget v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->minPaddingLeft:I

    if-nez v6, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getPaddingLeft()I

    move-result v6

    iput v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->minPaddingLeft:I

    .line 354
    :cond_1
    iget v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->minPaddingRight:I

    if-nez v6, :cond_2

    .line 355
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getPaddingRight()I

    move-result v6

    iput v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->minPaddingRight:I

    .line 358
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 360
    .local v1, p:Landroid/view/ViewGroup$LayoutParams;
    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->childWidthWithPadding:I

    .line 361
    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->childHeightWithPadding:I

    .line 363
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->minPaddingLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->minPaddingRight:I

    sub-int v4, v6, v7

    .line 365
    .local v4, visualRangeWidth:I
    const/high16 v6, 0x4120

    invoke-static {v6}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v0

    .line 368
    .local v0, minSpacing:I
    iget v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->childWidthWithPadding:I

    add-int/2addr v6, v0

    div-int v6, v4, v6

    iput v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->pageSize:I

    .line 370
    iget v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->pageSize:I

    iget v7, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->childCount:I

    if-le v6, v7, :cond_3

    .line 371
    iget v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->childCount:I

    iput v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->pageSize:I

    .line 379
    :cond_3
    iget v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->pageSize:I

    iget v7, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->childWidthWithPadding:I

    mul-int/2addr v6, v7

    sub-int v5, v4, v6

    .line 382
    .local v5, visualSpacingTotal:I
    const/4 v2, 0x0

    .line 383
    .local v2, spacing:I
    iget v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->pageSize:I

    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_6

    .line 384
    const/4 v2, 0x0

    .line 385
    iget v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->minPaddingLeft:I

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getPaddingTop()I

    move-result v7

    iget v8, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->minPaddingRight:I

    div-int/lit8 v9, v5, 0x2

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getPaddingBottom()I

    move-result v9

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/utils/ProductImagesView;->setPadding(IIII)V

    .line 392
    :goto_1
    iget v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->minPaddingLeft:I

    iget v7, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->minPaddingRight:I

    add-int v3, v6, v7

    .line 393
    .local v3, spacingLR:I
    if-le v2, v3, :cond_4

    .line 394
    add-int v6, v3, v5

    iget v7, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->pageSize:I

    add-int/lit8 v7, v7, 0x1

    div-int v2, v6, v7

    .line 395
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {p0, v2, v6, v2, v7}, Lcom/jingdong/app/mall/utils/ProductImagesView;->setPadding(IIII)V

    .line 399
    :cond_4
    iget v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->childWidthWithPadding:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->unitWidth:I

    .line 402
    iget v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->childCount:I

    iget v7, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->pageSize:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->lastPageArea:I

    .line 411
    iget v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->area:I

    iget v7, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->lastPageArea:I

    neg-int v7, v7

    if-gt v6, v7, :cond_5

    .line 412
    iget v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->lastPageArea:I

    neg-int v6, v6

    iput v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->area:I

    .line 413
    iget-object v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->animationDelegate:Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->adjust(I)V

    .line 417
    :cond_5
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->alreadyMeasureChild:Z

    goto/16 :goto_0

    .line 387
    .end local v3           #spacingLR:I
    :cond_6
    iget v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->pageSize:I

    add-int/lit8 v6, v6, -0x1

    div-int v2, v5, v6

    .line 388
    iget v6, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->minPaddingLeft:I

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getPaddingTop()I

    move-result v7

    iget v8, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->minPaddingRight:I

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getPaddingBottom()I

    move-result v9

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/utils/ProductImagesView;->setPadding(IIII)V

    goto :goto_1
.end method

.method private performItemLongClick(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 653
    const/4 v6, 0x0

    .line 654
    .local v6, handled:Z
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    .line 656
    .local v0, l:Landroid/widget/AdapterView$OnItemLongClickListener;,"Landroid/widget/AdapterView$OnItemLongClickListener;"
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 657
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 660
    :cond_0
    if-eqz v6, :cond_1

    .line 661
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->performHapticFeedback(I)Z

    .line 664
    :cond_1
    return v6
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return-object v0
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->onUp()V

    .line 625
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 582
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->flingFlag:I

    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    .line 507
    const/high16 v0, 0x4396

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 508
    iput v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->flingFlag:I

    .line 525
    :goto_0
    return v1

    .line 509
    :cond_0
    const/high16 v0, -0x3c6a

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    .line 510
    const/4 v0, 0x2

    iput v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->flingFlag:I

    goto :goto_0

    .line 512
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->flingFlag:I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 428
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getChildCount()I

    move-result v4

    iput v4, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->childCount:I

    .line 429
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->childCount:I

    if-lt v1, v4, :cond_0

    .line 467
    return-void

    .line 431
    :cond_0
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 434
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->measureChild(Landroid/view/View;)V

    .line 436
    const/4 v2, 0x0

    .line 437
    .local v2, left:I
    const/4 v3, 0x0

    .line 440
    .local v3, top:I
    iget v4, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->childCount:I

    iget v5, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->pageSize:I

    if-ne v4, v5, :cond_1

    .line 442
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->border:Lcom/jingdong/app/mall/utils/ProductImagesView$Border;

    iput v6, v4, Lcom/jingdong/app/mall/utils/ProductImagesView$Border;->left:I

    .line 443
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->border:Lcom/jingdong/app/mall/utils/ProductImagesView$Border;

    iput v6, v4, Lcom/jingdong/app/mall/utils/ProductImagesView$Border;->right:I

    .line 444
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->borderChange()V

    .line 460
    :goto_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->offset:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->unitWidth:I

    mul-int/2addr v5, v1

    add-int v2, v4, v5

    .line 462
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getPaddingTop()I

    move-result v3

    .line 464
    iget v4, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->childWidthWithPadding:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->childHeightWithPadding:I

    add-int/2addr v5, v3

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    :cond_1
    iget v4, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->area:I

    if-ltz v4, :cond_2

    .line 448
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->border:Lcom/jingdong/app/mall/utils/ProductImagesView$Border;

    iput v6, v4, Lcom/jingdong/app/mall/utils/ProductImagesView$Border;->left:I

    .line 452
    :goto_2
    iget v4, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->area:I

    iget v5, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->lastPageArea:I

    neg-int v5, v5

    if-gt v4, v5, :cond_3

    .line 453
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->border:Lcom/jingdong/app/mall/utils/ProductImagesView$Border;

    iput v6, v4, Lcom/jingdong/app/mall/utils/ProductImagesView$Border;->right:I

    .line 457
    :goto_3
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->borderChange()V

    goto :goto_1

    .line 450
    :cond_2
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->border:Lcom/jingdong/app/mall/utils/ProductImagesView$Border;

    iput v7, v4, Lcom/jingdong/app/mall/utils/ProductImagesView$Border;->left:I

    goto :goto_2

    .line 455
    :cond_3
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->border:Lcom/jingdong/app/mall/utils/ProductImagesView$Border;

    iput v7, v4, Lcom/jingdong/app/mall/utils/ProductImagesView$Border;->right:I

    goto :goto_3
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 633
    iget v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->offset:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->unitWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f00

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    neg-int v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 637
    .local v1, index:I
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1

    .line 638
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 642
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 643
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jingdong/app/mall/utils/ProductImagesView;->performItemLongClick(Landroid/view/View;IJ)Z

    .line 650
    return-void

    .line 639
    .end local v0           #child:Landroid/view/View;
    :cond_1
    if-gez v1, :cond_0

    .line 640
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getDefaultSize(II)I

    move-result v0

    .line 332
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 331
    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->setMeasuredDimension(II)V

    .line 334
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 530
    iget v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->childCount:I

    iget v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->pageSize:I

    if-ne v1, v2, :cond_0

    .line 576
    :goto_0
    return v3

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 564
    iget v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->offset:I

    neg-float v2, p3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v0, v1, v2

    .line 565
    .local v0, tempOffset:I
    if-lez v0, :cond_1

    .line 566
    iput v4, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->offset:I

    .line 572
    :goto_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->requestLayout()V

    .line 574
    iput v4, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->flingFlag:I

    goto :goto_0

    .line 567
    :cond_1
    iget v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->lastPageArea:I

    iget v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->unitWidth:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 568
    iget v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->lastPageArea:I

    iget v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->unitWidth:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->offset:I

    goto :goto_1

    .line 570
    :cond_2
    iput v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->offset:I

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 671
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 475
    iget v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->offset:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->unitWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f00

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    neg-int v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 479
    .local v1, index:I
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_2

    .line 480
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 485
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 487
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 488
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jingdong/app/mall/utils/ProductImagesView;->performItemClick(Landroid/view/View;IJ)Z

    .line 502
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 481
    .end local v0           #child:Landroid/view/View;
    :cond_2
    if-gez v1, :cond_0

    .line 482
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 130
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getCount()I

    move-result v3

    if-ge v3, v2, :cond_2

    :cond_0
    move v1, v2

    .line 148
    :cond_1
    :goto_0
    return v1

    .line 134
    :cond_2
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->thread:Ljava/lang/Thread;

    if-nez v3, :cond_3

    .line 135
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->animationDelegate:Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->thread:Ljava/lang/Thread;

    .line 136
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 139
    :cond_3
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 141
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 142
    .local v0, action:I
    if-ne v0, v2, :cond_4

    .line 143
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->onUp()V

    goto :goto_0

    .line 144
    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->animationDelegate:Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;

    iget v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->flingFlag:I

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->adjust(I)V

    .line 618
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 314
    check-cast p1, Lcom/jingdong/common/utils/MySimpleAdapter;

    .end local p1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 315
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->dataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 316
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 317
    return-void
.end method

.method public setOnBorderListener(Lcom/jingdong/app/mall/utils/ProductImagesView$BorderListener;)V
    .locals 0
    .parameter "borderListener"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView;->borderListener:Lcom/jingdong/app/mall/utils/ProductImagesView$BorderListener;

    .line 102
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 326
    return-void
.end method
