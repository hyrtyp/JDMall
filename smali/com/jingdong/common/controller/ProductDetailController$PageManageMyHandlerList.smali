.class public Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
.super Lcom/jingdong/common/utils/MyHandlerList;
.source "ProductDetailController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/controller/ProductDetailController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageManageMyHandlerList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$AddFavoriteMyHandler;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$FinalTask;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCanEasyBuyWareMyHandler;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryConsultationCountMyHandler;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDeliverMyHandler;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOptionsMyHandler;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryOrderCommentCountMyHandler;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPacksMyHandler;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryPromotionInfoMyHandler;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceMyHandler;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceStockMyHandler;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCountyMyHandler;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressTownMyHandler;,
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$StatClickMyHandler;
    }
.end annotation


# static fields
.field public static final EVENT_ADD_FAVORITE:I = 0x4

.field public static final EVENT_CANCEL_FAVORITE:I = 0xc

.field public static final EVENT_COMMENT_COUNT:I = 0xd

.field public static final EVENT_QUERY_DELIVER:I = 0x7

.field public static final EVENT_QUERY_DIRECT_STOCK:I = 0x3

.field public static final EVENT_QUERY_EASYBUY:I = 0x6

.field public static final EVENT_QUERY_PRODUCT:I = 0x0

.field public static final EVENT_QUERY_PROVINCE:I = 0x1

.field public static final EVENT_QUERY_PROVINCE_STOCK:I = 0x2

.field public static final EVENT_QUERY_THIRDADDRESS_CITY:I = 0x9

.field public static final EVENT_QUERY_THIRDADDRESS_COUNTY:I = 0xa

.field public static final EVENT_QUERY_THIRDADDRESS_PROVINCE:I = 0x8

.field public static final EVENT_QUERY_THIRDADDRESS_TOWN:I = 0xb

.field public static final EVENT_STAT_CLICK:I = 0x5


# instance fields
.field public event:I

.field private productDetailListener:Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;

.field final synthetic this$0:Lcom/jingdong/common/controller/ProductDetailController;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/controller/ProductDetailController;)V
    .locals 1
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    .line 437
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jingdong/common/utils/MyHandlerList;-><init>(Z)V

    .line 422
    const/4 v0, -0x1

    iput v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->event:I

    .line 438
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/controller/ProductDetailController;Z)V
    .locals 1
    .parameter
    .parameter "multiThread"

    .prologue
    .line 440
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    .line 441
    invoke-direct {p0, p2}, Lcom/jingdong/common/utils/MyHandlerList;-><init>(Z)V

    .line 422
    const/4 v0, -0x1

    iput v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->event:I

    .line 442
    return-void
.end method

