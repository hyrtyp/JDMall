.class public Lcom/jingdong/common/utils/MultiTouchController$PointInfo;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/MultiTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointInfo"
.end annotation


# instance fields
.field private action:I

.field private angle:F

.field private angleIsCalculated:Z

.field private diameter:F

.field private diameterIsCalculated:Z

.field private diameterSq:F

.field private diameterSqIsCalculated:Z

.field private dx:F

.field private dy:F

.field private eventTime:J

.field private isDown:Z

.field private isMultiTouch:Z

.field private numPoints:I

.field private pointerIds:[I

.field private pressureMid:F

.field private pressures:[F

.field private xMid:F

.field private xs:[F

.field private yMid:F

.field private ys:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->xs:[F

    .line 467
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->ys:[F

    .line 468
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->pressures:[F

    .line 469
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->pointerIds:[I

    .line 463
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/MultiTouchController$PointInfo;I[F[F[F[IIZJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 490
    invoke-direct/range {p0 .. p9}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->set(I[F[F[F[IIZJ)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/common/utils/MultiTouchController$PointInfo;)J
    .locals 2
    .parameter

    .prologue
    .line 485
    iget-wide v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->eventTime:J

    return-wide v0
.end method

.method private julery_isqrt(I)I
    .locals 6
    .parameter "val"

    .prologue
    .line 572
    const/4 v3, 0x0

    .local v3, g:I
    const v0, 0x8000

    .local v0, b:I
    const/16 v1, 0xf

    .local v1, bshft:I
    move v2, v1

    .line 574
    .end local v1           #bshft:I
    .local v2, bshft:I
    :goto_0
    shl-int/lit8 v5, v3, 0x1

    add-int/2addr v5, v0

    add-int/lit8 v1, v2, -0x1

    .end local v2           #bshft:I
    .restart local v1       #bshft:I
    shl-int v4, v5, v2

    .local v4, temp:I
    if-lt p1, v4, :cond_0

    .line 575
    add-int/2addr v3, v0

    .line 576
    sub-int/2addr p1, v4

    .line 578
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    .line 573
    if-gtz v0, :cond_1

    .line 579
    return v3

    :cond_1
    move v2, v1

    .end local v1           #bshft:I
    .restart local v2       #bshft:I
    goto :goto_0
.end method

.method private set(I[F[F[F[IIZJ)V
    .locals 6
    .parameter "numPoints"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "pointerIds"
    .parameter "action"
    .parameter "isDown"
    .parameter "eventTime"

    .prologue
    const/high16 v5, 0x3f00

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 494
    iput-wide p8, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->eventTime:J

    .line 495
    iput p6, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->action:I

    .line 496
    iput p1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->numPoints:I

    .line 497
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 503
    iput-boolean p7, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isDown:Z

    .line 504
    const/4 v1, 0x2

    if-lt p1, v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isMultiTouch:Z

    .line 506
    iget-boolean v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-eqz v1, :cond_2

    .line 507
    aget v1, p2, v3

    aget v4, p2, v2

    add-float/2addr v1, v4

    mul-float/2addr v1, v5

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->xMid:F

    .line 508
    aget v1, p3, v3

    aget v4, p3, v2

    add-float/2addr v1, v4

    mul-float/2addr v1, v5

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->yMid:F

    .line 509
    aget v1, p4, v3

    aget v4, p4, v2

    add-float/2addr v1, v4

    mul-float/2addr v1, v5

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->pressureMid:F

    .line 510
    aget v1, p2, v2

    aget v4, p2, v3

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->dx:F

    .line 511
    aget v1, p3, v2

    aget v2, p3, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->dy:F

    .line 521
    :goto_2
    iput-boolean v3, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->angleIsCalculated:Z

    iput-boolean v3, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    iput-boolean v3, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    .line 522
    return-void

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->xs:[F

    aget v4, p2, v0

    aput v4, v1, v0

    .line 499
    iget-object v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->ys:[F

    aget v4, p3, v0

    aput v4, v1, v0

    .line 500
    iget-object v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->pressures:[F

    aget v4, p4, v0

    aput v4, v1, v0

    .line 501
    iget-object v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->pointerIds:[I

    aget v4, p5, v0

    aput v4, v1, v0

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 504
    goto :goto_1

    .line 515
    :cond_2
    aget v1, p2, v3

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->xMid:F

    .line 516
    aget v1, p3, v3

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->yMid:F

    .line 517
    aget v1, p4, v3

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->pressureMid:F

    .line 518
    const/4 v1, 0x0

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->dy:F

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->dx:F

    goto :goto_2
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 682
    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->action:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 686
    iget-wide v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->eventTime:J

    return-wide v0
.end method

.method public getMultiTouchAngle()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 618
    iget-boolean v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->angleIsCalculated:Z

    if-nez v0, :cond_0

    .line 619
    iget-boolean v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-nez v0, :cond_1

    .line 620
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->angle:F

    .line 623
    :goto_0
    iput-boolean v4, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->angleIsCalculated:Z

    .line 625
    :cond_0
    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->angle:F

    return v0

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->ys:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->ys:[F

    aget v1, v1, v5

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->xs:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->xs:[F

    aget v3, v3, v5

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->angle:F

    goto :goto_0
.end method

.method public getMultiTouchDiameter()F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 593
    iget-boolean v2, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    if-nez v2, :cond_1

    .line 594
    iget-boolean v2, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-nez v2, :cond_2

    .line 595
    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameter:F

    .line 608
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    .line 610
    :cond_1
    iget v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameter:F

    return v1

    .line 600
    :cond_2
    invoke-virtual {p0}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getMultiTouchDiameterSq()F

    move-result v0

    .line 601
    .local v0, diamSq:F
    cmpl-float v2, v0, v1

    if-nez v2, :cond_4

    :goto_1
    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameter:F

    .line 603
    iget v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameter:F

    iget v2, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->dx:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 604
    iget v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->dx:F

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameter:F

    .line 605
    :cond_3
    iget v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameter:F

    iget v2, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->dy:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 606
    iget v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->dy:F

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameter:F

    goto :goto_0

    .line 601
    :cond_4
    const/high16 v1, 0x4380

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->julery_isqrt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4180

    div-float/2addr v1, v2

    goto :goto_1
.end method

.method public getMultiTouchDiameterSq()F
    .locals 3

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    if-nez v0, :cond_0

    .line 585
    iget-boolean v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->dx:F

    iget v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->dx:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->dy:F

    iget v2, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->dy:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameterSq:F

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    .line 588
    :cond_0
    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameterSq:F

    return v0

    .line 585
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMultiTouchHeight()F
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->dy:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMultiTouchWidth()F
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->dx:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumTouchPoints()I
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->numPoints:I

    return v0
.end method

.method public getPointerIds()[I
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->pointerIds:[I

    return-object v0
.end method

.method public getPressure()F
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->pressureMid:F

    return v0
.end method

.method public getPressures()[F
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->pressures:[F

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->xMid:F

    return v0
.end method

.method public getXs()[F
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->xs:[F

    return-object v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->yMid:F

    return v0
.end method

.method public getYs()[F
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->ys:[F

    return-object v0
.end method

.method public isDown()Z
    .locals 1

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isDown:Z

    return v0
.end method

.method public isMultiTouch()Z
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isMultiTouch:Z

    return v0
.end method

.method public set(Lcom/jingdong/common/utils/MultiTouchController$PointInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 529
    .local p1, other:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;,"Lcom/jingdong/common/utils/MultiTouchController$PointInfo;"
    iget v1, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->numPoints:I

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->numPoints:I

    .line 530
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->numPoints:I

    if-lt v0, v1, :cond_0

    .line 536
    iget v1, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->xMid:F

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->xMid:F

    .line 537
    iget v1, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->yMid:F

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->yMid:F

    .line 538
    iget v1, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->pressureMid:F

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->pressureMid:F

    .line 539
    iget v1, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->dx:F

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->dx:F

    .line 540
    iget v1, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->dy:F

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->dy:F

    .line 541
    iget v1, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameter:F

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameter:F

    .line 542
    iget v1, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameterSq:F

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameterSq:F

    .line 543
    iget v1, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->angle:F

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->angle:F

    .line 544
    iget-boolean v1, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isDown:Z

    iput-boolean v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isDown:Z

    .line 545
    iget v1, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->action:I

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->action:I

    .line 546
    iget-boolean v1, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isMultiTouch:Z

    iput-boolean v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isMultiTouch:Z

    .line 547
    iget-boolean v1, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    iput-boolean v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    .line 548
    iget-boolean v1, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    iput-boolean v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    .line 549
    iget-boolean v1, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->angleIsCalculated:Z

    iput-boolean v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->angleIsCalculated:Z

    .line 550
    iget-wide v1, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->eventTime:J

    iput-wide v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->eventTime:J

    .line 551
    return-void

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->xs:[F

    iget-object v2, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->xs:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 532
    iget-object v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->ys:[F

    iget-object v2, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->ys:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 533
    iget-object v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->pressures:[F

    iget-object v2, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->pressures:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 534
    iget-object v1, p0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->pointerIds:[I

    iget-object v2, p1, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->pointerIds:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
