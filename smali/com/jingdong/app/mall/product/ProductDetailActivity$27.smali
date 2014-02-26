.class Lcom/jingdong/app/mall/product/ProductDetailActivity$27;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForPromotion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

.field private final synthetic val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;Lcom/jingdong/app/mall/utils/ProductShow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$27;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$27;->val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;

    .line 1290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 1295
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$27;->val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/ProductShow;->getPromotionTitleAndInfo()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1296
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$27;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productPromotionView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$29(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1297
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1299
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$27;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productUserPriceView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$53(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1300
    const v1, 0x7f0c0525

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1336
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$27;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productPromotionView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$29(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1337
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$27;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productPromotionView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$29(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1338
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$27;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productPromotionView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$29(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$27;->val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/ProductShow;->getPromotionTitleAndInfo()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1342
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    return-void

    .line 1302
    .restart local v0       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$27;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productMarketPriceView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$52(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$27;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->priceReportButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$54(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1303
    const v1, 0x7f0c0524

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 1305
    :cond_1
    const v1, 0x7f0c0523

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 1340
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$27;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productPromotionView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$29(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