.method private QueryDatas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "action"
    .parameter "skuId"
    .parameter "province"
    .parameter "city"
    .parameter "county"
    .parameter "town"
    .parameter "isClick"

    .prologue
    const/4 v4, 0x1

    .line 1140
    new-instance v1, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$1;

    invoke-direct {v1, p0, p7, p1, p3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$1;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1173
    .local v1, onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 1174
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v2, "thirdAddress"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 1175
    const-string v2, "action"

    invoke-virtual {v0, v2, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1176
    const-string v2, "skuId"

    invoke-virtual {v0, v2, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1177
    const-string v2, "provinceId"

    invoke-virtual {v0, v2, p3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1178
    const-string v2, "cityId"

    invoke-virtual {v0, v2, p4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1179
    const-string v2, "countyId"

    invoke-virtual {v0, v2, p5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1180
    const-string v2, "townId"

    invoke-virtual {v0, v2, p6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1181
    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 1182
    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 1183
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1184
    if-nez p7, :cond_0

    .line 1185
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setAlertErrorDialogType(I)V

    .line 1187
    :cond_0
    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 1188
    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v2}, Lcom/jingdong/common/controller/ProductDetailController;->access$7(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 1190
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1343
    invoke-direct {p0, p1, p2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->handleNewBusiness(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 444
    invoke-direct {p0, p1, p2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->onFinish(IZ)V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1135
    invoke-direct/range {p0 .. p7}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->QueryDatas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1192
    invoke-direct {p0, p1, p2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->handleDatas(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1212
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->handleAllDatas(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)Lcom/jingdong/common/controller/ProductDetailController;
    .locals 1
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    return-object v0
.end method

.method private handleAllDatas(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V
    .locals 15
    .parameter "action"
    .parameter "jsonObject"
    .parameter "provinceId"

    .prologue
    .line 1218
    :try_start_0
    const-string v10, ""

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1219
    const/4 v3, 0x0

    .line 1221
    .local v3, defaultAddressMode:Lcom/jingdong/common/entity/DefaultAddressMode;
    const-string v10, "0"

    move-object/from16 v0, p3

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1222
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    const-string v11, "defaultAddress"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/jingdong/common/entity/DefaultAddressMode;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setDefaultAddressModeList(Ljava/util/ArrayList;)V

    .line 1223
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getDefaultAddressModeList()Ljava/util/ArrayList;

    move-result-object v6

    .line 1224
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/DefaultAddressMode;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 1225
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #defaultAddressMode:Lcom/jingdong/common/entity/DefaultAddressMode;
    check-cast v3, Lcom/jingdong/common/entity/DefaultAddressMode;

    .line 1233
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/DefaultAddressMode;>;"
    .restart local v3       #defaultAddressMode:Lcom/jingdong/common/entity/DefaultAddressMode;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 1234
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v3}, Lcom/jingdong/common/entity/DefaultAddressMode;->getProvinceId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setProvinceID(Ljava/lang/String;)V

    .line 1235
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v3}, Lcom/jingdong/common/entity/DefaultAddressMode;->getCityId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setCityId(Ljava/lang/String;)V

    .line 1236
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v3}, Lcom/jingdong/common/entity/DefaultAddressMode;->getCountyId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setCountyID(Ljava/lang/String;)V

    .line 1237
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v3}, Lcom/jingdong/common/entity/DefaultAddressMode;->getTownId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setTownID(Ljava/lang/String;)V

    .line 1238
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v3}, Lcom/jingdong/common/entity/DefaultAddressMode;->getFunctionId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setStockFunction(Ljava/lang/String;)V

    .line 1240
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v3}, Lcom/jingdong/common/entity/DefaultAddressMode;->getProvinceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setProvinceName(Ljava/lang/String;)V

    .line 1241
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v3}, Lcom/jingdong/common/entity/DefaultAddressMode;->getCityName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setCityName(Ljava/lang/String;)V

    .line 1242
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v3}, Lcom/jingdong/common/entity/DefaultAddressMode;->getCountyName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setCountyName(Ljava/lang/String;)V

    .line 1243
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v3}, Lcom/jingdong/common/entity/DefaultAddressMode;->getTownName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setTownName(Ljava/lang/String;)V

    .line 1341
    .end local v3           #defaultAddressMode:Lcom/jingdong/common/entity/DefaultAddressMode;
    :cond_1
    :goto_1
    return-void

    .line 1229
    .restart local v3       #defaultAddressMode:Lcom/jingdong/common/entity/DefaultAddressMode;
    :cond_2
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    new-instance v11, Lcom/jingdong/common/entity/DefaultAddressMode;

    const-string v12, "defaultAddress"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/jingdong/common/entity/DefaultAddressMode;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I[Ljava/lang/Object;)V

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setDefaultAddressMode(Lcom/jingdong/common/entity/DefaultAddressMode;)V

    .line 1230
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getDefaultAddressMode()Lcom/jingdong/common/entity/DefaultAddressMode;

    move-result-object v3

    goto/16 :goto_0

    .line 1246
    .end local v3           #defaultAddressMode:Lcom/jingdong/common/entity/DefaultAddressMode;
    :cond_3
    const-string v10, "getProvinces"

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1247
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    const-string v11, "addressList"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/jingdong/common/entity/AddressBaseMode;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setProvinceModeList(Ljava/util/ArrayList;)V

    .line 1249
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultProvinceId:Ljava/lang/String;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$12(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 1250
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getProvinceModeList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1251
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/AddressBaseMode;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1252
    .local v8, size:I
    if-eqz v5, :cond_1

    if-lez v8, :cond_1

    .line 1253
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v8, :cond_1

    .line 1254
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jingdong/common/entity/AddressBaseMode;

    .line 1256
    .local v7, provinceMode:Lcom/jingdong/common/entity/AddressBaseMode;
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultProvinceId:Ljava/lang/String;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$12(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/jingdong/common/entity/AddressBaseMode;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1257
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v7}, Lcom/jingdong/common/entity/AddressBaseMode;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setProvinceID(Ljava/lang/String;)V

    .line 1258
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v7}, Lcom/jingdong/common/entity/AddressBaseMode;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setProvinceName(Ljava/lang/String;)V

    .line 1259
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v7}, Lcom/jingdong/common/entity/AddressBaseMode;->getFunctionId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setStockFunction(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1336
    .end local v4           #i:I
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/AddressBaseMode;>;"
    .end local v7           #provinceMode:Lcom/jingdong/common/entity/AddressBaseMode;
    .end local v8           #size:I
    :catch_0
    move-exception v10

    goto/16 :goto_1

    .line 1253
    .restart local v4       #i:I
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/AddressBaseMode;>;"
    .restart local v7       #provinceMode:Lcom/jingdong/common/entity/AddressBaseMode;
    .restart local v8       #size:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1265
    .end local v4           #i:I
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/AddressBaseMode;>;"
    .end local v7           #provinceMode:Lcom/jingdong/common/entity/AddressBaseMode;
    .end local v8           #size:I
    :cond_5
    const-string v10, "getCitys"

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1266
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    const-string v11, "addressList"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/jingdong/common/entity/AddressBaseMode;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setCityModeList(Ljava/util/ArrayList;)V

    .line 1268
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getCityModeList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1269
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/AddressBaseMode;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1270
    .restart local v8       #size:I
    if-eqz v5, :cond_1

    if-lez v8, :cond_1

    .line 1271
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultCityId:Ljava/lang/String;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$14(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultCityId:Ljava/lang/String;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$14(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1272
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    if-ge v4, v8, :cond_1

    .line 1273
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/AddressBaseMode;

    .line 1274
    .local v1, cityMode:Lcom/jingdong/common/entity/AddressBaseMode;
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultCityId:Ljava/lang/String;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$14(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/jingdong/common/entity/AddressBaseMode;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1275
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v1}, Lcom/jingdong/common/entity/AddressBaseMode;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setCityId(Ljava/lang/String;)V

    .line 1276
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v1}, Lcom/jingdong/common/entity/AddressBaseMode;->getFunctionId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setStockFunction(Ljava/lang/String;)V

    .line 1277
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v1}, Lcom/jingdong/common/entity/AddressBaseMode;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setCityName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1272
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1282
    .end local v1           #cityMode:Lcom/jingdong/common/entity/AddressBaseMode;
    .end local v4           #i:I
    :cond_7
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v11

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v10}, Lcom/jingdong/common/entity/AddressBaseMode;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/jingdong/common/entity/Product;->setCityName(Ljava/lang/String;)V

    .line 1283
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v11

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v10}, Lcom/jingdong/common/entity/AddressBaseMode;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/jingdong/common/entity/Product;->setCityId(Ljava/lang/String;)V

    .line 1284
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v11

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v10}, Lcom/jingdong/common/entity/AddressBaseMode;->getFunctionId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/jingdong/common/entity/Product;->setStockFunction(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1289
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/AddressBaseMode;>;"
    .end local v8           #size:I
    :cond_8
    const-string v10, "getCountys"

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1290
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    const-string v11, "addressList"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/jingdong/common/entity/AddressBaseMode;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setCountyModeList(Ljava/util/ArrayList;)V

    .line 1292
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getCountyModeList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1293
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/AddressBaseMode;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1294
    .restart local v8       #size:I
    if-eqz v5, :cond_1

    if-lez v8, :cond_1

    .line 1295
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultCountyId:Ljava/lang/String;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$15(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultCountyId:Ljava/lang/String;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$15(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 1296
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    if-ge v4, v8, :cond_1

    .line 1297
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/AddressBaseMode;

    .line 1299
    .local v2, countyMode:Lcom/jingdong/common/entity/AddressBaseMode;
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultCountyId:Ljava/lang/String;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$15(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/jingdong/common/entity/AddressBaseMode;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1300
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v2}, Lcom/jingdong/common/entity/AddressBaseMode;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setCountyID(Ljava/lang/String;)V

    .line 1301
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v2}, Lcom/jingdong/common/entity/AddressBaseMode;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setCountyName(Ljava/lang/String;)V

    .line 1302
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v2}, Lcom/jingdong/common/entity/AddressBaseMode;->getFunctionId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setStockFunction(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1296
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1307
    .end local v2           #countyMode:Lcom/jingdong/common/entity/AddressBaseMode;
    .end local v4           #i:I
    :cond_a
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v11

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v10}, Lcom/jingdong/common/entity/AddressBaseMode;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/jingdong/common/entity/Product;->setCountyName(Ljava/lang/String;)V

    .line 1308
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v11

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v10}, Lcom/jingdong/common/entity/AddressBaseMode;->getFunctionId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/jingdong/common/entity/Product;->setStockFunction(Ljava/lang/String;)V

    .line 1309
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v11

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v10}, Lcom/jingdong/common/entity/AddressBaseMode;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/jingdong/common/entity/Product;->setCountyID(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1312
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/AddressBaseMode;>;"
    .end local v8           #size:I
    :cond_b
    const-string v10, "getTowns"

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1313
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    const-string v11, "addressList"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/jingdong/common/entity/AddressBaseMode;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setTownModeList(Ljava/util/ArrayList;)V

    .line 1315
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getTownModeList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1316
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/AddressBaseMode;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1317
    .restart local v8       #size:I
    if-eqz v5, :cond_1

    if-lez v8, :cond_1

    .line 1318
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultTownId:Ljava/lang/String;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$16(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultTownId:Ljava/lang/String;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$16(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 1319
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    if-ge v4, v8, :cond_1

    .line 1320
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/common/entity/AddressBaseMode;

    .line 1322
    .local v9, townMode:Lcom/jingdong/common/entity/AddressBaseMode;
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->defaultTownId:Ljava/lang/String;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$16(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/jingdong/common/entity/AddressBaseMode;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1323
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v9}, Lcom/jingdong/common/entity/AddressBaseMode;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setTownID(Ljava/lang/String;)V

    .line 1324
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v9}, Lcom/jingdong/common/entity/AddressBaseMode;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setTownName(Ljava/lang/String;)V

    .line 1325
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v10

    invoke-virtual {v9}, Lcom/jingdong/common/entity/AddressBaseMode;->getFunctionId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jingdong/common/entity/Product;->setStockFunction(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1319
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1330
    .end local v4           #i:I
    .end local v9           #townMode:Lcom/jingdong/common/entity/AddressBaseMode;
    :cond_d
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v11

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v10}, Lcom/jingdong/common/entity/AddressBaseMode;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/jingdong/common/entity/Product;->setTownName(Ljava/lang/String;)V

    .line 1331
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v11

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v10}, Lcom/jingdong/common/entity/AddressBaseMode;->getFunctionId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/jingdong/common/entity/Product;->setStockFunction(Ljava/lang/String;)V

    .line 1332
    iget-object v10, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v10}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v11

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v10}, Lcom/jingdong/common/entity/AddressBaseMode;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/jingdong/common/entity/Product;->setTownID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method private handleDatas(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 3
    .parameter "action"
    .parameter "jsonObject"

    .prologue
    .line 1194
    :try_start_0
    const-string v0, "getProvinces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1195
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    const-string v1, "addressList"

    invoke-virtual {p2, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/entity/AddressBaseMode;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/Product;->setProvinceModeList(Ljava/util/ArrayList;)V

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1196
    :cond_1
    const-string v0, "getCitys"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1197
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    const-string v1, "addressList"

    invoke-virtual {p2, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/entity/AddressBaseMode;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/Product;->setCityModeList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1205
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1199
    :cond_2
    const-string v0, "getCountys"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1200
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    const-string v1, "addressList"

    invoke-virtual {p2, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/entity/AddressBaseMode;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/Product;->setCountyModeList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1202
    :cond_3
    const-string v0, "getTowns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v0}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v0

    const-string v1, "addressList"

    invoke-virtual {p2, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/entity/AddressBaseMode;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/Product;->setTownModeList(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private handleNewBusiness(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "skuOld"
    .parameter "skuNew"

    .prologue
    const/4 v3, 0x1

    .line 1349
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1351
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1352
    .local v0, newProductId:J
    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v2}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 1353
    iget-object v2, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v2}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/Product;->setShowId(Ljava/lang/Long;)V

    .line 1355
    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->onFinish(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    .end local v0           #newProductId:J
    :goto_0
    return-void

    .line 1363
    :cond_0
    invoke-direct {p0, v3, v3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->onFinish(IZ)V

    goto :goto_0

    .line 1356
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 461
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProductMyHandler;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->add(Lcom/jingdong/common/utils/MyHandlerList$MyHandler;)V

    .line 462
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCruxProductMyHandler;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->add(Lcom/jingdong/common/utils/MyHandlerList$MyHandler;)V

    .line 463
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressProvinceMyHandler;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->add(Lcom/jingdong/common/utils/MyHandlerList$MyHandler;)V

    .line 464
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCityMyHandler;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->add(Lcom/jingdong/common/utils/MyHandlerList$MyHandler;)V

    .line 465
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCountyMyHandler;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCountyMyHandler;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressCountyMyHandler;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->add(Lcom/jingdong/common/utils/MyHandlerList$MyHandler;)V

    .line 466
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressTownMyHandler;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressTownMyHandler;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryThirdAddressTownMyHandler;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->add(Lcom/jingdong/common/utils/MyHandlerList$MyHandler;)V

    .line 467
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryDirectStockMyHandler;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->add(Lcom/jingdong/common/utils/MyHandlerList$MyHandler;)V

    .line 469
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryCommentCountMyHandler;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->add(Lcom/jingdong/common/utils/MyHandlerList$MyHandler;)V

    .line 471
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$AddFavoriteMyHandler;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$AddFavoriteMyHandler;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$AddFavoriteMyHandler;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->add(Lcom/jingdong/common/utils/MyHandlerList$MyHandler;)V

    .line 472
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$CancelFavoriteMyHandler;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->add(Lcom/jingdong/common/utils/MyHandlerList$MyHandler;)V

    .line 474
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceMyHandler;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceMyHandler;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$QueryProvinceMyHandler;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->add(Lcom/jingdong/common/utils/MyHandlerList$MyHandler;)V

    .line 475
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$StatClickMyHandler;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$StatClickMyHandler;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$StatClickMyHandler;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->add(Lcom/jingdong/common/utils/MyHandlerList$MyHandler;)V

    .line 476
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$FinalTask;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$FinalTask;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$FinalTask;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->add(Lcom/jingdong/common/utils/MyHandlerList$MyHandler;)V

    .line 477
    return-void
.end method

.method private onFinish(IZ)V
    .locals 2
    .parameter "ResultCode"
    .parameter "isSucceed"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->productDetailListener:Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->productDetailListener:Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;

    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->this$0:Lcom/jingdong/common/controller/ProductDetailController;

    #getter for: Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/common/controller/ProductDetailController;->access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;->onFinish(Lcom/jingdong/common/entity/Product;IZ)V

    .line 451
    :cond_0
    return-void
.end method


# virtual methods
.method public setArg1(Ljava/lang/Object;)V
    .locals 0
    .parameter "arg1"

    .prologue
    .line 434
    return-void
.end method

.method public setEvent(I)V
    .locals 0
    .parameter "e"

    .prologue
    .line 480
    iput p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->event:I

    .line 481
    return-void
.end method

.method public setListener(Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 430
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->productDetailListener:Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;

    .line 431
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 485
    iget v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->event:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 493
    :goto_0
    return-void

    .line 491
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->init()V

    .line 492
    invoke-super {p0}, Lcom/jingdong/common/utils/MyHandlerList;->start()V

    goto :goto_0
.end method
