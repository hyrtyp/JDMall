.class public Lcom/jingdong/common/controller/ShoppingBaseController$UpdateSourceEntityRunnable;
.super Ljava/lang/Object;
.source "ShoppingBaseController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/controller/ShoppingBaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateSourceEntityRunnable"
.end annotation


# instance fields
.field private cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/entity/cart/CartResponseInfo;)V
    .locals 0
    .parameter "cartResponseInfo"

    .prologue
    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1024
    iput-object p1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$UpdateSourceEntityRunnable;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    .line 1025
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1034
    iget-object v8, p0, Lcom/jingdong/common/controller/ShoppingBaseController$UpdateSourceEntityRunnable;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    if-nez v8, :cond_1

    .line 1038
    invoke-static {}, Lcom/jingdong/common/database/table/DB_PacksTable;->delAllPacksCart()V

    .line 1039
    invoke-static {}, Lcom/jingdong/common/database/table/DB_CartTable;->delAllCart()V

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1043
    :cond_1
    iget-object v8, p0, Lcom/jingdong/common/controller/ShoppingBaseController$UpdateSourceEntityRunnable;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getGifts()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_2

    .line 1044
    iget-object v8, p0, Lcom/jingdong/common/controller/ShoppingBaseController$UpdateSourceEntityRunnable;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getSkus()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_2

    .line 1045
    iget-object v8, p0, Lcom/jingdong/common/controller/ShoppingBaseController$UpdateSourceEntityRunnable;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getSuits()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 1051
    :cond_2
    invoke-static {}, Lcom/jingdong/common/database/table/DB_CartTable;->getCartListForProduct()Ljava/util/HashMap;

    move-result-object v5

    .line 1052
    .local v5, oldProductMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/Product;>;"
    iget-object v8, p0, Lcom/jingdong/common/controller/ShoppingBaseController$UpdateSourceEntityRunnable;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getAllBuyProduct()Ljava/util/ArrayList;

    move-result-object v1

    .line 1053
    .local v1, newProductList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1064
    invoke-static {}, Lcom/jingdong/common/database/table/DB_CartTable;->delAllCart()V

    .line 1065
    invoke-static {v1}, Lcom/jingdong/common/database/table/DB_CartTable;->insertAllCart(Ljava/util/List;)V

    .line 1068
    invoke-static {}, Lcom/jingdong/common/database/table/DB_PacksTable;->getPacksListForPack()Ljava/util/HashMap;

    move-result-object v3

    .line 1069
    .local v3, oldPackMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/Pack;>;"
    iget-object v8, p0, Lcom/jingdong/common/controller/ShoppingBaseController$UpdateSourceEntityRunnable;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getAllBuyPack()Ljava/util/ArrayList;

    move-result-object v0

    .line 1070
    .local v0, newPackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Pack;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1081
    invoke-static {}, Lcom/jingdong/common/database/table/DB_PacksTable;->delAllPacksCart()V

    .line 1082
    invoke-static {v0}, Lcom/jingdong/common/database/table/DB_PacksTable;->insertAllPacksCart(Ljava/util/List;)V

    goto :goto_0

    .line 1053
    .end local v0           #newPackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Pack;>;"
    .end local v3           #oldPackMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/Pack;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jingdong/common/entity/Product;

    .line 1054
    .local v7, product:Lcom/jingdong/common/entity/Product;
    invoke-virtual {v7}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/Product;

    .line 1055
    .local v4, oldProduct:Lcom/jingdong/common/entity/Product;
    if-eqz v4, :cond_4

    .line 1056
    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getSourceEntity()Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/jingdong/common/entity/Product;->setSourceEntity(Lcom/jingdong/common/entity/SourceEntity;)V

    goto :goto_1

    .line 1058
    :cond_4
    new-instance v9, Lcom/jingdong/common/entity/SourceEntity;

    const-string v10, "shoppingCart_webSite"

    invoke-direct {v9, v10, v11}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Lcom/jingdong/common/entity/Product;->setSourceEntity(Lcom/jingdong/common/entity/SourceEntity;)V

    goto :goto_1

    .line 1070
    .end local v4           #oldProduct:Lcom/jingdong/common/entity/Product;
    .end local v7           #product:Lcom/jingdong/common/entity/Product;
    .restart local v0       #newPackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Pack;>;"
    .restart local v3       #oldPackMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/Pack;>;"
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/Pack;

    .line 1071
    .local v6, pack:Lcom/jingdong/common/entity/Pack;
    invoke-virtual {v6}, Lcom/jingdong/common/entity/Pack;->getId()Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/Pack;

    .line 1072
    .local v2, oldPack:Lcom/jingdong/common/entity/Pack;
    if-eqz v2, :cond_6

    .line 1073
    invoke-virtual {v2}, Lcom/jingdong/common/entity/Pack;->getSourceEntity()Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/jingdong/common/entity/Pack;->setSourceEntity(Lcom/jingdong/common/entity/SourceEntity;)V

    goto :goto_2

    .line 1075
    :cond_6
    new-instance v9, Lcom/jingdong/common/entity/SourceEntity;

    const-string v10, "shoppingCart_webSite"

    invoke-direct {v9, v10, v11}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Lcom/jingdong/common/entity/Pack;->setSourceEntity(Lcom/jingdong/common/entity/SourceEntity;)V

    goto :goto_2
.end method
