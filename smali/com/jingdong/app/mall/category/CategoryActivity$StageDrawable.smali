.class Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/category/CategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StageDrawable"
.end annotation


# static fields
.field private static final DURATION_TIME:J = 0xf0L


# instance fields
.field private bitmapPaint:Landroid/graphics/Paint;

.field private durationTime:J

.field private frameRate:I

.field private horizontalScrollConsumed:Z

.field private horizontalScrollOffsetX:F

.field private isRunning:Z

.field private mainListCurrentLeft:F

.field private mainListOffsetX:I

.field private mainListOldCurrentAlpha:I

.field private mainListStartLeft:I

.field private manualProportion:D

.field private startTime:J

.field private subListCurrentLeft:F

.field private subListOffsetX:I

.field private subListStartLeft:I

.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryActivity;


# direct methods
.method private constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1255
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1260
    const-wide/16 v0, 0xf0

    iput-wide v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->durationTime:J

    .line 1261
    const/16 v0, 0xa

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->frameRate:I

    .line 1268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->isRunning:Z

    .line 1270
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->manualProportion:D

    .line 1272
    iput v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListCurrentLeft:F

    .line 1273
    iput v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->subListCurrentLeft:F

    .line 1274
    const/16 v0, 0xff

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListOldCurrentAlpha:I

    .line 1277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->horizontalScrollConsumed:Z

    .line 1279
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->bitmapPaint:Landroid/graphics/Paint;

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity;Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1255
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;)I
    .locals 1
    .parameter

    .prologue
    .line 1261
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->frameRate:I

    return v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;)Lcom/jingdong/app/mall/category/CategoryActivity;
    .locals 1
    .parameter

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    return-object v0
.end method

