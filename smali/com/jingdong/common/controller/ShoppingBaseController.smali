.class public Lcom/jingdong/common/controller/ShoppingBaseController;
.super Ljava/lang/Object;
.source "ShoppingBaseController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;,
        Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;,
        Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;,
        Lcom/jingdong/common/controller/ShoppingBaseController$UpdateSourceEntityRunnable;
    }
.end annotation


# static fields
.field private static final SHARED_PREFERENCES_SHOPPING_CART_COUNT:Ljava/lang/String; = "shoppingCartCount"

.field private static final TAG:Ljava/lang/String; = "ShoppingController"

.field private static iCommon:Lcom/jingdong/common/utils/ICommon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 1153
    invoke-static {}, Lcom/jingdong/common/controller/ShoppingBaseController;->validateCartIcon()V

    return-void
.end method

.method static synthetic access$1()Lcom/jingdong/common/utils/ICommon;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/jingdong/common/controller/ShoppingBaseController;->iCommon:Lcom/jingdong/common/utils/ICommon;

    return-object v0
.end method

.method public static addOneGiftToPack(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartPackSummary;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V
    .locals 4
    .parameter "myActivity"
    .parameter "addGiftCartSkuSummary"
    .parameter "beAddedToCartPackSummary"
    .parameter "listener"

    .prologue
    .line 530
    if-eqz p2, :cond_0

    .line 531
    invoke-virtual {p2, p1}, Lcom/jingdong/common/entity/cart/CartPackSummary;->addGift(Lcom/jingdong/common/entity/cart/CartSkuSummary;)V

    .line 534
    :cond_0
    new-instance v1, Lcom/jingdong/common/entity/cart/CartRequestOperate;

    const/4 v2, 0x0

    const-string v3, "2"

    invoke-direct {v1, v2, p2, v3}, Lcom/jingdong/common/entity/cart/CartRequestOperate;-><init>(Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartPackSummary;Ljava/lang/String;)V

    .line 535
    .local v1, cartRequestOperate:Lcom/jingdong/common/entity/cart/CartRequestOperate;
    new-instance v0, Lcom/jingdong/common/entity/cart/CartRequest;

    invoke-direct {v0, v1}, Lcom/jingdong/common/entity/cart/CartRequest;-><init>(Lcom/jingdong/common/entity/cart/CartRequestOperate;)V

    .line 538
    .local v0, cartRequest:Lcom/jingdong/common/entity/cart/CartRequest;
    new-instance v2, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;

    invoke-direct {v2, p3}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    invoke-static {p0, v0, v2}, Lcom/jingdong/common/controller/ShoppingBaseController;->syncCart(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartRequest;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 539
    return-void
.end method

.method public static addOnePack(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/Pack;)V
    .locals 8
    .parameter "myActivity"
    .parameter "addPack"

    .prologue
    const/4 v7, 0x1

    .line 289
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jingdong/common/entity/Pack;->getId()Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    new-instance v2, Lcom/jingdong/common/controller/ShoppingBaseController$2;

    invoke-direct {v2, p0, p1}, Lcom/jingdong/common/controller/ShoppingBaseController$2;-><init>(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/Pack;)V

    .line 320
    .local v2, listener:Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;
    new-instance v3, Lcom/jingdong/common/entity/cart/CartPackSummary;

    invoke-virtual {p1}, Lcom/jingdong/common/entity/Pack;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    .local v3, pack:Lcom/jingdong/common/entity/cart/CartPackSummary;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartPackSummary;>;"
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v4, Lcom/jingdong/common/entity/cart/CartRequestCommon;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lcom/jingdong/common/entity/cart/CartRequestCommon;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 324
    .local v4, skuRequest:Lcom/jingdong/common/entity/cart/CartRequestCommon;
    new-instance v0, Lcom/jingdong/common/entity/cart/CartRequest;

    invoke-direct {v0, v4}, Lcom/jingdong/common/entity/cart/CartRequest;-><init>(Lcom/jingdong/common/entity/cart/CartRequestCommon;)V

    .line 325
    .local v0, cartRequest:Lcom/jingdong/common/entity/cart/CartRequest;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/jingdong/common/entity/cart/CartRequest;->setNoResponse(Ljava/lang/Boolean;)V

    .line 328
    new-instance v5, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;

    invoke-direct {v5, v2}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    invoke-static {p0, v0, v5, v7, v7}, Lcom/jingdong/common/controller/ShoppingBaseController;->syncCart(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartRequest;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;ZZ)V

    goto :goto_0
.end method

.method public static addOneProduct(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/Product;Ljava/lang/Runnable;)V
    .locals 9
    .parameter "myActivity"
    .parameter "product"
    .parameter "runnable"

    .prologue
    const/4 v8, 0x1

    .line 208
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    new-instance v2, Lcom/jingdong/common/controller/ShoppingBaseController$1;

    invoke-direct {v2, p0, p2, p0, p1}, Lcom/jingdong/common/controller/ShoppingBaseController$1;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/Runnable;Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/Product;)V

    .line 245
    .local v2, listener:Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;
    invoke-virtual {p1}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/jingdong/common/res/StringUtil;->no_price:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 246
    sget-object v6, Lcom/jingdong/common/res/StringUtil;->product_canot_add_to_car:Ljava/lang/String;

    invoke-interface {v2, v6}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {p1}, Lcom/jingdong/common/entity/Product;->getProvinceStockFlag()Ljava/lang/Boolean;

    move-result-object v3

    .line 251
    .local v3, provinceStockFlag:Ljava/lang/Boolean;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 252
    :cond_3
    sget-object v6, Lcom/jingdong/common/res/StringUtil;->product_no_stock:Ljava/lang/String;

    invoke-interface {v2, v6}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_4
    new-instance v4, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/jingdong/common/entity/cart/CartSkuSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    .local v4, sku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v5, Lcom/jingdong/common/entity/cart/CartRequestCommon;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lcom/jingdong/common/entity/cart/CartRequestCommon;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 270
    .local v5, skuRequest:Lcom/jingdong/common/entity/cart/CartRequestCommon;
    new-instance v0, Lcom/jingdong/common/entity/cart/CartRequest;

    invoke-direct {v0, v5}, Lcom/jingdong/common/entity/cart/CartRequest;-><init>(Lcom/jingdong/common/entity/cart/CartRequestCommon;)V

    .line 271
    .local v0, cartRequest:Lcom/jingdong/common/entity/cart/CartRequest;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/jingdong/common/entity/cart/CartRequest;->setNoResponse(Ljava/lang/Boolean;)V

    .line 274
    new-instance v6, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;

    invoke-direct {v6, v2}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    invoke-static {p0, v0, v6, v8, v8}, Lcom/jingdong/common/controller/ShoppingBaseController;->syncCart(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartRequest;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;ZZ)V

    goto :goto_0
.end method

.method public static addOrDeleteYb(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V
    .locals 23
    .parameter "myActivity"
    .parameter
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/frame/IMyActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseYBDetail;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResonseYBSelected;",
            ">;",
            "Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 692
    .local p1, currentSelectYBList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseYBDetail;>;"
    .local p2, lastTimeSelectedYBList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResonseYBSelected;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .local v11, prepareAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseYBDetail;>;"
    if-eqz p1, :cond_1

    .line 694
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_8

    .line 712
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v13, prepareDeleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResonseYBSelected;>;"
    if-eqz p2, :cond_3

    .line 714
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_c

    .line 731
    :cond_3
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v15, requestOperateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartRequestOperate;>;"
    new-instance v5, Lcom/jingdong/common/entity/cart/CartRequest;

    invoke-direct {v5, v15}, Lcom/jingdong/common/entity/cart/CartRequest;-><init>(Ljava/util/ArrayList;)V

    .line 733
    .local v5, cartRequest:Lcom/jingdong/common/entity/cart/CartRequest;
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_4

    .line 735
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;

    .line 736
    .local v16, ybDetail:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    const/4 v4, 0x0

    .line 737
    .local v4, addPackSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    invoke-virtual/range {v16 .. v16}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->getrSuitId()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_10

    .line 738
    new-instance v4, Lcom/jingdong/common/entity/cart/CartPackSummary;

    .end local v4           #addPackSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    invoke-virtual/range {v16 .. v16}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->getrWid()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->getrSuitId()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-string v22, "7"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 743
    .restart local v4       #addPackSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_11

    .line 746
    new-instance v19, Lcom/jingdong/common/entity/cart/CartRequestOperate;

    const/16 v20, 0x0

    const-string v21, "2"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v4, v2}, Lcom/jingdong/common/entity/cart/CartRequestOperate;-><init>(Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartPackSummary;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    .end local v4           #addPackSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    .end local v16           #ybDetail:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    :cond_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_6

    .line 751
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    .line 752
    .local v17, ybSelected:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
    const/4 v7, 0x0

    .line 753
    .local v7, deletePackSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    invoke-virtual/range {v17 .. v17}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getrSuitId()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_12

    .line 754
    new-instance v7, Lcom/jingdong/common/entity/cart/CartPackSummary;

    .end local v7           #deletePackSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    invoke-virtual/range {v17 .. v17}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getrWid()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getrSuitId()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-string v22, "7"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 759
    .restart local v7       #deletePackSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    :goto_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_5
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_13

    .line 765
    new-instance v19, Lcom/jingdong/common/entity/cart/CartRequestOperate;

    const/16 v20, 0x0

    const-string v21, "4"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v7, v2}, Lcom/jingdong/common/entity/cart/CartRequestOperate;-><init>(Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartPackSummary;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    .end local v7           #deletePackSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    .end local v17           #ybSelected:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
    :cond_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_7

    .line 770
    new-instance v19, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v5, v1}, Lcom/jingdong/common/controller/ShoppingBaseController;->syncCart(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartRequest;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 773
    :cond_7
    return-void

    .line 694
    .end local v5           #cartRequest:Lcom/jingdong/common/entity/cart/CartRequest;
    .end local v13           #prepareDeleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResonseYBSelected;>;"
    .end local v15           #requestOperateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartRequestOperate;>;"
    :cond_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;

    .line 695
    .local v6, currentSelectYB:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    const/4 v8, 0x1

    .line 696
    .local v8, isAdd:Z
    if-eqz p2, :cond_a

    .line 697
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_9
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_b

    .line 705
    :cond_a
    :goto_6
    if-eqz v8, :cond_0

    .line 706
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 697
    :cond_b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    .line 698
    .local v10, lastTimeSelectedYB:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
    invoke-virtual {v10}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v21

    if-eqz v21, :cond_9

    .line 699
    invoke-virtual {v10}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v6}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->getId()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 700
    const/4 v8, 0x0

    .line 701
    goto :goto_6

    .line 714
    .end local v6           #currentSelectYB:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    .end local v8           #isAdd:Z
    .end local v10           #lastTimeSelectedYB:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
    .restart local v13       #prepareDeleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResonseYBSelected;>;"
    :cond_c
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    .line 715
    .restart local v10       #lastTimeSelectedYB:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
    const/4 v9, 0x1

    .line 716
    .local v9, isDelete:Z
    if-eqz p1, :cond_e

    .line 717
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_d
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_f

    .line 725
    :cond_e
    :goto_7
    if-eqz v9, :cond_2

    .line 726
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 717
    :cond_f
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;

    .line 718
    .restart local v6       #currentSelectYB:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    invoke-virtual {v10}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v21

    if-eqz v21, :cond_d

    .line 719
    invoke-virtual {v10}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v6}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->getId()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 720
    const/4 v9, 0x0

    .line 721
    goto :goto_7

    .line 740
    .end local v6           #currentSelectYB:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    .end local v9           #isDelete:Z
    .end local v10           #lastTimeSelectedYB:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
    .restart local v4       #addPackSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    .restart local v5       #cartRequest:Lcom/jingdong/common/entity/cart/CartRequest;
    .restart local v15       #requestOperateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartRequestOperate;>;"
    .restart local v16       #ybDetail:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    :cond_10
    new-instance v4, Lcom/jingdong/common/entity/cart/CartPackSummary;

    .end local v4           #addPackSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    invoke-virtual/range {v16 .. v16}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->getrWid()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v21, "8"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v4, v0, v1, v2}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .restart local v4       #addPackSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    goto/16 :goto_2

    .line 743
    :cond_11
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;

    .line 744
    .local v12, prepareAddYBDetail:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    new-instance v20, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    invoke-virtual {v12}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->getId()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/jingdong/common/entity/cart/CartSkuSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/jingdong/common/entity/cart/CartPackSummary;->addSku(Lcom/jingdong/common/entity/cart/CartSkuSummary;)V

    goto/16 :goto_3

    .line 756
    .end local v4           #addPackSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    .end local v12           #prepareAddYBDetail:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    .end local v16           #ybDetail:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    .restart local v7       #deletePackSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    .restart local v17       #ybSelected:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
    :cond_12
    new-instance v7, Lcom/jingdong/common/entity/cart/CartPackSummary;

    .end local v7           #deletePackSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    invoke-virtual/range {v17 .. v17}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getrWid()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v21, "8"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v7, v0, v1, v2}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .restart local v7       #deletePackSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    goto/16 :goto_4

    .line 759
    :cond_13
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    .line 760
    .local v14, prepareDeleteYBDetail:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
    invoke-virtual {v14}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v18

    .line 761
    .local v18, ybSku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    if-eqz v18, :cond_5

    .line 762
    new-instance v20, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    invoke-virtual/range {v18 .. v18}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/jingdong/common/entity/cart/CartSkuSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/jingdong/common/entity/cart/CartPackSummary;->addSku(Lcom/jingdong/common/entity/cart/CartSkuSummary;)V

    goto/16 :goto_5
