.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$20;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showConsultationCount(Z)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$20;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 1409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1412
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$20;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productConsultationCount:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$48(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 1413
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$20;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    const-class v3, Lcom/jingdong/app/mall/product/BuyAskListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1415
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1416
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "id"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$20;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getShowId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1417
    const-string v2, "name"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$20;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailBasicInfo:Lcom/jingdong/common/entity/ProductDetailBasicInfo;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$25(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/ProductDetailBasicInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1420
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$20;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    invoke-virtual {v2, v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->startActivity(Landroid/content/Intent;)V

    .line 1421
    return-void
.end method
