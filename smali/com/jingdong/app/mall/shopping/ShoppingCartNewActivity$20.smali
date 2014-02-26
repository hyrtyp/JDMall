.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$20;
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

.field private final synthetic val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

.field private final synthetic val$zengpinSummary:Lcom/jingdong/common/entity/cart/CartResponseGift;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseGift;Lcom/jingdong/common/entity/cart/CartResponseSuit;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$20;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$20;->val$zengpinSummary:Lcom/jingdong/common/entity/cart/CartResponseGift;

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$20;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$20;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    .line 794
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$20;->val$zengpinSummary:Lcom/jingdong/common/entity/cart/CartResponseGift;

    .line 795
    new-instance v2, Lcom/jingdong/common/entity/cart/CartPackSummary;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$20;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSuitId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$20;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getNum()Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$20;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getsType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 796
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$20;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getUpdateListener()Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$19(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    move-result-object v3

    .line 793
    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/ShoppingController;->deleteOneGiftFormPack(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartPackSummary;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    .line 797
    return-void
.end method
