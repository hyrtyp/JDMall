.class Lcom/jingdong/app/mall/product/ProductDetailActivity$2;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/product/ProductThridAddress$ProductDetailUpdataUIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(IJ)V
    .locals 2
    .parameter "resultCode"
    .parameter "productId"

    .prologue
    const/4 v1, 0x0

    .line 209
    const/16 v0, 0x16

    if-ne v0, p1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProduct(JZ)V
    invoke-static {v0, p2, p3, v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$0(Lcom/jingdong/app/mall/product/ProductDetailActivity;JZ)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const/16 v0, 0x15

    if-ne v0, p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->showDirectStockRunnableMethod(Z)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$6(Lcom/jingdong/app/mall/product/ProductDetailActivity;Z)V

    .line 213
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getProvinceStockContent()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->updatePromise(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$8(Lcom/jingdong/app/mall/product/ProductDetailActivity;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->initCartButton()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$9(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    .line 215
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForEasyBuy()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    goto :goto_0
.end method
