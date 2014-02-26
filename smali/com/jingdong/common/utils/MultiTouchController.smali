.class public Lcom/jingdong/common/utils/MultiTouchController;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;,
        Lcom/jingdong/common/utils/MultiTouchController$PointInfo;,
        Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static ACTION_POINTER_INDEX_SHIFT:I = 0x0

.field private static ACTION_POINTER_UP:I = 0x0

.field public static final DEBUG:Z = false

.field private static final EVENT_SETTLE_TIME_INTERVAL:J = 0x14L

.field private static final MAX_MULTITOUCH_DIM_JUMP_SIZE:F = 40.0f

.field private static final MAX_MULTITOUCH_POS_JUMP_SIZE:F = 30.0f

.field public static final MAX_TOUCH_POINTS:I = 0x14

.field private static final MIN_MULTITOUCH_SEPARATION:F = 30.0f

.field private static final MODE_DRAG:I = 0x1

.field private static final MODE_NOTHING:I = 0x0

.field private static final MODE_PINCH:I = 0x2

.field private static m_getHistoricalPressure:Ljava/lang/reflect/Method;

.field private static m_getHistoricalX:Ljava/lang/reflect/Method;

.field private static m_getHistoricalY:Ljava/lang/reflect/Method;

.field private static m_getPointerCount:Ljava/lang/reflect/Method;

.field private static m_getPointerId:Ljava/lang/reflect/Method;

.field private static m_getPressure:Ljava/lang/reflect/Method;

.field private static m_getX:Ljava/lang/reflect/Method;

.field private static m_getY:Ljava/lang/reflect/Method;

.field public static final multiTouchSupported:Z

