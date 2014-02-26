.class public Lcom/jingdong/app/mall/product/ProductDetailActivity$ImageViewpageChangeListener;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageViewpageChangeListener"
.end annotation


# instance fields
.field isFirst:Z

.field oldView:Landroid/view/View;

.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1645
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$ImageViewpageChangeListener;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$ImageViewpageChangeListener;->oldView:Landroid/view/View;

    .line 1647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$ImageViewpageChangeListener;->isFirst:Z

    return-void
.end method

.method private setCurIdentification(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1666
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$ImageViewpageChangeListener;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->imageCount:I
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$2(Lcom/jingdong/app/mall/product/ProductDetailActivity;)I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$ImageViewpageChangeListener;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->currentIndex:I
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$3(Lcom/jingdong/app/mall/product/ProductDetailActivity;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 1672
    :cond_0
    :goto_0
    return-void

    .line 1670
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$ImageViewpageChangeListener;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->updateCurrentImage(I)V
    invoke-static {v0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$4(Lcom/jingdong/app/mall/product/ProductDetailActivity;I)V

    .line 1671
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$ImageViewpageChangeListener;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #setter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->currentIndex:I
    invoke-static {v0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$5(Lcom/jingdong/app/mall/product/ProductDetailActivity;I)V

    goto :goto_0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1663
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1659
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1654
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailActivity$ImageViewpageChangeListener;->setCurIdentification(I)V

    .line 1655
    return-void
.end method
