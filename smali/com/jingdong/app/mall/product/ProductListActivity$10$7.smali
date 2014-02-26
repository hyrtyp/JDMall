.class Lcom/jingdong/app/mall/product/ProductListActivity$10$7;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity$10;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

.field private final synthetic val$productTotalCount:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity$10;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$7;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$7;->val$productTotalCount:Ljava/lang/Integer;

    .line 1214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$7;->val$productTotalCount:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$7;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->searchCateText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$41(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$7;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$42(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1226
    :goto_0
    return-void

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$7;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->searchCateText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$41(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$7;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v1

    const v2, 0x7f07029d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$7;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v5

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->name:Ljava/lang/String;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$42(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$7;->val$productTotalCount:Ljava/lang/Integer;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/jingdong/app/mall/product/ProductListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