.field private static final pointerIds:[I

.field private static final pressureVals:[F

.field private static final xVals:[F

.field private static final yVals:[F


# instance fields
.field private handleSingleTouchEvents:Z

.field private mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

.field private mCurrPtAng:F

.field private mCurrPtDiam:F

.field private mCurrPtHeight:F

.field private mCurrPtWidth:F

.field private mCurrPtX:F

.field private mCurrPtY:F

.field private mCurrXform:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;

.field private mMode:I

.field private mPrevPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

.field private mSettleEndTime:J

.field private mSettleStartTime:J

.field objectCanvas:Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas",
            "<TT;>;"
        }
    .end annotation
.end field

.field private selectedObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private startPosX:F

.field private startPosY:F

.field private startScaleOverPinchDiam:F

.field private startScaleXOverPinchWidth:F

.field private startScaleYOverPinchHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x14

    .line 198
    const/4 v2, 0x6

    sput v2, Lcom/jingdong/common/utils/MultiTouchController;->ACTION_POINTER_UP:I

    .line 199
    const/16 v2, 0x8

    sput v2, Lcom/jingdong/common/utils/MultiTouchController;->ACTION_POINTER_INDEX_SHIFT:I

    .line 202
    const/4 v1, 0x0

    .line 205
    .local v1, succeeded:Z
    :try_start_0
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerCount"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/jingdong/common/utils/MultiTouchController;->m_getPointerCount:Ljava/lang/reflect/Method;

    .line 206
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/jingdong/common/utils/MultiTouchController;->m_getPointerId:Ljava/lang/reflect/Method;

    .line 207
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPressure"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/jingdong/common/utils/MultiTouchController;->m_getPressure:Ljava/lang/reflect/Method;

    .line 208
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalX"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/jingdong/common/utils/MultiTouchController;->m_getHistoricalX:Ljava/lang/reflect/Method;

    .line 209
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalY"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/jingdong/common/utils/MultiTouchController;->m_getHistoricalY:Ljava/lang/reflect/Method;

    .line 210
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalPressure"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/jingdong/common/utils/MultiTouchController;->m_getHistoricalPressure:Ljava/lang/reflect/Method;

    .line 211
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getX"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/jingdong/common/utils/MultiTouchController;->m_getX:Ljava/lang/reflect/Method;

    .line 212
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getY"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/jingdong/common/utils/MultiTouchController;->m_getY:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    const/4 v1, 0x1

    .line 217
    :goto_0
    sput-boolean v1, Lcom/jingdong/common/utils/MultiTouchController;->multiTouchSupported:Z

    .line 218
    sget-boolean v2, Lcom/jingdong/common/utils/MultiTouchController;->multiTouchSupported:Z

    if-eqz v2, :cond_0

    .line 222
    :try_start_1
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "ACTION_POINTER_UP"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sput v2, Lcom/jingdong/common/utils/MultiTouchController;->ACTION_POINTER_UP:I

    .line 223
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "ACTION_POINTER_INDEX_SHIFT"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sput v2, Lcom/jingdong/common/utils/MultiTouchController;->ACTION_POINTER_INDEX_SHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 231
    :cond_0
    :goto_1
    new-array v2, v7, [F

    sput-object v2, Lcom/jingdong/common/utils/MultiTouchController;->xVals:[F

    .line 232
    new-array v2, v7, [F

    sput-object v2, Lcom/jingdong/common/utils/MultiTouchController;->yVals:[F

    .line 233
    new-array v2, v7, [F

    sput-object v2, Lcom/jingdong/common/utils/MultiTouchController;->pressureVals:[F

    .line 234
    new-array v2, v7, [I

    sput-object v2, Lcom/jingdong/common/utils/MultiTouchController;->pointerIds:[I

    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MultiTouchController"

    const-string v3, "static initializer failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 224
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Lcom/jingdong/common/utils/MultiTouchController;,"Lcom/jingdong/common/utils/MultiTouchController<TT;>;"
    .local p1, objectCanvas:Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;,"Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/jingdong/common/utils/MultiTouchController;-><init>(Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;Z)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;Z)V
    .locals 1
    .parameter
    .parameter "handleSingleTouchEvents"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, this:Lcom/jingdong/common/utils/MultiTouchController;,"Lcom/jingdong/common/utils/MultiTouchController<TT;>;"
    .local p1, objectCanvas:Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;,"Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->selectedObject:Ljava/lang/Object;

    .line 128
    new-instance v0, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;

    invoke-direct {v0}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrXform:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mMode:I

    .line 165
    new-instance v0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-direct {v0}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    .line 166
    new-instance v0, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-direct {v0}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mPrevPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    .line 167
    iput-boolean p2, p0, Lcom/jingdong/common/utils/MultiTouchController;->handleSingleTouchEvents:Z

    .line 168
    iput-object p1, p0, Lcom/jingdong/common/utils/MultiTouchController;->objectCanvas:Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;

    .line 169
    return-void
.end method

.method private anchorAtThisPositionAndScale()V
    .locals 5

    .prologue
    .local p0, this:Lcom/jingdong/common/utils/MultiTouchController;,"Lcom/jingdong/common/utils/MultiTouchController<TT;>;"
    const/high16 v2, 0x3f80

    .line 314
    iget-object v1, p0, Lcom/jingdong/common/utils/MultiTouchController;->selectedObject:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/jingdong/common/utils/MultiTouchController;->objectCanvas:Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v3, p0, Lcom/jingdong/common/utils/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrXform:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;

    invoke-interface {v1, v3, v4}, Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;->getPositionAndScale(Ljava/lang/Object;Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)V

    .line 325
    iget-object v1, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrXform:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;

    #getter for: Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->updateScale:Z
    invoke-static {v1}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->access$0(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    div-float v0, v2, v1

    .line 326
    .local v0, currScaleInv:F
    invoke-direct {p0}, Lcom/jingdong/common/utils/MultiTouchController;->extractCurrPtInfo()V

    .line 327
    iget v1, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPtX:F

    iget-object v2, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrXform:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;

    #getter for: Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->xOff:F
    invoke-static {v2}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->access$4(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController;->startPosX:F

    .line 328
    iget v1, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPtY:F

    iget-object v2, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrXform:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;

    #getter for: Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->yOff:F
    invoke-static {v2}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->access$5(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController;->startPosY:F

    .line 329
    iget-object v1, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrXform:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;

    #getter for: Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->scale:F
    invoke-static {v1}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->access$3(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)F

    move-result v1

    iget v2, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPtDiam:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController;->startScaleOverPinchDiam:F

    .line 330
    iget-object v1, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrXform:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;

    #getter for: Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->scaleX:F
    invoke-static {v1}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->access$6(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)F

    move-result v1

    iget v2, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPtWidth:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController;->startScaleXOverPinchWidth:F

    .line 331
    iget-object v1, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrXform:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;

    #getter for: Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->scaleY:F
    invoke-static {v1}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->access$7(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)F

    move-result v1

    iget v2, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPtHeight:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController;->startScaleYOverPinchHeight:F

    goto :goto_0

    .line 325
    .end local v0           #currScaleInv:F
    :cond_1
    iget-object v1, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrXform:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;

    #getter for: Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->scale:F
    invoke-static {v1}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->access$3(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrXform:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;

    #getter for: Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->scale:F
    invoke-static {v1}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->access$3(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)F

    move-result v1

    goto :goto_1
.end method

.method private decodeTouchEvent(I[F[F[F[IIZJ)V
    .locals 11
    .parameter "pointerCount"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "pointerIds"
    .parameter "action"
    .parameter "down"
    .parameter "eventTime"

    .prologue
    .line 302
    .local p0, this:Lcom/jingdong/common/utils/MultiTouchController;,"Lcom/jingdong/common/utils/MultiTouchController<TT;>;"
    iget-object v10, p0, Lcom/jingdong/common/utils/MultiTouchController;->mPrevPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    .line 303
    .local v10, tmp:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;,"Lcom/jingdong/common/utils/MultiTouchController$PointInfo;"
    iget-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    iput-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mPrevPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    .line 304
    iput-object v10, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    .line 306
    iget-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    #calls: Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->set(I[F[F[F[IIZJ)V
    invoke-static/range {v0 .. v9}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->access$0(Lcom/jingdong/common/utils/MultiTouchController$PointInfo;I[F[F[F[IIZJ)V

    .line 307
    invoke-direct {p0}, Lcom/jingdong/common/utils/MultiTouchController;->multiTouchController()V

    .line 308
    return-void
.end method

.method private extractCurrPtInfo()V
    .locals 4

    .prologue
    .local p0, this:Lcom/jingdong/common/utils/MultiTouchController;,"Lcom/jingdong/common/utils/MultiTouchController<TT;>;"
    const/high16 v3, 0x41f0

    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getX()F

    move-result v0

    iput v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPtX:F

    .line 112
    iget-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getY()F

    move-result v0

    iput v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPtY:F

    .line 113
    const v2, 0x41aa6666

    iget-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrXform:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;

    #getter for: Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->updateScale:Z
    invoke-static {v0}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->access$0(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPtDiam:F

    .line 114
    iget-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrXform:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;

    #getter for: Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->updateScaleXY:Z
    invoke-static {v0}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->access$1(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPtWidth:F

    .line 115
    iget-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrXform:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;

    #getter for: Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->updateScaleXY:Z
    invoke-static {v0}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->access$1(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPtHeight:F

    .line 116
    iget-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrXform:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;

    #getter for: Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->updateAngle:Z
    invoke-static {v0}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->access$2(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    iput v1, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPtAng:F

    .line 117
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getMultiTouchDiameter()F

    move-result v0

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getMultiTouchWidth()F

    move-result v0

    goto :goto_1

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getMultiTouchHeight()F

    move-result v0

    goto :goto_2

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getMultiTouchAngle()F

    move-result v1

    goto :goto_3
.end method

.method private multiTouchController()V
    .locals 11

    .prologue
    .local p0, this:Lcom/jingdong/common/utils/MultiTouchController;,"Lcom/jingdong/common/utils/MultiTouchController<TT;>;"
    const/high16 v10, 0x4220

    const/high16 v9, 0x41f0

    const/high16 v0, 0x3f80

    const/high16 v8, 0x3f00

    const-wide/16 v6, 0x14

    .line 346
    iget v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 351
    :pswitch_0
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isDown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->objectCanvas:Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v5, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-interface {v4, v5}, Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;->getDraggableObjectAtPoint(Lcom/jingdong/common/utils/MultiTouchController$PointInfo;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->selectedObject:Ljava/lang/Object;

    .line 354
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->selectedObject:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 356
    const/4 v4, 0x1

    iput v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mMode:I

    .line 358
    invoke-direct {p0}, Lcom/jingdong/common/utils/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 360
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mSettleEndTime:J

    iput-wide v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mSettleStartTime:J

    goto :goto_0

    .line 369
    :pswitch_1
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isDown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 371
    const/4 v4, 0x0

    iput v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mMode:I

    goto :goto_0

    .line 375
    :cond_1
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isMultiTouch()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 377
    const/4 v4, 0x2

    iput v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mMode:I

    .line 379
    invoke-direct {p0}, Lcom/jingdong/common/utils/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 381
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mSettleStartTime:J

    .line 382
    iget-wide v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mSettleStartTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mSettleEndTime:J

    .line 384
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->objectCanvas:Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v5, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v5}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getY()F

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;->onScaleBegin(FF)Z

    goto :goto_0

    .line 388
    :cond_2
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/jingdong/common/utils/MultiTouchController;->mSettleEndTime:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 391
    invoke-direct {p0}, Lcom/jingdong/common/utils/MultiTouchController;->anchorAtThisPositionAndScale()V

    goto :goto_0

    .line 394
    :cond_3
    invoke-direct {p0}, Lcom/jingdong/common/utils/MultiTouchController;->performDragOrPinch()V

    goto :goto_0

    .line 403
    :pswitch_2
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isMultiTouch()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isDown()Z

    move-result v4

    if-nez v4, :cond_6

    .line 406
    :cond_4
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->isDown()Z

    move-result v4

    if-nez v4, :cond_5

    .line 408
    const/4 v4, 0x0

    iput v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mMode:I

    .line 410
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->objectCanvas:Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;

    invoke-interface {v4}, Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;->onScaleEnd()V

    goto/16 :goto_0

    .line 414
    :cond_5
    const/4 v4, 0x1

    iput v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mMode:I

    .line 416
    invoke-direct {p0}, Lcom/jingdong/common/utils/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 418
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mSettleStartTime:J

    .line 419
    iget-wide v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mSettleStartTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mSettleEndTime:J

    goto/16 :goto_0

    .line 424
    :cond_6
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/jingdong/common/utils/MultiTouchController;->mPrevPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v5}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v9

    if-gtz v4, :cond_7

    .line 425
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/jingdong/common/utils/MultiTouchController;->mPrevPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v5}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v9

    if-gtz v4, :cond_7

    .line 426
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getMultiTouchWidth()F

    move-result v4

    iget-object v5, p0, Lcom/jingdong/common/utils/MultiTouchController;->mPrevPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v5}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getMultiTouchWidth()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v8

    cmpl-float v4, v4, v10

    if-gtz v4, :cond_7

    .line 427
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getMultiTouchHeight()F

    move-result v4

    iget-object v5, p0, Lcom/jingdong/common/utils/MultiTouchController;->mPrevPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v5}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getMultiTouchHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v8

    cmpl-float v4, v4, v10

    if-lez v4, :cond_8

    .line 429
    :cond_7
    invoke-direct {p0}, Lcom/jingdong/common/utils/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 430
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mSettleStartTime:J

    .line 431
    iget-wide v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mSettleStartTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mSettleEndTime:J

    goto/16 :goto_0

    .line 433
    :cond_8
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPt:Lcom/jingdong/common/utils/MultiTouchController$PointInfo;

    #getter for: Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->eventTime:J
    invoke-static {v4}, Lcom/jingdong/common/utils/MultiTouchController$PointInfo;->access$1(Lcom/jingdong/common/utils/MultiTouchController$PointInfo;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/jingdong/common/utils/MultiTouchController;->mSettleEndTime:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_9

    .line 435
    invoke-direct {p0}, Lcom/jingdong/common/utils/MultiTouchController;->anchorAtThisPositionAndScale()V

    goto/16 :goto_0

    .line 438
    :cond_9
    invoke-direct {p0}, Lcom/jingdong/common/utils/MultiTouchController;->performDragOrPinch()V

    .line 441
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->selectedObject:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 443
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrXform:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;

    #getter for: Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->updateScale:Z
    invoke-static {v4}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->access$0(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 444
    .local v0, currScale:F
    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/jingdong/common/utils/MultiTouchController;->extractCurrPtInfo()V

    .line 445
    iget v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPtX:F

    iget v5, p0, Lcom/jingdong/common/utils/MultiTouchController;->startPosX:F

    mul-float/2addr v5, v0

    sub-float v1, v4, v5

    .line 446
    .local v1, newPosX:F
    iget v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPtY:F

    iget v5, p0, Lcom/jingdong/common/utils/MultiTouchController;->startPosY:F

    mul-float/2addr v5, v0

    sub-float v2, v4, v5

    .line 447
    .local v2, newPosY:F
    iget v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->startScaleOverPinchDiam:F

    iget v5, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrPtDiam:F

    mul-float v3, v4, v5

    .line 448
    .local v3, newScale:F
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->objectCanvas:Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;

    invoke-interface {v4, v1, v2, v3}, Lcom/jingdong/common/utils/MultiTouchController$MultiTouchObjectCanvas;->onScale(FFF)Z

    goto/16 :goto_0

    .line 443
    .end local v0           #currScale:F
    .end local v1           #newPosX:F
    .end local v2           #newPosY:F
    .end local v3           #newScale:F
    :cond_b
    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrXform:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;

    #getter for: Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->scale:F
    invoke-static {v4}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->access$3(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/jingdong/common/utils/MultiTouchController;->mCurrXform:Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;

    #getter for: Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->scale:F
    invoke-static {v4}, Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;->access$3(Lcom/jingdong/common/utils/MultiTouchController$PositionAndScale;)F

    move-result v0

    goto :goto_1

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performDragOrPinch()V
    .locals 0

    .prologue
    .line 336
    .local p0, this:Lcom/jingdong/common/utils/MultiTouchController;,"Lcom/jingdong/common/utils/MultiTouchController<TT;>;"
    return-void
.end method


# virtual methods
.method protected getHandleSingleTouchEvents()Z
    .locals 1

    .prologue
    .line 184
    .local p0, this:Lcom/jingdong/common/utils/MultiTouchController;,"Lcom/jingdong/common/utils/MultiTouchController<TT;>;"
    iget-boolean v0, p0, Lcom/jingdong/common/utils/MultiTouchController;->handleSingleTouchEvents:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 239
    .local p0, this:Lcom/jingdong/common/utils/MultiTouchController;,"Lcom/jingdong/common/utils/MultiTouchController<TT;>;"
    :try_start_0
    sget-boolean v1, Lcom/jingdong/common/utils/MultiTouchController;->multiTouchSupported:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jingdong/common/utils/MultiTouchController;->m_getPointerCount:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 242
    .local v2, pointerCount:I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jingdong/common/utils/MultiTouchController;->mMode:I

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/jingdong/common/utils/MultiTouchController;->handleSingleTouchEvents:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-ne v2, v1, :cond_1

    .line 243
    const/4 v1, 0x0

    .line 293
    .end local v2           #pointerCount:I
    :goto_1
    return v1

    .line 239
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 247
    .restart local v2       #pointerCount:I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 248
    .local v11, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    div-int v14, v1, v2

    .line 249
    .local v14, histLen:I
    const/4 v13, 0x0

    .local v13, histIdx:I
    :goto_2
    if-le v13, v14, :cond_2

    .line 289
    const/4 v1, 0x1

    goto :goto_1

    .line 251
    :cond_2
    if-ge v13, v14, :cond_5

    const/16 v16, 0x1

    .line 252
    .local v16, processingHist:Z
    :goto_3
    sget-boolean v1, Lcom/jingdong/common/utils/MultiTouchController;->multiTouchSupported:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    if-ne v2, v1, :cond_9

    .line 258
    :cond_3
    sget-object v3, Lcom/jingdong/common/utils/MultiTouchController;->xVals:[F

    const/4 v4, 0x0

    if-eqz v16, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    :goto_4
    aput v1, v3, v4

    .line 259
    sget-object v3, Lcom/jingdong/common/utils/MultiTouchController;->yVals:[F

    const/4 v4, 0x0

    if-eqz v16, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v1

    :goto_5
    aput v1, v3, v4

    .line 260
    sget-object v3, Lcom/jingdong/common/utils/MultiTouchController;->pressureVals:[F

    const/4 v4, 0x0

    if-eqz v16, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v1

    :goto_6
    aput v1, v3, v4

    .line 281
    :cond_4
    sget-object v3, Lcom/jingdong/common/utils/MultiTouchController;->xVals:[F

    sget-object v4, Lcom/jingdong/common/utils/MultiTouchController;->yVals:[F

    sget-object v5, Lcom/jingdong/common/utils/MultiTouchController;->pressureVals:[F

    sget-object v6, Lcom/jingdong/common/utils/MultiTouchController;->pointerIds:[I

    .line 282
    if-eqz v16, :cond_d

    const/4 v7, 0x2

    .line 283
    :goto_7
    if-eqz v16, :cond_e

    const/4 v8, 0x1

    .line 286
    :goto_8
    if-eqz v16, :cond_10

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v9

    :goto_9
    move-object/from16 v1, p0

    .line 281
    invoke-direct/range {v1 .. v10}, Lcom/jingdong/common/utils/MultiTouchController;->decodeTouchEvent(I[F[F[F[IIZJ)V

    .line 249
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 251
    .end local v16           #processingHist:Z
    :cond_5
    const/16 v16, 0x0

    goto :goto_3

    .line 258
    .restart local v16       #processingHist:Z
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    goto :goto_4

    .line 259
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_5

    .line 260
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v1

    goto :goto_6

    .line 265
    :cond_9
    const/16 v1, 0x14

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 268
    .local v15, numPointers:I
    const/16 v18, 0x0

    .local v18, ptrIdx:I
    :goto_a
    move/from16 v0, v18

    if-ge v0, v15, :cond_4

    .line 269
    sget-object v1, Lcom/jingdong/common/utils/MultiTouchController;->m_getPointerId:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 270
    .local v17, ptrId:I
    sget-object v1, Lcom/jingdong/common/utils/MultiTouchController;->pointerIds:[I

    aput v17, v1, v18

    .line 274
    sget-object v3, Lcom/jingdong/common/utils/MultiTouchController;->xVals:[F

    if-eqz v16, :cond_a

    sget-object v1, Lcom/jingdong/common/utils/MultiTouchController;->m_getHistoricalX:Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_b
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v3, v18

    .line 275
    sget-object v3, Lcom/jingdong/common/utils/MultiTouchController;->yVals:[F

    if-eqz v16, :cond_b

    sget-object v1, Lcom/jingdong/common/utils/MultiTouchController;->m_getHistoricalY:Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_c
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v3, v18

    .line 276
    sget-object v3, Lcom/jingdong/common/utils/MultiTouchController;->pressureVals:[F

    if-eqz v16, :cond_c

    sget-object v1, Lcom/jingdong/common/utils/MultiTouchController;->m_getHistoricalPressure:Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 277
    :goto_d
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 276
    aput v1, v3, v18

    .line 268
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_a

    .line 274
    :cond_a
    sget-object v1, Lcom/jingdong/common/utils/MultiTouchController;->m_getX:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_b

    .line 275
    :cond_b
    sget-object v1, Lcom/jingdong/common/utils/MultiTouchController;->m_getY:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_c

    .line 276
    :cond_c
    sget-object v1, Lcom/jingdong/common/utils/MultiTouchController;->m_getPressure:Ljava/lang/reflect/Method;

    .line 277
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_d

    .end local v15           #numPointers:I
    .end local v17           #ptrId:I
    .end local v18           #ptrIdx:I
    :cond_d
    move v7, v11

    .line 282
    goto/16 :goto_7

    .line 283
    :cond_e
    const/4 v1, 0x1

    if-eq v11, v1, :cond_f

    .line 284
    const/4 v1, 0x1

    sget v8, Lcom/jingdong/common/utils/MultiTouchController;->ACTION_POINTER_INDEX_SHIFT:I

    shl-int/2addr v1, v8

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v11

    sget v8, Lcom/jingdong/common/utils/MultiTouchController;->ACTION_POINTER_UP:I

    if-eq v1, v8, :cond_f

    .line 285
    const/4 v1, 0x3

    if-eq v11, v1, :cond_f

    .line 283
    const/4 v8, 0x1

    goto/16 :goto_8

    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 286
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    goto/16 :goto_9

    .line 290
    .end local v2           #pointerCount:I
    .end local v11           #action:I
    .end local v13           #histIdx:I
    .end local v14           #histLen:I
    .end local v16           #processingHist:Z
    :catch_0
    move-exception v12

    .line 292
    .local v12, e:Ljava/lang/Exception;
    const-string v1, "MultiTouchController"

    const-string v3, "onTouchEvent() failed"

    invoke-static {v1, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method protected setHandleSingleTouchEvents(Z)V
    .locals 0
    .parameter "handleSingleTouchEvents"

    .prologue
    .line 177
    .local p0, this:Lcom/jingdong/common/utils/MultiTouchController;,"Lcom/jingdong/common/utils/MultiTouchController<TT;>;"
    iput-boolean p1, p0, Lcom/jingdong/common/utils/MultiTouchController;->handleSingleTouchEvents:Z

    .line 178
    return-void
.end method
