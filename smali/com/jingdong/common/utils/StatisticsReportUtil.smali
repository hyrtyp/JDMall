.class public Lcom/jingdong/common/utils/StatisticsReportUtil;
.super Ljava/lang/Object;
.source "StatisticsReportUtil.java"


# static fields
.field private static final DEVICE_INFO_STR:Ljava/lang/String; = "deviceInfoStr"

.field private static final DEVICE_INFO_UUID:Ljava/lang/String; = "uuid"

.field public static final REPORT_PARAM_LBS_AREA:Ljava/lang/String; = "&area="

.field public static final REPORT_PARAM_NETWORK_TYPE:Ljava/lang/String; = "&networkType="

.field private static final SHOPPING_CART_UUID:Ljava/lang/String; = "shoppingCartUUID"

.field private static already:Z

.field private static deivceUUID:Ljava/lang/String;

.field private static macAddress:Ljava/lang/String;

.field private static macAddressListener:Lcom/jingdong/common/utils/CommonBase$MacAddressListener;

.field private static paramStr:Ljava/lang/String;

.field private static paramStrWithOutDeviceUUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/jingdong/common/utils/StatisticsReportUtil$1;

    invoke-direct {v0}, Lcom/jingdong/common/utils/StatisticsReportUtil$1;-><init>()V

    sput-object v0, Lcom/jingdong/common/utils/StatisticsReportUtil;->macAddressListener:Lcom/jingdong/common/utils/CommonBase$MacAddressListener;

    .line 223
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    sput-object p0, Lcom/jingdong/common/utils/StatisticsReportUtil;->macAddress:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Z)V
    .locals 0
    .parameter

    .prologue
    .line 223
    sput-boolean p0, Lcom/jingdong/common/utils/StatisticsReportUtil;->already:Z

    return-void
.end method

