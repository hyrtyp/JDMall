.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;
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

.field private final synthetic val$cartResponse:Lcom/jingdong/common/entity/cart/CartResponse;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->val$cartResponse:Lcom/jingdong/common/entity/cart/CartResponse;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/16 v7, 0x8

    const/4 v12, 0x0

    .line 335
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->loadErrorLayout:Landroid/view/View;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$8(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 336
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->loadErrorLayout:Landroid/view/View;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$8(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 338
    :cond_0
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->nodataLayout:Landroid/view/View;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$7(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 339
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->nodataLayout:Landroid/view/View;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$7(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 341
    :cond_1
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shoppingListView:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$21(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getVisibility()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 342
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shoppingListView:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$21(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/widget/ListView;->setVisibility(I)V

    .line 345
    :cond_2
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->val$cartResponse:Lcom/jingdong/common/entity/cart/CartResponse;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/cart/CartResponse;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 347
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->cartCountYunFei:Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->cartCountYunFei:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->val$cartResponse:Lcom/jingdong/common/entity/cart/CartResponse;

    invoke-virtual {v7}, Lcom/jingdong/common/entity/cart/CartResponse;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :goto_0
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->val$cartResponse:Lcom/jingdong/common/entity/cart/CartResponse;

    invoke-virtual {v7}, Lcom/jingdong/common/entity/cart/CartResponse;->getInfo()Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getPrice()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->StringtoDouble(Ljava/lang/String;)D
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$22(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Ljava/lang/String;)D

    move-result-wide v6

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->val$cartResponse:Lcom/jingdong/common/entity/cart/CartResponse;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/cart/CartResponse;->getInfo()Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getDiscount()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->StringtoDouble(Ljava/lang/String;)D
    invoke-static {v8, v9}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$22(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Ljava/lang/String;)D

    move-result-wide v8

    sub-double v4, v6, v8

    .line 355
    .local v4, yuanShiPrice:D
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->val$cartResponse:Lcom/jingdong/common/entity/cart/CartResponse;

    invoke-virtual {v7}, Lcom/jingdong/common/entity/cart/CartResponse;->getInfo()Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getRePrice()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->StringtoDouble(Ljava/lang/String;)D
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$22(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Ljava/lang/String;)D

    move-result-wide v2

    .line 357
    .local v2, rePrice:D
    sub-double v0, v4, v2

    .line 359
    .local v0, finalPrice:D
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->cartOriginalReturnPriceTv:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v7

    const v8, 0x7f0704b4

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->formatPriceString(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$23(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->formatPriceString(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$23(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-virtual {v7, v8, v9}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->cartCountPriceTv:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v7

    const v8, 0x7f0704b5

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->formatPriceString(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$23(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->adapter:Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$1(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->isExisSelectItem()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 363
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->cartSettleAccountsBut:Landroid/widget/Button;

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 368
    :goto_1
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->adapter:Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$1(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->notifyDataSetChanged()V

    .line 370
    return-void

    .line 350
    .end local v0           #finalPrice:D
    .end local v2           #rePrice:D
    .end local v4           #yuanShiPrice:D
    :cond_3
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->cartCountYunFei:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 365
    .restart local v0       #finalPrice:D
    .restart local v2       #rePrice:D
    .restart local v4       #yuanShiPrice:D
    :cond_4
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->cartSettleAccountsBut:Landroid/widget/Button;

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method
