.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$11;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->updateData(Lcom/jingdong/common/entity/cart/CartResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 434
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->isAllSelect:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$18(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->allSelectBut:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$24(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020113

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 440
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deleteSingleProducts:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$13(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deletePackProducts:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$14(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deleteBut:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$25(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 447
    :goto_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->footPriceView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shoppingFunctionLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$26(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 450
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shoppingFunctionLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$26(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shadowView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$27(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 453
    :cond_0
    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->allSelectBut:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$24(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020114

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deleteBut:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$25(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method
