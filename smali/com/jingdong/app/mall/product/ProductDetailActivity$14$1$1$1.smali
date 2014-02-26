.class Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1$1;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1;->onFinish(Lcom/jingdong/common/entity/Product;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1;

.field private final synthetic val$isFavorited:Z

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1$1;->this$3:Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1$1;->val$msg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1$1;->val$isFavorited:Z

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1$1;->this$3:Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1;->access$0(Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1;)Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailActivity$14;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;->access$0(Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;)Lcom/jingdong/app/mall/product/ProductDetailActivity$14;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity$14;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$14;->access$0(Lcom/jingdong/app/mall/product/ProductDetailActivity$14;)Lcom/jingdong/app/mall/product/ProductDetailActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1$1;->val$msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 537
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1$1;->val$isFavorited:Z

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1$1;->this$3:Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1;->access$0(Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1$1;)Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailActivity$14;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;->access$0(Lcom/jingdong/app/mall/product/ProductDetailActivity$14$1;)Lcom/jingdong/app/mall/product/ProductDetailActivity$14;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity$14;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity$14;->access$0(Lcom/jingdong/app/mall/product/ProductDetailActivity$14;)Lcom/jingdong/app/mall/product/ProductDetailActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->collectButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$19(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 540
    :cond_0
    return-void
.end method
