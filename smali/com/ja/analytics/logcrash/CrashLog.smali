.class public Lcom/ja/analytics/logcrash/CrashLog;
.super Ljava/lang/Object;
.source "CrashLog.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static appkey:Ljava/lang/String;

.field private static mCrashLogObj:Lcom/ja/analytics/logcrash/CrashLog;

.field private static mSendTime:Ljava/lang/String;


# instance fields
.field private isExceptionAnalysisOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/ja/analytics/logcrash/CrashLog;

    invoke-direct {v0}, Lcom/ja/analytics/logcrash/CrashLog;-><init>()V

    sput-object v0, Lcom/ja/analytics/logcrash/CrashLog;->mCrashLogObj:Lcom/ja/analytics/logcrash/CrashLog;

    .line 26
    const-class v0, Lcom/ja/analytics/logcrash/CrashLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/logcrash/CrashLog;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "-"

    sput-object v0, Lcom/ja/analytics/logcrash/CrashLog;->appkey:Ljava/lang/String;

    .line 24
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ja/analytics/logcrash/CrashLog;->isExceptionAnalysisOn:Z

    .line 44
    return-void
.end method

.method public static getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 71
    :try_start_0
    invoke-static {p0}, Lcom/ja/analytics/utils/ManifestPackageUtils;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Lcom/ja/analytics/utils/StrUtil;->keyValidation(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 74
    sget-object v3, Lcom/ja/analytics/logcrash/CrashLog;->TAG:Ljava/lang/String;

    const-string v4, "\u65e0\u6548\u7684appkey"

    invoke-static {v3, v4}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 81
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v2

    .line 81
    goto :goto_0
.end method

.method private declared-synchronized getDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5
    .parameter "context"

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    .local v1, obj:Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "c"

    invoke-static {p1}, Lcom/ja/analytics/utils/ManifestPackageUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v2, "app_key"

    invoke-static {p1}, Lcom/ja/analytics/logevent/EventLog;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v2, "os"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Android|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v2, "d"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    :goto_0
    monitor-exit p0

    return-object v1

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Lorg/json/JSONException;
    :try_start_2
    sget-object v2, Lcom/ja/analytics/logcrash/CrashLog;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 190
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #obj:Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static getSingleton()Lcom/ja/analytics/logcrash/CrashLog;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/ja/analytics/logcrash/CrashLog;->mCrashLogObj:Lcom/ja/analytics/logcrash/CrashLog;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized checkMenifestPermission(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/ja/analytics/utils/FileUtils;->checkMenifestPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/ja/analytics/utils/FileUtils;->checkMenifestPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/ja/analytics/utils/FileUtils;->checkMenifestPermission(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearSendDate()V
    .locals 1

    .prologue
    .line 251
    const-string v0, ""

    sput-object v0, Lcom/ja/analytics/logcrash/CrashLog;->mSendTime:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public getSendDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/ja/analytics/logcrash/CrashLog;->mSendTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSendFalseFlag()I
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public getSendOkFlag()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized onCrashLogSave(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 10
    .parameter "context"
    .parameter "e"

    .prologue
    const/16 v7, 0x2800

    const/16 v9, 0x400

    .line 142
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/ja/analytics/logevent/EventLog;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 144
    sget-object v6, Lcom/ja/analytics/logcrash/CrashLog;->TAG:Ljava/lang/String;

    const-string v7, "\u6ca1\u6709\u83b7\u53d6\u5230appkey/appkey\u65e0\u6548,\u653e\u5f03\u4fdd\u5b58\u64cd\u4f5c"

    invoke-static {v6, v7}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 147
    :cond_1
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 149
    .local v1, jo:Lorg/json/JSONObject;
    invoke-direct {p0, p1}, Lcom/ja/analytics/logcrash/CrashLog;->getDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 151
    :try_start_2
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 152
    .local v5, stringwriter:Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 153
    .local v3, printwriter:Ljava/io/PrintWriter;
    invoke-virtual {p2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 154
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 155
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, s:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_2

    .line 158
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    const/16 v8, 0x2800

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "... (exceeding part is ignored\u3002)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 159
    sget-object v6, Lcom/ja/analytics/logcrash/CrashLog;->TAG:Ljava/lang/String;

    const-string v7, "\u5f02\u5e38\u65e5\u5fd7\u5806\u6808\u4fe1\u606f\u8d85\u8fc710240\u4e2a\u5b57\u7b26\uff0c\u622a\u53d6\u524d10240\u4e2a\u5b57\u7b26\u3002"

    invoke-static {v6, v7}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Caused by:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_3

    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "... (exceeding part is ignored\u3002)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    sget-object v6, Lcom/ja/analytics/logcrash/CrashLog;->TAG:Ljava/lang/String;

    const-string v7, "\u5f02\u5e38\u65e5\u5fd7\u6807\u9898\u8d85\u8fc71024\u4e2a\u5b57\u7b26\uff0c\u622a\u53d6\u524d1024\u4e2a\u5b57\u7b26\u3002"

    invoke-static {v6, v7}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_3
    const-string v6, "error_msg"

    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v6, "error_name"

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 173
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #printwriter:Ljava/io/PrintWriter;
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #stringwriter:Ljava/io/StringWriter;
    :goto_1
    :try_start_3
    invoke-static {p1}, Lcom/ja/analytics/db/CrashTable;->openSQLiteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 174
    invoke-static {p1, v1}, Lcom/ja/analytics/db/CrashTable;->insertCrashDataItem(Landroid/content/Context;Lorg/json/JSONObject;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 142
    .end local v1           #jo:Lorg/json/JSONObject;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 169
    .restart local v1       #jo:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 170
    .local v0, e1:Ljava/lang/Exception;
    :try_start_4
    sget-object v6, Lcom/ja/analytics/logcrash/CrashLog;->TAG:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public openExceptonDataAnalysis(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 47
    sget-object v1, Lcom/ja/analytics/logcrash/CrashLog;->TAG:Ljava/lang/String;

    const-string v2, "openExceptonDataAnalysis"

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-boolean v1, p0, Lcom/ja/analytics/logcrash/CrashLog;->isExceptionAnalysisOn:Z

    if-nez v1, :cond_0

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ja/analytics/logcrash/CrashLog;->isExceptionAnalysisOn:Z

    .line 51
    invoke-static {}, Lcom/ja/analytics/logcrash/CrashUncaughtExceptionHandler;->getSingleton()Lcom/ja/analytics/logcrash/CrashUncaughtExceptionHandler;

    move-result-object v0

    .line 52
    .local v0, exceptionHandler:Lcom/ja/analytics/logcrash/CrashUncaughtExceptionHandler;
    invoke-virtual {v0, p1}, Lcom/ja/analytics/logcrash/CrashUncaughtExceptionHandler;->setUncatchedExceptionHandler(Landroid/content/Context;)V

    .line 54
    .end local v0           #exceptionHandler:Lcom/ja/analytics/logcrash/CrashUncaughtExceptionHandler;
    :cond_0
    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0
    .parameter "app_key"

    .prologue
    .line 62
    sput-object p1, Lcom/ja/analytics/logcrash/CrashLog;->appkey:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setSendDate()V
    .locals 4

    .prologue
    .line 213
    const/4 v2, 0x0

    sput-object v2, Lcom/ja/analytics/logcrash/CrashLog;->mSendTime:Ljava/lang/String;

    .line 214
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 216
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ja/analytics/logcrash/CrashLog;->mSendTime:Ljava/lang/String;

    .line 217
    return-void
.end method