.end method

.method public static addProductOrPack(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;ILjava/lang/String;ILcom/jingdong/common/entity/SourceEntity;)V
    .locals 16
    .parameter "myActivity"
    .parameter "productId"
    .parameter "productNum"
    .parameter "packId"
    .parameter "packNum"
    .parameter "sourceEntity"

    .prologue
    .line 351
    if-eqz p0, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    const/4 v2, 0x0

    .line 355
    .local v2, addProduct:Lcom/jingdong/common/entity/Product;
    const/4 v1, 0x0

    .line 357
    .local v1, addPack:Lcom/jingdong/common/entity/Pack;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 359
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 361
    new-instance v2, Lcom/jingdong/common/entity/Product;

    .end local v2           #addProduct:Lcom/jingdong/common/entity/Product;
    invoke-direct {v2}, Lcom/jingdong/common/entity/Product;-><init>()V

    .line 364
    .restart local v2       #addProduct:Lcom/jingdong/common/entity/Product;
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 365
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/jingdong/common/entity/Product;->setNum(Ljava/lang/Integer;)V

    .line 366
    if-eqz p5, :cond_2

    .line 367
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/jingdong/common/entity/Product;->setSourceEntity(Lcom/jingdong/common/entity/SourceEntity;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :cond_2
    :goto_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 379
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 381
    new-instance v1, Lcom/jingdong/common/entity/Pack;

    .end local v1           #addPack:Lcom/jingdong/common/entity/Pack;
    invoke-direct {v1}, Lcom/jingdong/common/entity/Pack;-><init>()V

    .line 383
    .restart local v1       #addPack:Lcom/jingdong/common/entity/Pack;
    :try_start_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/jingdong/common/entity/Pack;->setId(Ljava/lang/Long;)V

    .line 384
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/jingdong/common/entity/Pack;->setNum(Ljava/lang/Integer;)V

    .line 385
    if-eqz p5, :cond_3

    .line 386
    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/jingdong/common/entity/Pack;->setSourceEntity(Lcom/jingdong/common/entity/SourceEntity;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 397
    :cond_3
    move-object v7, v2

    .line 398
    .local v7, insertProduct:Lcom/jingdong/common/entity/Product;
    move-object v6, v1

    .line 400
    .local v6, insertPack:Lcom/jingdong/common/entity/Pack;
    new-instance v8, Lcom/jingdong/common/controller/ShoppingBaseController$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v7, v6}, Lcom/jingdong/common/controller/ShoppingBaseController$3;-><init>(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/Product;Lcom/jingdong/common/entity/Pack;)V

    .line 428
    .local v8, listener:Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;
    const/4 v11, 0x0

    .line 429
    .local v11, skuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    if-eqz v7, :cond_4

    .line 430
    new-instance v10, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lcom/jingdong/common/entity/Product;->getNum()Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v10, v13, v14}, Lcom/jingdong/common/entity/cart/CartSkuSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    .local v10, sku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #skuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .restart local v11       #skuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    .end local v10           #sku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    :cond_4
    const/4 v3, 0x0

    .line 437
    .local v3, apckList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartPackSummary;>;"
    if-eqz v1, :cond_5

    .line 438
    new-instance v9, Lcom/jingdong/common/entity/cart/CartPackSummary;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Pack;->getId()Ljava/lang/Long;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Pack;->getNum()Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v9, v13, v14}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    .local v9, pack:Lcom/jingdong/common/entity/cart/CartPackSummary;
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #apckList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartPackSummary;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .restart local v3       #apckList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartPackSummary;>;"
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v9           #pack:Lcom/jingdong/common/entity/cart/CartPackSummary;
    :cond_5
    if-nez v11, :cond_6

    if-eqz v3, :cond_0

    .line 447
    :cond_6
    new-instance v12, Lcom/jingdong/common/entity/cart/CartRequestCommon;

    invoke-direct {v12, v11, v3}, Lcom/jingdong/common/entity/cart/CartRequestCommon;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 448
    .local v12, skuRequest:Lcom/jingdong/common/entity/cart/CartRequestCommon;
    new-instance v4, Lcom/jingdong/common/entity/cart/CartRequest;

    invoke-direct {v4, v12}, Lcom/jingdong/common/entity/cart/CartRequest;-><init>(Lcom/jingdong/common/entity/cart/CartRequestCommon;)V

    .line 449
    .local v4, cartRequest:Lcom/jingdong/common/entity/cart/CartRequest;
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/jingdong/common/entity/cart/CartRequest;->setNoResponse(Ljava/lang/Boolean;)V

    .line 452
    new-instance v13, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;

    invoke-direct {v13, v8}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v13, v14, v15}, Lcom/jingdong/common/controller/ShoppingBaseController;->syncCart(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartRequest;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;ZZ)V

    goto/16 :goto_0

    .line 369
    .end local v3           #apckList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartPackSummary;>;"
    .end local v4           #cartRequest:Lcom/jingdong/common/entity/cart/CartRequest;
    .end local v6           #insertPack:Lcom/jingdong/common/entity/Pack;
    .end local v7           #insertProduct:Lcom/jingdong/common/entity/Product;
    .end local v8           #listener:Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;
    .end local v11           #skuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    .end local v12           #skuRequest:Lcom/jingdong/common/entity/cart/CartRequestCommon;
    :catch_0
    move-exception v5

    .line 373
    .local v5, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 388
    .end local v5           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v5

    .line 392
    .restart local v5       #e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .line 393
    goto/16 :goto_0
