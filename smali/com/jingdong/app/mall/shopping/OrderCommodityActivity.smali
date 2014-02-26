.class public Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "OrderCommodityActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$DividerDrawable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OrderCommodityActivity"


# instance fields
.field private adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private listData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/OrderCommodity;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private nSelAreaId:I

.field private nSelCityIndex:I

.field private nSelProvinceIndex:I

.field private nSelTownId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->listData:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->listData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->refreshLayout()V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method private initDate()V
    .locals 6

    .prologue
    .line 184
    const/4 v3, 0x1

    :try_start_0
    iput v3, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->nSelProvinceIndex:I

    .line 185
    const/16 v3, 0x48

    iput v3, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->nSelCityIndex:I

    .line 186
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 187
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    .line 190
    .local v2, userAddress:Lorg/json/JSONObject;
    const-string v3, "IdProvince"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    const-string v3, "IdProvince"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->nSelProvinceIndex:I

    .line 195
    :cond_0
    const-string v3, "IdCity"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 196
    const-string v3, "IdCity"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->nSelCityIndex:I

    .line 200
    :cond_1
    const-string v3, "IdArea"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 201
    const-string v3, "IdArea"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->nSelAreaId:I

    .line 205
    :cond_2
    const-string v3, "IdTown"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 206
    const-string v3, "IdTown"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->nSelTownId:I

    .line 210
    .end local v2           #userAddress:Lorg/json/JSONObject;
    :cond_3
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 211
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "commodityList"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 212
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 213
    const-string v3, "syntype"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    const-string v3, "provinceId"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->nSelProvinceIndex:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    const-string v3, "cityId"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->nSelCityIndex:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    const-string v3, "areaId"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->nSelAreaId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    const-string v3, "townId"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->nSelTownId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->isAlreadySyncCart()Z

    move-result v3

    if-nez v3, :cond_4

    .line 219
    const-string v3, "noPinOrder"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    :cond_4
    const-string v3, "cartuuid"

    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->readCartUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    new-instance v3, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$2;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$2;-><init>(Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;)V

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 252
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 253
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v1           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshLayout()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$3;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$3;-><init>(Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->post(Ljava/lang/Runnable;)V

    .line 273
    :cond_0
    return-void
.end method

.method private setAdapter()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 86
    new-instance v0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$1;

    .line 87
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->listData:Ljava/util/ArrayList;

    .line 88
    const v4, 0x7f03005c

    .line 89
    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "imageUrl"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-string v2, "giftDesc"

    aput-object v2, v5, v1

    const/4 v1, 0x3

    const-string v2, "num"

    aput-object v2, v5, v1

    const/4 v1, 0x4

    const-string v2, "jdPrice"

    aput-object v2, v5, v1

    .line 90
    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    .line 94
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$1;-><init>(Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 86
    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 175
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    return-void

    .line 90
    nop

    :array_0
    .array-data 0x4
        0x36t 0x2t 0xct 0x7ft
        0x3at 0x2t 0xct 0x7ft
        0x3bt 0x2t 0xct 0x7ft
        0x3ct 0x2t 0xct 0x7ft
        0x3dt 0x2t 0xct 0x7ft
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x2

    .line 60
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f03005b

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->setContentView(I)V

    .line 66
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 67
    .local v6, txView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0704e8

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/jingdong/common/utils/EditTextUtils;->setTextViewText(Landroid/widget/TextView;Landroid/content/Intent;Ljava/lang/String;)V

    .line 69
    const v0, 0x7f0c0234

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->mListView:Landroid/widget/ListView;

    .line 70
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$DividerDrawable;

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090036

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$DividerDrawable;-><init>(Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;IIZI)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x3f80

    invoke-static {v1}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 73
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->setAdapter()V

    .line 74
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->initDate()V

    .line 75
    return-void
.end method
