.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setPostArea()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 2479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 33

    .prologue
    .line 2484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const v8, 0x7f0c01e2

    invoke-virtual {v2, v8}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/RelativeLayout;

    .line 2485
    .local v26, lin:Landroid/widget/RelativeLayout;
    const v2, 0x7f0300be

    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v8, 0x7f0c0468

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout;

    .line 2486
    .local v25, layout:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const v2, 0x7f0c0469

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    #setter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;
    invoke-static {v8, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$24(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Landroid/widget/ListView;)V

    .line 2487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->value:Ljava/util/List;

    .line 2488
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2489
    .local v6, transactionInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$3(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2493
    .local v3, res:Landroid/content/res/Resources;
    :try_start_0
    const-string v30, ""

    .line 2494
    .local v30, payName:Ljava/lang/String;
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Lcom/jingdong/common/entity/PaymentInfo;->getSelectedPaymentType(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2495
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Lcom/jingdong/common/entity/PaymentInfo;->getSelectedPaymentType(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v8, "Name"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2500
    :goto_0
    const-string v2, "PayName"

    move-object/from16 v0, v30

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2502
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v29

    .line 2504
    .local v29, payAfterReceive:Lorg/json/JSONObject;
    if-eqz v29, :cond_13

    const-string v2, "ShipmentTypes"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2506
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2507
    .local v5, payMentType:Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2509
    .local v4, jdShipInfo:Lorg/json/JSONObject;
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/PaymentInfo;->getShipments()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/PaymentInfo;->getShipments()Lorg/json/JSONObject;

    move-result-object v2

    const-string v8, "ShipmentTypes"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2510
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/PaymentInfo;->getShipments()Lorg/json/JSONObject;

    move-result-object v2

    const-string v8, "ShipmentTypes"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v32

    .line 2512
    .local v32, shipmentTypesObject:Lorg/json/JSONArray;
    invoke-virtual/range {v32 .. v32}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v8, 0x1

    if-le v2, v8, :cond_a

    .line 2514
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1
    invoke-virtual/range {v32 .. v32}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v21

    if-lt v0, v2, :cond_8

    .line 2526
    .end local v21           #i:I
    :goto_2
    const-string v2, "Name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2527
    .local v7, delivery_Type:Ljava/lang/String;
    const-string v2, "PeisongName"

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-virtual/range {v2 .. v7}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->initIfNeedCall(Landroid/content/res/Resources;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)V

    .line 2531
    const-string v2, "bigItemCodDate"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2534
    const-string v2, "bigItemCodDate"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 2536
    .local v15, bigItemCodDateArray:Lorg/json/JSONArray;
    const/16 v22, 0x0

    .line 2538
    .local v22, isCan:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2540
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_3
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v21

    if-lt v0, v2, :cond_b

    .line 2551
    .end local v21           #i:I
    :cond_0
    :goto_4
    if-nez v22, :cond_1

    .line 2552
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_5
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v21

    if-lt v0, v2, :cond_d

    .line 2567
    .end local v15           #bigItemCodDateArray:Lorg/json/JSONArray;
    .end local v21           #i:I
    .end local v22           #isCan:Z
    :cond_1
    :goto_6
    if-eqz v5, :cond_f

    const-string v2, "CODTime"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    .line 2568
    .local v16, cod:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move/from16 v0, v16

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->handle311And411(Lorg/json/JSONObject;Ljava/util/Map;I)Z
    invoke-static {v2, v4, v6, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$27(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Lorg/json/JSONObject;Ljava/util/Map;I)Z

    move-result v24

    .line 2570
    .local v24, isHandled:Z
    if-nez v24, :cond_3

    .line 2571
    const-string v2, "SupCodTime"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CanShipTime"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CanShipTime"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2574
    const-string v2, "SupCodTime"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    .line 2576
    .local v27, mSupCodTime:Lorg/json/JSONArray;
    const-string v2, "CODTime"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v27, :cond_3

    .line 2577
    const-string v2, "CODTime"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 2579
    .local v18, codTime:I
    if-gtz v18, :cond_2

    .line 2580
    const/16 v18, 0x1

    .line 2581
    const-string v2, "CODTime"

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2584
    :cond_2
    const/16 v23, 0x0

    .line 2587
    .local v23, isFind:Z
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_8
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v21

    if-lt v0, v2, :cond_10

    .line 2596
    :goto_9
    if-nez v23, :cond_3

    .line 2598
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 2599
    .local v17, codObject:Lorg/json/JSONObject;
    if-eqz v17, :cond_3

    .line 2600
    const-string v2, "Id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    .line 2601
    const-string v2, "CODTime"

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2602
    const-string v2, "Name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2603
    .local v19, deliveryTime:Ljava/lang/String;
    const-string v2, "mCodTime"

    move-object/from16 v0, v19

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2611
    .end local v17           #codObject:Lorg/json/JSONObject;
    .end local v18           #codTime:I
    .end local v19           #deliveryTime:Ljava/lang/String;
    .end local v21           #i:I
    .end local v23           #isFind:Z
    .end local v27           #mSupCodTime:Lorg/json/JSONArray;
    :cond_3
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/PaymentInfo;->getPostArray()Lorg/json/JSONArray;

    move-result-object v31

    .line 2612
    .local v31, receiverInfo:Lorg/json/JSONArray;
    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "\u5546\u6237\u5ba2\u6237\u53f7"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2613
    const-string v2, "postid"

    const/4 v8, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "value"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2614
    const-string v2, "postreceiver"

    const/4 v8, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "value"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2630
    .end local v4           #jdShipInfo:Lorg/json/JSONObject;
    .end local v5           #payMentType:Lorg/json/JSONObject;
    .end local v7           #delivery_Type:Ljava/lang/String;
    .end local v16           #cod:I
    .end local v24           #isHandled:Z
    .end local v31           #receiverInfo:Lorg/json/JSONArray;
    .end local v32           #shipmentTypesObject:Lorg/json/JSONArray;
    :cond_4
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->value:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    new-instance v8, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21$1;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v11, v9, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->value:Ljava/util/List;

    const v12, 0x7f0300b8

    const/4 v9, 0x7

    new-array v13, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v14, "PayName"

    aput-object v14, v13, v9

    const/4 v9, 0x1

    const-string v14, "PeisongName"

    aput-object v14, v13, v9

    const/4 v9, 0x2

    const-string v14, "mCodTime"

    aput-object v14, v13, v9

    const/4 v9, 0x3

    const-string v14, "mInforms"

    aput-object v14, v13, v9

    const/4 v9, 0x4

    const-string v14, "bigCodTime"

    aput-object v14, v13, v9

    const/4 v9, 0x5

    const-string v14, "postreceiver"

    aput-object v14, v13, v9

    const/4 v9, 0x6

    const-string v14, "postid"

    aput-object v14, v13, v9

    const/4 v9, 0x7

    new-array v14, v9, [I

    fill-array-data v14, :array_0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21$1;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v8, v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->myAdapter:Landroid/widget/SimpleAdapter;

    .line 2644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$25(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v8, v8, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->myAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2645
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2646
    invoke-virtual/range {v26 .. v26}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2647
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2649
    sget-boolean v2, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v2, :cond_15

    .line 2650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$25(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 2651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$25(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setClickable(Z)V

    .line 2657
    :cond_5
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-boolean v2, v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-nez v2, :cond_6

    .line 2658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$25(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v8, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21$2;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;)V

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2678
    .end local v29           #payAfterReceive:Lorg/json/JSONObject;
    .end local v30           #payName:Ljava/lang/String;
    :cond_6
    :goto_c
    return-void

    .line 2497
    .restart local v30       #payName:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const v8, 0x7f0702b0

    invoke-virtual {v2, v8}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_0

    .line 2515
    .restart local v4       #jdShipInfo:Lorg/json/JSONObject;
    .restart local v5       #payMentType:Lorg/json/JSONObject;
    .restart local v21       #i:I
    .restart local v29       #payAfterReceive:Lorg/json/JSONObject;
    .restart local v32       #shipmentTypesObject:Lorg/json/JSONArray;
    :cond_8
    const-string v2, "IdShipmentType"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "Id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v2, v8, :cond_9

    .line 2517
    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2518
    goto/16 :goto_2

    .line 2514
    :cond_9
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 2522
    .end local v21           #i:I
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    goto/16 :goto_2

    .line 2541
    .restart local v7       #delivery_Type:Ljava/lang/String;
    .restart local v15       #bigItemCodDateArray:Lorg/json/JSONArray;
    .restart local v21       #i:I
    .restart local v22       #isCan:Z
    :cond_b
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v28

    .line 2542
    .local v28, object:Lorg/json/JSONObject;
    const-string v2, "Value"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v8, v8, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2543
    const-string v2, "bigCodTime"

    const-string v8, "Name"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2544
    const/16 v22, 0x1

    .line 2545
    goto/16 :goto_4

    .line 2540
    :cond_c
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 2553
    .end local v28           #object:Lorg/json/JSONObject;
    :cond_d
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v28

    .line 2555
    .restart local v28       #object:Lorg/json/JSONObject;
    const-string v2, "Selected"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    new-instance v8, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    invoke-direct {v8}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;-><init>()V

    iput-object v8, v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    .line 2557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    const-string v8, "Name"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;->setName(Ljava/lang/String;)V

    .line 2558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    const-string v8, "Value"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;->setValue(Ljava/lang/String;)V

    .line 2559
    const-string v2, "bigCodTime"

    const-string v8, "Name"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 2674
    .end local v4           #jdShipInfo:Lorg/json/JSONObject;
    .end local v5           #payMentType:Lorg/json/JSONObject;
    .end local v7           #delivery_Type:Ljava/lang/String;
    .end local v15           #bigItemCodDateArray:Lorg/json/JSONArray;
    .end local v21           #i:I
    .end local v22           #isCan:Z
    .end local v28           #object:Lorg/json/JSONObject;
    .end local v29           #payAfterReceive:Lorg/json/JSONObject;
    .end local v30           #payName:Ljava/lang/String;
    .end local v32           #shipmentTypesObject:Lorg/json/JSONArray;
    :catch_0
    move-exception v20

    .line 2675
    .local v20, e:Lorg/json/JSONException;
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_c

    .line 2552
    .end local v20           #e:Lorg/json/JSONException;
    .restart local v4       #jdShipInfo:Lorg/json/JSONObject;
    .restart local v5       #payMentType:Lorg/json/JSONObject;
    .restart local v7       #delivery_Type:Ljava/lang/String;
    .restart local v15       #bigItemCodDateArray:Lorg/json/JSONArray;
    .restart local v21       #i:I
    .restart local v22       #isCan:Z
    .restart local v28       #object:Lorg/json/JSONObject;
    .restart local v29       #payAfterReceive:Lorg/json/JSONObject;
    .restart local v30       #payName:Ljava/lang/String;
    .restart local v32       #shipmentTypesObject:Lorg/json/JSONArray;
    :cond_e
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_5

    .line 2567
    .end local v15           #bigItemCodDateArray:Lorg/json/JSONArray;
    .end local v21           #i:I
    .end local v22           #isCan:Z
    .end local v28           #object:Lorg/json/JSONObject;
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 2588
    .restart local v16       #cod:I
    .restart local v18       #codTime:I
    .restart local v21       #i:I
    .restart local v23       #isFind:Z
    .restart local v24       #isHandled:Z
    .restart local v27       #mSupCodTime:Lorg/json/JSONArray;
    :cond_10
    :try_start_1
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v8, "Id"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v0, v18

    if-ne v2, v0, :cond_11

    .line 2589
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v8, "Name"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2590
    .restart local v19       #deliveryTime:Ljava/lang/String;
    const-string v2, "mCodTime"

    move-object/from16 v0, v19

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2591
    const/16 v23, 0x1

    .line 2592
    goto/16 :goto_9

    .line 2587
    .end local v19           #deliveryTime:Ljava/lang/String;
    :cond_11
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_8

    .line 2616
    .end local v18           #codTime:I
    .end local v21           #i:I
    .end local v23           #isFind:Z
    .end local v27           #mSupCodTime:Lorg/json/JSONArray;
    .restart local v31       #receiverInfo:Lorg/json/JSONArray;
    :cond_12
    const-string v2, "postreceiver"

    const/4 v8, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "value"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2617
    const-string v2, "postid"

    const/4 v8, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "value"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 2621
    .end local v4           #jdShipInfo:Lorg/json/JSONObject;
    .end local v5           #payMentType:Lorg/json/JSONObject;
    .end local v7           #delivery_Type:Ljava/lang/String;
    .end local v16           #cod:I
    .end local v24           #isHandled:Z
    .end local v31           #receiverInfo:Lorg/json/JSONArray;
    .end local v32           #shipmentTypesObject:Lorg/json/JSONArray;
    :cond_13
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/PaymentInfo;->getPostArray()Lorg/json/JSONArray;

    move-result-object v31

    .line 2622
    .restart local v31       #receiverInfo:Lorg/json/JSONArray;
    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "\u5546\u6237\u5ba2\u6237\u53f7"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2623
    const-string v2, "postid"

    const/4 v8, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "value"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2624
    const-string v2, "postreceiver"

    const/4 v8, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "value"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 2626
    :cond_14
    const-string v2, "postreceiver"

    const/4 v8, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "value"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2627
    const-string v2, "postid"

    const/4 v8, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "value"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 2652
    .end local v31           #receiverInfo:Lorg/json/JSONArray;
    :cond_15
    sget-boolean v2, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v2, :cond_5

    .line 2653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$25(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 2654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$25(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setClickable(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_b

    .line 2632
    :array_0
    .array-data 0x4
        0x4et 0x4t 0xct 0x7ft
        0x54t 0x4t 0xct 0x7ft
        0x56t 0x4t 0xct 0x7ft
        0x5at 0x4t 0xct 0x7ft
        0x58t 0x4t 0xct 0x7ft
        0x61t 0x4t 0xct 0x7ft
        0x5ft 0x4t 0xct 0x7ft
    .end array-data
.end method
