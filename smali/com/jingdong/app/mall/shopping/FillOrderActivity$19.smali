.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setGetBySelfArea()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 2034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 2039
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 2040
    .local v10, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const v2, 0x7f0c01e2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 2041
    .local v13, lin:Landroid/widget/RelativeLayout;
    const v1, 0x7f0300be

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0468

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 2042
    .local v12, layout:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    #setter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;
    invoke-static {v2, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$24(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Landroid/widget/ListView;)V

    .line 2043
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->value:Ljava/util/List;

    .line 2044
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bundle:Landroid/os/Bundle;

    .line 2045
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2047
    .local v11, item1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/PaymentInfo;->getSelectedPaymentType(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2048
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/PaymentInfo;->getSelectedPaymentType(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2050
    .local v14, payName:Ljava/lang/String;
    :goto_0
    const-string v1, "PayName"

    invoke-interface {v11, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 2053
    .local v15, tpArray:Lorg/json/JSONArray;
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/PaymentInfo;->getPaymentDetailInfos()Lorg/json/JSONArray;

    move-result-object v15

    .line 2057
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdPickSite"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2058
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v9, v1, :cond_4

    .line 2084
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->value:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v16, v0

    new-instance v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19$1;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v4, v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->value:Ljava/util/List;

    const v5, 0x7f0300b6

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "PayName"

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const-string v7, "Name"

    aput-object v7, v6, v2

    const/4 v2, 0x2

    const-string v7, "Address"

    aput-object v7, v6, v2

    const/4 v2, 0x3

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19$1;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->myAdapter:Landroid/widget/SimpleAdapter;

    .line 2098
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$25(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->myAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2099
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2100
    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2101
    invoke-virtual {v13, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2102
    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v1, :cond_8

    .line 2103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$25(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 2104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$25(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setClickable(Z)V

    .line 2110
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-boolean v1, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-nez v1, :cond_2

    .line 2111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$25(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19$2;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2139
    .end local v9           #i:I
    .end local v14           #payName:Ljava/lang/String;
    .end local v15           #tpArray:Lorg/json/JSONArray;
    :cond_2
    :goto_4
    return-void

    .line 2049
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const v2, 0x7f0702fa

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 2062
    .restart local v9       #i:I
    .restart local v14       #payName:Ljava/lang/String;
    .restart local v15       #tpArray:Lorg/json/JSONArray;
    :cond_4
    invoke-virtual {v15, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdPickSite"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 2063
    const-string v1, "Name"

    invoke-virtual {v15, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "get_position"

    invoke-virtual {v15, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    const-string v1, "Address"

    invoke-virtual {v15, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Address"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 2134
    .end local v9           #i:I
    .end local v14           #payName:Ljava/lang/String;
    .end local v15           #tpArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v8

    .line 2136
    .local v8, e1:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 2058
    .end local v8           #e1:Ljava/lang/Exception;
    .restart local v9       #i:I
    .restart local v14       #payName:Ljava/lang/String;
    .restart local v15       #tpArray:Lorg/json/JSONArray;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 2073
    .end local v9           #i:I
    :cond_6
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_5
    :try_start_1
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 2074
    invoke-virtual {v15, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdPickSite"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 2075
    const-string v1, "Name"

    invoke-virtual {v15, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2076
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "get_position"

    invoke-virtual {v15, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    const-string v1, "Address"

    invoke-virtual {v15, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Address"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2073
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 2105
    :cond_8
    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v1, :cond_1

    .line 2106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$25(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 2107
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$25(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setClickable(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 2085
    :array_0
    .array-data 0x4
        0x4et 0x4t 0xct 0x7ft
        0x50t 0x4t 0xct 0x7ft
        0x52t 0x4t 0xct 0x7ft
    .end array-data
.end method
