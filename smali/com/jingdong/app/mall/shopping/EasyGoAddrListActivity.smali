.class public Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "EasyGoAddrListActivity.java"


# static fields
.field private static jsonTempList:Lcom/jingdong/common/utils/JSONArrayPoxy;


# instance fields
.field private TAG:Ljava/lang/String;

.field private jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

.field mAdd:Landroid/widget/Button;

.field mTitle:Landroid/widget/TextView;

.field screenHeight:I

.field screenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 60
    const-string v0, "EasyGoAddrListActivity"

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->TAG:Ljava/lang/String;

    .line 59
    return-void
.end method

.method static synthetic access$0()Lcom/jingdong/common/utils/JSONArrayPoxy;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->jsonTempList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->setDefaultTemp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 689
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 701
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->handleDatas(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V

    return-void
.end method

.method private getEasyOrderTemplate()V
    .locals 6

    .prologue
    .line 624
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 627
    .local v1, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserInfo()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "pin"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_0
    const-string v2, "getOrderTemplate"

    .line 633
    .local v2, sInfoType:Ljava/lang/String;
    const-string v3, "getOrderTemplate"

    invoke-direct {p0, v3, v1, v2}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 634
    return-void

    .line 628
    .end local v2           #sInfoType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 630
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getScreenHW()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 104
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 110
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenHeight:I

    .line 112
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenWidth:I

    .line 116
    return-void
.end method

.method private handleClickEvent()V
    .locals 0

    .prologue
    .line 589
    return-void
.end method

.method private handleDatas(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V
    .locals 4
    .parameter "httpResponse"
    .parameter "action"

    .prologue
    .line 703
    :try_start_0
    const-string v2, "getOrderTemplate"

    invoke-virtual {p2, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 705
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 706
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v3, "orderTemplate"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v3, "orderTemplate"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "Orders"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v3, "orderTemplate"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "Orders"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v3, "orderTemplate"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "Orders"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 707
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->setEmptyView()V

    .line 757
    :cond_1
    :goto_0
    return-void

    .line 708
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v3, "orderTemplate"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v3, "orderTemplate"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "Orders"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v3, "orderTemplate"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "Orders"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    if-eq v2, v3, :cond_1

    .line 714
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v3, "orderTemplate"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "Orders"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    sput-object v2, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->jsonTempList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 715
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->setEasyBuy_list()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 718
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    const-string v2, "easyBuySetDefaultTemp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 719
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "defaultTemplate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "defaultTemplate"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "defaultTemplate"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    if-eq v2, v3, :cond_4

    .line 720
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "defaultTemplate"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->showMsg(Ljava/lang/String;)V

    .line 721
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->getEasyOrderTemplate()V

    goto/16 :goto_0

    .line 723
    :cond_4
    const-string v2, "\u8bbe\u7f6e\u8f7b\u677e\u8d2d\u4e0d\u6210\u529f"

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 725
    :cond_5
    const-string v2, "delOrderTemp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_a

    .line 726
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 727
    .local v1, tp:Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "delOrderTemplate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 728
    const-string v2, "delOrderTemplate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "delOrderTemplate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Flag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 730
    const-string v2, "delOrderTemplate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "delOrderTemplate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    if-eq v2, v3, :cond_6

    .line 732
    const-string v2, "delOrderTemplate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->showMsg(Ljava/lang/String;)V

    .line 733
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->getEasyOrderTemplate()V

    goto/16 :goto_0

    .line 735
    :cond_6
    const-string v2, "\u60a8\u6210\u529f\u5220\u9664\u4e86\u8f7b\u677e\u8d2d"

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->showMsg(Ljava/lang/String;)V

    .line 736
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->getEasyOrderTemplate()V

    goto/16 :goto_0

    .line 738
    :cond_7
    const-string v2, "delOrderTemplate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v2, "delOrderTemplate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Flag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 739
    const-string v2, "delOrderTemplate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "delOrderTemplate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    if-eq v2, v3, :cond_8

    .line 740
    const-string v2, "delOrderTemplate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 742
    :cond_8
    const-string v2, "\u60a8\u6ca1\u6709\u6210\u529f\u5220\u9664\u8f7b\u677e\u8d2d"

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 745
    :cond_9
    const-string v2, "\u60a8\u6ca1\u6709\u6210\u529f\u5220\u9664\u8f7b\u677e\u8d2d"

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->showMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 750
    .end local v1           #tp:Lorg/json/JSONObject;
    :cond_a
    const-string v2, "\u60a8\u6ca1\u6709\u6210\u529f\u5220\u9664\u8f7b\u677e\u8d2d"

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->showMsg(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private initComponent()V
    .locals 2

    .prologue
    .line 550
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->mTitle:Landroid/widget/TextView;

    .line 551
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f070358

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 555
    return-void
.end method

.method private setDefaultTemp(Ljava/lang/String;)V
    .locals 6
    .parameter "id"

    .prologue
    .line 609
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 612
    .local v1, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserInfo()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "pin"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 613
    const-string v3, "Id"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :goto_0
    const-string v2, "easyBuySetDefaultTemp"

    .line 619
    .local v2, sInfoType:Ljava/lang/String;
    const-string v3, "easyBuySetDefaultTemp"

    invoke-direct {p0, v3, v1, v2}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 620
    return-void

    .line 614
    .end local v2           #sInfoType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 616
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private setEasyBuy_list()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;-><init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->post(Ljava/lang/Runnable;)V

    .line 547
    return-void
.end method

.method private setEmptyView()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;-><init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->post(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method private setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .parameter "funcID"
    .parameter "param"
    .parameter "action"

    .prologue
    .line 643
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 644
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 648
    new-instance v1, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$3;

    invoke-direct {v1, p0, p3}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$3;-><init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;Ljava/lang/String;)V

    .line 646
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 685
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 686
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 687
    return-void
.end method

.method private showMsg(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 690
    new-instance v0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$4;-><init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->post(Ljava/lang/Runnable;)V

    .line 699
    return-void
.end method


# virtual methods
.method public delTemp(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 593
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 596
    .local v1, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserInfo()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "pin"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 597
    const-string v3, "Id"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_0
    const-string v2, "delOrderTemp"

    .line 603
    .local v2, sInfoType:Ljava/lang/String;
    const-string v3, "delOrderTemp"

    invoke-direct {p0, v3, v1, v2}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 604
    return-void

    .line 598
    .end local v2           #sInfoType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 600
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->setContentView(I)V

    .line 71
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->getScreenHW()V

    .line 72
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->initComponent()V

    .line 73
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->handleClickEvent()V

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 761
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 762
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 764
    new-instance v0, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    sput-object v0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->jsonTempList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 766
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->setEmptyView()V

    .line 784
    :goto_0
    return-void

    .line 773
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    sput-object v0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->jsonTempList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 775
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->getEasyOrderTemplate()V

    goto :goto_0
.end method
