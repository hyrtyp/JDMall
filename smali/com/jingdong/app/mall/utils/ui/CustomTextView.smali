.class public Lcom/jingdong/app/mall/utils/ui/CustomTextView;
.super Landroid/widget/TextView;
.source "CustomTextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyTextView"


# instance fields
.field private content:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/utils/ui/CustomTextView;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/jingdong/app/mall/utils/ui/CustomTextView;->width:I

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/utils/ui/CustomTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/jingdong/app/mall/utils/ui/CustomTextView;->content:Ljava/lang/String;

    .line 46
    const/high16 v14, 0x4120

    invoke-static {v14}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v6

    .line 47
    .local v6, margin:I
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/utils/ui/CustomTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 48
    .local v1, contentP:Landroid/graphics/Paint;
    const/16 v14, 0xff

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    const/high16 v14, 0x4160

    invoke-static {v14}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 52
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 53
    .local v2, fm:Landroid/graphics/Paint$FontMetrics;
    iget v14, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v15, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v3, v14, v15

    .line 54
    .local v3, fontHeight:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/jingdong/app/mall/utils/ui/CustomTextView;->width:I

    div-int/lit8 v14, v14, 0x2

    const/high16 v15, 0x3f80

    invoke-static {v15}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v12, v14

    .line 55
    .local v12, x:F
    const/high16 v14, 0x3f80

    invoke-static {v14}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v14

    int-to-float v14, v14

    sub-float v13, v3, v14

    .line 57
    .local v13, y:F
    const/4 v10, 0x0

    .line 58
    .local v10, textWidth:F
    const/4 v8, 0x0

    .line 59
    .local v8, num:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/app/mall/utils/ui/CustomTextView;->content:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    new-array v11, v14, [F

    .line 61
    .local v11, widths:[F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/app/mall/utils/ui/CustomTextView;->content:Ljava/lang/String;

    invoke-virtual {v1, v14, v11}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 65
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/app/mall/utils/ui/CustomTextView;->content:Ljava/lang/String;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 66
    .local v7, measureText:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/jingdong/app/mall/utils/ui/CustomTextView;->width:I

    sub-int/2addr v14, v6

    int-to-float v14, v14

    cmpg-float v14, v7, v14

    if-gtz v14, :cond_1

    .line 67
    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 68
    move-object/from16 v0, p0

    iget v14, v0, Lcom/jingdong/app/mall/utils/ui/CustomTextView;->width:I

    div-int/lit8 v14, v14, 0x2

    const/high16 v15, 0x3f80

    invoke-static {v15}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v12, v14

    .line 69
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/app/mall/utils/ui/CustomTextView;->content:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12, v13, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 96
    :cond_0
    return-void

    .line 71
    :cond_1
    sget-object v14, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 72
    const/4 v12, 0x0

    .line 74
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/4 v14, 0x2

    if-ge v4, v14, :cond_0

    .line 76
    array-length v14, v11

    if-ge v8, v14, :cond_0

    .line 79
    move v9, v8

    .line 80
    .local v9, start:I
    const/4 v10, 0x0

    .line 81
    move v5, v8

    .local v5, k:I
    :goto_1
    array-length v14, v11

    if-lt v5, v14, :cond_3

    .line 89
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 93
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/app/mall/utils/ui/CustomTextView;->content:Ljava/lang/String;

    invoke-virtual {v14, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    int-to-float v15, v4

    mul-float/2addr v15, v3

    add-float/2addr v15, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 74
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 82
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/jingdong/app/mall/utils/ui/CustomTextView;->width:I

    sub-int/2addr v14, v6

    int-to-float v14, v14

    cmpg-float v14, v10, v14

    if-gez v14, :cond_2

    .line 83
    aget v14, v11, v5

    add-float/2addr v10, v14

    .line 84
    move v8, v5

    .line 81
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method
