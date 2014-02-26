.class public Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;
.super Ljava/lang/Object;
.source "LogDatabaseMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ja/analytics/framework/LogDatabaseMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MonitorThread"
.end annotation


# instance fields
.field private jsonArray:Lorg/json/JSONArray;

.field private logType:I

.field private monitorFlag:I

.field private sync_lock:[B

.field final synthetic this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;


# direct methods
.method public constructor <init>(Lcom/ja/analytics/framework/LogDatabaseMonitor;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 69
    iput-object p1, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->sync_lock:[B

    .line 65
    iput v1, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->logType:I

    .line 67
    iput v1, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->monitorFlag:I

    .line 70
    invoke-static {}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MonitorThread() --->"

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    #setter for: Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$1(Lcom/ja/analytics/framework/LogDatabaseMonitor;Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/ja/analytics/framework/LogDatabaseMonitor;Landroid/content/Context;Lorg/json/JSONArray;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "ja"
    .parameter "logType"

    .prologue
    const/4 v1, -0x1

    .line 74
    iput-object p1, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->sync_lock:[B

    .line 65
    iput v1, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->logType:I

    .line 67
    iput v1, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->monitorFlag:I

    .line 75
    #setter for: Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$1(Lcom/ja/analytics/framework/LogDatabaseMonitor;Landroid/content/Context;)V

    .line 76
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->jsonArray:Lorg/json/JSONArray;

    .line 77
    iput-object p3, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->jsonArray:Lorg/json/JSONArray;

    .line 78
    iput p4, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->logType:I

    .line 79
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 86
    :cond_0
    :goto_0
    :try_start_0
    sget-boolean v4, Lcom/ja/analytics/constant/Constants;->SEND_STRATEGY:Z

    if-eqz v4, :cond_2

    .line 88
    const/4 v4, 0x0

    sput-boolean v4, Lcom/ja/analytics/constant/Constants;->SEND_INTERVAL_STRATEGY:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_1
    :goto_1
    return-void

    .line 92
    :cond_2
    :try_start_1
    sget v4, Lcom/ja/analytics/constant/Constants;->SEND_INTERVAL:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    :goto_2
    :try_start_2
    iget v4, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->monitorFlag:I

    if-ne v4, v7, :cond_7

    .line 98
    invoke-static {}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u7b2c\u4e00\u6b21\u8fdb\u5165\u6570\u636e\u76d1\u63a7\u6a21\u5757..."

    invoke-static {v4, v5}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v4, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    #getter for: Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$2(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ja/analytics/db/EventTable;->openSQLiteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 102
    iget-object v4, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    #getter for: Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$2(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ja/analytics/db/EventTable;->getEventLog(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    .line 103
    .local v2, eventArray:Lorg/json/JSONArray;
    if-nez v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 104
    :cond_3
    invoke-static {}, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;->getSingleton()Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    #getter for: Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$2(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;->postTaskToMainThread(Landroid/content/Context;Lorg/json/JSONArray;I)V

    .line 106
    :cond_4
    iget-object v4, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    #getter for: Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$2(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ja/analytics/db/CrashTable;->openSQLiteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 108
    iget-object v4, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    #getter for: Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$2(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ja/analytics/db/CrashTable;->getCrashLog(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    .line 109
    .local v0, crashArray:Lorg/json/JSONArray;
    if-nez v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_6

    .line 110
    :cond_5
    invoke-static {}, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;->getSingleton()Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    #getter for: Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$2(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v6}, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;->postTaskToMainThread(Landroid/content/Context;Lorg/json/JSONArray;I)V

    .line 120
    :cond_6
    const/4 v4, 0x0

    iput v4, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->monitorFlag:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 166
    .end local v0           #crashArray:Lorg/json/JSONArray;
    .end local v2           #eventArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 168
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 93
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 95
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 123
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_7
    iget v4, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->monitorFlag:I

    if-eq v4, v7, :cond_9

    invoke-static {}, Lcom/ja/analytics/net/HttpUtils;->getEventNetworkStatus()I

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/ja/analytics/net/HttpUtils;->getCrashNetworkStatus()I

    move-result v4

    if-nez v4, :cond_9

    .line 124
    :cond_8
    invoke-static {}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u7f51\u7edc\u5f02\u5e38\uff0c\u505c\u6b62\u76d1\u63a7..."

    invoke-static {v4, v5}, Lcom/ja/analytics/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 126
    .local v3, msg:Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v3, Landroid/os/Message;->what:I

    .line 127
    invoke-static {}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$3()Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 131
    .end local v3           #msg:Landroid/os/Message;
    :cond_9
    iget-object v4, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    #getter for: Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$2(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ja/analytics/db/EventTable;->getEventLog(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    .line 132
    .restart local v2       #eventArray:Lorg/json/JSONArray;
    if-nez v2, :cond_a

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_f

    .line 133
    :cond_a
    invoke-static {}, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;->getSingleton()Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    #getter for: Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$2(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;->postTaskToMainThread(Landroid/content/Context;Lorg/json/JSONArray;I)V

    .line 138
    :goto_3
    iget-object v4, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    #getter for: Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$2(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ja/analytics/db/CrashTable;->getCrashLog(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    .line 139
    .restart local v0       #crashArray:Lorg/json/JSONArray;
    if-nez v0, :cond_b

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_10

    .line 140
    :cond_b
    invoke-static {}, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;->getSingleton()Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    #getter for: Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$2(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v6}, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;->postTaskToMainThread(Landroid/content/Context;Lorg/json/JSONArray;I)V

    .line 156
    :goto_4
    iget-object v4, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    #getter for: Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$2(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ja/analytics/db/EventTable;->getEventLog(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    .line 157
    iget-object v4, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;->this$0:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    #getter for: Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$2(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ja/analytics/db/CrashTable;->getCrashLog(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    .line 158
    if-nez v2, :cond_c

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_0

    :cond_c
    if-nez v0, :cond_d

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    :cond_d
    if-nez v2, :cond_e

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 161
    :cond_e
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 162
    .restart local v3       #msg:Landroid/os/Message;
    const/4 v4, 0x3

    iput v4, v3, Landroid/os/Message;->what:I

    .line 163
    invoke-static {}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$3()Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 136
    .end local v0           #crashArray:Lorg/json/JSONArray;
    .end local v3           #msg:Landroid/os/Message;
    :cond_f
    invoke-static {}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u6ca1\u6709\u76d1\u63a7\u5230event\u6570\u636e..."

    invoke-static {v4, v5}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 143
    .restart local v0       #crashArray:Lorg/json/JSONArray;
    :cond_10
    invoke-static {}, Lcom/ja/analytics/framework/LogDatabaseMonitor;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u6ca1\u6709\u76d1\u63a7\u5230crash\u6570\u636e..."

    invoke-static {v4, v5}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4
.end method
