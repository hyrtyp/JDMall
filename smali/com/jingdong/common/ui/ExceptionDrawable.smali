.class public Lcom/jingdong/common/ui/ExceptionDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ExceptionDrawable.java"


# static fields
.field private static bitmap:Landroid/graphics/Bitmap;

.field private static height:I

.field private static width:I


# instance fields
.field protected paint:Landroid/graphics/Paint;

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/common/ui/ExceptionDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "text"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 42
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/jingdong/common/ui/ExceptionDrawable;->paint:Landroid/graphics/Paint;

    .line 45
    iget-object v2, p0, Lcom/jingdong/common/ui/ExceptionDrawable;->paint:Landroid/graphics/Paint;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v2, p0, Lcom/jingdong/common/ui/ExceptionDrawable;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v2, p0, Lcom/jingdong/common/ui/ExceptionDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x4140

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 48
    iget-object v2, p0, Lcom/jingdong/common/ui/ExceptionDrawable;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 49
    iget-object v2, p0, Lcom/jingdong/common/ui/ExceptionDrawable;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    iput-object p2, p0, Lcom/jingdong/common/ui/ExceptionDrawable;->text:Ljava/lang/String;

    .line 30
    sget-object v2, Lcom/jingdong/common/ui/ExceptionDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 32
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/MyApplication;->getDefalutDrawble()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 33
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/jingdong/common/ui/ExceptionDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 34
    sget-object v2, Lcom/jingdong/common/ui/ExceptionDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sput v2, Lcom/jingdong/common/ui/ExceptionDrawable;->width:I

    .line 35
    sget-object v2, Lcom/jingdong/common/ui/ExceptionDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sput v2, Lcom/jingdong/common/ui/ExceptionDrawable;->height:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, e:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/jingdong/common/ui/ExceptionDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 58
    .local v0, bounds:Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v1, v3

    .line 59
    .local v1, x:F
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 60
    .local v2, y:F
    iget-object v3, p0, Lcom/jingdong/common/ui/ExceptionDrawable;->text:Ljava/lang/String;

    iget-object v4, p0, Lcom/jingdong/common/ui/ExceptionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 61
    sget-object v3, Lcom/jingdong/common/ui/ExceptionDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 62
    sget-object v3, Lcom/jingdong/common/ui/ExceptionDrawable;->bitmap:Landroid/graphics/Bitmap;

    sget v4, Lcom/jingdong/common/ui/ExceptionDrawable;->width:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v1, v4

    sget v5, Lcom/jingdong/common/ui/ExceptionDrawable;->height:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v2, v5

    const/high16 v6, 0x4120

    invoke-static {v6}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/jingdong/common/ui/ExceptionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 64
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 73
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 77
    return-void
.end method