.method public static getDeviceInfoStr()Ljava/lang/String;
    .locals 6

    .prologue
    .line 46
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .local v2, obj:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "uuid"

    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->readDeviceUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v3, "platform"

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    const-string v3, "brand"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/16 v5, 0xc

    invoke-static {v4, v5}, Lcom/jingdong/common/utils/StatisticsReportUtil;->spilitSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v3, "model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/16 v5, 0xc

    invoke-static {v4, v5}, Lcom/jingdong/common/utils/StatisticsReportUtil;->spilitSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 56
    .local v0, display:Landroid/view/Display;
    const-string v3, "screen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v3, "clientVersion"

    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getSoftwareVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v3, "osVersion"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v3, "partner"

    const-string v4, "partner"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v3, "nettype"

    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getNetworkTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0           #display:Landroid/view/Display;
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getNetworkTypeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "myContext"

    .prologue
    .line 76
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 77
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 78
    .local v5, tm:Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 79
    .local v3, netString:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    .line 81
    .local v4, netinfo:[Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    array-length v6, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v6, :cond_1

    .line 95
    :goto_1
    if-nez v3, :cond_0

    .line 96
    const-string v3, "UNKNOWN"

    .line 99
    :cond_0
    return-object v3

    .line 82
    :cond_1
    :try_start_1
    aget-object v6, v4, v2

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 83
    aget-object v6, v4, v2

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MOBILE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_3
    aget-object v6, v4, v2

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WIFI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 86
    const-string v3, "WIFI"

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    const-string v3, "UNKNOWN"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "UNKNOWN"

    goto :goto_1
.end method

.method private static getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 6

    .prologue
    .line 392
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    .line 393
    .local v0, cxt:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 396
    :goto_0
    return-object v2

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getParamStr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    sget-object v1, Lcom/jingdong/common/utils/StatisticsReportUtil;->paramStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    sget-object v1, Lcom/jingdong/common/utils/StatisticsReportUtil;->paramStr:Ljava/lang/String;

    .line 152
    .local v0, sb:Ljava/lang/StringBuffer;
    :goto_0
    return-object v1

    .line 145
    .end local v0           #sb:Ljava/lang/StringBuffer;
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    .restart local v0       #sb:Ljava/lang/StringBuffer;
    const-string v1, "&uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->readDeviceUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getParamStrWithOutDeviceUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/utils/StatisticsReportUtil;->paramStr:Ljava/lang/String;

    .line 152
    sget-object v1, Lcom/jingdong/common/utils/StatisticsReportUtil;->paramStr:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getParamStrWithOutDeviceUUID()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0xc

    .line 159
    sget-object v4, Lcom/jingdong/common/utils/StatisticsReportUtil;->paramStrWithOutDeviceUUID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 163
    sget-object v4, Lcom/jingdong/common/utils/StatisticsReportUtil;->paramStrWithOutDeviceUUID:Ljava/lang/String;

    .line 186
    .local v1, display:Landroid/view/Display;
    .local v3, sb:Ljava/lang/StringBuffer;
    :goto_0
    return-object v4

    .line 165
    .end local v1           #display:Landroid/view/Display;
    .end local v3           #sb:Ljava/lang/StringBuffer;
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    .restart local v3       #sb:Ljava/lang/StringBuffer;
    const-string v4, "&clientVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getSoftwareVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/jingdong/common/utils/StatisticsReportUtil;->spilitSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    const-string v4, "&client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    :try_start_0
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/16 v5, 0xc

    invoke-static {v4, v5}, Lcom/jingdong/common/utils/StatisticsReportUtil;->spilitSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, brand:Ljava/lang/String;
    const-string v4, "&d_brand="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/16 v5, 0xc

    invoke-static {v4, v5}, Lcom/jingdong/common/utils/StatisticsReportUtil;->spilitSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, model:Ljava/lang/String;
    const-string v4, "&d_model="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v0           #brand:Ljava/lang/String;
    .end local v2           #model:Ljava/lang/String;
    :goto_1
    const-string v4, "&osVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/jingdong/common/utils/StatisticsReportUtil;->spilitSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 180
    .restart local v1       #display:Landroid/view/Display;
    const-string v4, "&screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    const-string v4, "&partner="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "partner"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/jingdong/common/utils/StatisticsReportUtil;->paramStrWithOutDeviceUUID:Ljava/lang/String;

    .line 186
    sget-object v4, Lcom/jingdong/common/utils/StatisticsReportUtil;->paramStrWithOutDeviceUUID:Ljava/lang/String;

    goto/16 :goto_0

    .line 173
    .end local v1           #display:Landroid/view/Display;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static getReportString(Z)Ljava/lang/String;
    .locals 5
    .parameter "mustDeviceUUID"

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, reportString:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 113
    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getValidDeviceUUIDByInstant()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 115
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getParamStr()Ljava/lang/String;

    move-result-object v1

    .line 121
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    .local v2, sbNet:Ljava/lang/StringBuffer;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string v3, "&networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Lcom/jingdong/common/utils/NetUtils;->getNetworkType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-static {}, Lcom/jingdong/common/lbs/LocManager;->getCommonLbsParameter()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, lbsPara:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 126
    const-string v3, "&area="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 118
    .end local v0           #lbsPara:Ljava/lang/String;
    .end local v2           #sbNet:Ljava/lang/StringBuffer;
    :cond_2
    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getParamStrWithOutDeviceUUID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSoftwareVersionCode()I
    .locals 2

    .prologue
    .line 383
    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 384
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    .line 385
    const/4 v1, 0x0

    .line 387
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0
.end method

.method public static getSoftwareVersionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 372
    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 373
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    .line 374
    const-string v1, ""

    .line 376
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getValidDeviceUUIDByInstant()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 342
    sget-object v3, Lcom/jingdong/common/utils/StatisticsReportUtil;->deivceUUID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 343
    sget-object v2, Lcom/jingdong/common/utils/StatisticsReportUtil;->deivceUUID:Ljava/lang/String;

    .line 351
    .local v0, deivceUUIDCache:Ljava/lang/String;
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-object v2

    .line 345
    .end local v0           #deivceUUIDCache:Ljava/lang/String;
    .end local v1           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 346
    .restart local v1       #sharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "uuid"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .restart local v0       #deivceUUIDCache:Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/common/utils/StatisticsReportUtil;->isValidDeviceUUID(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    sput-object v0, Lcom/jingdong/common/utils/StatisticsReportUtil;->deivceUUID:Ljava/lang/String;

    .line 349
    sget-object v2, Lcom/jingdong/common/utils/StatisticsReportUtil;->deivceUUID:Ljava/lang/String;

    goto :goto_0
.end method

.method private static isValidDeviceUUID(Ljava/lang/String;)Z
    .locals 4
    .parameter "deivceUUID"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 358
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v1

    .line 361
    :cond_1
    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, split:[Ljava/lang/String;
    array-length v3, v0

    if-le v3, v2, :cond_0

    .line 363
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static readCartUUID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 328
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 329
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "shoppingCartUUID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, cartUuid:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->readDeviceUUID()Ljava/lang/String;

    move-result-object v0

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "shoppingCartUUID"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    :cond_0
    return-object v0
.end method

.method public static readDeviceUUID()Ljava/lang/String;
    .locals 10

    .prologue
    .line 230
    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getValidDeviceUUIDByInstant()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, deivceUUIDCache:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 319
    .end local v1           #deivceUUIDCache:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 242
    .restart local v1       #deivceUUIDCache:Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v0, deivceUUID:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, deviceId:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 249
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    :cond_1
    sget-object v6, Lcom/jingdong/common/utils/StatisticsReportUtil;->macAddress:Ljava/lang/String;

    .line 255
    .local v6, wifiMAC:Ljava/lang/String;
    if-nez v6, :cond_3

    .line 256
    sget-object v7, Lcom/jingdong/common/utils/StatisticsReportUtil;->macAddressListener:Lcom/jingdong/common/utils/CommonBase$MacAddressListener;

    invoke-static {v7}, Lcom/jingdong/common/utils/CommonUtil;->getLocalMacAddress(Lcom/jingdong/common/utils/CommonBase$MacAddressListener;)V

    .line 258
    sget-object v8, Lcom/jingdong/common/utils/StatisticsReportUtil;->macAddressListener:Lcom/jingdong/common/utils/CommonBase$MacAddressListener;

    monitor-enter v8

    .line 260
    :try_start_0
    sget-boolean v7, Lcom/jingdong/common/utils/StatisticsReportUtil;->already:Z

    if-nez v7, :cond_2

    .line 264
    sget-object v7, Lcom/jingdong/common/utils/StatisticsReportUtil;->macAddressListener:Lcom/jingdong/common/utils/CommonBase$MacAddressListener;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    sget-object v7, Lcom/jingdong/common/utils/StatisticsReportUtil;->macAddress:Ljava/lang/String;

    if-nez v7, :cond_8

    .line 274
    const-string v6, ""

    .line 280
    :cond_3
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 281
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "-|\\.|:"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 286
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 287
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_5
    const-string v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 294
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, deivceUUIDStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/common/utils/StatisticsReportUtil;->isValidDeviceUUID(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 306
    :try_start_2
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 307
    .local v5, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "uuid"

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v5           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_7
    :goto_3
    move-object v1, v2

    .line 319
    goto :goto_0

    .line 269
    .end local v2           #deivceUUIDStr:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 270
    .local v4, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 258
    .end local v4           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 276
    :cond_8
    sget-object v6, Lcom/jingdong/common/utils/StatisticsReportUtil;->macAddress:Ljava/lang/String;

    goto :goto_2

    .line 308
    .restart local v2       #deivceUUIDStr:Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_3
.end method

.method private static spilitSubString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "value"
    .parameter "length"

    .prologue
    .line 198
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 206
    :cond_0
    :goto_0
    return-object p0

    .line 201
    :catch_0
    move-exception v0

    goto :goto_0
.end method
