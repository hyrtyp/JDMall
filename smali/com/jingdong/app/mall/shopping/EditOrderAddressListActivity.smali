.class public Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "EditOrderAddressListActivity.java"


# static fields
.field public static final REQUEST_CODE_ADDRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EditOrderAddressListActivity"


# instance fields
.field private adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private currSelectedUserAddress:Lcom/jingdong/common/entity/UserAddress;

.field private layoutNoData:Landroid/view/View;

.field private listData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/UserAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->listData:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Lcom/jingdong/common/entity/UserAddress;

    invoke-direct {v0}, Lcom/jingdong/common/entity/UserAddress;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->currSelectedUserAddress:Lcom/jingdong/common/entity/UserAddress;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)Lcom/jingdong/common/entity/UserAddress;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->currSelectedUserAddress:Lcom/jingdong/common/entity/UserAddress;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;Lcom/jingdong/common/entity/UserAddress;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->checkHasIdTown(Lcom/jingdong/common/entity/UserAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;Lcom/jingdong/common/entity/UserAddress;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->httpDelAddress(Lcom/jingdong/common/entity/UserAddress;)V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;Lcom/jingdong/common/entity/UserAddress;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->showAddressOperateDialog(Lcom/jingdong/common/entity/UserAddress;)V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;Lcom/jingdong/common/entity/UserAddress;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->gotoEditAddress(Lcom/jingdong/common/entity/UserAddress;)V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->layoutNoData:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->listData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->refreshLayout()V

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->httpGetAddressByPin()V

    return-void
.end method

.method private checkHasIdTown(Lcom/jingdong/common/entity/UserAddress;)Z
    .locals 4
    .parameter "address"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 217
    if-nez p1, :cond_0

    .line 237
    :goto_0
    return v1

    .line 221
    :cond_0
    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserAddress;->getIsNoIdTown()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 222
    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserAddress;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, message:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 227
    new-instance v2, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$3;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;Lcom/jingdong/common/entity/UserAddress;)V

    invoke-static {p0, v0, v2}, Lcom/jingdong/common/utils/DialogUtils;->showDailog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 237
    goto :goto_0
.end method

