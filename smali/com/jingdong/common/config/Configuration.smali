.class public Lcom/jingdong/common/config/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field public static final ALARM_NEED_WAKE_UP:Ljava/lang/String; = "alarmNeedWakeUp"

.field public static final APPLICATION_SHORTCUT:Ljava/lang/String; = "applicationShortcut"

.field public static final APPLICATION_UPGRADE:Ljava/lang/String; = "applicationUpgrade"

.field public static final ATTEMPTS:Ljava/lang/String; = "attempts"

.field public static final ATTEMPTS_TIME:Ljava/lang/String; = "attemptsTime"

.field public static final BARCODE_SCAN:Ljava/lang/String; = "barCodeScan"

.field public static final CBTMODE:Ljava/lang/String; = "CBTMode"

.field public static final CHECK_NEW_VERSION:Ljava/lang/String; = "checkNewVersion"

.field public static final CONNECT_TIMEOUT:Ljava/lang/String; = "connectTimeout"

.field public static final CONNECT_TIMEOUT_FOR_WIFI:Ljava/lang/String; = "connectTimeoutForWIFI"

.field public static final COST_HINT:Ljava/lang/String; = "costHint"

.field public static final DEFAULT_FIRST_GET_TOKEN_DELAY:Ljava/lang/String; = "defaultFirstGetTokenDelay"

.field public static final DEFAULT_PUSH_MESSAGE_ALARM_DELAY:Ljava/lang/String; = "defaultPushMessageAlarmDelay"

.field public static final DISCUSSUPLOADIMAGE_HEIGHT:Ljava/lang/String; = "discussUploadImageHeight"

.field public static final DISCUSSUPLOADIMAGE_QUALITY:Ljava/lang/String; = "discussUploadImageQuality"

.field public static final DISCUSSUPLOADIMAGE_WIDTH:Ljava/lang/String; = "discussUploadImageWidth"

.field public static final HOST:Ljava/lang/String; = "host"

.field public static final INIT_FIRST_POOL_SIZE:Ljava/lang/String; = "initFirstPoolSize"

.field public static final INIT_SECOND_POOL_SIZE:Ljava/lang/String; = "initSecondPoolSize"

.field public static final INIT_THIRD_POOL_SIZE:Ljava/lang/String; = "initThirdPoolSize"

.field public static final IS_COOLMART:Ljava/lang/String; = "isCoolMart"

.field public static final JLOG_VERSION:Ljava/lang/String; = "JLogVersion"

.field public static final LEAVE_TIME_GAP:Ljava/lang/String; = "leaveTimeGap"

.field public static final LOCAL_FILE_CACHE:Ljava/lang/String; = "localFileCache"

.field public static final LOCAL_MEMORY_CACHE:Ljava/lang/String; = "localMemoryCache"

.field public static final MAX_FIRST_POOL_SIZE:Ljava/lang/String; = "maxFirstPoolSize"

.field public static final MAX_SECOND_POOL_SIZE:Ljava/lang/String; = "maxSecondPoolSize"

.field public static final MAX_THIRD_POOL_SIZE:Ljava/lang/String; = "maxThirdPoolSize"

.field public static final MSG_HOST:Ljava/lang/String; = "msgHost"

.field public static final M_HOST:Ljava/lang/String; = "mHost"

.field public static final OTHER_APP:Ljava/lang/String; = "otherApp"

.field public static final PAI_HOST:Ljava/lang/String; = "paiHost"

.field public static final PARTNER:Ljava/lang/String; = "partner"

.field public static final PHOTO_SHUT:Ljava/lang/String; = "photoShut"

.field public static final PLUG_HOST:Ljava/lang/String; = "plugHost"

.field public static final PRINT_JLOG:Ljava/lang/String; = "useJLog"

.field public static final PUSH_MSG_MODE:Ljava/lang/String; = "msgMode"

.field public static final READ_TIMEOUT:Ljava/lang/String; = "readTimeout"

.field public static final READ_TIMEOUT_FOR_WIFI:Ljava/lang/String; = "readTimeoutForWIFI"

.field public static final REQUEST_METHOD:Ljava/lang/String; = "requestMethod"

.field public static final ROUTINE_CHECK_DELAY_TIME:Ljava/lang/String; = "routineCheckDelayTime"

.field public static final SUB_UNION_ID:Ljava/lang/String; = "subunionId"

.field public static final TEST_MODE:Ljava/lang/String; = "testMode"

.field public static final UNION_ID:Ljava/lang/String; = "unionId"

.field public static final VOICE_SEARCH_SHUT:Ljava/lang/String; = "voiseSearchShut"

