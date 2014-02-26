.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$25;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForPromotion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

.field private final synthetic val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Lcom/jingdong/app/mall/utils/ProductShow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$25;->val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;

    .line 1673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1678
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$25;->val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/ProductShow;->getPromotionTitleAndInfoNew()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1679
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPromotionView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$65(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1680
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1681
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailPromotionLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$66(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1682
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPromotionView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$65(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1683
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPromotionView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$65(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$25;->val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/ProductShow;->getPromotionTitleAndInfoNew()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1689
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 1686
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailPromotionLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$66(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1687
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPromotionView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$65(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
