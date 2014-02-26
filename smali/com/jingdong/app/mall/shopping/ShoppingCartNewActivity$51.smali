.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->showDeleteDetailFavoriteDialog(Lcom/jingdong/common/entity/cart/CartResponseSku;Lcom/jingdong/common/entity/cart/CartResponseSuit;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

.field private final synthetic val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

.field private final synthetic val$isPack:Z

.field private final synthetic val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;ZLcom/jingdong/common/entity/cart/CartResponseSuit;Lcom/jingdong/common/entity/cart/CartResponseSku;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-boolean p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->val$isPack:Z

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    iput-object p4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 1945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1951
    if-nez p2, :cond_3

    .line 1952
    :try_start_0
    iget-boolean v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->val$isPack:Z

    if-eqz v2, :cond_2

    .line 1953
    new-instance v0, Lcom/jingdong/common/entity/cart/CartPackSummary;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSuitId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getNum()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getsType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1954
    .local v0, cps:Lcom/jingdong/common/entity/cart/CartPackSummary;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    if-eqz v2, :cond_0

    .line 1955
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v0, v2}, Lcom/jingdong/common/entity/cart/CartPackSummary;->addSku(Lcom/jingdong/common/entity/cart/CartSkuSummary;)V

    .line 1958
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getUpdateListener()Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$19(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/jingdong/app/mall/shopping/ShoppingController;->deleteOnePack(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartPackSummary;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1973
    .end local v0           #cps:Lcom/jingdong/common/entity/cart/CartPackSummary;
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1974
    return-void

    .line 1960
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getUpdateListener()Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$19(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/jingdong/app/mall/shopping/ShoppingController;->deleteOneProduct(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1969
    :catch_0
    move-exception v1

    .line 1970
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1962
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    .line 1964
    :try_start_2
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    iget-boolean v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->val$isPack:Z

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->forwardToProductDetail(Lcom/jingdong/common/entity/cart/CartResponseSku;Z)V
    invoke-static {v2, v3, v4}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$33(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;Z)V

    goto :goto_0

    .line 1965
    :cond_4
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 1967
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->addCollect(J)V
    invoke-static {v2, v3, v4}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$36(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
