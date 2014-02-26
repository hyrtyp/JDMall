.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19$1;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/shopping/GiftSelectDialog$SelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;

.field private final synthetic val$getHandselBut:Landroid/widget/TextView;

.field private final synthetic val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;Lcom/jingdong/common/entity/cart/CartResponseSuit;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19$1;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19$1;->val$getHandselBut:Landroid/widget/TextView;

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDissmiss()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19$1;->val$getHandselBut:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 729
    return-void
.end method

.method public onSelect(Lcom/jingdong/common/entity/cart/CartResponseGift;)V
    .locals 5
    .parameter "select"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    .line 722
    new-instance v1, Lcom/jingdong/common/entity/cart/CartPackSummary;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19$1;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getPackId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19$1;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getNum()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19$1;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getsType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 723
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getUpdateListener()Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$19(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    move-result-object v2

    .line 720
    invoke-static {v0, p1, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingController;->addOneGiftToPack(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartPackSummary;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    .line 724
    return-void
.end method
