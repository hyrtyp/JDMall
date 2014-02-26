.class public Lcom/jingdong/common/controller/ProductDetailController;
.super Ljava/lang/Object;
.source "ProductDetailController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;,
        Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;
    }
.end annotation


# static fields
.field public static final QUERY_ADDRESS:Ljava/lang/String; = "0"

.field public static final QUERY_STOCK:Ljava/lang/String; = "1"


# instance fields
.field private final CITY:Ljava/lang/String;

.field private final COUNTY:Ljava/lang/String;

.field private final PROVINCE:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private final TOWN:Ljava/lang/String;

.field private defaultCityId:Ljava/lang/String;

.field private defaultCountyId:Ljava/lang/String;

.field private defaultProvinceId:Ljava/lang/String;

.field private defaultTownId:Ljava/lang/String;

.field private httpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field private id:J

.field private isClick:Z

.field private isNeedReTryProductDetail:Z

.field private mDefaultCityId:I

.field private mDefaultProvinceId:I

.field private mProvinceSelectId:I

.field private mSourceEntity:Lcom/jingdong/common/entity/SourceEntity;

.field private needDelHistoryId:J

.field private product:Lcom/jingdong/common/entity/Product;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/HttpGroup;)V
    .locals 2
    .parameter "httpGroup"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-string v0, "ProductDetailController"

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->TAG:Ljava/lang/String;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->isNeedReTryProductDetail:Z

    .line 127
    const-string v0, "getProvinces"

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->PROVINCE:Ljava/lang/String;

    .line 128
    const-string v0, "getCitys"

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->CITY:Ljava/lang/String;

    .line 129
    const-string v0, "getCountys"

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->COUNTY:Ljava/lang/String;

    .line 130
    const-string v0, "getTowns"

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->TOWN:Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->isClick:Z

    .line 142
    new-instance v0, Lcom/jingdong/common/entity/Product;

    invoke-direct {v0}, Lcom/jingdong/common/entity/Product;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;

    .line 143
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;

    invoke-direct {p0}, Lcom/jingdong/common/controller/ProductDetailController;->getProvinceNameFromSharedPreferences()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/Product;->setProvinceName(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;

    invoke-direct {p0}, Lcom/jingdong/common/controller/ProductDetailController;->getProvinceIDFromSharedPreferences()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/Product;->setProvinceID(Ljava/lang/String;)V

    .line 145
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 146
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/controller/ProductDetailController;)Z
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->isNeedReTryProductDetail:Z

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/common/controller/ProductDetailController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/jingdong/common/controller/ProductDetailController;->isNeedReTryProductDetail:Z

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/common/controller/ProductDetailController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController;->defaultCountyId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/common/controller/ProductDetailController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController;->defaultTownId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->defaultProvinceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jingdong/common/controller/ProductDetailController;)Z
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->isClick:Z

    return v0
.end method

