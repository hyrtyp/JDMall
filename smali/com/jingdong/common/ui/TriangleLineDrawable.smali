.class public Lcom/jingdong/common/ui/TriangleLineDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TriangleLineDrawable.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/jingdong/common/ui/TriangleLineDrawable;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 27
    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/common/ui/TriangleLineDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 30
    .local v3, bounds:Landroid/graphics/Rect;
    iget v12, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v1, v12, v13

    .line 31
    .local v1, baseX:I
    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    const/high16 v13, 0x3f80

    invoke-static {v13}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v13

    sub-int v2, v12, v13

    .line 32
    .local v2, baseY:I
    iget v12, v3, Landroid/graphics/Rect;->top:I

    const/high16 v13, 0x3f80

    invoke-static {v13}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v13

    add-int v11, v12, v13

    .line 34
    .local v11, topY:I
    new-instance v8, Landroid/graphics/Point;

    const/high16 v12, 0x40a0

    invoke-static {v12}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v12

    sub-int v12, v1, v12

    invoke-direct {v8, v12, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 35
    .local v8, point1:Landroid/graphics/Point;
    new-instance v9, Landroid/graphics/Point;

    const/high16 v12, 0x40a0

    invoke-static {v12}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v12

    sub-int v12, v2, v12

    invoke-direct {v9, v1, v12}, Landroid/graphics/Point;-><init>(II)V

    .line 36
    .local v9, point2:Landroid/graphics/Point;
    new-instance v10, Landroid/graphics/Point;

    const/high16 v12, 0x40a0

    invoke-static {v12}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v12

    add-int/2addr v12, v1

    invoke-direct {v10, v12, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 39
    .local v10, point3:Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 40
    .local v5, paintStroke:Landroid/graphics/Paint;
    const v12, -0x777778

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    const/high16 v12, 0x3f80

    invoke-static {v12}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 45
    .local v4, paintFill:Landroid/graphics/Paint;
    const v12, -0xa0a0b

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 50
    .local v6, pathBottom:Landroid/graphics/Path;
    iget v12, v3, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    int-to-float v13, v2

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 51
    iget v12, v8, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    iget v13, v8, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    iget v12, v9, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    iget v13, v9, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    iget v12, v10, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    iget v13, v10, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 54
    iget v12, v3, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    int-to-float v13, v2

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 57
    .local v7, pathTop:Landroid/graphics/Path;
    iget v12, v3, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    int-to-float v13, v11

    invoke-virtual {v7, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 58
    iget v12, v3, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    int-to-float v13, v11

    invoke-virtual {v7, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 61
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 62
    new-instance v12, Landroid/graphics/Rect;

    iget v13, v3, Landroid/graphics/Rect;->left:I

    iget v14, v3, Landroid/graphics/Rect;->right:I

    iget v15, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v12, v13, v2, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 63
    new-instance v12, Landroid/graphics/Rect;

    iget v13, v3, Landroid/graphics/Rect;->left:I

    iget v14, v3, Landroid/graphics/Rect;->top:I

    iget v15, v3, Landroid/graphics/Rect;->right:I

    invoke-direct {v12, v13, v14, v15, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 65
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 67
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 69
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 81
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 87
    return-void
.end method
