.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$38;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductEvaluate()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$38;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 2048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 2052
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$38;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    const-class v2, Lcom/jingdong/app/mall/product/CommentListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2053
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$38;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->commentBundle:Landroid/os/Bundle;

    const-string v2, "product"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$38;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2054
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$38;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->commentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2055
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$38;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->startActivity(Landroid/content/Intent;)V

    .line 2056
    return-void
.end method
