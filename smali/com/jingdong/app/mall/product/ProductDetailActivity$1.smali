.class Lcom/jingdong/app/mall/product/ProductDetailActivity$1;
.super Landroid/graphics/drawable/Drawable;
.source "ProductDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    .line 1441
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 1459
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1460
    .local v5, paint:Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1461
    const/high16 v0, 0x3300

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1462
    const/high16 v0, 0x4000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1464
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 1465
    .local v6, clipBounds:Landroid/graphics/Rect;
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1466
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 1453
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 1449
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 1445
    return-void
.end method