.end method

.method public static addToCart(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V
    .locals 7
    .parameter "myActivity"
    .parameter "wareId"

    .prologue
    .line 1105
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1106
    .local v0, array:Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1108
    .local v3, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "num"

    const-string v6, "1"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1109
    const-string v5, "Id"

    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1110
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    :goto_0
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 1116
    .local v2, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v5, "cart"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 1117
    new-instance v4, Lcom/jingdong/common/controller/ShoppingBaseController$4;

    invoke-direct {v4, v0, p0}, Lcom/jingdong/common/controller/ShoppingBaseController$4;-><init>(Lorg/json/JSONArray;Lcom/jingdong/common/frame/IMyActivity;)V

    .line 1145
    .local v4, listener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;
    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1146
    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 1148
    return-void

    .line 1111
    .end local v2           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .end local v4           #listener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;
    :catch_0
    move-exception v1

    .line 1112
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static clearLocalCart()V
    .locals 1

    .prologue
    .line 1091
    invoke-static {}, Lcom/jingdong/common/database/table/DB_PacksTable;->delAllPacksCart()V

    .line 1092
    invoke-static {}, Lcom/jingdong/common/database/table/DB_CartTable;->delAllCart()V

    .line 1093
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jingdong/common/controller/ShoppingBaseController;->setProductCount(I)V

    .line 1095
    invoke-static {}, Lcom/jingdong/common/controller/ShoppingBaseController;->validateCartIcon()V

    .line 1096
    return-void
.end method

.method public static deleteOneGiftFormPack(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartPackSummary;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V
    .locals 4
    .parameter "myActivity"
    .parameter "deleteGiftCartSkuSummary"
    .parameter "beDeletedToCartPackSummary"
    .parameter "listener"

    .prologue
    .line 559
    if-eqz p2, :cond_0

    .line 560
    invoke-virtual {p2, p1}, Lcom/jingdong/common/entity/cart/CartPackSummary;->addGift(Lcom/jingdong/common/entity/cart/CartSkuSummary;)V

    .line 563
    :cond_0
    new-instance v1, Lcom/jingdong/common/entity/cart/CartRequestOperate;

    const/4 v2, 0x0

    const-string v3, "4"

    invoke-direct {v1, v2, p2, v3}, Lcom/jingdong/common/entity/cart/CartRequestOperate;-><init>(Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartPackSummary;Ljava/lang/String;)V

    .line 564
    .local v1, cartRequestOperate:Lcom/jingdong/common/entity/cart/CartRequestOperate;
    new-instance v0, Lcom/jingdong/common/entity/cart/CartRequest;

    invoke-direct {v0, v1}, Lcom/jingdong/common/entity/cart/CartRequest;-><init>(Lcom/jingdong/common/entity/cart/CartRequestOperate;)V

    .line 567
    .local v0, cartRequest:Lcom/jingdong/common/entity/cart/CartRequest;
    new-instance v2, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;

    invoke-direct {v2, p3}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    invoke-static {p0, v0, v2}, Lcom/jingdong/common/controller/ShoppingBaseController;->syncCart(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartRequest;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 568
    return-void
.end method

.method public static deleteOnePack(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartPackSummary;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V
    .locals 2
    .parameter "myActivity"
    .parameter "deleteCartPackSummary"
    .parameter "listener"

    .prologue
    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v0, operatePacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartPackSummary;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p2}, Lcom/jingdong/common/controller/ShoppingBaseController;->deleteProductOrPackList(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    .line 489
    return-void
.end method

.method public static deleteOneProduct(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V
    .locals 2
    .parameter "myActivity"
    .parameter "deleteCartSkuSummary"
    .parameter "listener"

    .prologue
    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v0, operateSkus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p2}, Lcom/jingdong/common/controller/ShoppingBaseController;->deleteProductOrPackList(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    .line 471
    return-void
.end method

.method public static deleteProductOrPackList(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V
    .locals 4
    .parameter "myActivity"
    .parameter
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/frame/IMyActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartPackSummary;",
            ">;",
            "Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, deleteSkus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    .local p2, deletePacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartPackSummary;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v1, requestOperateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartRequestOperate;>;"
    new-instance v2, Lcom/jingdong/common/entity/cart/CartRequestOperate;

    const-string v3, "4"

    invoke-direct {v2, p1, p2, v3}, Lcom/jingdong/common/entity/cart/CartRequestOperate;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance v0, Lcom/jingdong/common/entity/cart/CartRequest;

    invoke-direct {v0, v1}, Lcom/jingdong/common/entity/cart/CartRequest;-><init>(Ljava/util/ArrayList;)V

    .line 509
    .local v0, cartRequest:Lcom/jingdong/common/entity/cart/CartRequest;
    new-instance v2, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;

    invoke-direct {v2, p3}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    invoke-static {p0, v0, v2}, Lcom/jingdong/common/controller/ShoppingBaseController;->syncCart(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartRequest;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 510
    return-void
.end method

.method public static editProductOrPackList(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V
    .locals 4
    .parameter "myActivity"
    .parameter
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/frame/IMyActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartPackSummary;",
            ">;",
            "Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, editSkus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    .local p2, editPacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartPackSummary;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v1, requestOperateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartRequestOperate;>;"
    new-instance v2, Lcom/jingdong/common/entity/cart/CartRequestOperate;

    const-string v3, "3"

    invoke-direct {v2, p1, p2, v3}, Lcom/jingdong/common/entity/cart/CartRequestOperate;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v0, Lcom/jingdong/common/entity/cart/CartRequest;

    invoke-direct {v0, v1}, Lcom/jingdong/common/entity/cart/CartRequest;-><init>(Ljava/util/ArrayList;)V

    .line 633
    .local v0, cartRequest:Lcom/jingdong/common/entity/cart/CartRequest;
    new-instance v2, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;

    invoke-direct {v2, p3}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    invoke-static {p0, v0, v2}, Lcom/jingdong/common/controller/ShoppingBaseController;->syncCart(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartRequest;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 634
    return-void
.end method

.method public static getProductCount()I
    .locals 3

    .prologue
    .line 781
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 782
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "shoppingCartCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static selectAll(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V
    .locals 3
    .parameter "myActivity"
    .parameter "listener"

    .prologue
    .line 647
    new-instance v1, Lcom/jingdong/common/entity/cart/CartRequestOperate;

    const-string v2, "7"

    invoke-direct {v1, v2}, Lcom/jingdong/common/entity/cart/CartRequestOperate;-><init>(Ljava/lang/String;)V

    .line 648
    .local v1, cartRequestOperate:Lcom/jingdong/common/entity/cart/CartRequestOperate;
    new-instance v0, Lcom/jingdong/common/entity/cart/CartRequest;

    invoke-direct {v0, v1}, Lcom/jingdong/common/entity/cart/CartRequest;-><init>(Lcom/jingdong/common/entity/cart/CartRequestOperate;)V

    .line 651
    .local v0, cartRequest:Lcom/jingdong/common/entity/cart/CartRequest;
    new-instance v2, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;

    invoke-direct {v2, p1}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    invoke-static {p0, v0, v2}, Lcom/jingdong/common/controller/ShoppingBaseController;->syncCart(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartRequest;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 652
    return-void
.end method

.method public static selectOneProductOrPack(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartPackSummary;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V
    .locals 4
    .parameter "myActivity"
    .parameter "selectSku"
    .parameter "selectePack"
    .parameter "listener"

    .prologue
    .line 586
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v1, requestOperateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartRequestOperate;>;"
    new-instance v2, Lcom/jingdong/common/entity/cart/CartRequestOperate;

    const-string v3, "5"

    invoke-direct {v2, p1, p2, v3}, Lcom/jingdong/common/entity/cart/CartRequestOperate;-><init>(Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartPackSummary;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    new-instance v0, Lcom/jingdong/common/entity/cart/CartRequest;

    invoke-direct {v0, v1}, Lcom/jingdong/common/entity/cart/CartRequest;-><init>(Ljava/util/ArrayList;)V

    .line 591
    .local v0, cartRequest:Lcom/jingdong/common/entity/cart/CartRequest;
    new-instance v2, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;

    invoke-direct {v2, p3}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    invoke-static {p0, v0, v2}, Lcom/jingdong/common/controller/ShoppingBaseController;->syncCart(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartRequest;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 592
    return-void
.end method

.method public static setCommon(Lcom/jingdong/common/utils/ICommon;)V
    .locals 0
    .parameter "common"

    .prologue
    .line 64
    sput-object p0, Lcom/jingdong/common/controller/ShoppingBaseController;->iCommon:Lcom/jingdong/common/utils/ICommon;

    .line 65
    return-void
.end method

.method public static setProductCount(I)V
    .locals 3
    .parameter "productCount"

    .prologue
    .line 791
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 792
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "shoppingCartCount"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 793
    return-void
.end method

.method public static syncCart(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;ZZ)V
    .locals 2
    .parameter "myActivity"
    .parameter "listener"
    .parameter "isNotify"
    .parameter "isEffect"

    .prologue
    .line 76
    const/4 v0, 0x0

    new-instance v1, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;

    invoke-direct {v1, p1}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    invoke-static {p0, v0, v1, p2, p3}, Lcom/jingdong/common/controller/ShoppingBaseController;->syncCart(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartRequest;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;ZZ)V

    .line 77
    return-void
.end method

.method public static syncCart(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartRequest;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V
    .locals 2
    .parameter "activity"
    .parameter "cartRequest"
    .parameter "listener"

    .prologue
    .line 92
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/jingdong/common/controller/ShoppingBaseController;->syncCart(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartRequest;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;ZZ)V

    .line 93
    return-void
.end method

.method public static syncCart(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartRequest;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;ZZ)V
    .locals 11
    .parameter "activity"
    .parameter "cartRequest"
    .parameter "listener"
    .parameter "isNotify"
    .parameter "isEffect"

    .prologue
    const/4 v10, 0x0

    .line 117
    if-nez p0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 122
    :cond_0
    const/4 v6, 0x0

    .line 123
    .local v6, params:Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 124
    .local v0, cartCommon:Lcom/jingdong/common/entity/cart/CartRequestCommon;
    const/4 v1, 0x0

    .line 125
    .local v1, cartOperates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartRequestOperate;>;"
    const/4 v3, 0x0

    .line 127
    .local v3, noResponse:Z
    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p1}, Lcom/jingdong/common/entity/cart/CartRequest;->getCartCommon()Lcom/jingdong/common/entity/cart/CartRequestCommon;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Lcom/jingdong/common/entity/cart/CartRequest;->getCartOperates()Ljava/util/ArrayList;

    move-result-object v1

    .line 130
    invoke-virtual {p1}, Lcom/jingdong/common/entity/cart/CartRequest;->getNoResponse()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 134
    :cond_1
    if-eqz v0, :cond_9

    .line 135
    :try_start_0
    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartRequestCommon;->toParams()Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v7, v6

    .line 139
    .end local v6           #params:Lorg/json/JSONObject;
    .local v7, params:Lorg/json/JSONObject;
    :goto_1
    if-nez v7, :cond_8

    .line 140
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    .end local v7           #params:Lorg/json/JSONObject;
    .restart local v6       #params:Lorg/json/JSONObject;
    :goto_2
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 145
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 146
    .local v5, operationsProxy:Lorg/json/JSONArray;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_6

    .line 149
    const-string v8, "operations"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    .end local v5           #operationsProxy:Lorg/json/JSONArray;
    :cond_2
    const-string v8, "syntype"

    const-string v9, "1"

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v8, "cartuuid"

    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->readCartUUID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    if-eqz v3, :cond_3

    .line 161
    const-string v8, "noResponse"

    invoke-virtual {v6, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    :cond_3
    :goto_4
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 170
    .local v2, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v8, "cart"

    invoke-virtual {v2, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 172
    invoke-virtual {v2, p3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 174
    if-eqz p2, :cond_4

    .line 175
    invoke-virtual {v2, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 177
    :cond_4
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v8

    if-nez v8, :cond_5

    .line 178
    invoke-virtual {v2, v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUseCookies(Z)V

    .line 181
    :cond_5
    if-eqz p4, :cond_7

    .line 182
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 191
    :goto_5
    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto/16 :goto_0

    .line 146
    .end local v2           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .restart local v5       #operationsProxy:Lorg/json/JSONArray;
    :cond_6
    :try_start_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/cart/CartRequestOperate;

    .line 147
    .local v4, operate:Lcom/jingdong/common/entity/cart/CartRequestOperate;
    invoke-virtual {v4}, Lcom/jingdong/common/entity/cart/CartRequestOperate;->toParams()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 163
    .end local v4           #operate:Lcom/jingdong/common/entity/cart/CartRequestOperate;
    .end local v5           #operationsProxy:Lorg/json/JSONArray;
    :catch_0
    move-exception v8

    goto :goto_4

    .line 184
    .restart local v2       #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :cond_7
    invoke-virtual {v2, v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    goto :goto_5

    .line 163
    .end local v2           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .end local v6           #params:Lorg/json/JSONObject;
    .restart local v7       #params:Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    move-object v6, v7

    .end local v7           #params:Lorg/json/JSONObject;
    .restart local v6       #params:Lorg/json/JSONObject;
    goto :goto_4

    .end local v6           #params:Lorg/json/JSONObject;
    .restart local v7       #params:Lorg/json/JSONObject;
    :cond_8
    move-object v6, v7

    .end local v7           #params:Lorg/json/JSONObject;
    .restart local v6       #params:Lorg/json/JSONObject;
    goto :goto_2

    :cond_9
    move-object v7, v6

    .end local v6           #params:Lorg/json/JSONObject;
    .restart local v7       #params:Lorg/json/JSONObject;
    goto/16 :goto_1
.end method

.method public static syncCartNoResponse(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 4
    .parameter "myActivity"

    .prologue
    const/4 v3, 0x1

    .line 85
    new-instance v0, Lcom/jingdong/common/entity/cart/CartRequest;

    invoke-direct {v0}, Lcom/jingdong/common/entity/cart/CartRequest;-><init>()V

    .line 86
    .local v0, cartRequest:Lcom/jingdong/common/entity/cart/CartRequest;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/cart/CartRequest;->setNoResponse(Ljava/lang/Boolean;)V

    .line 88
    new-instance v1, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lcom/jingdong/common/controller/ShoppingBaseController;->syncCart(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartRequest;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;ZZ)V

    .line 89
    return-void
.end method

.method public static unSelectAll(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V
    .locals 3
    .parameter "myActivity"
    .parameter "listener"

    .prologue
    .line 665
    new-instance v1, Lcom/jingdong/common/entity/cart/CartRequestOperate;

    const-string v2, "8"

    invoke-direct {v1, v2}, Lcom/jingdong/common/entity/cart/CartRequestOperate;-><init>(Ljava/lang/String;)V

    .line 666
    .local v1, cartRequestOperate:Lcom/jingdong/common/entity/cart/CartRequestOperate;
    new-instance v0, Lcom/jingdong/common/entity/cart/CartRequest;

    invoke-direct {v0, v1}, Lcom/jingdong/common/entity/cart/CartRequest;-><init>(Lcom/jingdong/common/entity/cart/CartRequestOperate;)V

    .line 669
    .local v0, cartRequest:Lcom/jingdong/common/entity/cart/CartRequest;
    new-instance v2, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;

    invoke-direct {v2, p1}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    invoke-static {p0, v0, v2}, Lcom/jingdong/common/controller/ShoppingBaseController;->syncCart(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartRequest;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 670
    return-void
.end method

.method public static unSelectOneProductOrPack(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartPackSummary;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V
    .locals 4
    .parameter "myActivity"
    .parameter "unSelectSku"
    .parameter "unSelectePack"
    .parameter "listener"

    .prologue
    .line 607
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v1, requestOperateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartRequestOperate;>;"
    new-instance v2, Lcom/jingdong/common/entity/cart/CartRequestOperate;

    const-string v3, "6"

    invoke-direct {v2, p1, p2, v3}, Lcom/jingdong/common/entity/cart/CartRequestOperate;-><init>(Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartPackSummary;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance v0, Lcom/jingdong/common/entity/cart/CartRequest;

    invoke-direct {v0, v1}, Lcom/jingdong/common/entity/cart/CartRequest;-><init>(Ljava/util/ArrayList;)V

    .line 612
    .local v0, cartRequest:Lcom/jingdong/common/entity/cart/CartRequest;
    new-instance v2, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;

    invoke-direct {v2, p3}, Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingHttpListener;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    invoke-static {p0, v0, v2}, Lcom/jingdong/common/controller/ShoppingBaseController;->syncCart(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/cart/CartRequest;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 613
    return-void
.end method

.method private static validateCartIcon()V
    .locals 2

    .prologue
    .line 1155
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/MyApplication;->getMainFrameActivity()Lcom/jingdong/common/frame/IMainActivity;

    move-result-object v0

    .line 1156
    .local v0, iMainActivity:Lcom/jingdong/common/frame/IMainActivity;
    if-eqz v0, :cond_0

    .line 1157
    invoke-interface {v0}, Lcom/jingdong/common/frame/IMainActivity;->validateCartIcon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 1159
    :catch_0
    move-exception v1

    goto :goto_0
.end method
