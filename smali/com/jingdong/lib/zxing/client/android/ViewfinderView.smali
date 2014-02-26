.class public final Lcom/jingdong/lib/zxing/client/android/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0xaL

.field private static final CORNER_WIDTH:I = 0xa

.field private static MIDDLE_LINE_HEIGHT:I = 0x0

.field private static final MIDDLE_LINE_PADDING:I = 0x1

.field private static final OPAQUE:I = 0xff

.field private static final SPEEN_DISTANCE:I = 0xf

.field private static final TAG:Ljava/lang/String; = "log"

.field private static final TEXT_PADDING_TOP:I = 0x1e

.field private static final TEXT_SIZE:I = 0x10

.field private static density:F


# instance fields
.field private final ScreenRate:I

.field private arrowBmp:Landroid/graphics/Bitmap;

.field private bgBmp:Landroid/graphics/Bitmap;

.field private bgPadding:I

.field isFirst:Z

.field isLine:Z

.field isReverse:Z

.field private lastPossibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private middleBmp:Landroid/graphics/Bitmap;

.field private middleLineBmp:Landroid/graphics/Bitmap;

.field private final paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private slideBottom:I

.field private slideTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/high16 v0, 0x425c

    invoke-static {v0}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v0

    sput v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->MIDDLE_LINE_HEIGHT:I

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    const/high16 v1, 0x4120

    invoke-static {v1}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    iput v1, p0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->bgPadding:I

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->isLine:Z

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->density:F

    .line 133
    const/high16 v1, 0x41a0

    sget v2, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->ScreenRate:I

    .line 135
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 136
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 137
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0900b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->maskColor:I

    .line 138
    const v1, 0x7f0900b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->resultColor:I

    .line 140
    const v1, 0x7f0900b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->resultPointColor:I

    .line 141
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 143
    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->middleBmp:Landroid/graphics/Bitmap;

    .line 144
    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->middleLineBmp:Landroid/graphics/Bitmap;

    .line 145
    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->arrowBmp:Landroid/graphics/Bitmap;

    .line 146
    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->bgBmp:Landroid/graphics/Bitmap;

    .line 147
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 2
    .parameter "point"

    .prologue
    .line 316
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    monitor-enter v1

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 316
    monitor-exit v1

    .line 319
    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "barcode"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 312
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->invalidate()V

    .line 313
    return-void
.end method

