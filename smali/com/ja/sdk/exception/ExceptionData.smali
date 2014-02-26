.class public Lcom/ja/sdk/exception/ExceptionData;
.super Ljava/lang/Object;
.source "ExceptionData.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ExceptionData"

.field private static mExceptionDataOBbj:Lcom/ja/sdk/exception/ExceptionData;

.field private static st:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/ja/sdk/exception/ExceptionData;

    invoke-direct {v0}, Lcom/ja/sdk/exception/ExceptionData;-><init>()V

    sput-object v0, Lcom/ja/sdk/exception/ExceptionData;->mExceptionDataOBbj:Lcom/ja/sdk/exception/ExceptionData;

    .line 20
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private declared-synchronized getCommonDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5
    .parameter "context"

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .local v1, obj:Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "sdkVersion"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v2, "appId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ja/sdk/utils/ManifestPackageUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/ja/sdk/utils/ManifestPackageUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v2, "deviceId"

    invoke-static {p1}, Lcom/ja/sdk/utils/DevicesUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v2, "osPlatform"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v2, "osVersion"

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v2, "netType"

    invoke-static {p1}, Lcom/ja/sdk/utils/NetUtils;->getNetworkTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    :goto_0
    monitor-exit p0

    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Lorg/json/JSONException;
    :try_start_2
    const-string v2, "ExceptionData"

    invoke-static {v2, v0}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 88
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #obj:Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static getSingleInstance()Lcom/ja/sdk/exception/ExceptionData;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/ja/sdk/exception/ExceptionData;->mExceptionDataOBbj:Lcom/ja/sdk/exception/ExceptionData;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized checkMenifestPermission(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/ja/sdk/utils/FileUtils;->checkMenifestPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/ja/sdk/utils/FileUtils;->checkMenifestPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/ja/sdk/utils/FileUtils;->checkMenifestPermission(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearSendDate()V
    .locals 1

    .prologue
    .line 149
    const-string v0, ""

    sput-object v0, Lcom/ja/sdk/exception/ExceptionData;->st:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public declared-synchronized exceptionDataHandle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "aErrorCode"
    .parameter "exceptionCode"

    .prologue
    .line 56
    monitor-enter p0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 75
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ja/sdk/exception/ExceptionData;->checkMenifestPermission(Landroid/content/Context;)V

    .line 60
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .local v1, jo:Lorg/json/JSONObject;
    invoke-direct {p0, p1}, Lcom/ja/sdk/exception/ExceptionData;->getCommonDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 64
    :try_start_1
    const-string v2, "errorCode"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v2, "errorMsg"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/ja/sdk/db/ExceptionTable;->openSQLiteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 72
    invoke-static {p1, v1}, Lcom/ja/sdk/db/ExceptionTable;->insertExceptionDataItem(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 56
    .end local v1           #jo:Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 66
    .restart local v1       #jo:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Lorg/json/JSONException;
    :try_start_3
    const-string v2, "ExceptionData"

    invoke-static {v2, v0}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getSendDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/ja/sdk/exception/ExceptionData;->st:Ljava/lang/String;

    return-object v0
.end method

.method public getSendFalseFlag()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public getSendOkFlag()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public setSendData()V
    .locals 4

    .prologue
    .line 111
    const/4 v2, 0x0

    sput-object v2, Lcom/ja/sdk/exception/ExceptionData;->st:Ljava/lang/String;

    .line 112
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 114
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ja/sdk/exception/ExceptionData;->st:Ljava/lang/String;

    .line 115
    return-void
.end method
