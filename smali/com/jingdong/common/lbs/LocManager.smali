.class public Lcom/jingdong/common/lbs/LocManager;
.super Ljava/lang/Object;
.source "LocManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/lbs/LocManager$MyLocationListener;
    }
.end annotation


# static fields
.field private static final DISTANCE:I = 0x5

.field public static final GPS_TIMEOUT_TIME:I = 0xea60

.field private static final RADIUS:D = 6378.137

.field public static final RELOCATION_INTERVAL_TIME:I = 0x1b7740

.field private static final SYMBOL_BOUND:Ljava/lang/String; = "_"

.field private static final TAG:Ljava/lang/String; = "LocManager"

.field public static cityId:I

.field public static cityName:Ljava/lang/String;

.field public static districtId:I

.field public static districtName:Ljava/lang/String;

.field public static isLocateSuccess:Z

.field public static lati:D

.field public static longi:D

.field private static mLocManager:Lcom/jingdong/common/lbs/LocManager;

.field private static mLocationListener:Lcom/jingdong/common/lbs/LocManager$MyLocationListener;

.field private static mLocationManager:Lcom/jingdong/common/lbs/ILocationManager;

.field public static provinceId:I

.field public static provinceName:Ljava/lang/String;


# instance fields
.field private canRunService:Z

.field private isCurrLocationSucceed:Z

.field private mContext:Landroid/content/Context;

.field private productInfoUtil:Lcom/jingdong/common/lbs/ProductInfoUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/common/lbs/LocManager;->isLocateSuccess:Z

    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/jingdong/common/lbs/LocManager;->provinceId:I

    .line 33
    sget-object v0, Lcom/jingdong/common/res/StringUtil;->product_province_beijing:Ljava/lang/String;

    sput-object v0, Lcom/jingdong/common/lbs/LocManager;->provinceName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/lbs/LocManager;->canRunService:Z

    .line 58
    iput-object p1, p0, Lcom/jingdong/common/lbs/LocManager;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/lbs/LocManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/jingdong/common/lbs/LocManager;->canRunService:Z

    return v0
.end method

.method static synthetic access$1()Lcom/jingdong/common/lbs/LocManager$MyLocationListener;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/jingdong/common/lbs/LocManager;->mLocationListener:Lcom/jingdong/common/lbs/LocManager$MyLocationListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/common/lbs/LocManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/jingdong/common/lbs/LocManager;->isCurrLocationSucceed:Z

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/common/lbs/LocManager;)Lcom/jingdong/common/lbs/ProductInfoUtil;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jingdong/common/lbs/LocManager;->productInfoUtil:Lcom/jingdong/common/lbs/ProductInfoUtil;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/common/lbs/LocManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jingdong/common/lbs/LocManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/common/lbs/LocManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/jingdong/common/lbs/LocManager;->isCurrLocationSucceed:Z

    return v0
.end method

.method public static calculateDistance(DDDD)D
    .locals 20
    .parameter "lat1"
    .parameter "lng1"
    .parameter "lat2"
    .parameter "lng2"

    .prologue
    .line 297
    invoke-static/range {p0 .. p1}, Lcom/jingdong/common/lbs/LocManager;->rad(D)D

    move-result-wide v4

    .line 298
    .local v4, radLat1:D
    invoke-static/range {p4 .. p5}, Lcom/jingdong/common/lbs/LocManager;->rad(D)D

    move-result-wide v6

    .line 299
    .local v6, radLat2:D
    sub-double v0, v4, v6

    .line 300
    .local v0, a:D
    invoke-static/range {p2 .. p3}, Lcom/jingdong/common/lbs/LocManager;->rad(D)D

    move-result-wide v10

    invoke-static/range {p6 .. p7}, Lcom/jingdong/common/lbs/LocManager;->rad(D)D

    move-result-wide v12

    sub-double v2, v10, v12

    .line 301
    .local v2, b:D
    const-wide/high16 v10, 0x4000

    const-wide/high16 v12, 0x4000

    div-double v12, v0, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    .line 302
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000

    div-double v16, v2, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    .line 301
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->asin(D)D

    move-result-wide v12

    mul-double v8, v10, v12

    .line 303
    .local v8, s:D
    const-wide v10, 0x40b8ea23126e978dL

    mul-double/2addr v8, v10

    .line 304
    const-wide v10, 0x40c3880000000000L

    mul-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v12, 0x40c3880000000000L

    div-double v8, v10, v12

    .line 305
    return-wide v8
