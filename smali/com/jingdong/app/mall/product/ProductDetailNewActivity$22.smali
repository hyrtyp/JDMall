.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$22;
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


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$22;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 1534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$22;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->titleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$50(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$22;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    const v2, 0x7f0701e3

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1538
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$22;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->commentBundle:Landroid/os/Bundle;

    const-string v1, "name"

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$22;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$22;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->shareButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$51(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$22;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$22;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$22;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailShareLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$52(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/utils/ProductShow;->shareProductNew(Landroid/widget/Button;Lcom/jingdong/common/entity/Product;Lcom/jingdong/common/utils/HttpGroup;Landroid/widget/LinearLayout;)V

    .line 1540
    return-void
.end method