.method private drawArrowLine(Landroid/graphics/Canvas;F)V
    .locals 16
    .parameter "canvas"
    .parameter "arrowLineX"

    .prologue
    .line 1490
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1493
    .local v3, bounds:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 1494
    .local v9, pF:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-virtual {v13}, Lcom/jingdong/app/mall/category/CategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f09001e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1495
    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1498
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 1499
    .local v10, pS:Landroid/graphics/Paint;
    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1500
    const/high16 v13, 0x3f80

    invoke-static {v13}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1501
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1508
    const/high16 v13, 0x4100

    invoke-static {v13}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    .line 1509
    .local v2, arrowWidth:I
    const/high16 v13, 0x4140

    invoke-static {v13}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    .line 1510
    .local v1, arrowHeight:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListSelectedItemY:Ljava/lang/Integer;
    invoke-static {v13}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$26(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListSelectedItemY:Ljava/lang/Integer;
    invoke-static {v13}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$26(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1512
    .local v5, cY:I
    :goto_0
    const/high16 v13, 0x4120

    invoke-static {v13}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v13

    sub-int/2addr v5, v13

    .line 1513
    new-instance v13, Ljava/lang/Float;

    const/high16 v14, 0x4040

    invoke-static {v14}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v14

    int-to-float v14, v14

    sub-float v14, p2, v14

    int-to-float v15, v2

    sub-float/2addr v14, v15

    invoke-direct {v13, v14}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v13}, Ljava/lang/Float;->intValue()I

    move-result v4

    .line 1515
    .local v4, cX:I
    new-instance v8, Landroid/graphics/Point;

    add-int v13, v4, v2

    div-int/lit8 v14, v1, 0x2

    sub-int v14, v5, v14

    invoke-direct {v8, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 1516
    .local v8, centerTopPoint:Landroid/graphics/Point;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 1517
    .local v7, centerLeftPoint:Landroid/graphics/Point;
    new-instance v6, Landroid/graphics/Point;

    add-int v13, v4, v2

    div-int/lit8 v14, v1, 0x2

    add-int/2addr v14, v5

    invoke-direct {v6, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 1519
    .local v6, centerBottomPoint:Landroid/graphics/Point;
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 1520
    .local v11, path:Landroid/graphics/Path;
    iget v13, v8, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    iget v14, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1521
    iget v13, v8, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    iget v14, v8, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1522
    iget v13, v7, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    iget v14, v7, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1523
    iget v13, v6, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    iget v14, v6, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1524
    iget v13, v6, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1526
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-virtual {v13}, Lcom/jingdong/app/mall/category/CategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090035

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1527
    const/16 v13, 0xa

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1528
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1529
    const/high16 v13, 0x3f80

    invoke-static {v13}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v13

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Path;->offset(FF)V

    .line 1530
    const/16 v13, 0x19

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1531
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1532
    const/high16 v13, 0x3f80

    invoke-static {v13}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v13

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Path;->offset(FF)V

    .line 1533
    const/16 v13, 0x32

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1534
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1535
    const/high16 v13, 0x3f80

    invoke-static {v13}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v13

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Path;->offset(FF)V

    .line 1536
    const/16 v13, 0x78

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1537
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1538
    const/high16 v13, 0x3f80

    invoke-static {v13}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v13

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Path;->offset(FF)V

    .line 1539
    const/16 v13, 0xff

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1540
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1542
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1543
    iget v13, v3, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1544
    iget v13, v3, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    iget v14, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1546
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1555
    :goto_1
    return-void

    .line 1510
    .end local v4           #cX:I
    .end local v5           #cY:I
    .end local v6           #centerBottomPoint:Landroid/graphics/Point;
    .end local v7           #centerLeftPoint:Landroid/graphics/Point;
    .end local v8           #centerTopPoint:Landroid/graphics/Point;
    .end local v11           #path:Landroid/graphics/Path;
    :cond_0
    div-int/lit8 v13, v1, 0x2

    neg-int v5, v13

    goto/16 :goto_0

    .line 1548
    .restart local v4       #cX:I
    .restart local v5       #cY:I
    .restart local v6       #centerBottomPoint:Landroid/graphics/Point;
    .restart local v7       #centerLeftPoint:Landroid/graphics/Point;
    .restart local v8       #centerTopPoint:Landroid/graphics/Point;
    .restart local v11       #path:Landroid/graphics/Path;
    :cond_1
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    .line 1549
    .local v12, r:Landroid/graphics/RectF;
    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1550
    iget v13, v12, Landroid/graphics/RectF;->right:F

    const/high16 v14, 0x4000

    invoke-static {v14}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1551
    iget v13, v12, Landroid/graphics/RectF;->right:F

    const/high16 v14, 0x4000

    invoke-static {v14}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    iget v14, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1553
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1
.end method


# virtual methods
.method public autoCorrectAnimation(I)V
    .locals 3
    .parameter "showMode"

    .prologue
    .line 1286
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->init(I)V

    .line 1288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->startTime:J

    .line 1289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->isRunning:Z

    .line 1292
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    new-instance v1, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable$1;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;)V

    .line 1299
    iget v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->frameRate:I

    .line 1292
    invoke-virtual {v0, v1, v2}, Lcom/jingdong/app/mall/category/CategoryActivity;->post(Ljava/lang/Runnable;I)V

    .line 1301
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 1357
    invoke-virtual {p0}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->startTime:J

    sub-long v0, v7, v9

    .line 1364
    .local v0, leftTime:J
    long-to-double v7, v0

    iget-wide v9, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->durationTime:J

    long-to-double v9, v9

    div-double v5, v7, v9

    .line 1370
    .local v5, timeProportion:D
    iget-wide v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->manualProportion:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_0

    .line 1371
    iget-wide v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->manualProportion:D

    const-wide/high16 v9, 0x3ff0

    iget-wide v11, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->manualProportion:D

    sub-double/2addr v9, v11

    mul-double/2addr v9, v5

    add-double v5, v7, v9

    .line 1379
    :cond_0
    const-wide/high16 v7, 0x3ff0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 1381
    const-wide/high16 v7, 0x3ff0

    cmpl-double v7, v5, v7

    if-ltz v7, :cond_1

    .line 1382
    const-wide/16 v7, 0xf0

    iput-wide v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->durationTime:J

    .line 1383
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->manualProportion:D

    .line 1384
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->isRunning:Z

    .line 1385
    iget-object v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->setShowLevelAndStateOnStop()V
    invoke-static {v7}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$20(Lcom/jingdong/app/mall/category/CategoryActivity;)V

    .line 1386
    iget-object v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->setupSubStateView()V
    invoke-static {v7}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$21(Lcom/jingdong/app/mall/category/CategoryActivity;)V

    .line 1393
    :cond_1
    new-instance v7, Ljava/lang/Double;

    iget v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListStartLeft:I

    int-to-double v8, v8

    iget v10, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListOffsetX:I

    int-to-double v10, v10

    mul-double/2addr v10, v5

    add-double/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v7}, Ljava/lang/Double;->floatValue()F

    move-result v7

    iput v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListCurrentLeft:F

    .line 1394
    new-instance v7, Ljava/lang/Double;

    iget v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->subListStartLeft:I

    int-to-double v8, v8

    iget v10, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->subListOffsetX:I

    int-to-double v10, v10

    mul-double/2addr v10, v5

    add-double/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v7}, Ljava/lang/Double;->floatValue()F

    move-result v7

    iput v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->subListCurrentLeft:F

    .line 1395
    new-instance v7, Ljava/lang/Double;

    const-wide v8, 0x406fe00000000000L

    const-wide v10, 0x406fe00000000000L

    mul-double/2addr v10, v5

    sub-double/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v7}, Ljava/lang/Double;->intValue()I

    move-result v7

    iput v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListOldCurrentAlpha:I

    .line 1404
    iget-object v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmapFinal:Ljava/lang/ref/SoftReference;
    invoke-static {v7}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$22(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/ref/SoftReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 1405
    .local v2, mMainListBitmapFinalTemp:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/jingdong/common/utils/ImageUtil;->isBitmapCanUse(Landroid/graphics/Bitmap;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1406
    iget-object v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->bitmapPaint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1407
    iget v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListCurrentLeft:F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1409
    :cond_2
    iget-object v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmap:Ljava/lang/ref/SoftReference;
    invoke-static {v7}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$23(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/ref/SoftReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 1410
    .local v3, mMainListBitmapTemp:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jingdong/common/utils/ImageUtil;->isBitmapCanUse(Landroid/graphics/Bitmap;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1411
    iget-object v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->bitmapPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListOldCurrentAlpha:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1412
    iget v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListCurrentLeft:F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1416
    :cond_3
    iget v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->subListCurrentLeft:F

    invoke-direct {p0, p1, v7}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->drawArrowLine(Landroid/graphics/Canvas;F)V

    .line 1418
    iget-object v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListBitmap:Ljava/lang/ref/SoftReference;
    invoke-static {v7}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$24(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/ref/SoftReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 1419
    .local v4, mSubListBitmapTemp:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jingdong/common/utils/ImageUtil;->isBitmapCanUse(Landroid/graphics/Bitmap;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1420
    iget-object v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->bitmapPaint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1421
    iget v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->subListCurrentLeft:F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1485
    .end local v0           #leftTime:J
    .end local v2           #mMainListBitmapFinalTemp:Landroid/graphics/Bitmap;
    .end local v3           #mMainListBitmapTemp:Landroid/graphics/Bitmap;
    .end local v4           #mSubListBitmapTemp:Landroid/graphics/Bitmap;
    .end local v5           #timeProportion:D
    :cond_4
    :goto_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->horizontalScrollConsumed:Z

    .line 1486
    return-void

    .line 1426
    :cond_5
    iget-boolean v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->horizontalScrollConsumed:Z

    if-nez v7, :cond_a

    .line 1428
    iget-object v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mShowLevel:I
    invoke-static {v7}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$25(Lcom/jingdong/app/mall/category/CategoryActivity;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    .line 1429
    iget v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->horizontalScrollOffsetX:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    .line 1430
    const/4 v7, 0x0

    iput v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->horizontalScrollOffsetX:F

    .line 1438
    :cond_6
    :goto_1
    iget v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->subListStartLeft:I

    int-to-float v7, v7

    iget v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->horizontalScrollOffsetX:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->subListCurrentLeft:F

    .line 1440
    const-wide/high16 v7, 0x3ff0

    iget v9, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->horizontalScrollOffsetX:F

    float-to-double v9, v9

    iget v11, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->subListOffsetX:I

    int-to-double v11, v11

    div-double/2addr v9, v11

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->manualProportion:D

    .line 1441
    new-instance v7, Ljava/lang/Double;

    iget v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListStartLeft:I

    int-to-double v8, v8

    iget v10, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListOffsetX:I

    int-to-double v10, v10

    iget-wide v12, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->manualProportion:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v7}, Ljava/lang/Double;->floatValue()F

    move-result v7

    iput v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListCurrentLeft:F

    .line 1442
    new-instance v7, Ljava/lang/Double;

    const-wide v8, 0x406fe00000000000L

    const-wide v10, 0x406fe00000000000L

    iget-wide v12, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->manualProportion:D

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v7}, Ljava/lang/Double;->intValue()I

    move-result v7

    iput v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListOldCurrentAlpha:I

    .line 1453
    iget-object v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmapFinal:Ljava/lang/ref/SoftReference;
    invoke-static {v7}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$22(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/ref/SoftReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 1454
    .restart local v2       #mMainListBitmapFinalTemp:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/jingdong/common/utils/ImageUtil;->isBitmapCanUse(Landroid/graphics/Bitmap;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1455
    iget-object v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->bitmapPaint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1456
    iget v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListCurrentLeft:F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1458
    :cond_7
    iget-object v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmap:Ljava/lang/ref/SoftReference;
    invoke-static {v7}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$23(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/ref/SoftReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 1459
    .restart local v3       #mMainListBitmapTemp:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jingdong/common/utils/ImageUtil;->isBitmapCanUse(Landroid/graphics/Bitmap;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1460
    iget-object v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->bitmapPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListOldCurrentAlpha:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1461
    iget v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListCurrentLeft:F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1465
    :cond_8
    iget v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->subListCurrentLeft:F

    invoke-direct {p0, p1, v7}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->drawArrowLine(Landroid/graphics/Canvas;F)V

    .line 1467
    iget-object v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListBitmap:Ljava/lang/ref/SoftReference;
    invoke-static {v7}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$24(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/ref/SoftReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 1468
    .restart local v4       #mSubListBitmapTemp:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jingdong/common/utils/ImageUtil;->isBitmapCanUse(Landroid/graphics/Bitmap;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1469
    iget-object v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->bitmapPaint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1470
    iget v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->subListCurrentLeft:F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1433
    .end local v2           #mMainListBitmapFinalTemp:Landroid/graphics/Bitmap;
    .end local v3           #mMainListBitmapTemp:Landroid/graphics/Bitmap;
    .end local v4           #mSubListBitmapTemp:Landroid/graphics/Bitmap;
    :cond_9
    iget v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->horizontalScrollOffsetX:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_6

    .line 1434
    const/4 v7, 0x0

    iput v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->horizontalScrollOffsetX:F

    goto/16 :goto_1

    .line 1475
    :cond_a
    iget-object v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mShowLevel:I
    invoke-static {v7}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$25(Lcom/jingdong/app/mall/category/CategoryActivity;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 1476
    iget-object v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListView:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$18(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->subListCurrentLeft:F

    .line 1478
    iget v7, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->subListCurrentLeft:F

    invoke-direct {p0, p1, v7}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->drawArrowLine(Landroid/graphics/Canvas;F)V

    goto/16 :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 1559
    const/4 v0, 0x0

    return v0
.end method

.method public horizontalScroll(F)V
    .locals 1
    .parameter "dx"

    .prologue
    .line 1573
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->horizontalScrollOffsetX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->horizontalScrollOffsetX:F

    .line 1574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->horizontalScrollConsumed:Z

    .line 1579
    invoke-virtual {p0}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->invalidateSelf()V

    .line 1580
    return-void
.end method

.method public horizontalScrollStop(F)V
    .locals 8
    .parameter "vX"

    .prologue
    const/4 v7, 0x3

    const/high16 v4, 0x4416

    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 1586
    const/4 v0, 0x0

    .line 1587
    .local v0, showMode:I
    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    .line 1588
    const/4 v0, 0x1

    .line 1589
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #setter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mShowState:I
    invoke-static {v3, v7}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$27(Lcom/jingdong/app/mall/category/CategoryActivity;I)V

    .line 1603
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1619
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->horizontalScrollOffsetX:F

    .line 1620
    return-void

    .line 1590
    :cond_0
    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 1591
    const/4 v0, 0x2

    .line 1592
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #setter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mShowState:I
    invoke-static {v3, v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$27(Lcom/jingdong/app/mall/category/CategoryActivity;I)V

    goto :goto_0

    .line 1594
    :cond_1
    iget-wide v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->manualProportion:D

    const-wide/high16 v5, 0x3fe0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    .line 1595
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mShowLevel:I
    invoke-static {v3}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$25(Lcom/jingdong/app/mall/category/CategoryActivity;)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 1596
    :goto_2
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #setter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mShowState:I
    invoke-static {v3, v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$27(Lcom/jingdong/app/mall/category/CategoryActivity;I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1595
    goto :goto_2

    .line 1598
    :cond_3
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mShowLevel:I
    invoke-static {v3}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$25(Lcom/jingdong/app/mall/category/CategoryActivity;)I

    move-result v3

    if-ne v3, v1, :cond_4

    move v0, v2

    .line 1599
    :goto_3
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #setter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mShowState:I
    invoke-static {v3, v7}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$27(Lcom/jingdong/app/mall/category/CategoryActivity;I)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1598
    goto :goto_3

    .line 1608
    :pswitch_0
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->readyCorrectAnimation(I)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$28(Lcom/jingdong/app/mall/category/CategoryActivity;I)V

    goto :goto_1

    .line 1614
    :pswitch_1
    const-wide/high16 v2, 0x3ff0

    iget-wide v4, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->manualProportion:D

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->manualProportion:D

    .line 1615
    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->switchBitmap()V
    invoke-static {v2}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$29(Lcom/jingdong/app/mall/category/CategoryActivity;)V

    .line 1616
    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->readyCorrectAnimation(I)V
    invoke-static {v2, v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$28(Lcom/jingdong/app/mall/category/CategoryActivity;I)V

    goto :goto_1

    .line 1603
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init(I)V
    .locals 2
    .parameter "showMode"

    .prologue
    .line 1308
    packed-switch p1, :pswitch_data_0

    .line 1344
    :goto_0
    return-void

    .line 1312
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mIconRight:I
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$17(Lcom/jingdong/app/mall/category/CategoryActivity;)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListStartLeft:I

    .line 1313
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mIconRight:I
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$17(Lcom/jingdong/app/mall/category/CategoryActivity;)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListOffsetX:I

    .line 1314
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$18(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->subListStartLeft:I

    .line 1315
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$18(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->subListOffsetX:I

    goto :goto_0

    .line 1328
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListStartLeft:I

    .line 1329
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mIconRight:I
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$17(Lcom/jingdong/app/mall/category/CategoryActivity;)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->mainListOffsetX:I

    .line 1330
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$18(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getRight()I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->subListStartLeft:I

    .line 1331
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$18(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListLeft:I
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$19(Lcom/jingdong/app/mall/category/CategoryActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->subListOffsetX:I

    goto :goto_0

    .line 1308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 1347
    iget-boolean v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->isRunning:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 1565
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 1570
    return-void
.end method
