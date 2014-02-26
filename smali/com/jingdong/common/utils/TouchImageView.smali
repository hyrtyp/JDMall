.class public Lcom/jingdong/common/utils/TouchImageView;
.super Landroid/view/View;
.source "TouchImageView.java"

# interfaces
.implements Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/TouchImageView$ControllListener;,
        Lcom/jingdong/common/utils/TouchImageView$GesDetector;,
        Lcom/jingdong/common/utils/TouchImageView$Img;,
        Lcom/jingdong/common/utils/TouchImageView$Listener;,
        Lcom/jingdong/common/utils/TouchImageView$MyGesListener;,
        Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/View;",
        "Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas",
        "<",
        "Lcom/jingdong/common/utils/TouchImageView$Img;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x258

.field public static final TAG:Ljava/lang/String; = "TouchImageView"

.field private static final UI_MODE_ANISOTROPIC_SCALE:I = 0x2

.field private static final UI_MODE_ROTATE:I = 0x1

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private currTouchPoint:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

.field private img:Lcom/jingdong/common/utils/TouchImageView$Img;

.field private isFling:Z

.field private isScaling:Z

.field mControllListener:Lcom/jingdong/common/utils/TouchImageView$ControllListener;

.field private final mGesDetector:Lcom/jingdong/common/utils/TouchImageView$GesDetector;

.field private mScaleAnimation:Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;

.field private mScroller:Landroid/widget/Scroller;

.field private mShowDebugInfo:Z

.field private mUIMode:I

