.class Lcom/jingdong/app/mall/product/ProductDetailActivity$19;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;->showOrderCommentCountRunnable(Z)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$19;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 934
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$19;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getShowId()Ljava/lang/Long;

    move-result-object v1

    .line 938
    .local v1, id:Ljava/lang/Long;
    if-nez v1, :cond_0

    .line 949
    :goto_0
    return-void

    .line 941
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$19;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productOrderCommentCount:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$43(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 942
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$19;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    const-class v4, Lcom/jingdong/app/mall/product/DiscussListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 943
    .local v2, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 944
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "id"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 945
    const-string v3, "name"

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$19;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 948
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$19;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    invoke-virtual {v3, v2}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
