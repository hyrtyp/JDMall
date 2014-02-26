.class public Lcom/jingdong/common/utils/ABTestUtils;
.super Ljava/lang/Object;
.source "ABTestUtils.java"


# static fields
.field private static final A_HOSTORY_ID:Ljava/lang/String; = "wareHistory"

.field private static final A_PRDUCT_DETAIL_ID:Ljava/lang/String; = "productDetail"

.field private static final B_PRDUCT_DETAIL_ID:Ljava/lang/String; = "productDetailBTest"

.field private static final B_SHAKE_ID:Ljava/lang/String; = "shake"

.field private static final KEY_AB_SHAKE_ID:Ljava/lang/String; = "shakeAbTest"

.field private static final KEY_PRDUCT_DETAIL_ID:Ljava/lang/String; = "productDetailType"

.field private static productType:Ljava/lang/String;

.field private static shakeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    sput-object p0, Lcom/jingdong/common/utils/ABTestUtils;->productType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    sput-object p0, Lcom/jingdong/common/utils/ABTestUtils;->shakeType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/jingdong/common/utils/ABTestUtils;->shakeType:Ljava/lang/String;

    return-object v0
.end method

.method private static final getDefaultProductDetailID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "productDetailType"

    const-string v2, "productDetail"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getDefaultShakeID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "shakeAbTest"

    const-string v2, "shake"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initABData(Lcom/jingdong/common/utils/HttpGroup;)V
    .locals 3
    .parameter "group"

    .prologue
    const/4 v2, 0x0

    .line 137
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 138
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "abTestBackFunctionId"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 139
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 140
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 141
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 142
    new-instance v1, Lcom/jingdong/common/utils/ABTestUtils$1;

    invoke-direct {v1}, Lcom/jingdong/common/utils/ABTestUtils$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 201
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 202
    return-void
.end method

.method public static isProductDetailAType()Z
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/jingdong/common/utils/ABTestUtils;->productType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/jingdong/common/utils/ABTestUtils;->getDefaultProductDetailID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/utils/ABTestUtils;->productType:Ljava/lang/String;

    .line 104
    :cond_0
    const-string v0, "productDetail"

    sget-object v1, Lcom/jingdong/common/utils/ABTestUtils;->productType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isShakeAType()Z
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/jingdong/common/utils/ABTestUtils;->shakeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/jingdong/common/utils/ABTestUtils;->getDefaultShakeID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/utils/ABTestUtils;->shakeType:Ljava/lang/String;

    .line 116
    :cond_0
    const-string v0, "wareHistory"

    sget-object v1, Lcom/jingdong/common/utils/ABTestUtils;->shakeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
