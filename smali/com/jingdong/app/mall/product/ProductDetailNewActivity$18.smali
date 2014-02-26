.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$18;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showDirectStockRunnableMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 1084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1088
    const-string v3, ""

    .line 1089
    .local v3, provinceStock:Ljava/lang/String;
    const-string v0, ""

    .line 1090
    .local v0, directProvinceName:Ljava/lang/String;
    const-string v1, ""

    .line 1092
    .local v1, jdPrice:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getProvinceStockContent()Ljava/lang/String;

    move-result-object v3

    .line 1093
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getCityName()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->addString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$44(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1094
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getCountyName()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->addString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$44(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getTownName()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->addString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$44(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1093
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1100
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1101
    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070518

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1109
    :cond_0
    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_1

    move-object v4, v3

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->stockProvinceName:Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$45(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Ljava/lang/String;)V

    .line 1111
    new-instance v2, Lcom/jingdong/app/mall/utils/ProductShow;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/jingdong/app/mall/utils/ProductShow;-><init>(Landroid/content/Context;Lcom/jingdong/common/entity/Product;)V

    .line 1114
    .local v2, productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productJdPriceView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$46(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/ProductShow;->getJdPrice()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$18;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productStockProvinceChoosed:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$43(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    .end local v2           #productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    :goto_1
    return-void

    .line 1109
    :cond_1
    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1117
    :catch_0
    move-exception v4

    goto :goto_1
.end method
