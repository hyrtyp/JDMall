.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;Lcom/jingdong/common/entity/Product;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->val$product:Lcom/jingdong/common/entity/Product;

    iput p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->val$index:I

    .line 1834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;
    .locals 1
    .parameter

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 1840
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v1

    iget-boolean v1, v1, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bModified:Z

    if-nez v1, :cond_0

    .line 1842
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1843
    .local v0, alertDialog:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070327

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1844
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1845
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070354

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1846
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070328

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    .line 1847
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070329

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1848
    new-instance v2, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->val$product:Lcom/jingdong/common/entity/Product;

    iget v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;->val$index:I

    invoke-direct {v2, p0, v3, v4}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;Lcom/jingdong/common/entity/Product;I)V

    .line 1844
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1893
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1896
    .end local v0           #alertDialog:Landroid/app/AlertDialog$Builder;
    :cond_0
    return v5
.end method
