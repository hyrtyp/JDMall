.class Lcom/ja/analytics/MobJaAgent$2;
.super Ljava/lang/Object;
.source "MobJaAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ja/analytics/MobJaAgent;->updateOnlineConfig(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ja/analytics/MobJaAgent$2;->val$context:Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 92
    iget-object v5, p0, Lcom/ja/analytics/MobJaAgent$2;->val$context:Landroid/content/Context;

    #calls: Lcom/ja/analytics/MobJaAgent;->getOnlineStrategy(Landroid/content/Context;)Z
    invoke-static {v5}, Lcom/ja/analytics/MobJaAgent;->access$0(Landroid/content/Context;)Z

    .line 95
    sget-boolean v5, Lcom/ja/analytics/constant/Constants;->SEND_STRATEGY:Z

    if-eqz v5, :cond_6

    .line 98
    const/4 v4, 0x1

    .line 99
    .local v4, eventFlag:Z
    const/4 v1, 0x1

    .line 100
    .local v1, crashFlag:Z
    :try_start_0
    iget-object v5, p0, Lcom/ja/analytics/MobJaAgent$2;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/ja/analytics/db/EventTable;->openSQLiteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/ja/analytics/constant/Constants;->ISAPPKEY_VALIDE:Z

    if-eqz v5, :cond_3

    .line 103
    :cond_0
    if-eqz v4, :cond_1

    .line 105
    iget-object v5, p0, Lcom/ja/analytics/MobJaAgent$2;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/ja/analytics/db/EventTable;->getEventLog(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    .line 106
    .local v3, eventArray:Lorg/json/JSONArray;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-eqz v5, :cond_4

    .line 108
    invoke-static {}, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;->getSingleton()Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/ja/analytics/MobJaAgent$2;->val$context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7}, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;->postTaskToMainThread(Landroid/content/Context;Lorg/json/JSONArray;I)V

    .line 116
    .end local v3           #eventArray:Lorg/json/JSONArray;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 118
    iget-object v5, p0, Lcom/ja/analytics/MobJaAgent$2;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/ja/analytics/db/CrashTable;->getCrashLog(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    .line 119
    .local v0, crashArray:Lorg/json/JSONArray;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-eqz v5, :cond_5

    .line 120
    invoke-static {}, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;->getSingleton()Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/ja/analytics/MobJaAgent$2;->val$context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v0, v7}, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;->postTaskToMainThread(Landroid/content/Context;Lorg/json/JSONArray;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    .end local v0           #crashArray:Lorg/json/JSONArray;
    :cond_2
    :goto_1
    const-wide/16 v5, 0x7530

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/ja/analytics/net/HttpUtils;->getEventNetworkStatus()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/ja/analytics/net/HttpUtils;->getCrashNetworkStatus()I

    move-result v5

    if-eqz v5, :cond_3

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    .line 156
    .end local v1           #crashFlag:Z
    .end local v4           #eventFlag:Z
    :cond_3
    :goto_3
    return-void

    .line 112
    .restart local v1       #crashFlag:Z
    .restart local v3       #eventArray:Lorg/json/JSONArray;
    .restart local v4       #eventFlag:Z
    :cond_4
    invoke-static {}, Lcom/ja/analytics/MobJaAgent;->access$1()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u6570\u636e\u5e93\u4e2d\u6ca1\u6709\u4e8b\u4ef6\u6570\u636e"

    invoke-static {v5, v6}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v4, 0x0

    goto :goto_0

    .line 124
    .end local v3           #eventArray:Lorg/json/JSONArray;
    .restart local v0       #crashArray:Lorg/json/JSONArray;
    :cond_5
    invoke-static {}, Lcom/ja/analytics/MobJaAgent;->access$1()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u6570\u636e\u5e93\u4e2d\u6ca1\u6709\u5f02\u5e38\u6570\u636e"

    invoke-static {v5, v6}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x0

    goto :goto_1

    .line 131
    .end local v0           #crashArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 133
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 139
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 140
    .local v2, e:Ljava/lang/Throwable;
    invoke-static {}, Lcom/ja/analytics/MobJaAgent;->access$1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 145
    .end local v1           #crashFlag:Z
    .end local v2           #e:Ljava/lang/Throwable;
    .end local v4           #eventFlag:Z
    :cond_6
    sget-boolean v5, Lcom/ja/analytics/constant/Constants;->SEND_INTERVAL_STRATEGY:Z

    if-nez v5, :cond_3

    .line 148
    iget-object v5, p0, Lcom/ja/analytics/MobJaAgent$2;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/ja/analytics/db/EventTable;->openSQLiteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/ja/analytics/constant/Constants;->ISAPPKEY_VALIDE:Z

    if-eqz v5, :cond_3

    .line 150
    invoke-static {}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->getMonitor()Lcom/ja/analytics/framework/LogDatabaseMonitor;

    move-result-object v5

    iget-object v6, p0, Lcom/ja/analytics/MobJaAgent$2;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->startMonitorLog(Landroid/content/Context;)V

    .line 151
    const/4 v5, 0x1

    sput-boolean v5, Lcom/ja/analytics/constant/Constants;->SEND_INTERVAL_STRATEGY:Z

    goto :goto_3
.end method
