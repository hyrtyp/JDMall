.class public Lcom/jingdong/app/mall/utils/ui/PriceTextView;
.super Landroid/widget/TextView;
.source "PriceTextView.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private defaultTextSize:F

.field private dm:Landroid/util/DisplayMetrics;

.field private isShowNumTypeText:Z

.field private textP:Landroid/graphics/Paint;

.field private textSizeResult:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object v1, p0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->textP:Landroid/graphics/Paint;

    .line 22
    iput-object v1, p0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->dm:Landroid/util/DisplayMetrics;

    .line 23
    iput-boolean v4, p0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->isShowNumTypeText:Z

    .line 29
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->textP:Landroid/graphics/Paint;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->dm:Landroid/util/DisplayMetrics;

    .line 31
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->defaultTextSize:F

    .line 32
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 34
    sget-object v1, Lcom/jingdong/app/mall/R$styleable;->pricetext:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, typeArray:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->isShowNumTypeText:Z

    .line 39
    return-void
.end method

.method private caleTextSize(FLjava/lang/String;F)F
    .locals 2
    .parameter "viewWidth"
    .parameter "text"
    .parameter "textSize"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->textP:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 74
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->textP:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 76
    .local v0, textWidth:F
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    .line 77
    const/high16 v1, 0x3f80

    sub-float v1, p3, v1

    invoke-direct {p0, p1, p2, v1}, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->caleTextSize(FLjava/lang/String;F)F

    move-result p3

    .line 79
    .end local p3
    :cond_0
    return p3
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x2

    .line 43
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 44
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->defaultTextSize:F

    invoke-static {v5, v6}, Lcom/jingdong/common/utils/DPIUtil;->px2sp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->dm:Landroid/util/DisplayMetrics;

    .line 43
    invoke-static {v7, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->defaultTextSize:F

    invoke-direct {p0, v4, v1, v5}, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->caleTextSize(FLjava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->textSizeResult:F

    .line 49
    iget v4, p0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->textSizeResult:F

    iget v5, p0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->defaultTextSize:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 51
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->textSizeResult:F

    invoke-static {v5, v6}, Lcom/jingdong/common/utils/DPIUtil;->px2sp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->dm:Landroid/util/DisplayMetrics;

    .line 50
    invoke-static {v7, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 54
    :cond_0
    iget-boolean v4, p0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->isShowNumTypeText:Z

    if-eqz v4, :cond_1

    .line 55
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 58
    .local v2, textMeasure:F
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v4, v2

    .line 60
    .local v0, Leftgap:F
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->textSizeResult:F

    const/high16 v6, 0x4040

    div-float/2addr v5, v6

    add-float v3, v4, v5

    .line 67
    .local v3, yCenter:F
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
