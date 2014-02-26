.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$11;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForEasyBuy()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 844
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailBasicInfo:Lcom/jingdong/common/entity/ProductDetailBasicInfo;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$25(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/ProductDetailBasicInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->isEasyBuy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 845
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->easyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$2(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 846
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->easyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$2(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 847
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isCanBuy()Z
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$20(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->easyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$2(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 855
    :goto_0
    return-void

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->easyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$2(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$11;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->easyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$2(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
