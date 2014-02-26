.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$34;
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

.field private final synthetic val$ybselect:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$34;->val$ybselect:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    .line 1268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1272
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$34;->val$ybselect:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1274
    new-instance v0, Lcom/jingdong/common/entity/cart/CartPackSummary;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$34;->val$ybselect:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getrWid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$34;->val$ybselect:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getrSuitId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "7"

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1275
    .local v0, ybPack:Lcom/jingdong/common/entity/cart/CartPackSummary;
    new-instance v1, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$34;->val$ybselect:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$34;->val$ybselect:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jingdong/common/entity/cart/CartSkuSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1276
    .local v1, ybSku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/cart/CartPackSummary;->addSku(Lcom/jingdong/common/entity/cart/CartSkuSummary;)V

    .line 1278
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getUpdateListener()Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$19(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/jingdong/app/mall/shopping/ShoppingController;->deleteOnePack(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartPackSummary;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    .line 1281
    .end local v0           #ybPack:Lcom/jingdong/common/entity/cart/CartPackSummary;
    .end local v1           #ybSku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    :cond_0
    return-void
.end method