.method static synthetic access$14(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->defaultCityId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->defaultCountyId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jingdong/common/controller/ProductDetailController;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->defaultTownId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jingdong/common/controller/ProductDetailController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2140
    invoke-direct {p0, p1}, Lcom/jingdong/common/controller/ProductDetailController;->setProvinceIDToSharedPreferences(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18(Lcom/jingdong/common/controller/ProductDetailController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2136
    invoke-direct {p0, p1}, Lcom/jingdong/common/controller/ProductDetailController;->setProvinceNameToSharedPreferences(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/common/controller/ProductDetailController;)J
    .locals 2
    .parameter

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->needDelHistoryId:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/jingdong/common/controller/ProductDetailController;)J
    .locals 2
    .parameter

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->id:J

    return-wide v0
.end method

.method static synthetic access$4(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/SourceEntity;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->mSourceEntity:Lcom/jingdong/common/entity/SourceEntity;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/entity/Product;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/common/controller/ProductDetailController;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/common/controller/ProductDetailController;)Lcom/jingdong/common/utils/HttpGroup;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/common/controller/ProductDetailController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController;->defaultProvinceId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/common/controller/ProductDetailController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController;->defaultCityId:Ljava/lang/String;

    return-void
.end method

.method private cityId2SelectId(I)I
    .locals 3
    .parameter "cityId"

    .prologue
    .line 2207
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getProvinceMode1List()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/jingdong/common/controller/ProductDetailController;->mProvinceSelectId:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/ProvinceMode1;

    invoke-virtual {v1, p1}, Lcom/jingdong/common/entity/ProvinceMode1;->getCityMode1IndexById(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2208
    .local v0, citySelectId:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 2209
    const/4 v1, 0x0

    .line 2211
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private getDefaultCityId()I
    .locals 3

    .prologue
    .line 2195
    iget v1, p0, Lcom/jingdong/common/controller/ProductDetailController;->mDefaultCityId:I

    if-eqz v1, :cond_0

    .line 2196
    iget v1, p0, Lcom/jingdong/common/controller/ProductDetailController;->mDefaultCityId:I

    .line 2200
    :goto_0
    return v1

    .line 2198
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2199
    .local v0, jdSharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "CITY_ID_MODE_1"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jingdong/common/controller/ProductDetailController;->mDefaultCityId:I

    .line 2200
    iget v1, p0, Lcom/jingdong/common/controller/ProductDetailController;->mDefaultCityId:I

    goto :goto_0
.end method

.method private getDefaultCitySelectId()I
    .locals 1

    .prologue
    .line 2188
    invoke-direct {p0}, Lcom/jingdong/common/controller/ProductDetailController;->getDefaultCityId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jingdong/common/controller/ProductDetailController;->cityId2SelectId(I)I

    move-result v0

    return v0
.end method

.method private getDefaultProvinceId()I
    .locals 3

    .prologue
    .line 2165
    iget v1, p0, Lcom/jingdong/common/controller/ProductDetailController;->mDefaultProvinceId:I

    if-eqz v1, :cond_0

    .line 2166
    iget v1, p0, Lcom/jingdong/common/controller/ProductDetailController;->mDefaultProvinceId:I

    .line 2170
    :goto_0
    return v1

    .line 2168
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2169
    .local v0, jdSharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "PROVINCE_ID_MODE_1"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jingdong/common/controller/ProductDetailController;->mDefaultProvinceId:I

    .line 2170
    iget v1, p0, Lcom/jingdong/common/controller/ProductDetailController;->mDefaultProvinceId:I

    goto :goto_0
.end method

.method private getDefaultProvinceSelectId()I
    .locals 1

    .prologue
    .line 2158
    invoke-direct {p0}, Lcom/jingdong/common/controller/ProductDetailController;->getDefaultProvinceId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jingdong/common/controller/ProductDetailController;->provinceId2SelectId(I)I

    move-result v0

    return v0
.end method

.method private getProvinceIDFromSharedPreferences()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2149
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "provinceID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/jingdong/common/lbs/LocManager;->provinceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProvinceNameFromSharedPreferences()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2145
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "provinceName"

    sget-object v2, Lcom/jingdong/common/lbs/LocManager;->provinceName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static onProductShareClick(Lcom/jingdong/common/utils/HttpGroup;J)V
    .locals 4
    .parameter "group"
    .parameter "productId"

    .prologue
    const/4 v3, 0x0

    .line 2235
    if-nez p0, :cond_0

    .line 2245
    :goto_0
    return-void

    .line 2239
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 2240
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "productDetailShare"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 2241
    const-string v1, "wareId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2242
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 2243
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 2244
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method

.method private provinceId2SelectId(I)I
    .locals 2
    .parameter "provinceId"

    .prologue
    .line 2177
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1, p1}, Lcom/jingdong/common/entity/Product;->getProvinceMode1IndexById(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2178
    .local v0, provinceSelectId:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 2179
    const/4 v1, -0x1

    .line 2181
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private setProvinceIDToSharedPreferences(Ljava/lang/String;)V
    .locals 2
    .parameter "provinceID"

    .prologue
    .line 2141
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "provinceID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2142
    return-void
.end method

.method private setProvinceNameToSharedPreferences(Ljava/lang/String;)V
    .locals 2
    .parameter "provinceName"

    .prologue
    .line 2137
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "provinceName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2138
    return-void
.end method


# virtual methods
.method public addFavorite(JLcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V
    .locals 2
    .parameter "id"
    .parameter "productDetailListener"

    .prologue
    .line 277
    iput-wide p1, p0, Lcom/jingdong/common/controller/ProductDetailController;->id:J

    .line 278
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {v0, p0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;-><init>(Lcom/jingdong/common/controller/ProductDetailController;)V

    .line 279
    .local v0, list:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setEvent(I)V

    .line 280
    invoke-virtual {v0, p3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setListener(Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 281
    invoke-virtual {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->start()V

    .line 282
    return-void
.end method

.method public canUseEasyByStock(Lcom/jingdong/common/entity/Product;)Z
    .locals 3
    .parameter "prod"

    .prologue
    .line 2215
    invoke-virtual {p1}, Lcom/jingdong/common/entity/Product;->getProvinceStockContent()Ljava/lang/String;

    move-result-object v0

    .line 2216
    .local v0, provinceStockContent:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/jingdong/common/entity/Product;->getProvinceStockFlag()Ljava/lang/Boolean;

    move-result-object v1

    .line 2217
    .local v1, provinceStockFlag:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2219
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2221
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public cancelFavorite(JLcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V
    .locals 2
    .parameter "id"
    .parameter "productDetailListener"

    .prologue
    .line 292
    iput-wide p1, p0, Lcom/jingdong/common/controller/ProductDetailController;->id:J

    .line 293
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {v0, p0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;-><init>(Lcom/jingdong/common/controller/ProductDetailController;)V

    .line 294
    .local v0, list:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setEvent(I)V

    .line 295
    invoke-virtual {v0, p3}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setListener(Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 296
    invoke-virtual {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->start()V

    .line 297
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;

    .line 162
    return-void
.end method

.method public getProduct()Lcom/jingdong/common/entity/Product;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;

    return-object v0
.end method

.method public queryCanEasybuy(Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V
    .locals 2
    .parameter "productDetailListener"

    .prologue
    .line 306
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {v0, p0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;-><init>(Lcom/jingdong/common/controller/ProductDetailController;)V

    .line 307
    .local v0, list:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setEvent(I)V

    .line 308
    invoke-virtual {v0, p1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setListener(Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 309
    invoke-virtual {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->start()V

    .line 310
    return-void
.end method

.method public queryCommentCount(JLcom/jingdong/common/entity/SourceEntity;Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V
    .locals 2
    .parameter "id"
    .parameter "sourceEntity"
    .parameter "productDetailListener"

    .prologue
    .line 326
    iput-wide p1, p0, Lcom/jingdong/common/controller/ProductDetailController;->id:J

    .line 327
    iput-object p3, p0, Lcom/jingdong/common/controller/ProductDetailController;->mSourceEntity:Lcom/jingdong/common/entity/SourceEntity;

    .line 328
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jingdong/common/controller/ProductDetailController;->isNeedReTryProductDetail:Z

    .line 329
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {v0, p0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;-><init>(Lcom/jingdong/common/controller/ProductDetailController;)V

    .line 330
    .local v0, list:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setEvent(I)V

    .line 331
    invoke-virtual {v0, p4}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setListener(Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 332
    invoke-virtual {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->start()V

    .line 333
    return-void
.end method

.method public queryDirectStock(Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V
    .locals 3
    .parameter "productDetailListener"

    .prologue
    .line 263
    iget-object v1, p0, Lcom/jingdong/common/controller/ProductDetailController;->product:Lcom/jingdong/common/entity/Product;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/Product;->setCheckNext(Z)V

    .line 264
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {v0, p0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;-><init>(Lcom/jingdong/common/controller/ProductDetailController;)V

    .line 265
    .local v0, list:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setEvent(I)V

    .line 266
    invoke-virtual {v0, p1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setListener(Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 267
    invoke-virtual {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->start()V

    .line 268
    return-void
.end method

.method public queryProduct(JLcom/jingdong/common/entity/SourceEntity;Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V
    .locals 3
    .parameter "id"
    .parameter "sourceEntity"
    .parameter "productDetailListener"

    .prologue
    const/4 v2, 0x0

    .line 171
    iput-wide p1, p0, Lcom/jingdong/common/controller/ProductDetailController;->id:J

    .line 172
    iput-object p3, p0, Lcom/jingdong/common/controller/ProductDetailController;->mSourceEntity:Lcom/jingdong/common/entity/SourceEntity;

    .line 173
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jingdong/common/controller/ProductDetailController;->isNeedReTryProductDetail:Z

    .line 174
    iput-boolean v2, p0, Lcom/jingdong/common/controller/ProductDetailController;->isClick:Z

    .line 175
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {v0, p0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;-><init>(Lcom/jingdong/common/controller/ProductDetailController;)V

    .line 176
    .local v0, list:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    invoke-virtual {v0, v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setEvent(I)V

    .line 177
    invoke-virtual {v0, p4}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setListener(Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 178
    invoke-virtual {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->start()V

    .line 179
    return-void
.end method

.method public queryProvince(Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V
    .locals 2
    .parameter "productDetailListener"

    .prologue
    .line 187
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {v0, p0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;-><init>(Lcom/jingdong/common/controller/ProductDetailController;)V

    .line 188
    .local v0, list:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setEvent(I)V

    .line 189
    invoke-virtual {v0, p1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setListener(Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 190
    invoke-virtual {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->start()V

    .line 191
    return-void
.end method

.method public queryProvinceStock(Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V
    .locals 2
    .parameter "productDetailListener"

    .prologue
    .line 251
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {v0, p0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;-><init>(Lcom/jingdong/common/controller/ProductDetailController;)V

    .line 252
    .local v0, list:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setEvent(I)V

    .line 253
    invoke-virtual {v0, p1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setListener(Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 254
    invoke-virtual {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->start()V

    .line 255
    return-void
.end method

.method public queryThirdAddressCity(ZLcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V
    .locals 2
    .parameter "isClick"
    .parameter "productDetailListener"

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/jingdong/common/controller/ProductDetailController;->isClick:Z

    .line 213
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {v0, p0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;-><init>(Lcom/jingdong/common/controller/ProductDetailController;)V

    .line 214
    .local v0, list:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setEvent(I)V

    .line 215
    invoke-virtual {v0, p2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setListener(Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 216
    invoke-virtual {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->start()V

    .line 217
    return-void
.end method

.method public queryThirdAddressCounty(ZLcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V
    .locals 2
    .parameter "isClick"
    .parameter "productDetailListener"

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/jingdong/common/controller/ProductDetailController;->isClick:Z

    .line 226
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {v0, p0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;-><init>(Lcom/jingdong/common/controller/ProductDetailController;)V

    .line 227
    .local v0, list:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setEvent(I)V

    .line 228
    invoke-virtual {v0, p2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setListener(Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 229
    invoke-virtual {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->start()V

    .line 230
    return-void
.end method

.method public queryThirdAddressProvince(ZLcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V
    .locals 2
    .parameter "isClick"
    .parameter "productDetailListener"

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/jingdong/common/controller/ProductDetailController;->isClick:Z

    .line 200
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {v0, p0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;-><init>(Lcom/jingdong/common/controller/ProductDetailController;)V

    .line 201
    .local v0, list:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setEvent(I)V

    .line 202
    invoke-virtual {v0, p2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setListener(Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 203
    invoke-virtual {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->start()V

    .line 204
    return-void
.end method

.method public queryThirdAddressTown(ZLcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V
    .locals 2
    .parameter "isClick"
    .parameter "productDetailListener"

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/jingdong/common/controller/ProductDetailController;->isClick:Z

    .line 239
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {v0, p0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;-><init>(Lcom/jingdong/common/controller/ProductDetailController;)V

    .line 240
    .local v0, list:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setEvent(I)V

    .line 241
    invoke-virtual {v0, p2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setListener(Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 242
    invoke-virtual {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->start()V

    .line 243
    return-void
.end method

.method public statClick(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 313
    iput-wide p1, p0, Lcom/jingdong/common/controller/ProductDetailController;->id:J

    .line 314
    new-instance v0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {v0, p0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;-><init>(Lcom/jingdong/common/controller/ProductDetailController;)V

    .line 315
    .local v0, list:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->setEvent(I)V

    .line 316
    invoke-virtual {v0}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->start()V

    .line 317
    return-void
.end method