.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 301
    invoke-virtual {p0}, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->invalidate()V

    .line 302
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 32
    .parameter "canvas"

    .prologue
    .line 152
    invoke-static {}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->get()Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v23

    .line 153
    .local v23, frame:Landroid/graphics/Rect;
    if-nez v23, :cond_0

    .line 297
    :goto_0
    return-void

    .line 158
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->isFirst:Z

    if-nez v4, :cond_1

    .line 159
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->isFirst:Z

    .line 160
    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->bgPadding:I

    add-int/2addr v4, v5

    sget v5, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->MIDDLE_LINE_HEIGHT:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->slideTop:I

    .line 161
    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->bgPadding:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->slideBottom:I

    .line 165
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    .line 166
    .local v31, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v24

    .line 169
    .local v24, height:I
    const/high16 v4, 0x41c8

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v26

    .line 170
    .local v26, padding:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->resultColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    add-int v7, v31, v26

    int-to-float v7, v7

    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int v8, v8, v26

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 172
    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v6, v6, v26

    int-to-float v6, v6

    move-object/from16 v0, v23

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v7, v7, v26

    int-to-float v7, v7

    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int v8, v8, v26

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 173
    new-instance v4, Landroid/graphics/RectF;

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, 0x1

    add-int v5, v5, v26

    int-to-float v5, v5

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v6, v6, v26

    int-to-float v6, v6

    add-int v7, v31, v26

    int-to-float v7, v7

    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int v8, v8, v26

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 174
    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int v6, v6, v26

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    add-int v7, v31, v26

    int-to-float v7, v7

    add-int v8, v24, v26

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->resultColor:I

    :goto_1
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 176
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->maskColor:I

    goto :goto_1

    .line 201
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const v5, -0xff0100

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 203
    .local v9, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->arrowBmp:Landroid/graphics/Bitmap;

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->arrowBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .local v19, bmpW:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->arrowBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 205
    .local v18, bmpH:I
    const/high16 v4, 0x42b4

    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->arrowBmp:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->arrowBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->arrowBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int v5, v5, v19

    int-to-float v5, v5

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 207
    const/high16 v4, 0x4334

    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->arrowBmp:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->arrowBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->arrowBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int v5, v5, v19

    int-to-float v5, v5

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v6, v18

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 209
    const/high16 v4, 0x4387

    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->arrowBmp:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->arrowBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->arrowBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v6, v18

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->bgBmp:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v5, v6, v7, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    move-object/from16 v0, v23

    iget v7, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->bgPadding:I

    add-int/2addr v7, v8

    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->bgPadding:I

    add-int/2addr v8, v10

    move-object/from16 v0, v23

    iget v10, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->bgPadding:I

    sub-int/2addr v10, v11

    move-object/from16 v0, v23

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->bgPadding:I

    sub-int/2addr v11, v12

    invoke-direct {v6, v7, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 222
    const/16 v17, 0x0

    .line 223
    .local v17, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->isLine:Z

    if-eqz v4, :cond_6

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->middleLineBmp:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    .line 225
    const/high16 v4, 0x4020

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    sput v4, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->MIDDLE_LINE_HEIGHT:I

    .line 232
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->isReverse:Z

    if-eqz v4, :cond_7

    .line 233
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->slideTop:I

    add-int/lit8 v4, v4, -0xf

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->slideTop:I

    .line 237
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->slideTop:I

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->bgPadding:I

    sub-int/2addr v5, v6

    sget v6, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->MIDDLE_LINE_HEIGHT:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_8

    .line 238
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->isLine:Z

    .line 239
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->isReverse:Z

    .line 240
    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->bgPadding:I

    sub-int/2addr v4, v5

    sget v5, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->MIDDLE_LINE_HEIGHT:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->slideTop:I

    .line 247
    :cond_4
    :goto_4
    new-instance v22, Landroid/graphics/Rect;

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->bgPadding:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->slideTop:I

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->bgPadding:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->slideTop:I

    sget v8, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->MIDDLE_LINE_HEIGHT:I

    add-int/2addr v7, v8

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 248
    .local v22, dst:Landroid/graphics/Rect;
    if-eqz v17, :cond_9

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_9

    .line 249
    new-instance v29, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 250
    .local v29, src:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v29

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 256
    .end local v29           #src:Landroid/graphics/Rect;
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const v5, -0xbbb5b3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x4180

    sget v6, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->density:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const-string v5, "System"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070572

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 261
    .local v25, hintString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v30

    .line 262
    .local v30, txtWidth:F
    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v28, v4, 0x2

    .line 263
    .local v28, rectCoreLeft:I
    move/from16 v0, v28

    int-to-float v4, v0

    const/high16 v5, 0x4000

    div-float v5, v30, v5

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v28, v0

    .line 264
    move/from16 v0, v28

    int-to-float v4, v0

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int v5, v5, v26

    int-to-float v5, v5

    const/high16 v6, 0x41f0

    sget v7, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->density:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    move-object/from16 v21, v0

    .line 267
    .local v21, currentPossible:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    move-object/from16 v20, v0

    .line 269
    .local v20, currentLast:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 270
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 283
    :goto_6
    if-eqz v20, :cond_5

    .line 284
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    monitor-enter v5

    .line 285
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v6, 0x7f

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 286
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->resultPointColor:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 287
    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_c

    .line 284
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 294
    :cond_5
    const-wide/16 v11, 0xa

    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v23

    iget v14, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v23

    iget v15, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_0

    .line 227
    .end local v20           #currentLast:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    .end local v21           #currentPossible:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    .end local v22           #dst:Landroid/graphics/Rect;
    .end local v25           #hintString:Ljava/lang/String;
    .end local v28           #rectCoreLeft:I
    .end local v30           #txtWidth:F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->middleBmp:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    .line 228
    const/high16 v4, 0x425c

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    sput v4, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->MIDDLE_LINE_HEIGHT:I

    goto/16 :goto_2

    .line 235
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->slideTop:I

    add-int/lit8 v4, v4, 0xf

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->slideTop:I

    goto/16 :goto_3

    .line 241
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->slideTop:I

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->bgPadding:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_4

    .line 243
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->isReverse:Z

    .line 244
    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->bgPadding:I

    add-int/2addr v4, v5

    sget v5, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->MIDDLE_LINE_HEIGHT:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->slideTop:I

    goto/16 :goto_4

    .line 252
    .restart local v22       #dst:Landroid/graphics/Rect;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 272
    .restart local v20       #currentLast:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    .restart local v21       #currentPossible:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    .restart local v25       #hintString:Ljava/lang/String;
    .restart local v28       #rectCoreLeft:I
    .restart local v30       #txtWidth:F
    :cond_a
    new-instance v4, Ljava/util/HashSet;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 273
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    monitor-enter v5

    .line 274
    :try_start_1
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->resultPointColor:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 277
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_b

    .line 273
    monitor-exit v5

    goto/16 :goto_6

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 277
    :cond_b
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/google/zxing/ResultPoint;

    .line 278
    .local v27, point:Lcom/google/zxing/ResultPoint;
    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    add-float/2addr v6, v7

    move-object/from16 v0, v23

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x40c0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    .line 287
    .end local v27           #point:Lcom/google/zxing/ResultPoint;
    :cond_c
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/google/zxing/ResultPoint;

    .line 288
    .restart local v27       #point:Lcom/google/zxing/ResultPoint;
    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    add-float/2addr v6, v7

    move-object/from16 v0, v23

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x4040

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jingdong/lib/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 284
    .end local v27           #point:Lcom/google/zxing/ResultPoint;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method
