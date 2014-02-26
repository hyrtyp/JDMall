.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;

.field private final synthetic val$index:I

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;Lcom/jingdong/common/entity/Product;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;->val$product:Lcom/jingdong/common/entity/Product;

    iput p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;->val$index:I

    .line 1848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;
    .locals 1
    .parameter

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 1854
    if-nez p2, :cond_1

    .line 1855
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v1

    const/4 v2, 0x1

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bUpdate:Z
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$28(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Z)V

    .line 1856
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v1

    const/4 v2, 0x1

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bUpdate:Z
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$28(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Z)V

    .line 1858
    new-instance v1, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1$1;

    iget v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;->val$index:I

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-direct {v1, p0, v2, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;ILcom/jingdong/common/entity/Product;)V

    .line 1868
    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1$1;->start()V

    .line 1870
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1888
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1889
    return-void

    .line 1871
    :cond_1
    if-ne p2, v1, :cond_2

    .line 1872
    :try_start_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v1

    iget-boolean v1, v1, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bModified:Z

    if-nez v1, :cond_0

    .line 1874
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v2

    .line 1875
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1876
    new-instance v4, Lcom/jingdong/common/entity/SourceEntity;

    const-string v5, "shoppingCart_product"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    invoke-static {v1, v2, v3, v4}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1884
    :catch_0
    move-exception v0

    .line 1885
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1878
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 1879
    :try_start_2
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v1

    iget-boolean v1, v1, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bModified:Z

    if-nez v1, :cond_0

    .line 1881
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;->val$product:Lcom/jingdong/common/entity/Product;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->addCollect(Lcom/jingdong/common/entity/Product;)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$30(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/entity/Product;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
