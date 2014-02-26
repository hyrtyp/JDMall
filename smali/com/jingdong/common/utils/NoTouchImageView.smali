.class public Lcom/jingdong/common/utils/NoTouchImageView;
.super Landroid/widget/ImageView;
.source "NoTouchImageView.java"


# static fields
.field private static final DRAG:I = 0x1

.field private static final NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TouchImageView"


# instance fields
.field private currentMatrix:Landroid/graphics/Matrix;

.field private currentScale:F

.field private globalRect:Landroid/graphics/Rect;

.field private imageBotttom:F

.field private imageCenterPoint:Landroid/graphics/PointF;

.field private imageLeft:F

.field private imageRight:F

.field private imageTop:F

.field private isInitStandardMatrix:Z

.field private midPoint:Landroid/graphics/PointF;

.field private mode:I

.field private referenceDistance:F

.field private referenceImageCenterPoint:Landroid/graphics/PointF;

.field private referenceMatrix:Landroid/graphics/Matrix;

.field private referencePoint:Landroid/graphics/PointF;

.field private referenceScale:F

.field private srcHeight:I

.field private srcWidth:I

.field private standardMatrix:Landroid/graphics/Matrix;

.field private standardScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->standardMatrix:Landroid/graphics/Matrix;

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referenceMatrix:Landroid/graphics/Matrix;

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentMatrix:Landroid/graphics/Matrix;

    .line 28
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referenceDistance:F

    .line 30
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referencePoint:Landroid/graphics/PointF;

    .line 32
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->midPoint:Landroid/graphics/PointF;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->mode:I

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->globalRect:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referenceImageCenterPoint:Landroid/graphics/PointF;

    .line 44
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->imageCenterPoint:Landroid/graphics/PointF;

    .line 60
    invoke-direct {p0}, Lcom/jingdong/common/utils/NoTouchImageView;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->standardMatrix:Landroid/graphics/Matrix;

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referenceMatrix:Landroid/graphics/Matrix;

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentMatrix:Landroid/graphics/Matrix;

    .line 28
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referenceDistance:F

    .line 30
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referencePoint:Landroid/graphics/PointF;

    .line 32
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->midPoint:Landroid/graphics/PointF;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->mode:I

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->globalRect:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referenceImageCenterPoint:Landroid/graphics/PointF;

    .line 44
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->imageCenterPoint:Landroid/graphics/PointF;

    .line 65
    invoke-direct {p0}, Lcom/jingdong/common/utils/NoTouchImageView;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->standardMatrix:Landroid/graphics/Matrix;

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referenceMatrix:Landroid/graphics/Matrix;

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentMatrix:Landroid/graphics/Matrix;

    .line 28
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referenceDistance:F

    .line 30
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referencePoint:Landroid/graphics/PointF;

    .line 32
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->midPoint:Landroid/graphics/PointF;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->mode:I

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->globalRect:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referenceImageCenterPoint:Landroid/graphics/PointF;

    .line 44
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->imageCenterPoint:Landroid/graphics/PointF;

    .line 70
    invoke-direct {p0}, Lcom/jingdong/common/utils/NoTouchImageView;->init()V

    .line 71
    return-void
.end method

.method private correctZoom()V
    .locals 4

    .prologue
    const/high16 v3, 0x4080

    .line 162
    iget v1, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentScale:F

    iget v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->standardScale:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 164
    iget v1, p0, Lcom/jingdong/common/utils/NoTouchImageView;->standardScale:F

    iput v1, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentScale:F

    .line 166
    iget-object v1, p0, Lcom/jingdong/common/utils/NoTouchImageView;->imageCenterPoint:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->midPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 167
    iget-object v1, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->standardMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 169
    :cond_0
    iget v1, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentScale:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    .line 171
    iput v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentScale:F

    .line 173
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 174
    .local v0, tempMatrix:Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/jingdong/common/utils/NoTouchImageView;->standardMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 175
    iget-object v1, p0, Lcom/jingdong/common/utils/NoTouchImageView;->midPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->midPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 176
    iget-object v1, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 178
    .end local v0           #tempMatrix:Landroid/graphics/Matrix;
    :cond_1
    iget-object v1, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/NoTouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 179
    return-void
.end method

