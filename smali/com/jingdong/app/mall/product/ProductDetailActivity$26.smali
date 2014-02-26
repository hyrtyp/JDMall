.class Lcom/jingdong/app/mall/product/ProductDetailActivity$26;
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


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    .line 1225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const v5, 0x7f0c0523

    const/high16 v3, 0x4000

    const/4 v4, 0x0

    .line 1230
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getPriceReport()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1231
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x41f0

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1269
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->priceReportButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$54(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1270
    const/high16 v1, 0x4140

    invoke-static {v1}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    const/high16 v3, 0x4120

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1271
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1272
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1273
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1274
    const/4 v1, 0x3

    const v2, 0x7f0c0522

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1275
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->priceReportButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$54(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1276
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->priceReportButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$54(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1280
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 1278
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$26;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->priceReportButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$54(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
