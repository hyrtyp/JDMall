.class public Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "ProductInfoRelativeLayout.java"


# static fields
.field private static RATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ProductInfoRelativeLayout"


# instance fields
.field private activity:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

.field private canDispatchKeyUp:Z

.field private currentPostionX:F

.field private currentPostionY:F

.field private firstPointX:F

.field private firstPointY:F

.field private isOpen:Z

.field private isPointInRadio:Z

.field private lastOffset:F

.field private realOffset:F

.field private tHeight:Ljava/lang/Integer;

.field private titleLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x5

    sput v0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->RATE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->currentPostionY:F

    .line 25
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->currentPostionX:F

    .line 27
    iput-boolean v1, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->isOpen:Z

    .line 28
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->lastOffset:F

    .line 30
    iput-boolean v1, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->canDispatchKeyUp:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->isPointInRadio:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->currentPostionY:F

    .line 25
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->currentPostionX:F

    .line 27
    iput-boolean v1, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->isOpen:Z

    .line 28
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->lastOffset:F

    .line 30
    iput-boolean v1, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->canDispatchKeyUp:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->isPointInRadio:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->currentPostionY:F

    .line 25
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->currentPostionX:F

    .line 27
    iput-boolean v1, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->isOpen:Z

    .line 28
    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->lastOffset:F

    .line 30
    iput-boolean v1, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->canDispatchKeyUp:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->isPointInRadio:Z

    .line 43
    return-void
.end method

.method private checkPointInRadio()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 56
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 57
    .local v2, location:[I
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->activity:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    invoke-virtual {v5}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->getScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/HorizontalScrollView;->getLocationOnScreen([I)V

    .line 59
    aget v1, v2, v7

    .line 60
    .local v1, left:I
    aget v4, v2, v8

    .line 61
    .local v4, top:I
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->activity:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    invoke-virtual {v5}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->getScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    add-int v3, v1, v5

    .line 62
    .local v3, right:I
    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->activity:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    invoke-virtual {v5}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->getScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v5

    add-int v0, v4, v5

    .line 71
    .local v0, bottom:I
    iget v5, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->firstPointX:F

    int-to-float v6, v1

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->firstPointX:F

    int-to-float v6, v3

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    iget v5, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->firstPointY:F

    int-to-float v6, v4

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->firstPointY:F

    int-to-float v6, v0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 72
    iput-boolean v8, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->isPointInRadio:Z

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    iput-boolean v7, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->isPointInRadio:Z

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v8, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 83
    iget-object v9, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->tHeight:Ljava/lang/Integer;

    if-nez v9, :cond_0

    .line 84
    iget-object v9, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->tHeight:Ljava/lang/Integer;

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 88
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 164
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_1
    return v8

    .line 90
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->currentPostionY:F

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iput v9, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->currentPostionX:F

    .line 92
    iget v9, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->currentPostionY:F

    iget v10, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->firstPointY:F

    sub-float v4, v9, v10

    .line 93
    .local v4, offsetY:F
    iget v9, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->currentPostionX:F

    iget v10, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->firstPointX:F

    sub-float v3, v9, v10

    .line 94
    .local v3, offsetX:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    .line 95
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_1

    .line 97
    :cond_2
    const/4 v7, 0x0

    .line 98
    .local v7, webView:Landroid/webkit/WebView;
    iget-object v9, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->activity:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    invoke-virtual {v9}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->getNowBranchView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 99
    .local v6, vg:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lt v1, v9, :cond_5

    .line 106
    :goto_3
    iget v9, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->lastOffset:F

    sub-float v9, v4, v9

    iput v9, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->realOffset:F

    .line 107
    iput v4, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->lastOffset:F

    .line 108
    iget-object v9, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 112
    .local v2, lParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v9, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->isPointInRadio:Z

    if-nez v9, :cond_7

    .line 113
    iget v9, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v10, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->tHeight:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    neg-int v10, v10

    if-ne v9, v10, :cond_3

    cmpg-float v9, v4, v12

    if-ltz v9, :cond_4

    :cond_3
    cmpl-float v9, v4, v12

    if-lez v9, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/webkit/WebView;->getScrollY()I

    move-result v9

    if-lez v9, :cond_9

    .line 114
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_1

    .line 100
    .end local v2           #lParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 101
    .local v5, temp:Landroid/view/View;
    instance-of v9, v5, Landroid/webkit/WebView;

    if-eqz v9, :cond_6

    move-object v7, v5

    .line 102
    check-cast v7, Landroid/webkit/WebView;

    .line 103
    goto :goto_3

    .line 99
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 120
    .end local v5           #temp:Landroid/view/View;
    .restart local v2       #lParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x4248

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_8

    .line 121
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 123
    :cond_8
    iput-boolean v11, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->canDispatchKeyUp:Z

    .line 129
    :cond_9
    iget v9, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v10, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->realOffset:F

    float-to-int v10, v10

    add-int v5, v9, v10

    .line 130
    .local v5, temp:I
    if-ltz v5, :cond_b

    .line 131
    const/4 v5, 0x0

    .line 135
    :cond_a
    :goto_4
    invoke-virtual {v2, v11, v5, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 136
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->requestLayout()V

    goto/16 :goto_1

    .line 132
    :cond_b
    iget-object v9, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->tHeight:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    neg-int v9, v9

    if-gt v5, v9, :cond_a

    .line 133
    iget-object v9, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->tHeight:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    neg-int v5, v9

    goto :goto_4

    .line 147
    .end local v1           #i:I
    .end local v2           #lParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #offsetX:F
    .end local v4           #offsetY:F
    .end local v5           #temp:I
    .end local v6           #vg:Landroid/view/ViewGroup;
    .end local v7           #webView:Landroid/webkit/WebView;
    :pswitch_1
    iput v12, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->lastOffset:F

    .line 151
    iget-boolean v8, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->canDispatchKeyUp:Z

    if-nez v8, :cond_1

    .line 152
    const/4 v8, 0x3

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 153
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 157
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->firstPointY:F

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iput v9, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->firstPointX:F

    .line 159
    iput-boolean v8, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->canDispatchKeyUp:Z

    .line 160
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->checkPointInRadio()V

    goto/16 :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->activity:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/ProductInfoRelativeLayout;->titleLayout:Landroid/widget/LinearLayout;

    .line 48
    return-void
.end method