.method private gotoEditAddress(Lcom/jingdong/common/entity/UserAddress;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PageType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const-string v1, "UserAddress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 207
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 208
    return-void
.end method

.method private httpDelAddress(Lcom/jingdong/common/entity/UserAddress;)V
    .locals 5
    .parameter "userAddress"

    .prologue
    const/4 v4, 0x1

    .line 358
    if-nez p1, :cond_0

    .line 407
    :goto_0
    return-void

    .line 361
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 362
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "delAddress"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 363
    const-string v1, "addressId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserAddress;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 365
    new-instance v1, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 405
    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 406
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method

.method private httpGetAddressByPin()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 310
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 311
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "getAddressByPin"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 314
    :try_start_0
    const-string v1, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserInfo()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "pin"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    new-instance v1, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$5;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 350
    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 351
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 352
    return-void

    .line 315
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initDate()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->currSelectedUserAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setName(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->currSelectedUserAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setMobile(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->currSelectedUserAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setZip(Ljava/lang/String;)V

    .line 250
    :try_start_0
    sget-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Where"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->currSelectedUserAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Where"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setWhere(Ljava/lang/String;)V

    .line 253
    :cond_0
    sget-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Email"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->currSelectedUserAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Email"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setEmail(Ljava/lang/String;)V

    .line 256
    :cond_1
    sget-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "IdProvince"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->currSelectedUserAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdProvince"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setIdProvince(Ljava/lang/Integer;)V

    .line 259
    :cond_2
    sget-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "IdCity"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 260
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->currSelectedUserAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdCity"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setIdCity(Ljava/lang/Integer;)V

    .line 262
    :cond_3
    sget-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "IdArea"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 263
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->currSelectedUserAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdArea"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setIdArea(Ljava/lang/Integer;)V

    .line 265
    :cond_4
    sget-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "IdTown"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 266
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->currSelectedUserAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdTown"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setIdTown(Ljava/lang/Integer;)V

    .line 269
    :cond_5
    sget-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "addressDetail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 270
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->currSelectedUserAddress:Lcom/jingdong/common/entity/UserAddress;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "addressDetail"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserAddress;->setAddressDetail(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->httpGetAddressByPin()V

    .line 280
    return-void

    .line 272
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initLayout()V
    .locals 4

    .prologue
    .line 76
    const v2, 0x7f0c007e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 77
    .local v1, txView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const v3, 0x7f070398

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/jingdong/common/utils/EditTextUtils;->setTextViewText(Landroid/widget/TextView;Landroid/content/Intent;Ljava/lang/String;)V

    .line 79
    const v2, 0x7f0c0343

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->mListView:Landroid/widget/ListView;

    .line 80
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 82
    const v2, 0x7f0c071c

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 83
    .local v0, mTitleRightButton:Landroid/widget/Button;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    const v2, 0x7f0704f5

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v2, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$1;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v2, 0x7f0c0342

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->layoutNoData:Landroid/view/View;

    .line 97
    return-void
.end method

.method private refreshLayout()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$4;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$4;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->post(Ljava/lang/Runnable;)V

    .line 304
    :cond_0
    return-void
.end method

.method private setAdapter()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 108
    new-instance v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;

    .line 109
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->listData:Ljava/util/ArrayList;

    .line 110
    const v4, 0x7f030095

    .line 111
    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "mobile"

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-string v2, "where"

    aput-object v2, v5, v1

    .line 112
    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    .line 114
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$2;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 108
    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 195
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    return-void

    .line 112
    nop

    :array_0
    .array-data 0x4
        0x48t 0x3t 0xct 0x7ft
        0x49t 0x3t 0xct 0x7ft
        0x4at 0x3t 0xct 0x7ft
    .end array-data
.end method

.method private showAddressOperateDialog(Lcom/jingdong/common/entity/UserAddress;)V
    .locals 4
    .parameter "userAddress"

    .prologue
    .line 452
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 453
    .local v0, alertDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 454
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v1, showDialogItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserAddress;->getTypeId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 460
    new-instance v3, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$7;

    invoke-direct {v3, p0, p1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$7;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;Lcom/jingdong/common/entity/UserAddress;)V

    .line 459
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 479
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 480
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 484
    packed-switch p1, :pswitch_data_0

    .line 496
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/MyActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 497
    return-void

    .line 486
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 488
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->setResult(I)V

    .line 489
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->finish()V

    goto :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f030094

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->initLayout()V

    .line 70
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->setAdapter()V

    .line 72
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->initDate()V

    .line 73
    return-void
.end method

.method public updateUserInfo(Lcom/jingdong/common/entity/UserAddress;)V
    .locals 3
    .parameter "userAddress"

    .prologue
    .line 415
    if-nez p1, :cond_0

    .line 444
    :goto_0
    return-void

    .line 419
    :cond_0
    new-instance v1, Lcom/jingdong/common/entity/UserInfo;

    invoke-direct {v1}, Lcom/jingdong/common/entity/UserInfo;-><init>()V

    sput-object v1, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 420
    sget-object v1, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserAddress;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/UserInfo;->setUserName(Ljava/lang/String;)V

    .line 421
    sget-object v1, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserAddress;->getMobile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/UserInfo;->setUserMobile(Ljava/lang/String;)V

    .line 422
    sget-object v1, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserAddress;->getZip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/UserInfo;->setUserZip(Ljava/lang/String;)V

    .line 423
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 425
    .local v0, jbAddr:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "IdProvince"

    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserAddress;->getIdProvince()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    const-string v1, "IdCity"

    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserAddress;->getIdCity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    const-string v1, "IdArea"

    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserAddress;->getIdArea()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    const-string v1, "IdTown"

    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserAddress;->getIdTown()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    const-string v1, "Where"

    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserAddress;->getWhere()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    const-string v1, "Email"

    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserAddress;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    const-string v1, "addressDetail"

    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserAddress;->getAddressDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_1
    sget-object v1, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1, v0}, Lcom/jingdong/common/entity/UserInfo;->setUserAddr(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 436
    :catch_0
    move-exception v1

    goto :goto_1
.end method
