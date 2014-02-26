.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$18;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->createPackView(Lcom/jingdong/common/entity/cart/CartResponseSuit;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

.field private final synthetic val$defaultNumEt:Landroid/widget/TextView;

.field private final synthetic val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSuit;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$18;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$18;->val$defaultNumEt:Landroid/widget/TextView;

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(I)V
    .locals 6
    .parameter "num"

    .prologue
    const/4 v1, 0x0

    .line 658
    move v4, p1

    .line 660
    .local v4, newNum:I
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$18;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getNum()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 662
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->editPacks:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$18;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSuitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    :goto_0
    return-void

    .line 663
    :cond_0
    const/16 v0, 0x3e8

    if-le v4, v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$18;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getNum()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 665
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$18;->val$defaultNumEt:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    const v1, 0x7f0704b6

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->toastShow(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$2(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;I)V

    .line 668
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->editPacks:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$18;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSuitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$18;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    const/4 v5, 0x3

    move-object v2, v1

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->productNumChange(Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;Lcom/jingdong/common/entity/cart/CartResponseSuit;II)V
    invoke-static/range {v0 .. v5}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;Lcom/jingdong/common/entity/cart/CartResponseSuit;II)V

    goto :goto_0
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->editPacks:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$18;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSuitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    return-void
.end method
