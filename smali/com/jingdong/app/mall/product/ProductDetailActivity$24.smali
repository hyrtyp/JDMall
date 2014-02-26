.class Lcom/jingdong/app/mall/product/ProductDetailActivity$24;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForDetailStocks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

.field private final synthetic val$imageList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$24;->val$imageList:Ljava/util/List;

    .line 1124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1129
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productImageViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$48(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailActivity$ProductDetailPagerAdapter;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$24;->val$imageList:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/jingdong/app/mall/product/ProductDetailActivity$ProductDetailPagerAdapter;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1130
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productImageViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$48(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/product/ProductDetailActivity$ImageViewpageChangeListener;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    invoke-direct {v1, v2}, Lcom/jingdong/app/mall/product/ProductDetailActivity$ImageViewpageChangeListener;-><init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1132
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->imageCount:I
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$2(Lcom/jingdong/app/mall/product/ProductDetailActivity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productDetailImageLayoutOld:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$49(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1135
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->imageCount:I
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$2(Lcom/jingdong/app/mall/product/ProductDetailActivity;)I

    move-result v1

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->updateImageCount(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$50(Lcom/jingdong/app/mall/product/ProductDetailActivity;I)V

    .line 1136
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->updateCurrentImage(I)V
    invoke-static {v0, v4}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$4(Lcom/jingdong/app/mall/product/ProductDetailActivity;I)V

    .line 1140
    :goto_0
    return-void

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productDetailImageLayoutOld:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$49(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
