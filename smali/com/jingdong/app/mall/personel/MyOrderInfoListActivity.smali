.class public Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "MyOrderInfoListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;,
        Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MySimpleImageProcessor;
    }
.end annotation


# static fields
.field public static final ORDER_FUNCTIONID:Ljava/lang/String; = "functionId"

.field public static final PAGE_TYPE_ALL_ORDER:Ljava/lang/String; = "allOrdersFunctionList"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private listView:Landroid/widget/ListView;

.field private loadView:Landroid/view/View;

.field private mAllOrderListView:Landroid/widget/ListView;

.field private mCurrentPos:I

.field private mFirstStartTimestamp:J

.field private mFunctionId:Ljava/lang/String;

.field private mNoOrderTextView:Landroid/widget/TextView;

.field private mOrderListJSONArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field private personalController:Lcom/jingdong/app/mall/personel/MyOrderController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 61
    const-string v0, "MyOrderInfoListActivity"

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->TAG:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->handlerOrderDetail(Lcom/jingdong/common/entity/Product;)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mOrderListJSONArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mOrderListJSONArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mNoOrderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getAllInfoList(Ljava/util/List;)V

    return-void
.end method

.method private getAllInfoList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/JdOrderStat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/JdOrderStat;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getAllInfoList(Ljava/util/List;Z)V

    .line 265
    return-void
.end method

.method private getAllInfoList(Ljava/util/List;Z)V
    .locals 10
    .parameter
    .parameter "isShowLoading"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/JdOrderStat;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/JdOrderStat;>;"
    const/4 v9, 0x2

    const/4 v5, 0x0

    const/high16 v8, 0x4120

    const/high16 v7, 0x40e0

    .line 208
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mAllOrderListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->listView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 210
    new-instance v0, Lcom/jingdong/common/utils/MySimpleAdapter;

    const v3, 0x7f030020

    new-array v4, v9, [Ljava/lang/String;

    const-string v1, "icon"

    aput-object v1, v4, v5

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v4, v1

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 211
    .local v0, msAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mAllOrderListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mAllOrderListView:Landroid/widget/ListView;

    const v2, 0x7f0200dd

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 213
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v6, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 214
    .local v6, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v7}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    invoke-static {v8}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    invoke-static {v7}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    invoke-static {v8}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    invoke-virtual {v6, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 215
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mAllOrderListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mAllOrderListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mAllOrderListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->loadView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mAllOrderListView:Landroid/widget/ListView;

    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$3;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$3;-><init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 261
    return-void

    .line 210
    :array_0
    .array-data 0x4
        0x3t 0x1t 0xct 0x7ft
        0x4t 0x1t 0xct 0x7ft
    .end array-data
.end method

.method private getOrderList(Ljava/lang/String;)V
    .locals 9
    .parameter "functionId"

    .prologue
    .line 268
    const v1, 0x7f030087

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 269
    .local v4, loadingLayout:Landroid/widget/LinearLayout;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 271
    .local v6, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mAllOrderListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->listView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 277
    new-instance v0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->listView:Landroid/widget/ListView;

    const v1, 0x7f0702a0

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;-><init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AbsListView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 279
    .local v0, nextPageLoader:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->showPageOne(Z)V

    .line 280
    return-void

    .line 272
    .end local v0           #nextPageLoader:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;
    :catch_0
    move-exception v8

    .line 273
    .local v8, e:Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private handlerOrderDetail(Lcom/jingdong/common/entity/Product;)V
    .locals 3
    .parameter "product"

    .prologue
    .line 546
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 547
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 548
    const-string v1, "product"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 549
    const-string v1, "function"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mFunctionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    const-string v1, "title"

    const v2, 0x7f0702e9

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const-string v1, "com.360buy:navigationDisplayFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 553
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 554
    return-void
.end method

.method private onLoadList(Ljava/lang/String;)V
    .locals 5
    .parameter "functionId"

    .prologue
    const/4 v4, 0x1

    .line 147
    new-instance v2, Lcom/jingdong/common/entity/JdOrderStat;

    invoke-direct {v2}, Lcom/jingdong/common/entity/JdOrderStat;-><init>()V

    .line 148
    .local v2, orderStat:Lcom/jingdong/common/entity/JdOrderStat;
    const-string v3, "oneMonthOrder"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/JdOrderStat;->setFunctionId(Ljava/lang/String;)V

    .line 149
    const-string v3, "http://img30.360buyimg.com/mobilecms/g9/M03/07/0C/rBEHaVBb2Y0IAAAAAAADL-JMiecAABcNAMwt_AAAANH809.png"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/JdOrderStat;->setIcon(Ljava/lang/String;)V

    .line 150
    const-string v3, "\u5b9e\u7269\u8ba2\u5355"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/JdOrderStat;->setName(Ljava/lang/String;)V

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v1, localList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/JdOrderStat;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-direct {p0, v1, v4}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getAllInfoList(Ljava/util/List;Z)V

    .line 156
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 157
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 159
    const-wide/32 v3, 0x1b7740

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 160
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 161
    const-string v3, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    new-instance v3, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$2;-><init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 204
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 205
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v2, 0x7f0300a0

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->setContentView(I)V

    .line 80
    const v2, 0x7f030087

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->loadView:Landroid/view/View;

    .line 81
    const v2, 0x7f0c038a

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->listView:Landroid/widget/ListView;

    .line 82
    const v2, 0x7f0c0389

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mAllOrderListView:Landroid/widget/ListView;

    .line 83
    const v2, 0x7f0c038b

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mNoOrderTextView:Landroid/widget/TextView;

    .line 84
    const v2, 0x7f0c007e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 86
    .local v1, title:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const v3, 0x7f070487

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/jingdong/common/utils/EditTextUtils;->setTextViewText(Landroid/widget/TextView;Landroid/content/Intent;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "functionId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mFunctionId:Ljava/lang/String;

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mFirstStartTimestamp:J

    .line 90
    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderController;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jingdong/app/mall/personel/MyOrderController;-><init>(Lcom/jingdong/common/utils/HttpGroup;)V

    iput-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->personalController:Lcom/jingdong/app/mall/personel/MyOrderController;

    .line 95
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mFunctionId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mFunctionId:Ljava/lang/String;

    const-string v3, "allOrdersFunctionList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mFunctionId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->onLoadList(Ljava/lang/String;)V

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, from:Ljava/lang/String;
    const-string v2, "pay"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;)V

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->post(Ljava/lang/Runnable;)V

    .line 114
    :cond_1
    return-void

    .line 99
    .end local v0           #from:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mFunctionId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getOrderList(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onPause()V

    .line 138
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mCurrentPos:I

    .line 139
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 121
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mCurrentPos:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 129
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mFirstStartTimestamp:J

    sget-wide v2, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mCancelTimestamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 130
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mCancelTimestamp:J

    .line 131
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mFunctionId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getOrderList(Ljava/lang/String;)V

    .line 133
    :cond_1
    return-void

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mAllOrderListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mAllOrderListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mAllOrderListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_0
.end method
