.class Lcom/jingdong/app/mall/product/ProductDetailActivity$22;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$22;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    .line 1093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1097
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$22;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productInfoView:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$45(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 1098
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$22;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    const-class v3, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1099
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1100
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "product"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$22;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1101
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1103
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$22;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    invoke-virtual {v2, v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1104
    return-void
.end method
