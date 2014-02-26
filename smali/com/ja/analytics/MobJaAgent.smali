.class public Lcom/ja/analytics/MobJaAgent;
.super Ljava/lang/Object;
.source "MobJaAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static counter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/ja/analytics/MobJaAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/ja/analytics/MobJaAgent;->counter:I

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SessionAccumulate(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "count"

    .prologue
    .line 45
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/ja/analytics/logevent/EventLog;->setSessionCount(Landroid/content/Context;I)V

    .line 46
    invoke-static {p0}, Lcom/ja/analytics/db/EventTable;->checkRows(Landroid/content/Context;)V

    .line 47
    invoke-static {p0}, Lcom/ja/analytics/db/CrashTable;->checkRows(Landroid/content/Context;)V

    .line 50
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ja/analytics/MobJaAgent$1;

    invoke-direct {v1, p0}, Lcom/ja/analytics/MobJaAgent$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 58
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-static {p0}, Lcom/ja/analytics/MobJaAgent;->getOnlineStrategy(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static flushCrash(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 525
    :try_start_0
    sget-object v2, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v3, "flushCrash() --->"

    invoke-static {v2, v3}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-static {p0}, Lcom/ja/analytics/db/CrashTable;->openSQLiteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    .line 539
    :goto_0
    return-void

    .line 528
    :cond_0
    invoke-static {p0}, Lcom/ja/analytics/db/CrashTable;->getCrashLog(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    .line 529
    .local v0, crashArray:Lorg/json/JSONArray;
    if-nez v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 531
    :cond_1
    invoke-static {}, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;->getSingleton()Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v3}, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;->postTaskToMainThread(Landroid/content/Context;Lorg/json/JSONArray;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 536
    .end local v0           #crashArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 537
    .local v1, e:Ljava/lang/Throwable;
    sget-object v2, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 534
    .end local v1           #e:Ljava/lang/Throwable;
    .restart local v0       #crashArray:Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v3, "There is no data in cache!!"

    invoke-static {v2, v3}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static flushEvent(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 470
    :try_start_0
    sget-object v2, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v3, "flushEvent() --->"

    invoke-static {v2, v3}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-static {p0}, Lcom/ja/analytics/db/EventTable;->openSQLiteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    .line 483
    :goto_0
    return-void

    .line 473
    :cond_0
    invoke-static {p0}, Lcom/ja/analytics/db/EventTable;->getEventLog(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    .line 474
    .local v1, eventArray:Lorg/json/JSONArray;
    if-nez v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 476
    :cond_1
    invoke-static {}, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;->getSingleton()Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v1, v3}, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;->postTaskToMainThread(Landroid/content/Context;Lorg/json/JSONArray;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 480
    .end local v1           #eventArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 481
    .local v0, e:Ljava/lang/Throwable;
    sget-object v2, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 479
    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v1       #eventArray:Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v3, "There is not data in cache!!"

    invoke-static {v2, v3}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static getOnlineStrategy(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    invoke-static {p0}, Lcom/ja/analytics/net/HttpUtils;->getConfiguration(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static isContext(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "methodName"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 509
    if-nez p0, :cond_0

    .line 510
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    aput-object v3, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":context=null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/ja/analytics/utils/LogUtil;->logD([Ljava/lang/Object;)I

    .line 513
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static onEVMEventBegin(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "event_id"
    .parameter
    .parameter "evmFlag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 376
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 378
    sget-object v1, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v2, "map \u6700\u591a\u652f\u630120\u4e2a\u53c2\u6570"

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    const-string v1, "onEVMEventBegin(...)"

    invoke-static {p0, v1}, Lcom/ja/analytics/MobJaAgent;->isContext(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 385
    :cond_2
    sget-object v1, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v2, "event_id \u4e0d\u80fd\u4e3a\u7a7a\u6216\u7a7a\u5b57\u7b26\u4e32"

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, e:Ljava/lang/Throwable;
    sget-object v1, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/ja/analytics/logevent/EventLog;->onEVMEventLogBegin(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static onEVMEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "event_id"
    .parameter "evmFlag"

    .prologue
    .line 420
    :try_start_0
    const-string v2, "onEVMEventEnd(...)"

    invoke-static {p0, v2}, Lcom/ja/analytics/MobJaAgent;->isContext(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    :goto_0
    return-void

    .line 422
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 424
    :cond_1
    sget-object v2, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v3, "event_id \u4e0d\u80fd\u4e3a\u7a7a\u6216\u7a7a\u5b57\u7b26\u4e32"

    invoke-static {v2, v3}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Ljava/lang/Throwable;
    sget-object v2, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 429
    .local v1, jo:Lorg/json/JSONObject;
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Lcom/ja/analytics/logevent/EventLog;->onEVMEventLogEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 430
    if-nez v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 431
    :cond_3
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/ja/analytics/logevent/EventLog;->writeEventLogToDatabase(Landroid/content/Context;Lorg/json/JSONObject;)J

    goto :goto_0

    .line 433
    :cond_4
    sget-object v2, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v3, "onEVMEventEnd(), onEVMEventBegin() is not called!!"

    invoke-static {v2, v3}, Lcom/ja/analytics/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static onError(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 492
    :try_start_0
    sget-object v1, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v2, "sendExceptionData=>"

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-static {}, Lcom/ja/analytics/logcrash/CrashUncaughtExceptionHandler;->getSingleton()Lcom/ja/analytics/logcrash/CrashUncaughtExceptionHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ja/analytics/logcrash/CrashUncaughtExceptionHandler;->setUncaughtExceptionFlag(Ljava/lang/Boolean;)V

    .line 495
    invoke-static {}, Lcom/ja/analytics/logcrash/CrashLog;->getSingleton()Lcom/ja/analytics/logcrash/CrashLog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ja/analytics/logcrash/CrashLog;->openExceptonDataAnalysis(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, e:Ljava/lang/Throwable;
    sget-object v1, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "eventId"

    .prologue
    .line 172
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/ja/analytics/MobJaAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "event_id"
    .parameter "lable"

    .prologue
    .line 186
    sget-object v2, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v3, "onEvent() --->"

    invoke-static {v2, v3}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :try_start_0
    const-string v2, "onEvent(...)"

    invoke-static {p0, v2}, Lcom/ja/analytics/MobJaAgent;->isContext(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    :goto_0
    return-void

    .line 190
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    :cond_1
    sget-object v2, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v3, "event_id \u4e0d\u80fd\u4e3a\u7a7a\u6216\u7a7a\u5b57\u7b26\u4e32"

    invoke-static {v2, v3}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 197
    .local v1, jo:Lorg/json/JSONObject;
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Lcom/ja/analytics/logevent/EventLog;->onEventLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 198
    if-nez v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 199
    :cond_3
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/ja/analytics/logevent/EventLog;->writeEventLogToDatabase(Landroid/content/Context;Lorg/json/JSONObject;)J

    goto :goto_0

    .line 201
    :cond_4
    sget-object v2, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v3, "onEvent(), There is no data!!"

    invoke-static {v2, v3}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .parameter "context"
    .parameter "event_id"
    .parameter "map"

    .prologue
    .line 210
    sget-object v2, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v3, "onEvent() --->"

    invoke-static {v2, v3}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_1

    .line 213
    sget-object v2, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v3, "map \u6700\u591a\u652f\u630120\u4e2a\u53c2\u6570"

    invoke-static {v2, v3}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    :try_start_0
    const-string v2, "onEvent(...)"

    invoke-static {p0, v2}, Lcom/ja/analytics/MobJaAgent;->isContext(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 221
    :cond_2
    sget-object v2, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v3, "event_id \u4e0d\u80fd\u4e3a\u7a7a\u6216\u7a7a\u5b57\u7b26\u4e32"

    invoke-static {v2, v3}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 224
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_3
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 225
    .local v1, jo:Lorg/json/JSONObject;
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Lcom/ja/analytics/logevent/EventLog;->onMapEventLog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    .line 226
    if-nez v1, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 227
    :cond_4
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/ja/analytics/logevent/EventLog;->writeEventLogToDatabase(Landroid/content/Context;Lorg/json/JSONObject;)J

    goto :goto_0

    .line 229
    :cond_5
    sget-object v2, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v3, "onEvent(), There is no map data!!"

    invoke-static {v2, v3}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static onEventBegin(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "event_id"

    .prologue
    .line 296
    :try_start_0
    const-string v1, "onEventBegin(...)"

    invoke-static {p0, v1}, Lcom/ja/analytics/MobJaAgent;->isContext(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 298
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 300
    :cond_1
    sget-object v1, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v2, "event_id \u4e0d\u80fd\u4e3a\u7a7a\u6216\u7a7a\u5b57\u7b26\u4e32"

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Throwable;
    sget-object v1, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, p0, p1, v2}, Lcom/ja/analytics/logevent/EventLog;->onEventLogBegin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static onEventBegin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "event_id"
    .parameter "lable"

    .prologue
    .line 336
    :try_start_0
    const-string v1, "onEventBegin(...)"

    invoke-static {p0, v1}, Lcom/ja/analytics/MobJaAgent;->isContext(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    :goto_0
    return-void

    .line 338
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    :cond_1
    sget-object v1, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v2, "event_id \u4e0d\u80fd\u4e3a\u7a7a\u6216\u7a7a\u5b57\u7b26\u4e32"

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 343
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/ja/analytics/logevent/EventLog;->onEventLogBegin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 8
    .parameter "context"
    .parameter "event_id"
    .parameter "duration"

    .prologue
    .line 268
    :try_start_0
    const-string v0, "onEventDuration(...)"

    invoke-static {p0, v0}, Lcom/ja/analytics/MobJaAgent;->isContext(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 270
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    :cond_1
    sget-object v0, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v1, "event_id \u4e0d\u80fd\u4e3a\u7a7a\u6216\u7a7a\u5b57\u7b26\u4e32"

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v6

    .line 290
    .local v6, e:Ljava/lang/Throwable;
    sget-object v0, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    .end local v6           #e:Ljava/lang/Throwable;
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_3

    .line 277
    :try_start_1
    sget-object v0, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v1, "duration \u4e0d\u80fd\u5c0f\u4e8e0"

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :cond_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 282
    .local v7, jo:Lorg/json/JSONObject;
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v0

    const-string v3, ""

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ja/analytics/logevent/EventLog;->onEventLogDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v7

    .line 283
    if-nez v7, :cond_4

    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 284
    :cond_4
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v0

    invoke-virtual {v0, p0, v7}, Lcom/ja/analytics/logevent/EventLog;->writeEventLogToDatabase(Landroid/content/Context;Lorg/json/JSONObject;)J

    goto :goto_0

    .line 286
    :cond_5
    sget-object v0, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v1, "onEventDuration(), There is no data!!"

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter "context"
    .parameter "event_id"
    .parameter "lable"
    .parameter "duration"

    .prologue
    .line 240
    :try_start_0
    const-string v0, "onEventDuration(...)"

    invoke-static {p0, v0}, Lcom/ja/analytics/MobJaAgent;->isContext(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 242
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    :cond_1
    sget-object v0, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v1, "event_id \u4e0d\u80fd\u4e3a\u7a7a\u6216\u7a7a\u5b57\u7b26\u4e32"

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v6

    .line 262
    .local v6, e:Ljava/lang/Throwable;
    sget-object v0, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    .end local v6           #e:Ljava/lang/Throwable;
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_3

    .line 249
    :try_start_1
    sget-object v0, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v1, "duration \u4e0d\u80fd\u5c0f\u4e8e0"

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 254
    .local v7, jo:Lorg/json/JSONObject;
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ja/analytics/logevent/EventLog;->onEventLogDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v7

    .line 255
    if-nez v7, :cond_4

    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 256
    :cond_4
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v0

    invoke-virtual {v0, p0, v7}, Lcom/ja/analytics/logevent/EventLog;->writeEventLogToDatabase(Landroid/content/Context;Lorg/json/JSONObject;)J

    goto :goto_0

    .line 258
    :cond_5
    sget-object v0, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v1, "onEventDuration(), There is no data!!"

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 8
    .parameter "context"
    .parameter "event_id"
    .parameter
    .parameter "duration"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 397
    sget-object v0, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v1, "map \u6700\u591a\u652f\u630120\u4e2a\u53c2\u6570"

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :goto_0
    return-void

    .line 400
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    :cond_1
    sget-object v0, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v1, "event_id \u4e0d\u80fd\u4e3a\u7a7a\u6216\u7a7a\u5b57\u7b26\u4e32"

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_3

    .line 407
    sget-object v0, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v1, "duration \u4e0d\u80fd\u5c0f\u4e8e0"

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ja/analytics/logevent/EventLog;->onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)Lorg/json/JSONObject;

    move-result-object v7

    .line 412
    .local v7, jo:Lorg/json/JSONObject;
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v0

    invoke-virtual {v0, p0, v7}, Lcom/ja/analytics/logevent/EventLog;->writeEventLogToDatabase(Landroid/content/Context;Lorg/json/JSONObject;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    .end local v7           #jo:Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 415
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "event_id"

    .prologue
    .line 312
    :try_start_0
    const-string v2, "onEventEnd(...)"

    invoke-static {p0, v2}, Lcom/ja/analytics/MobJaAgent;->isContext(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    :goto_0
    return-void

    .line 314
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    :cond_1
    sget-object v2, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v3, "event_id \u4e0d\u80fd\u4e3a\u7a7a\u6216\u7a7a\u5b57\u7b26\u4e32"

    invoke-static {v2, v3}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Ljava/lang/Throwable;
    sget-object v2, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 320
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 321
    .local v1, jo:Lorg/json/JSONObject;
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, p1, v4}, Lcom/ja/analytics/logevent/EventLog;->onEventLogEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 322
    if-nez v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 323
    :cond_3
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/ja/analytics/logevent/EventLog;->writeEventLogToDatabase(Landroid/content/Context;Lorg/json/JSONObject;)J

    goto :goto_0

    .line 325
    :cond_4
    sget-object v2, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v3, "onEventEnd(), onEventBegin() is not called!!"

    invoke-static {v2, v3}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "event_id"
    .parameter "lable"

    .prologue
    .line 352
    :try_start_0
    const-string v1, "onEventEnd(...)"

    invoke-static {p0, v1}, Lcom/ja/analytics/MobJaAgent;->isContext(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    :goto_0
    return-void

    .line 354
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    :cond_1
    sget-object v1, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v2, "event_id \u4e0d\u80fd\u4e3a\u7a7a\u6216\u7a7a\u5b57\u7b26\u4e32"

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :catch_0
    move-exception v1

    goto :goto_0

    .line 360
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 361
    .local v0, jo:Lorg/json/JSONObject;
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/ja/analytics/logevent/EventLog;->onEventLogEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 362
    if-nez v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 363
    :cond_3
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/ja/analytics/logevent/EventLog;->writeEventLogToDatabase(Landroid/content/Context;Lorg/json/JSONObject;)J

    goto :goto_0

    .line 366
    :cond_4
    sget-object v1, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v2, "onEventEnd(), onEventBegin() is not called!!"

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 551
    invoke-static {p0}, Lcom/ja/analytics/utils/SessionStatic;->begin(Landroid/content/Context;)V

    .line 552
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 542
    invoke-static {p0}, Lcom/ja/analytics/utils/SessionStatic;->end(Landroid/content/Context;)V

    .line 543
    invoke-static {}, Lcom/ja/analytics/utils/SessionStatic;->isNewSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ja/analytics/MobJaAgent;->SessionAccumulate(Landroid/content/Context;I)V

    .line 546
    invoke-static {p0}, Lcom/ja/analytics/MobJaAgent;->updateOnlineConfig(Landroid/content/Context;)V

    .line 548
    :cond_0
    return-void
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "context"
    .parameter "e"

    .prologue
    .line 448
    :try_start_0
    const-string v1, "exceptionEvent(...)"

    invoke-static {p0, v1}, Lcom/ja/analytics/MobJaAgent;->isContext(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    if-eqz p1, :cond_0

    .line 453
    invoke-static {}, Lcom/ja/analytics/logcrash/CrashLog;->getSingleton()Lcom/ja/analytics/logcrash/CrashLog;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/ja/analytics/logcrash/CrashLog;->onCrashLogSave(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, e1:Ljava/lang/Throwable;
    sget-object v1, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setAppChannel(Ljava/lang/String;)V
    .locals 1
    .parameter "appChannel"

    .prologue
    .line 66
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ja/analytics/logevent/EventLog;->setAppChannel(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 1
    .parameter "appKey"

    .prologue
    .line 74
    invoke-static {}, Lcom/ja/analytics/logevent/EventLog;->getSingleton()Lcom/ja/analytics/logevent/EventLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ja/analytics/logevent/EventLog;->setAppKey(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/ja/analytics/logcrash/CrashLog;->getSingleton()Lcom/ja/analytics/logcrash/CrashLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ja/analytics/logcrash/CrashLog;->setAppkey(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 1
    .parameter "isDebug"

    .prologue
    .line 36
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/utils/LogUtil;->isDebugLog:Ljava/lang/Boolean;

    .line 37
    return-void
.end method

.method public static updateOnlineConfig(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    sget-object v1, Lcom/ja/analytics/MobJaAgent;->TAG:Ljava/lang/String;

    const-string v2, "updateOnlineConfig() --->"

    invoke-static {v1, v2}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ja/analytics/MobJaAgent$2;

    invoke-direct {v1, p0}, Lcom/ja/analytics/MobJaAgent$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 159
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 163
    return-void
.end method
