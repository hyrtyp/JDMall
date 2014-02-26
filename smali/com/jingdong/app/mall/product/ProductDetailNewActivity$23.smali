.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$23;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForDetailStocks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

.field private final synthetic val$imageList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$23;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$23;->val$imageList:Ljava/util/List;

    .line 1548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1553
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$23;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productImageViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$53(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ProductDetailPagerAdapter;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$23;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$23;->val$imageList:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ProductDetailPagerAdapter;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1554
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$23;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productImageViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$53(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ImageViewpageChangeListener;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$23;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    invoke-direct {v1, v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ImageViewpageChangeListener;-><init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1557
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$23;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->imageCount:I
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$4(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$23;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailImageLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$54(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1559
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$23;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$23;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->imageCount:I
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$4(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)I

    move-result v1

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->updateImageCount(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$55(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;I)V

    .line 1560
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$23;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->updateCurrentImage(I)V
    invoke-static {v0, v4}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$6(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;I)V

    .line 1564
    :goto_0
    return-void

    .line 1562
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$23;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailImageLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$54(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
