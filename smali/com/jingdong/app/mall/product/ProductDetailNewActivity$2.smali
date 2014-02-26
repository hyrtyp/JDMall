.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$2;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/product/ProductThridAddress$ProductDetailUpdataUIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(IJ)V
    .locals 2
    .parameter "resultCode"
    .parameter "productId"

    .prologue
    const/16 v1, 0xb

    .line 293
    const/16 v0, 0x15

    if-eq v0, p1, :cond_0

    if-ne v1, p1, :cond_3

    .line 295
    :cond_0
    if-ne v1, p1, :cond_1

    .line 296
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showAllProductDetail()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$8(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProduct(J)V
    invoke-static {v0, p2, p3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;J)V

    .line 307
    :cond_2
    :goto_0
    return-void

    .line 300
    :cond_3
    const/16 v0, 0x14

    if-ne v0, p1, :cond_2

    .line 301
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showDirectStockRunnableMethod()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$9(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    .line 302
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getProvinceStockContent()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->updatePromise(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$11(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->updateColorAndSizeTextView()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$12(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    .line 304
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->initCartButton()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$13(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    .line 305
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForEasyBuy()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$14(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    goto :goto_0
.end method