.field private static localProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static properties:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter "key"

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 269
    invoke-static {p0}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 276
    .end local p1
    :goto_0
    return-object p1

    .line 274
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getIntegerProperty(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "key"

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jingdong/common/config/Configuration;->getIntegerProperty(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getIntegerProperty(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 235
    invoke-static {p0}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 242
    .end local p1
    :goto_0
    return-object p1

    .line 240
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getLongProperty(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .parameter "key"

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jingdong/common/config/Configuration;->getLongProperty(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getLongProperty(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 252
    invoke-static {p0}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 259
    .end local p1
    :goto_0
    return-object p1

    .line 257
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lcom/jingdong/common/config/Configuration;->init()V

    .line 231
    sget-object v0, Lcom/jingdong/common/config/Configuration;->properties:Ljava/util/Properties;

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 185
    invoke-static {}, Lcom/jingdong/common/config/Configuration;->init()V

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, result:Ljava/lang/String;
    sget-object v1, Lcom/jingdong/common/config/Configuration;->properties:Ljava/util/Properties;

    if-eqz v1, :cond_0

    .line 188
    sget-object v1, Lcom/jingdong/common/config/Configuration;->properties:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_0
    if-nez v0, :cond_1

    .line 191
    sget-object v1, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 193
    .restart local v0       #result:Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 194
    move-object v0, p1

    .line 199
    :cond_2
    return-object v0
.end method

.method private static init()V
    .locals 5

    .prologue
    .line 102
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 178
    .local v1, inputStream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 105
    .end local v1           #inputStream:Ljava/io/InputStream;
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    .line 108
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "paiHost"

    const-string v4, "pai.m.360buy.com"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "host"

    const-string v4, "gw.m.360buy.com"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "mHost"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "plugHost"

    const-string v4, "jdmps.m.jd.com"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "msgHost"

    const-string v4, "jpns.m.360buy.com"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "connectTimeout"

    const-string v4, "40000"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "connectTimeoutForWIFI"

    const-string v4, "30000"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "readTimeout"

    const-string v4, "40000"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "readTimeoutForWIFI"

    const-string v4, "30000"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "attempts"

    const-string v4, "3"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "attemptsTime"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "requestMethod"

    const-string v4, "post"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "localMemoryCache"

    const-string v4, "false"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "localFileCache"

    const-string v4, "false"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "initFirstPoolSize"

    const-string v4, "5"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "maxFirstPoolSize"

    const-string v4, "5"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "initSecondPoolSize"

    const-string v4, "3"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "maxSecondPoolSize"

    const-string v4, "3"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "initThirdPoolSize"

    const-string v4, "3"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "maxThirdPoolSize"

    const-string v4, "3"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "discussUploadImageWidth"

    const-string v4, "500"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "discussUploadImageHeight"

    const-string v4, "500"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "discussUploadImageQuality"

    const-string v4, "80"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "routineCheckDelayTime"

    const-string v4, "2000"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "leaveTimeGap"

    const-string v4, "1800000"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "defaultFirstGetTokenDelay"

    const-string v4, "180000"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "defaultPushMessageAlarmDelay"

    const-string v4, "600000"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "testMode"

    const-string v4, "false"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "useJLog"

    const-string v4, "true"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "JLogVersion"

    const-string v4, "2"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "CBTMode"

    const-string v4, "false"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "checkNewVersion"

    const-string v4, "true"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "otherApp"

    const-string v4, "true"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "msgMode"

    const-string v4, "true"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "partner"

    const-string v4, "jingdong"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "unionId"

    const-string v4, "50965"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "subunionId"

    const-string v4, "jingdong"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "applicationUpgrade"

    const-string v4, "true"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "applicationShortcut"

    const-string v4, "true"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "costHint"

    const-string v4, "false"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "barCodeScan"

    const-string v4, "true"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "photoShut"

    const-string v4, "false"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "voiseSearchShut"

    const-string v4, "false"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v2, Lcom/jingdong/common/config/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "isCoolMart"

    const-string v4, "false"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :try_start_0
    const-class v2, Lcom/jingdong/common/config/Configuration;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "config.properties"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 171
    .restart local v1       #inputStream:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 172
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    sput-object v2, Lcom/jingdong/common/config/Configuration;->properties:Ljava/util/Properties;

    .line 173
    sget-object v2, Lcom/jingdong/common/config/Configuration;->properties:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static setHostProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 214
    invoke-static {}, Lcom/jingdong/common/config/Configuration;->init()V

    .line 218
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 219
    .local v0, defaltPreference:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    sget-object v1, Lcom/jingdong/common/config/Configuration;->properties:Ljava/util/Properties;

    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 221
    const/4 v1, 0x1

    return v1
.end method

.method public static setTestModeProperty(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 203
    invoke-static {}, Lcom/jingdong/common/config/Configuration;->init()V

    .line 204
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    sget-object v1, Lcom/jingdong/common/config/Configuration;->properties:Ljava/util/Properties;

    const-string v2, "testMode"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    :goto_0
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 210
    .local v0, defaltPreference:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "testMode"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    return-void

    .line 207
    .end local v0           #defaltPreference:Landroid/content/SharedPreferences;
    :cond_0
    sget-object v1, Lcom/jingdong/common/config/Configuration;->properties:Ljava/util/Properties;

    const-string v2, "testMode"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method