.field private multiTouchController:Lcom/jingdong/common/utils/MultiTouchController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jingdong/common/utils/MultiTouchController",
            "<",
            "Lcom/jingdong/common/utils/TouchImageView$Img;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/jingdong/common/utils/TouchImageView$1;

    invoke-direct {v0}, Lcom/jingdong/common/utils/TouchImageView$1;-><init>()V

    sput-object v0, Lcom/jingdong/common/utils/TouchImageView;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jingdong/common/utils/TouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-direct {p0}, Lcom/jingdong/common/utils/TouchImageView;->initView()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jingdong/common/utils/TouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-direct {p0}, Lcom/jingdong/common/utils/TouchImageView;->initView()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-object v2, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    .line 40
    new-instance v0, Lcom/jingdong/common/utils/MultiTouchController;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/MultiTouchController;-><init>(Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->multiTouchController:Lcom/jingdong/common/utils/MultiTouchController;

    .line 42
    new-instance v0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-direct {v0}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->currTouchPoint:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    .line 43
    iput-boolean v1, p0, Lcom/jingdong/common/utils/TouchImageView;->mShowDebugInfo:Z

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/common/utils/TouchImageView;->mUIMode:I

    .line 48
    new-instance v0, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;-><init>(Lcom/jingdong/common/utils/TouchImageView;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->mScaleAnimation:Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;

    .line 982
    iput-boolean v1, p0, Lcom/jingdong/common/utils/TouchImageView;->isScaling:Z

    .line 983
    iput-boolean v1, p0, Lcom/jingdong/common/utils/TouchImageView;->isFling:Z

    .line 75
    new-instance v0, Lcom/jingdong/common/utils/TouchImageView$GesDetector;

    new-instance v1, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;-><init>(Lcom/jingdong/common/utils/TouchImageView;Lcom/jingdong/common/utils/TouchImageView$MyGesListener;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/jingdong/common/utils/TouchImageView$GesDetector;-><init>(Lcom/jingdong/common/utils/TouchImageView;Landroid/content/Context;Lcom/jingdong/common/utils/TouchImageView$Listener;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->mGesDetector:Lcom/jingdong/common/utils/TouchImageView$GesDetector;

    .line 76
    new-instance v0, Landroid/widget/Scroller;

    sget-object v1, Lcom/jingdong/common/utils/TouchImageView;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->mScroller:Landroid/widget/Scroller;

    .line 77
    invoke-direct {p0}, Lcom/jingdong/common/utils/TouchImageView;->initView()V

    .line 78
    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/common/utils/TouchImageView;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/jingdong/common/utils/TouchImageView;->mUIMode:I

    return v0
.end method

.method static synthetic access$3()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/jingdong/common/utils/TouchImageView;->sInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/common/utils/TouchImageView;)Z
    .locals 1
    .parameter

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/jingdong/common/utils/TouchImageView;->isScaling:Z

    return v0
.end method

.method static synthetic access$5(Lcom/jingdong/common/utils/TouchImageView;)Lcom/jingdong/common/utils/TouchImageView$Img;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/common/utils/TouchImageView;FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 889
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/common/utils/TouchImageView;->scaleTo(FFF)V

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/common/utils/TouchImageView;)Landroid/widget/Scroller;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/common/utils/TouchImageView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 983
    iput-boolean p1, p0, Lcom/jingdong/common/utils/TouchImageView;->isFling:Z

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/common/utils/TouchImageView;)Z
    .locals 1
    .parameter

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/jingdong/common/utils/TouchImageView;->endDrag()Z

    move-result v0

    return v0
.end method

.method private computeAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 217
    const/4 v3, 0x0

    .line 219
    .local v3, needInvalidate:Z
    iget-object v6, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/TouchImageView$Img;->getCenterX()F

    move-result v1

    .line 220
    .local v1, centerX:F
    iget-object v6, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/TouchImageView$Img;->getCenterY()F

    move-result v2

    .line 221
    .local v2, centerY:F
    iget-object v6, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/TouchImageView$Img;->getScaleX()F

    move-result v4

    .line 222
    .local v4, scaleX:F
    iget-object v6, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/TouchImageView$Img;->getScaleY()F

    move-result v5

    .line 224
    .local v5, scaleY:F
    iget-object v6, p0, Lcom/jingdong/common/utils/TouchImageView;->mScaleAnimation:Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->calculate(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 225
    or-int/lit8 v3, v3, 0x1

    .line 226
    .local v3, needInvalidate:I
    iget-object v6, p0, Lcom/jingdong/common/utils/TouchImageView;->mScaleAnimation:Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->getScale()F

    move-result v5

    move v4, v5

    .line 229
    .end local v3           #needInvalidate:I
    :cond_0
    iget-object v6, p0, Lcom/jingdong/common/utils/TouchImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/jingdong/common/utils/TouchImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 230
    or-int/lit8 v3, v3, 0x1

    .line 231
    .local v3, needInvalidate:Z
    iget-object v6, p0, Lcom/jingdong/common/utils/TouchImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    int-to-float v1, v6

    .line 232
    iget-object v6, p0, Lcom/jingdong/common/utils/TouchImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    int-to-float v2, v6

    .line 235
    .end local v3           #needInvalidate:Z
    :cond_1
    if-eqz v3, :cond_4

    .line 236
    iget-boolean v6, p0, Lcom/jingdong/common/utils/TouchImageView;->isFling:Z

    if-nez v6, :cond_2

    .line 237
    iget-object v6, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    #calls: Lcom/jingdong/common/utils/TouchImageView$Img;->scrollTo(FFFF)Z
    invoke-static {v6, v1, v2, v4, v5}, Lcom/jingdong/common/utils/TouchImageView$Img;->access$2(Lcom/jingdong/common/utils/TouchImageView$Img;FFFF)Z

    .line 238
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 253
    :goto_0
    return-void

    .line 240
    :cond_2
    iget-object v6, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    #calls: Lcom/jingdong/common/utils/TouchImageView$Img;->flingTo(FF)Z
    invoke-static {v6, v1, v2}, Lcom/jingdong/common/utils/TouchImageView$Img;->access$3(Lcom/jingdong/common/utils/TouchImageView$Img;FF)Z

    move-result v0

    .line 241
    .local v0, canFling:Z
    if-eqz v0, :cond_3

    .line 242
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 244
    :cond_3
    iput-boolean v9, p0, Lcom/jingdong/common/utils/TouchImageView;->isFling:Z

    .line 245
    iget-object v6, p0, Lcom/jingdong/common/utils/TouchImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_0

    .line 249
    .end local v0           #canFling:Z
    :cond_4
    iput-boolean v9, p0, Lcom/jingdong/common/utils/TouchImageView;->isFling:Z

    .line 250
    iget-object v6, p0, Lcom/jingdong/common/utils/TouchImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 251
    iget-object v6, p0, Lcom/jingdong/common/utils/TouchImageView;->mScaleAnimation:Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->forceStop()V

    goto :goto_0
.end method

.method private drawMultitouchDebugMarks(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 121
    return-void
.end method

.method private endDrag()Z
    .locals 15

    .prologue
    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v4, 0x0

    .line 164
    const/16 v5, 0x258

    .line 166
    .local v5, duration:I
    const/4 v10, 0x0

    .line 167
    .local v10, needScrollX:Z
    const/4 v11, 0x0

    .line 170
    .local v11, needScrollY:Z
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->getCenterX()F

    move-result v0

    float-to-int v1, v0

    .line 171
    .local v1, startX:I
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->getCenterY()F

    move-result v0

    float-to-int v2, v0

    .line 173
    .local v2, startY:I
    move v8, v1

    .line 174
    .local v8, finalX:I
    move v9, v2

    .line 176
    .local v9, finalY:I
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->getMaxX()F

    move-result v0

    iget-object v3, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/TouchImageView$Img;->getMinX()F

    move-result v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/TouchImageView$Img;->getDisplayWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_7

    .line 177
    or-int/lit8 v10, v10, 0x1

    .line 178
    .local v10, needScrollX:I
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->getDisplayWidth()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    .line 190
    .end local v10           #needScrollX:I
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->getMaxY()F

    move-result v0

    iget-object v3, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/TouchImageView$Img;->getMinY()F

    move-result v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/TouchImageView$Img;->getDisplayHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_9

    .line 191
    const/4 v11, 0x1

    .line 192
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->getDisplayHeight()I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    .line 203
    .end local v11           #needScrollY:Z
    :cond_1
    :goto_1
    sub-int v6, v8, v1

    .line 204
    .local v6, dx:I
    sub-int v7, v9, v2

    .line 206
    .local v7, dy:I
    if-nez v10, :cond_2

    if-eqz v11, :cond_3

    :cond_2
    if-nez v6, :cond_4

    :cond_3
    if-eqz v7, :cond_6

    .line 207
    :cond_4
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v12}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 208
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->mScroller:Landroid/widget/Scroller;

    if-eqz v10, :cond_b

    move v3, v6

    :goto_2
    if-eqz v11, :cond_5

    move v4, v7

    :cond_5
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    move v4, v12

    .line 212
    :cond_6
    return v4

    .line 180
    .end local v6           #dx:I
    .end local v7           #dy:I
    .local v10, needScrollX:Z
    .restart local v11       #needScrollY:Z
    :cond_7
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->getMaxX()F

    move-result v0

    iget-object v3, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/TouchImageView$Img;->getDisplayWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_8

    .line 181
    or-int/lit8 v10, v10, 0x1

    .line 182
    .local v10, needScrollX:I
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->getCenterX()F

    move-result v0

    iget-object v3, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/TouchImageView$Img;->getDisplayWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v13, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v13}, Lcom/jingdong/common/utils/TouchImageView$Img;->getMaxX()F

    move-result v13

    sub-float/2addr v3, v13

    add-float/2addr v0, v3

    float-to-int v8, v0

    .line 183
    goto :goto_0

    .local v10, needScrollX:Z
    :cond_8
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->getMinX()F

    move-result v0

    cmpl-float v0, v0, v14

    if-lez v0, :cond_0

    .line 184
    or-int/lit8 v10, v10, 0x1

    .line 185
    .local v10, needScrollX:I
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->getCenterX()F

    move-result v0

    iget-object v3, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/TouchImageView$Img;->getMinX()F

    move-result v3

    neg-float v3, v3

    add-float/2addr v0, v3

    float-to-int v8, v0

    goto/16 :goto_0

    .line 194
    .end local v10           #needScrollX:I
    :cond_9
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->getMaxY()F

    move-result v0

    iget-object v3, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/TouchImageView$Img;->getDisplayHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_a

    .line 195
    or-int/lit8 v11, v11, 0x1

    .line 196
    .local v11, needScrollY:I
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->getCenterY()F

    move-result v0

    iget-object v3, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/TouchImageView$Img;->getDisplayHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v13, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v13}, Lcom/jingdong/common/utils/TouchImageView$Img;->getMaxY()F

    move-result v13

    sub-float/2addr v3, v13

    add-float/2addr v0, v3

    float-to-int v9, v0

    .line 197
    goto/16 :goto_1

    .local v11, needScrollY:Z
    :cond_a
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->getMinY()F

    move-result v0

    cmpl-float v0, v0, v14

    if-lez v0, :cond_1

    .line 198
    or-int/lit8 v11, v11, 0x1

    .line 199
    .local v11, needScrollY:I
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->getCenterY()F

    move-result v0

    iget-object v3, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/TouchImageView$Img;->getMinY()F

    move-result v3

    neg-float v3, v3

    add-float/2addr v0, v3

    float-to-int v9, v0

    goto/16 :goto_1

    .end local v11           #needScrollY:I
    .restart local v6       #dx:I
    .restart local v7       #dy:I
    :cond_b
    move v3, v4

    .line 208
    goto/16 :goto_2
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/TouchImageView;->setBackgroundColor(I)V

    .line 82
    return-void
