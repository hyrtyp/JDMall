.class Lcom/jingdong/app/mall/product/ProductDetailActivity$18;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;->showDirectStockRunnableMethod(Z)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 672
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productJdPriceView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$39(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getProvinceStockContent()Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, provinceStock:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 679
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070518

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 681
    :cond_0
    const-string v0, ""

    .line 683
    .local v0, directProvinceName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getCityName()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->addString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$40(Lcom/jingdong/app/mall/product/ProductDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 684
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getCountyName()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->addString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$40(Lcom/jingdong/app/mall/product/ProductDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getTownName()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->addString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$40(Lcom/jingdong/app/mall/product/ProductDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 683
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 690
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_1

    .end local v1           #provinceStock:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->stockProvinceName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$41(Lcom/jingdong/app/mall/product/ProductDetailActivity;Ljava/lang/String;)V

    .line 691
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productStockProvinceChoosed:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$42(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    return-void

    .line 690
    .restart local v1       #provinceStock:Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method
