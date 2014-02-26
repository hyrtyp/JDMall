.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$23;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

.field private final synthetic val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSuit;Lcom/jingdong/common/entity/cart/CartResponseSku;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$23;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$23;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 895
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 897
    .local v0, cb:Landroid/widget/CheckBox;
    new-instance v1, Lcom/jingdong/common/entity/cart/CartPackSummary;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$23;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSuitId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$23;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getNum()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$23;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getsType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 898
    .local v1, cps:Lcom/jingdong/common/entity/cart/CartPackSummary;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$23;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/cart/CartPackSummary;->addSku(Lcom/jingdong/common/entity/cart/CartSkuSummary;)V

    .line 900
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 901
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getUpdateListener()Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$19(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    move-result-object v3

    invoke-static {v2, v5, v1, v3}, Lcom/jingdong/app/mall/shopping/ShoppingController;->selectOneProductOrPack(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartPackSummary;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    .line 906
    :goto_0
    return-void

    .line 903
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getUpdateListener()Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$19(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    move-result-object v3

    invoke-static {v2, v5, v1, v3}, Lcom/jingdong/app/mall/shopping/ShoppingController;->unSelectOneProductOrPack(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartPackSummary;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    goto :goto_0
.end method
