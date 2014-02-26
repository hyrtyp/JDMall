.class Lcom/jingdong/app/mall/category/CategoryActivity$10;
.super Landroid/widget/ImageView;
.source "CategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryActivity;->showPromotionsImage(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$10;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    .line 917
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 920
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 921
    .local v0, size:I
    int-to-float v1, v0

    const v2, 0x40428f5c

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/category/CategoryActivity$10;->setMeasuredDimension(II)V

    .line 922
    return-void
.end method