.method private getCurHeight()F
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->srcHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getCurWidth()F
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->srcWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method private zoom(F)V
    .locals 6
    .parameter "scale"

    .prologue
    const/4 v5, 0x0

    .line 132
    iget-object v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->midPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/jingdong/common/utils/NoTouchImageView;->midPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, p1, p1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 134
    iget v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentScale:F

    mul-float/2addr v2, p1

    iput v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentScale:F

    .line 142
    iget-object v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referenceImageCenterPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->midPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v0, v2, v3

    .line 143
    .local v0, x:F
    iget-object v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referenceImageCenterPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->midPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v1, v2, v3

    .line 144
    .local v1, y:F
    cmpg-float v2, v0, v5

    if-gez v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->imageCenterPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referenceImageCenterPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 146
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, p1

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    sub-float/2addr v3, v4

    .line 145
    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 151
    :goto_0
    cmpg-float v2, v0, v5

    if-gez v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->imageCenterPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referenceImageCenterPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 153
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, p1

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    sub-float/2addr v3, v4

    .line 152
    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 158
    :goto_1
    iget-object v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2}, Lcom/jingdong/common/utils/NoTouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 159
    return-void

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->imageCenterPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referenceImageCenterPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 149
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, p1

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    add-float/2addr v3, v4

    .line 148
    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->imageCenterPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referenceImageCenterPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 156
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, p1

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    add-float/2addr v3, v4

    .line 155
    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto :goto_1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 216
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 218
    iget-boolean v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->isInitStandardMatrix:Z

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->standardMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/jingdong/common/utils/NoTouchImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 220
    iget-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referenceMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/jingdong/common/utils/NoTouchImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 221
    iget-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/jingdong/common/utils/NoTouchImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->isInitStandardMatrix:Z

    .line 224
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 99
    :cond_0
    :goto_0
    return v5

    .line 81
    :pswitch_0
    iget-object v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referencePoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 82
    iget-object v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referenceMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/jingdong/common/utils/NoTouchImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 83
    iput v5, p0, Lcom/jingdong/common/utils/NoTouchImageView;->mode:I

    goto :goto_0

    .line 86
    :pswitch_1
    iget v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->mode:I

    if-ne v2, v5, :cond_0

    .line 87
    iget-object v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referenceMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referencePoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v0, v2, v3

    .line 89
    .local v0, offsetX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->referencePoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v1, v2, v3

    .line 90
    .local v1, offsetY:F
    iget-object v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 91
    iget-object v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2}, Lcom/jingdong/common/utils/NoTouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 95
    .end local v0           #offsetX:F
    .end local v1           #offsetY:F
    :pswitch_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/jingdong/common/utils/NoTouchImageView;->mode:I

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected setFrame(IIII)Z
    .locals 6
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v1

    .line 185
    .local v1, result:Z
    invoke-virtual {p0}, Lcom/jingdong/common/utils/NoTouchImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-eq v3, v4, :cond_0

    .line 186
    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v3}, Lcom/jingdong/common/utils/NoTouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/NoTouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->srcHeight:I

    .line 190
    invoke-virtual {p0}, Lcom/jingdong/common/utils/NoTouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->srcWidth:I

    .line 192
    iget-object v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->globalRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/jingdong/common/utils/NoTouchImageView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 194
    iget-object v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->midPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->midPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_1

    .line 195
    iget-object v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->midPoint:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/jingdong/common/utils/NoTouchImageView;->globalRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/jingdong/common/utils/NoTouchImageView;->globalRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 198
    :cond_1
    iget-object v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->globalRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/jingdong/common/utils/NoTouchImageView;->srcHeight:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 199
    .local v0, heightScale:F
    iget-object v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->globalRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/jingdong/common/utils/NoTouchImageView;->srcWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 200
    .local v2, widthScale:F
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->standardScale:F

    .line 202
    iget-object v3, p0, Lcom/jingdong/common/utils/NoTouchImageView;->imageCenterPoint:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/jingdong/common/utils/NoTouchImageView;->globalRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/jingdong/common/utils/NoTouchImageView;->globalRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 210
    return v1
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    iget-object v0, p0, Lcom/jingdong/common/utils/NoTouchImageView;->currentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/jingdong/common/utils/NoTouchImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 107
    return-void
.end method

.method public zoomIn()V
    .locals 1

    .prologue
    .line 121
    const v0, 0x3f4ccccd

    invoke-direct {p0, v0}, Lcom/jingdong/common/utils/NoTouchImageView;->zoom(F)V

    .line 129
    return-void
.end method

.method public zoomOut()V
    .locals 1

    .prologue
    .line 110
    const/high16 v0, 0x3fa0

    invoke-direct {p0, v0}, Lcom/jingdong/common/utils/NoTouchImageView;->zoom(F)V

    .line 118
    return-void
.end method