.end method

.method public static getCommonLbsParameter()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 337
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getProvinceIDFromSharedPreferences()Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, provinceIdSp:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 339
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getCityIDFromSharedPreferences()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, cityIdSp:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getDistrictIdFromSharedPreferences()Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, districtIdSp:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getTownIdFromSharedPreferences()Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, townIdSp:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 343
    if-nez v0, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #cityIdSp:Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 344
    if-nez v1, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .end local v1           #districtIdSp:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 345
    if-nez v3, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .end local v3           #townIdSp:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 342
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 354
    :goto_0
    return-object v4

    .line 347
    :cond_3
    sget-boolean v4, Lcom/jingdong/common/lbs/LocManager;->isLocateSuccess:Z

    if-eqz v4, :cond_4

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    sget v5, Lcom/jingdong/common/lbs/LocManager;->provinceId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 349
    sget v5, Lcom/jingdong/common/lbs/LocManager;->cityId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 350
    sget v5, Lcom/jingdong/common/lbs/LocManager;->districtId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 351
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 348
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 354
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/jingdong/common/lbs/LocManager;
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/jingdong/common/lbs/LocManager;->mLocManager:Lcom/jingdong/common/lbs/LocManager;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/jingdong/common/lbs/LocManager;

    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jingdong/common/lbs/LocManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jingdong/common/lbs/LocManager;->mLocManager:Lcom/jingdong/common/lbs/LocManager;

    .line 76
    :cond_0
    invoke-static {}, Lcom/jingdong/common/lbs/JdLocationManager;->getInstance()Lcom/jingdong/common/lbs/JdLocationManager;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/lbs/LocManager;->mLocationManager:Lcom/jingdong/common/lbs/ILocationManager;

    .line 78
    sget-object v0, Lcom/jingdong/common/lbs/LocManager;->mLocManager:Lcom/jingdong/common/lbs/LocManager;

    return-object v0
.end method

