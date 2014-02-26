.class Lcom/jingdong/app/mall/product/ProductDetailActivity$21;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;->showCommentCountRunnable(Z)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$21;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1036
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$21;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentCountLinear:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$35(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 1037
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$21;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    const-class v2, Lcom/jingdong/app/mall/product/CommentListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1038
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$21;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentBundle:Landroid/os/Bundle;

    const-string v2, "product"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$21;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1039
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$21;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/ProductDetailActivity;->commentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1040
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$21;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1041
    return-void
.end method
