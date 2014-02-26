.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;

.field private final synthetic val$index:I

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;ILcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;

    iput p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->val$index:I

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->val$product:Lcom/jingdong/common/entity/Product;

    .line 1770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;
    .locals 1
    .parameter

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1775
    const/4 v2, 0x2

    .line 1774
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1776
    :cond_0
    new-instance v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1$1;

    iget v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->val$index:I

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-direct {v0, p0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;ILcom/jingdong/common/entity/Product;)V

    .line 1793
    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1$1;->start()V

    .line 1795
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1796
    return-void
.end method