.end method

.method private scaleTo(FFF)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "factor"

    .prologue
    const/16 v5, 0x12c

    .line 890
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    if-nez v0, :cond_0

    .line 914
    :goto_0
    return-void

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0, p1, p2}, Lcom/jingdong/common/utils/TouchImageView$Img;->containsPoint(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 895
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->getMinX()F

    move-result v0

    iget-object v6, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/TouchImageView$Img;->getMaxX()F

    move-result v6

    invoke-static {p1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 896
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->getMinY()F

    move-result v0

    iget-object v6, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/TouchImageView$Img;->getMaxY()F

    move-result v6

    invoke-static {p2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->mScaleAnimation:Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;

    iget-object v6, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/TouchImageView$Img;->getScaleX()F

    move-result v6

    invoke-virtual {v0, v6, p3}, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->init(FF)V

    .line 900
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->mScaleAnimation:Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;

    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->setDuration(I)V

    .line 901
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->mScaleAnimation:Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->start()V

    .line 904
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->getCenterX()F

    move-result v0

    float-to-int v1, v0

    .line 905
    .local v1, startX:I
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->getCenterY()F

    move-result v0

    float-to-int v2, v0

    .line 906
    .local v2, startY:I
    float-to-int v0, p1

    sub-int v3, v0, v1

    .line 907
    .local v3, dx:I
    float-to-int v0, p2

    sub-int v4, v0, v2

    .line 908
    .local v4, dy:I
    if-nez v3, :cond_2

    if-eqz v4, :cond_3

    .line 909
    :cond_2
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->mScroller:Landroid/widget/Scroller;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 910
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 913
    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public getDraggableObjectAtPoint(Lcom/jingdong/common/utils/MultiTouchController$PointInfo;)Lcom/jingdong/common/utils/TouchImageView$Img;
    .locals 1
    .parameter

    .prologue
    .line 137
    .local p1, pt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;,"Lcom/jingdong/common/utils/MultiTouchController$PointInfo;"
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    return-object v0
.end method

.method public bridge synthetic getDraggableObjectAtPoint(Lcom/jingdong/common/utils/MultiTouchController$PointInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/jingdong/common/utils/TouchImageView;->getDraggableObjectAtPoint(Lcom/jingdong/common/utils/MultiTouchController$PointInfo;)Lcom/jingdong/common/utils/TouchImageView$Img;

    move-result-object v0

    return-object v0
.end method

.method public getImg()Lcom/jingdong/common/utils/TouchImageView$Img;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    return-object v0
.end method

.method public getPositionAndScale(Lcom/jingdong/common/utils/TouchImageView$Img;Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)V
    .locals 10
    .parameter "img"
    .parameter

    .prologue
    .local p2, objPosAndScaleOut:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;,"Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;"
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 160
    invoke-virtual {p1}, Lcom/jingdong/common/utils/TouchImageView$Img;->getCenterX()F

    move-result v1

    invoke-virtual {p1}, Lcom/jingdong/common/utils/TouchImageView$Img;->getCenterY()F

    move-result v2

    iget v3, p0, Lcom/jingdong/common/utils/TouchImageView;->mUIMode:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    move v3, v0

    :goto_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/TouchImageView$Img;->getScaleX()F

    move-result v4

    invoke-virtual {p1}, Lcom/jingdong/common/utils/TouchImageView$Img;->getScaleY()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget v5, p0, Lcom/jingdong/common/utils/TouchImageView;->mUIMode:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    move v5, v0

    :goto_1
    invoke-virtual {p1}, Lcom/jingdong/common/utils/TouchImageView$Img;->getScaleX()F

    move-result v6

    invoke-virtual {p1}, Lcom/jingdong/common/utils/TouchImageView$Img;->getScaleY()F

    move-result v7

    iget v9, p0, Lcom/jingdong/common/utils/TouchImageView;->mUIMode:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_0

    move v8, v0

    :cond_0
    move-object v0, p2

    invoke-virtual/range {v0 .. v8}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->set(FFZFZFFZ)V

    .line 161
    return-void

    :cond_1
    move v3, v8

    .line 160
    goto :goto_0

    :cond_2
    move v5, v8

    goto :goto_1
.end method

.method public bridge synthetic getPositionAndScale(Ljava/lang/Object;Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {p0, p1, p2}, Lcom/jingdong/common/utils/TouchImageView;->getPositionAndScale(Lcom/jingdong/common/utils/TouchImageView$Img;Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)V

    return-void
.end method

.method public getTapListener()Lcom/jingdong/common/utils/TouchImageView$ControllListener;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->mControllListener:Lcom/jingdong/common/utils/TouchImageView$ControllListener;

    return-object v0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->load()V

    .line 93
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 103
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->load()V

    .line 107
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/TouchImageView$Img;->draw(Landroid/graphics/Canvas;)V

    .line 108
    iget-boolean v0, p0, Lcom/jingdong/common/utils/TouchImageView;->mShowDebugInfo:Z

    if-eqz v0, :cond_1

    .line 109
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/TouchImageView;->drawMultitouchDebugMarks(Landroid/graphics/Canvas;)V

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/jingdong/common/utils/TouchImageView;->computeAnimation()V

    goto :goto_0
.end method

.method protected onImgRecycled()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onScale(FFF)Z
    .locals 2
    .parameter "focusX"
    .parameter "focusY"
    .parameter "scale"

    .prologue
    const/4 v1, 0x1

    .line 874
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    if-nez v0, :cond_1

    .line 880
    :cond_0
    :goto_0
    return v1

    .line 877
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    #calls: Lcom/jingdong/common/utils/TouchImageView$Img;->scale(FFFF)Z
    invoke-static {v0, p1, p2, p3, p3}, Lcom/jingdong/common/utils/TouchImageView$Img;->access$4(Lcom/jingdong/common/utils/TouchImageView$Img;FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onScaleBegin(FF)Z
    .locals 1
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/4 v0, 0x1

    .line 868
    iput-boolean v0, p0, Lcom/jingdong/common/utils/TouchImageView;->isScaling:Z

    .line 869
    return v0
.end method

.method public onScaleEnd()V
    .locals 1

    .prologue
    .line 885
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/common/utils/TouchImageView;->isScaling:Z

    .line 886
    invoke-virtual {p0}, Lcom/jingdong/common/utils/TouchImageView;->snapback()V

    .line 887
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->mGesDetector:Lcom/jingdong/common/utils/TouchImageView$GesDetector;

    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/TouchImageView$GesDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 129
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->multiTouchController:Lcom/jingdong/common/utils/MultiTouchController;

    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/MultiTouchController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public selectObject(Lcom/jingdong/common/utils/TouchImageView$Img;Lcom/jingdong/common/utils/MultiTouchController$PointInfo;)V
    .locals 1
    .parameter "img"
    .parameter

    .prologue
    .line 145
    .local p2, touchPoint:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;,"Lcom/jingdong/common/utils/MultiTouchController$PointInfo;"
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->currTouchPoint:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v0, p2}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->set(Lcom/jingdong/common/utils/MultiTouchController$PointInfo;)V

    .line 151
    invoke-virtual {p0}, Lcom/jingdong/common/utils/TouchImageView;->invalidate()V

    .line 152
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 85
    new-instance v0, Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/common/utils/TouchImageView$Img;-><init>(Lcom/jingdong/common/utils/TouchImageView;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    .line 86
    invoke-virtual {p0}, Lcom/jingdong/common/utils/TouchImageView;->invalidate()V

    .line 87
    return-void
.end method

.method public setTapListener(Lcom/jingdong/common/utils/TouchImageView$ControllListener;)V
    .locals 0
    .parameter "tapListener"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/jingdong/common/utils/TouchImageView;->mControllListener:Lcom/jingdong/common/utils/TouchImageView$ControllListener;

    .line 267
    return-void
.end method

.method snapback()V
    .locals 5

    .prologue
    const/high16 v4, 0x4040

    const/high16 v3, 0x3f80

    .line 846
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    if-nez v1, :cond_1

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    invoke-direct {p0}, Lcom/jingdong/common/utils/TouchImageView;->endDrag()Z

    move-result v0

    .line 851
    .local v0, needInvalidate:Z
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/TouchImageView$Img;->getScaleX()F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 852
    or-int/lit8 v0, v0, 0x1

    .line 853
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView;->mScaleAnimation:Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;

    iget-object v2, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/TouchImageView$Img;->getScaleX()F

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->init(FF)V

    .line 854
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView;->mScaleAnimation:Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->start()V

    .line 860
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 861
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 855
    :cond_3
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/TouchImageView$Img;->getScaleX()F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 856
    or-int/lit8 v0, v0, 0x1

    .line 857
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView;->mScaleAnimation:Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;

    iget-object v2, p0, Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/TouchImageView$Img;->getScaleX()F

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->init(FF)V

    .line 858
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView;->mScaleAnimation:Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/TouchImageView$ScaleAnimation;->start()V

    goto :goto_1
.end method

.method public trackballClicked()V
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/jingdong/common/utils/TouchImageView;->mUIMode:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/jingdong/common/utils/TouchImageView;->mUIMode:I

    .line 117
    invoke-virtual {p0}, Lcom/jingdong/common/utils/TouchImageView;->invalidate()V

    .line 118
    return-void
.end method
