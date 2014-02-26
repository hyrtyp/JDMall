.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$46;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->createSingleView(Lcom/jingdong/common/entity/cart/CartResponseSku;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

.field private final synthetic val$numEt:Landroid/widget/TextView;

.field private final synthetic val$sku:Lcom/jingdong/common/entity/cart/CartResponseSku;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$46;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$46;->val$sku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$46;->val$numEt:Landroid/widget/TextView;

    .line 1665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(I)V
    .locals 6
    .parameter "num"

    .prologue
    const/4 v2, 0x0

    .line 1674
    move v4, p1

    .line 1676
    .local v4, newNum:I
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$46;->val$sku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$46;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->editSkus:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$46;->val$sku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    :goto_0
    return-void

    .line 1679
    :cond_0
    const/16 v0, 0x3e8

    if-le v4, v0, :cond_1

    .line 1680
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$46;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->editSkus:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$46;->val$sku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$46;->val$numEt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$46;->val$sku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1683
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$46;->val$sku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1684
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$46;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    const v1, 0x7f0704b6

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->toastShow(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$2(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;I)V

    goto :goto_0

    .line 1686
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$46;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$46;->val$sku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    const/4 v5, 0x1

    move-object v3, v2

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->productNumChange(Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;Lcom/jingdong/common/entity/cart/CartResponseSuit;II)V
    invoke-static/range {v0 .. v5}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;Lcom/jingdong/common/entity/cart/CartResponseSuit;II)V

    goto :goto_0
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$46;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->editSkus:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$46;->val$sku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    return-void
.end method
