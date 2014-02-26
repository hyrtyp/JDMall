.class public Lcom/jingdong/app/mall/utils/ui/DateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DateDrawable.java"


# instance fields
.field private final PREFIX:Ljava/lang/String;

.field private background_color:I

.field private background_height:I

.field private background_width:I

.field private hh:Ljava/lang/CharSequence;

.field private mm:Ljava/lang/CharSequence;

.field private paint:Landroid/text/TextPaint;

.field private prefix_color:I

.field private ss:Ljava/lang/CharSequence;

.field private text_color:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, -0x100

    .line 30
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 19
    const-string v0, "00"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->hh:Ljava/lang/CharSequence;

    const-string v0, "00"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->mm:Ljava/lang/CharSequence;

    const-string v0, "00"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->ss:Ljava/lang/CharSequence;

    .line 20
    const-string v0, ":"

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->PREFIX:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->text_color:I

    .line 24
    iput v1, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->prefix_color:I

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_color:I

    .line 27
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_width:I

    .line 28
    iput v2, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_height:I

    .line 31
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    .line 32
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 33
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 34
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 35
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    return-void
.end method

.method private measureX(Landroid/graphics/Paint;Ljava/lang/CharSequence;)F
    .locals 3
    .parameter "paint"
    .parameter "text"

    .prologue
    .line 118
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 120
    .local v0, textWidth:F
    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_width:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    .line 122
    .end local v0           #textWidth:F
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private measureY(Landroid/graphics/Paint;)F
    .locals 1
    .parameter "paint"

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 42
    .parameter "canvas"

    .prologue
    .line 41
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v37

    .line 42
    .local v37, rect:Landroid/graphics/Rect;
    new-instance v36, Landroid/graphics/Rect;

    invoke-direct/range {v36 .. v36}, Landroid/graphics/Rect;-><init>()V

    .line 43
    .local v36, padding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 44
    const/high16 v2, 0x4000

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v38

    .line 46
    .local v38, space:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_width:I

    mul-int/lit8 v2, v2, 0x3

    mul-int/lit8 v3, v38, 0x8

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v35, v0

    .line 47
    .local v35, end:F
    move-object/from16 v0, v37

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v39, v2, v35

    .line 48
    .local v39, start:F
    const/high16 v2, 0x4000

    div-float v41, v39, v2

    .line 54
    .local v41, x:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_height:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    move-object/from16 v0, v37

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, v36

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f80

    add-float v40, v2, v3

    .line 56
    .local v40, textY:F
    move/from16 v29, v41

    .line 57
    .local v29, bgLeft_1:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_width:I

    int-to-float v2, v2

    add-float v2, v2, v41

    mul-int/lit8 v3, v38, 0x4

    int-to-float v3, v3

    add-float v30, v2, v3

    .line 58
    .local v30, bgLeft_2:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_width:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v2, v2, v41

    mul-int/lit8 v3, v38, 0x8

    int-to-float v3, v3

    add-float v31, v2, v3

    .line 60
    .local v31, bgLeft_3:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_width:I

    int-to-float v2, v2

    add-float v32, v41, v2

    .line 61
    .local v32, bgRight_1:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_width:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v2, v2, v41

    mul-int/lit8 v3, v38, 0x4

    int-to-float v3, v3

    add-float v33, v2, v3

    .line 62
    .local v33, bgRight_2:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_width:I

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    add-float v2, v2, v41

    mul-int/lit8 v3, v38, 0x8

    int-to-float v3, v3

    add-float v34, v2, v3

    .line 64
    .local v34, bgRight_3:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->hh:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->measureX(Landroid/graphics/Paint;Ljava/lang/CharSequence;)F

    move-result v2

    add-float v6, v41, v2

    .line 65
    .local v6, textX_1:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_width:I

    int-to-float v2, v2

    add-float v2, v2, v41

    mul-int/lit8 v3, v38, 0x4

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->mm:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->measureX(Landroid/graphics/Paint;Ljava/lang/CharSequence;)F

    move-result v3

    add-float v16, v2, v3

    .line 66
    .local v16, textX_2:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_width:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v2, v2, v41

    mul-int/lit8 v3, v38, 0x8

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->ss:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->measureX(Landroid/graphics/Paint;Ljava/lang/CharSequence;)F

    move-result v3

    add-float v26, v2, v3

    .line 67
    .local v26, textX_3:F
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v2

    const/16 v3, 0xf0

    if-gt v2, v3, :cond_0

    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v2

    const/16 v3, 0x140

    if-gt v2, v3, :cond_0

    .line 68
    const/high16 v2, 0x3f80

    sub-float/2addr v6, v2

    .line 69
    const/high16 v2, 0x3f80

    sub-float v16, v16, v2

    .line 70
    const/high16 v2, 0x3f80

    sub-float v26, v26, v2

    .line 73
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_width:I

    int-to-float v2, v2

    add-float v2, v2, v41

    move/from16 v0, v38

    int-to-float v3, v0

    add-float v11, v2, v3

    .line 74
    .local v11, tagX_1:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_width:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v2, v2, v41

    mul-int/lit8 v3, v38, 0x5

    int-to-float v3, v3

    add-float v21, v2, v3

    .line 77
    .local v21, tagX_2:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_color:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    new-instance v2, Landroid/graphics/RectF;

    move/from16 v0, v38

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_height:I

    add-int v4, v4, v38

    int-to-float v4, v4

    move/from16 v0, v29

    move/from16 v1, v32

    invoke-direct {v2, v0, v3, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x4040

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4040

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->text_color:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 83
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->hh:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->hh:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->measureY(Landroid/graphics/Paint;)F

    move-result v2

    add-float v7, v40, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->prefix_color:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 87
    const-string v8, ":"

    const/4 v9, 0x0

    const-string v2, ":"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->measureY(Landroid/graphics/Paint;)F

    move-result v2

    add-float v12, v40, v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_color:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    new-instance v2, Landroid/graphics/RectF;

    move/from16 v0, v38

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_height:I

    add-int v4, v4, v38

    int-to-float v4, v4

    move/from16 v0, v30

    move/from16 v1, v33

    invoke-direct {v2, v0, v3, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x4040

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4040

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->text_color:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 96
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->mm:Ljava/lang/CharSequence;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->mm:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->measureY(Landroid/graphics/Paint;)F

    move-result v2

    add-float v17, v40, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->prefix_color:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 100
    const-string v18, ":"

    const/16 v19, 0x0

    const-string v2, ":"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->measureY(Landroid/graphics/Paint;)F

    move-result v2

    add-float v22, v40, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v23, v0

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_color:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    new-instance v2, Landroid/graphics/RectF;

    move/from16 v0, v38

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_height:I

    add-int v4, v4, v38

    int-to-float v4, v4

    move/from16 v0, v31

    move/from16 v1, v34

    invoke-direct {v2, v0, v3, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x4040

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4040

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->text_color:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->ss:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->ss:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->measureY(Landroid/graphics/Paint;)F

    move-result v2

    add-float v27, v40, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    move-object/from16 v28, v0

    move-object/from16 v22, p1

    invoke-virtual/range {v22 .. v28}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v6           #textX_1:F
    .end local v11           #tagX_1:F
    .end local v16           #textX_2:F
    .end local v21           #tagX_2:F
    .end local v26           #textX_3:F
    .end local v29           #bgLeft_1:F
    .end local v30           #bgLeft_2:F
    .end local v31           #bgLeft_3:F
    .end local v32           #bgRight_1:F
    .end local v33           #bgRight_2:F
    .end local v34           #bgRight_3:F
    .end local v35           #end:F
    .end local v36           #padding:Landroid/graphics/Rect;
    .end local v37           #rect:Landroid/graphics/Rect;
    .end local v38           #space:I
    .end local v39           #start:F
    .end local v40           #textY:F
    .end local v41           #x:F
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->text_color:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 134
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 171
    iput p1, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_color:I

    .line 172
    return-void
.end method

.method public setBackgroundHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 179
    iput p1, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_height:I

    .line 180
    return-void
.end method

.method public setBackgroundWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 175
    iput p1, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->background_width:I

    .line 176
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 139
    return-void
.end method

.method public setHour(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->hh:Ljava/lang/CharSequence;

    .line 148
    return-void
.end method

.method public setMinute(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->mm:Ljava/lang/CharSequence;

    .line 152
    return-void
.end method

.method public setPointColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 167
    iput p1, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->prefix_color:I

    .line 168
    return-void
.end method

.method public setSecond(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->ss:Ljava/lang/CharSequence;

    .line 156
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 163
    iput p1, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->text_color:I

    .line 164
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "textSize"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/DateDrawable;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 186
    :cond_0
    return-void
.end method
