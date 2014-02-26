.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setInvoinceInfoArea()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 1592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 1595
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceTypes()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v1, :cond_2

    .line 1596
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setEmptyInvoinceInfoArea()V
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$22(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 1812
    :cond_1
    :goto_0
    return-void

    .line 1600
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->myAdapter:Landroid/widget/SimpleAdapter;

    .line 1602
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 1603
    .local v10, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const v2, 0x7f0c01e3

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 1604
    .local v13, lin:Landroid/widget/RelativeLayout;
    const v1, 0x7f03007b

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c02be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 1605
    .local v12, layout:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    #setter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->invoinceInfoList:Landroid/widget/ListView;
    invoke-static {v2, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$16(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Landroid/widget/ListView;)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->value:Ljava/util/List;

    .line 1610
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1614
    .local v11, item1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdInvoiceType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceTypes()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invoiceTypesInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1617
    :try_start_0
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceTypes()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "invoiceTypesInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InvoiceTypes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 1619
    .local v14, max:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-lt v9, v14, :cond_9

    .line 1638
    .end local v9           #i:I
    .end local v14           #max:I
    :goto_2
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdInvoiceHeaderType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1640
    :try_start_1
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdInvoiceHeaderType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_e

    .line 1641
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompanyName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "CompanyName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "CompanyName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_d

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "CompanyName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    if-eq v1, v2, :cond_d

    .line 1642
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InvoiceTitle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5355\u4f4d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 1643
    const-string v1, "title"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5355\u4f4d("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "CompanyName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1669
    :cond_3
    :goto_3
    :try_start_2
    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v1, :cond_13

    .line 1670
    :cond_4
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdInvoiceContentTypeBook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1672
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceBooks()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v14

    .line 1673
    .restart local v14       #max:I
    const/4 v15, 0x0

    .local v15, n:I
    :goto_4
    if-lt v15, v14, :cond_10

    .line 1720
    .end local v14           #max:I
    .end local v15           #n:I
    :cond_5
    :goto_5
    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v1, :cond_1a

    .line 1722
    :cond_6
    :try_start_3
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdInvoiceContentsType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdInvoiceContentsType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    .line 1724
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceGenerals()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    move-result v14

    .line 1725
    .restart local v14       #max:I
    const/4 v15, 0x0

    .restart local v15       #n:I
    :goto_6
    if-lt v15, v14, :cond_17

    .line 1770
    .end local v14           #max:I
    .end local v15           #n:I
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->value:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v16, v0

    new-instance v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16$1;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v4, v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->value:Ljava/util/List;

    const v5, 0x7f03007c

    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "type"

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const-string v7, "title"

    aput-object v7, v6, v2

    const/4 v2, 0x2

    const-string v7, "books"

    aput-object v7, v6, v2

    const/4 v2, 0x3

    const-string v7, "general"

    aput-object v7, v6, v2

    const/4 v2, 0x4

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16$1;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->myAdapter:Landroid/widget/SimpleAdapter;

    .line 1785
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->invoinceInfoList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$17(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->myAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1786
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1788
    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1789
    invoke-virtual {v13, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1790
    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v1, :cond_1f

    .line 1791
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->invoinceInfoList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$17(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1792
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->invoinceInfoList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$17(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setClickable(Z)V

    .line 1797
    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-boolean v1, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-nez v1, :cond_1

    .line 1798
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->invoinceInfoList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$17(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16$2;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 1620
    .restart local v9       #i:I
    .restart local v14       #max:I
    :cond_9
    :try_start_4
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceTypes()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "invoiceTypesInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InvoiceTypes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1621
    const-string v1, "type"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceTypes()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "invoiceTypesInfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "InvoiceTypes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 1625
    .end local v9           #i:I
    .end local v14           #max:I
    :catch_0
    move-exception v8

    .line 1627
    .local v8, e:Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 1619
    .end local v8           #e:Lorg/json/JSONException;
    .restart local v9       #i:I
    .restart local v14       #max:I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1631
    .end local v9           #i:I
    .end local v14           #max:I
    :cond_b
    :try_start_5
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdInvoiceType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1636
    :goto_9
    const-string v1, "type"

    const-string v2, "\u666e\u901a\u53d1\u7968"

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1632
    :catch_1
    move-exception v8

    .line 1634
    .restart local v8       #e:Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9

    .line 1645
    .end local v8           #e:Lorg/json/JSONException;
    :cond_c
    :try_start_6
    const-string v1, "title"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5355\u4f4d("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "CompanyName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 1660
    :catch_2
    move-exception v8

    .line 1662
    .restart local v8       #e:Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 1649
    .end local v8           #e:Lorg/json/JSONException;
    :cond_d
    :try_start_7
    const-string v1, "title"

    const-string v2, "\u5355\u4f4d"

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1651
    :cond_e
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdInvoiceHeaderType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_f

    .line 1654
    const-string v1, "title"

    const-string v2, "\u4e2a\u4eba"

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1657
    :cond_f
    const-string v1, "title"

    const-string v2, "\u4e2a\u4eba"

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    .line 1674
    .restart local v14       #max:I
    .restart local v15       #n:I
    :cond_10
    :try_start_8
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceBooks()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdInvoiceContentTypeBook"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_11

    .line 1675
    const-string v1, "books"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceBooks()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "InvoiceContents"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_5

    .line 1715
    .end local v14           #max:I
    .end local v15           #n:I
    :catch_3
    move-exception v8

    .line 1717
    .restart local v8       #e:Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_5

    .line 1673
    .end local v8           #e:Lorg/json/JSONException;
    .restart local v14       #max:I
    .restart local v15       #n:I
    :cond_11
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 1682
    .end local v14           #max:I
    .end local v15           #n:I
    :cond_12
    :try_start_9
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdInvoiceContentTypeBook"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4

    .line 1687
    :goto_a
    :try_start_a
    const-string v1, "books"

    const-string v2, "\u4e0d\u5f00\u53d1\u7968"

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1683
    :catch_4
    move-exception v8

    .line 1685
    .restart local v8       #e:Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a

    .line 1690
    .end local v8           #e:Lorg/json/JSONException;
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-boolean v1, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->noBook:Z

    if-eqz v1, :cond_14

    .line 1691
    const-string v1, "books"

    const-string v2, ""

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1693
    :cond_14
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdInvoiceContentTypeBook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1695
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceBooks()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 1696
    .restart local v14       #max:I
    const/4 v15, 0x0

    .restart local v15       #n:I
    :goto_b
    if-ge v15, v14, :cond_5

    .line 1697
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceBooks()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdInvoiceContentTypeBook"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_15

    .line 1698
    const-string v1, "books"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceBooks()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "InvoiceContents"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_5

    .line 1696
    :cond_15
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 1705
    .end local v14           #max:I
    .end local v15           #n:I
    :cond_16
    :try_start_b
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdInvoiceContentTypeBook"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_5

    .line 1710
    :goto_c
    :try_start_c
    const-string v1, "books"

    const-string v2, "\u4e0d\u5f00\u53d1\u7968"

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1706
    :catch_5
    move-exception v8

    .line 1708
    .restart local v8       #e:Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_c

    .line 1726
    .end local v8           #e:Lorg/json/JSONException;
    .restart local v14       #max:I
    .restart local v15       #n:I
    :cond_17
    :try_start_d
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceGenerals()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdInvoiceContentsType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_18

    .line 1727
    const-string v1, "general"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceGenerals()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "InvoiceContents"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "InvoiceContents"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_7

    .line 1736
    .end local v14           #max:I
    .end local v15           #n:I
    :catch_6
    move-exception v8

    .line 1738
    .restart local v8       #e:Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_7

    .line 1725
    .end local v8           #e:Lorg/json/JSONException;
    .restart local v14       #max:I
    .restart local v15       #n:I
    :cond_18
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 1734
    .end local v14           #max:I
    .end local v15           #n:I
    :cond_19
    :try_start_e
    const-string v1, "general"

    const-string v2, " "

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_7

    .line 1741
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-boolean v1, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->onlyBook:Z

    if-eqz v1, :cond_1b

    .line 1742
    const-string v1, "general"

    const-string v2, " "

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 1746
    :cond_1b
    :try_start_f
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdInvoiceContentsType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdInvoiceContentsType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    .line 1747
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceGenerals()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceGenerals()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 1748
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceGenerals()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 1749
    .restart local v14       #max:I
    const/4 v15, 0x0

    .restart local v15       #n:I
    :goto_d
    if-ge v15, v14, :cond_7

    .line 1750
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceGenerals()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdInvoiceContentsType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1c

    .line 1751
    const-string v1, "general"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceGenerals()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "InvoiceContents"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "InvoiceContents"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_7

    .line 1763
    .end local v14           #max:I
    .end local v15           #n:I
    :catch_7
    move-exception v8

    .line 1765
    .restart local v8       #e:Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_7

    .line 1749
    .end local v8           #e:Lorg/json/JSONException;
    .restart local v14       #max:I
    .restart local v15       #n:I
    :cond_1c
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 1756
    .end local v14           #max:I
    .end local v15           #n:I
    :cond_1d
    :try_start_10
    const-string v1, "general"

    const-string v2, " "

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 1761
    :cond_1e
    const-string v1, "general"

    const-string v2, " "

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_7

    .line 1793
    :cond_1f
    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v1, :cond_8

    .line 1794
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->invoinceInfoList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$17(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1795
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->invoinceInfoList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$17(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setClickable(Z)V

    goto/16 :goto_8

    .line 1771
    nop

    :array_0
    .array-data 0x4
        0xc1t 0x2t 0xct 0x7ft
        0xc4t 0x2t 0xct 0x7ft
        0xc7t 0x2t 0xct 0x7ft
        0xc9t 0x2t 0xct 0x7ft
    .end array-data
.end method
