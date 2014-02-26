.class public Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/MultiTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionAndScale"
.end annotation


# instance fields
.field private scale:F

.field private scaleX:F

.field private scaleY:F

.field private updateAngle:Z

.field private updateScale:Z

.field private updateScaleXY:Z

.field private xOff:F

.field private yOff:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)Z
    .locals 1
    .parameter

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->updateScale:Z

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)Z
    .locals 1
    .parameter

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->updateScaleXY:Z

    return v0
.end method

.method static synthetic access$2(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)Z
    .locals 1
    .parameter

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->updateAngle:Z

    return v0
.end method

.method static synthetic access$3(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter

    .prologue
    .line 696
    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->scale:F

    return v0
.end method

.method static synthetic access$4(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter

    .prologue
    .line 696
    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->xOff:F

    return v0
.end method

.method static synthetic access$5(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter

    .prologue
    .line 696
    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->yOff:F

    return v0
.end method

.method static synthetic access$6(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter

    .prologue
    .line 696
    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->scaleX:F

    return v0
.end method

.method static synthetic access$7(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter

    .prologue
    .line 696
    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->scaleY:F

    return v0
.end method


# virtual methods
.method public getScale()F
    .locals 1

    .prologue
    .line 736
    iget-boolean v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->updateScale:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->scale:F

    goto :goto_0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 741
    iget-boolean v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->updateScaleXY:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->scaleX:F

    goto :goto_0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->updateScaleXY:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->scaleY:F

    goto :goto_0
.end method

.method public getXOff()F
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->xOff:F

    return v0
.end method

.method public getYOff()F
    .locals 1

    .prologue
    .line 732
    iget v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->yOff:F

    return v0
.end method

.method protected set(FFFFF)V
    .locals 3
    .parameter "xOff"
    .parameter "yOff"
    .parameter "scale"
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    const/high16 v0, 0x3f80

    const/4 v2, 0x0

    .line 720
    iput p1, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->xOff:F

    .line 721
    iput p2, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->yOff:F

    .line 722
    cmpl-float v1, p3, v2

    if-nez v1, :cond_0

    move p3, v0

    .end local p3
    :cond_0
    iput p3, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->scale:F

    .line 723
    cmpl-float v1, p4, v2

    if-nez v1, :cond_1

    move p4, v0

    .end local p4
    :cond_1
    iput p4, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->scaleX:F

    .line 724
    cmpl-float v1, p5, v2

    if-nez v1, :cond_2

    :goto_0
    iput v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->scaleY:F

    .line 725
    return-void

    :cond_2
    move v0, p5

    .line 724
    goto :goto_0
.end method

.method public set(FFZFZFFZ)V
    .locals 3
    .parameter "xOff"
    .parameter "yOff"
    .parameter "updateScale"
    .parameter "scale"
    .parameter "updateScaleXY"
    .parameter "scaleX"
    .parameter "scaleY"
    .parameter "updateAngle"

    .prologue
    const/high16 v0, 0x3f80

    const/4 v2, 0x0

    .line 708
    iput p1, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->xOff:F

    .line 709
    iput p2, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->yOff:F

    .line 710
    iput-boolean p3, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->updateScale:Z

    .line 711
    cmpl-float v1, p4, v2

    if-nez v1, :cond_0

    move p4, v0

    .end local p4
    :cond_0
    iput p4, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->scale:F

    .line 712
    iput-boolean p5, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->updateScaleXY:Z

    .line 713
    cmpl-float v1, p6, v2

    if-nez v1, :cond_1

    move p6, v0

    .end local p6
    :cond_1
    iput p6, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->scaleX:F

    .line 714
    cmpl-float v1, p7, v2

    if-nez v1, :cond_2

    :goto_0
    iput v0, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->scaleY:F

    .line 715
    iput-boolean p8, p0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->updateAngle:Z

    .line 716
    return-void

    :cond_2
    move v0, p7

    .line 714
    goto :goto_0
.end method
