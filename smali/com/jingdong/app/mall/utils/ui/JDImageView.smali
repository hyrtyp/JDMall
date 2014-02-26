.class public Lcom/jingdong/app/mall/utils/ui/JDImageView;
.super Landroid/widget/ImageView;
.source "JDImageView.java"


# instance fields
.field private ratio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget-object v1, Lcom/jingdong/app/mall/R$styleable;->image:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    .local v0, ta:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/jingdong/app/mall/utils/ui/JDImageView;->ratio:F

    .line 35
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 39
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 40
    .local v1, size:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 41
    .local v0, height:I
    iget v2, p0, Lcom/jingdong/app/mall/utils/ui/JDImageView;->ratio:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 42
    int-to-float v2, v1

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/JDImageView;->ratio:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/utils/ui/JDImageView;->setMeasuredDimension(II)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    int-to-float v2, v0

    iget v3, p0, Lcom/jingdong/app/mall/utils/ui/JDImageView;->ratio:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/jingdong/app/mall/utils/ui/JDImageView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 51
    const/4 v0, 0x0

    return v0
.end method
