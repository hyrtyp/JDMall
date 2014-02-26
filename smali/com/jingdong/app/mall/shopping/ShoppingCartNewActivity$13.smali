.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$13;
.super Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;
.source "ShoppingCartNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;I)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    .line 482
    invoke-direct {p0, p2}, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 486
    if-nez p2, :cond_0

    .line 487
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 490
    :cond_0
    const/4 v4, 0x0

    .line 491
    .local v4, suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;
    const/4 v0, 0x0

    .line 492
    .local v0, giftItem:Lcom/jingdong/common/entity/cart/CartResponseGift;
    const/4 v3, 0x0

    .line 494
    .local v3, skuItem:Lcom/jingdong/common/entity/cart/CartResponseSku;
    const v5, 0x7f0c06b5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 495
    .local v2, singleView:Landroid/view/View;
    const v5, 0x7f0c06b6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 497
    .local v1, packLayout:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$13;->getItemType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 529
    :goto_0
    return-object p2

    .line 499
    :pswitch_0
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 500
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 502
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$13;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;
    check-cast v4, Lcom/jingdong/common/entity/cart/CartResponseSuit;

    .line 503
    .restart local v4       #suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 504
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->createPackView(Lcom/jingdong/common/entity/cart/CartResponseSuit;Landroid/view/View;)V
    invoke-static {v5, v4, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$28(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSuit;Landroid/view/View;)V

    goto :goto_0

    .line 509
    :pswitch_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 510
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 512
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$13;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #giftItem:Lcom/jingdong/common/entity/cart/CartResponseGift;
    check-cast v0, Lcom/jingdong/common/entity/cart/CartResponseGift;

    .line 513
    .restart local v0       #giftItem:Lcom/jingdong/common/entity/cart/CartResponseGift;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 514
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->createSingleView(Lcom/jingdong/common/entity/cart/CartResponseSku;Landroid/view/View;I)V
    invoke-static {v5, v0, v2, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$29(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;Landroid/view/View;I)V

    goto :goto_0

    .line 518
    :pswitch_2
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 519
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 521
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$13;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #skuItem:Lcom/jingdong/common/entity/cart/CartResponseSku;
    check-cast v3, Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 522
    .restart local v3       #skuItem:Lcom/jingdong/common/entity/cart/CartResponseSku;
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 523
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->createSingleView(Lcom/jingdong/common/entity/cart/CartResponseSku;Landroid/view/View;I)V
    invoke-static {v5, v3, v2, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$29(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;Landroid/view/View;I)V

    goto :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