.method private static rad(D)D
    .locals 4
    .parameter "d"

    .prologue
    .line 309
    const-wide v0, 0x400921fb54442d18L

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static updateLocation(Ljava/util/Map;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string v0, "lati"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-string v2, "longi"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sget-wide v4, Lcom/jingdong/common/lbs/LocManager;->lati:D

    sget-wide v6, Lcom/jingdong/common/lbs/LocManager;->longi:D

    invoke-static/range {v0 .. v7}, Lcom/jingdong/common/lbs/LocManager;->calculateDistance(DDDD)D

    move-result-wide v8

    .line 161
    .local v8, result:D
    const-wide/high16 v0, 0x4014

    cmpl-double v0, v8, v0

    if-lez v0, :cond_0

    .line 162
    const-string v0, "lati"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sput-wide v0, Lcom/jingdong/common/lbs/LocManager;->lati:D

    .line 163
    const-string v0, "longi"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sput-wide v0, Lcom/jingdong/common/lbs/LocManager;->longi:D

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public getProductId(Ljava/util/ArrayList;)J
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/ProvinceMode1;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, provinceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProvinceMode1;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 280
    const-wide/16 v5, -0x1

    :goto_1
    return-wide v5

    .line 259
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/ProvinceMode1;

    .line 263
    .local v4, province:Lcom/jingdong/common/entity/ProvinceMode1;
    invoke-virtual {v4}, Lcom/jingdong/common/entity/ProvinceMode1;->getId()I

    move-result v5

    sget v6, Lcom/jingdong/common/lbs/LocManager;->provinceId:I

    if-ne v5, v6, :cond_1

    .line 267
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v1, cityList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/CityMode1;>;"
    invoke-virtual {v4}, Lcom/jingdong/common/entity/ProvinceMode1;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    .line 269
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_2

    .line 258
    .end local v1           #cityList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/CityMode1;>;"
    .end local v3           #j:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .restart local v1       #cityList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/CityMode1;>;"
    .restart local v3       #j:I
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/CityMode1;

    .line 274
    .local v0, city:Lcom/jingdong/common/entity/CityMode1;
    invoke-virtual {v0}, Lcom/jingdong/common/entity/CityMode1;->getId()I

    move-result v5

    sget v6, Lcom/jingdong/common/lbs/LocManager;->cityId:I

    if-ne v5, v6, :cond_3

    .line 275
    invoke-virtual {v0}, Lcom/jingdong/common/entity/CityMode1;->getProductId()J

    move-result-wide v5

    goto :goto_1

    .line 269
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public isOpenGps()Z
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/jingdong/common/lbs/LocManager;->mLocationManager:Lcom/jingdong/common/lbs/ILocationManager;

    if-eqz v0, :cond_0

    .line 238
    sget-object v0, Lcom/jingdong/common/lbs/LocManager;->mLocationManager:Lcom/jingdong/common/lbs/ILocationManager;

    invoke-interface {v0}, Lcom/jingdong/common/lbs/ILocationManager;->isOpenGps()Z

    move-result v0

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/lbs/LocManager;->canRunService:Z

    .line 329
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 320
    invoke-static {}, Lcom/jingdong/common/lbs/LocManager;->getInstance()Lcom/jingdong/common/lbs/LocManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/lbs/LocManager;->removeUpdateLocation()V

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/common/lbs/LocManager;->canRunService:Z

    .line 322
    return-void
.end method

.method public queryInfoByLocation(Lcom/jingdong/common/lbs/LocManager$MyLocationListener;)V
    .locals 4
    .parameter "locationListener"

    .prologue
    .line 173
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jingdong/common/lbs/LocManager;->isCurrLocationSucceed:Z

    .line 175
    sput-object p1, Lcom/jingdong/common/lbs/LocManager;->mLocationListener:Lcom/jingdong/common/lbs/LocManager$MyLocationListener;

    .line 177
    new-instance v1, Lcom/jingdong/common/lbs/ProductInfoUtil;

    invoke-direct {v1}, Lcom/jingdong/common/lbs/ProductInfoUtil;-><init>()V

    iput-object v1, p0, Lcom/jingdong/common/lbs/LocManager;->productInfoUtil:Lcom/jingdong/common/lbs/ProductInfoUtil;

    .line 178
    iget-object v1, p0, Lcom/jingdong/common/lbs/LocManager;->productInfoUtil:Lcom/jingdong/common/lbs/ProductInfoUtil;

    new-instance v2, Lcom/jingdong/common/lbs/LocManager$2;

    invoke-direct {v2, p0}, Lcom/jingdong/common/lbs/LocManager$2;-><init>(Lcom/jingdong/common/lbs/LocManager;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/common/lbs/ProductInfoUtil;->setInfoListener(Lcom/jingdong/common/lbs/ProductInfoUtil$UpdateDataListener;)V

    .line 189
    sget-object v1, Lcom/jingdong/common/lbs/LocManager;->mLocationManager:Lcom/jingdong/common/lbs/ILocationManager;

    new-instance v2, Lcom/jingdong/common/lbs/LocManager$3;

    invoke-direct {v2, p0}, Lcom/jingdong/common/lbs/LocManager$3;-><init>(Lcom/jingdong/common/lbs/LocManager;)V

    invoke-interface {v1, v2}, Lcom/jingdong/common/lbs/ILocationManager;->setUpdateLocationListener(Lcom/jingdong/common/lbs/ILocationManager$UpdateLocationListener;)V

    .line 210
    sget-object v1, Lcom/jingdong/common/lbs/LocManager;->mLocationManager:Lcom/jingdong/common/lbs/ILocationManager;

    invoke-interface {v1}, Lcom/jingdong/common/lbs/ILocationManager;->requestLocation()V

    .line 213
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 214
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/jingdong/common/lbs/LocManager$4;

    invoke-direct {v1, p0}, Lcom/jingdong/common/lbs/LocManager$4;-><init>(Lcom/jingdong/common/lbs/LocManager;)V

    .line 232
    const-wide/32 v2, 0xea60

    .line 214
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 233
    return-void
.end method

.method public removeUpdateLocation()V
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/jingdong/common/lbs/LocManager;->mLocationManager:Lcom/jingdong/common/lbs/ILocationManager;

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lcom/jingdong/common/lbs/LocManager;->mLocationManager:Lcom/jingdong/common/lbs/ILocationManager;

    invoke-interface {v0}, Lcom/jingdong/common/lbs/ILocationManager;->stopLocation()V

    .line 251
    :cond_0
    return-void
.end method

.method public startLocationService()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/jingdong/common/lbs/LocManager$1;

    invoke-direct {v0, p0}, Lcom/jingdong/common/lbs/LocManager$1;-><init>(Lcom/jingdong/common/lbs/LocManager;)V

    .line 139
    invoke-virtual {v0}, Lcom/jingdong/common/lbs/LocManager$1;->start()V

    .line 156
    return-void
.end method
