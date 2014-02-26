.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$19;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showOrderCommentCountRunnable(Z)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$19;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 1348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1352
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$19;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getShowId()Ljava/lang/Long;

    move-result-object v1

    .line 1356
    .local v1, id:Ljava/lang/Long;
    if-nez v1, :cond_0

    .line 1367
    :goto_0
    return-void

    .line 1359
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$19;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productOrderCommentCount:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$47(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 1360
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$19;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    const-class v4, Lcom/jingdong/app/mall/product/DiscussListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1361
    .local v2, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1362
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "id"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1363
    const-string v3, "name"

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$19;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailBasicInfo:Lcom/jingdong/common/entity/ProductDetailBasicInfo;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$25(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/ProductDetailBasicInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1366
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$19;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    invoke-virtual {v3, v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
