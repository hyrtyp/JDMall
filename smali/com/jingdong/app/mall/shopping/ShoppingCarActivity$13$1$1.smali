.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

.field private final synthetic val$index:I

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;ILcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    iput p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->val$index:I

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->val$product:Lcom/jingdong/common/entity/Product;

    .line 1756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;
    .locals 1
    .parameter

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1763
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v2

    const/4 v3, 0x1

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bUpdate:Z
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$28(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Z)V

    .line 1764
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mDone:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1766
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1768
    .local v0, alertDialog:Landroid/app/AlertDialog$Builder;
    const-string v2, "\u5220\u9664\u786e\u8ba4"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1769
    const-string v2, "\u60a8\u786e\u5b9a\u8981\u5220\u9664\u8fd9\u4e2a\u5546\u54c1\u5417\uff1f"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1770
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;

    iget v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->val$index:I

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-direct {v3, p0, v4, v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;ILcom/jingdong/common/entity/Product;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1798
    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$2;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$2;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1805
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1813
    .end local v0           #alertDialog:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 1809
    :catch_0
    move-exception v1

    .line 1810
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
