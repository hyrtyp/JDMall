.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1$1;
.super Ljava/lang/Thread;
.source "ShoppingCarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;

.field private final synthetic val$index:I

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;ILcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1$1;->this$4:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;

    iput p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1$1;->val$index:I

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1$1;->val$product:Lcom/jingdong/common/entity/Product;

    .line 1776
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;
    .locals 1
    .parameter

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1$1;->this$4:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1779
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1780
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1$1;->this$4:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updateCartItemData()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$3(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    .line 1781
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1$1;->this$4:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1$1;->val$index:I

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1$1;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->deleteCartItem(ILjava/lang/Long;)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$29(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;ILjava/lang/Long;)V

    .line 1783
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1$1;->this$4:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updateCartItem()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$5(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    .line 1784
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1$1;->this$4:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1$1$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1$1$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1$1$1;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->post(Ljava/lang/Runnable;)V

    .line 1792
    return-void
.end method
