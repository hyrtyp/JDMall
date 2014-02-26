.class Lcom/ja/sdk/pagevisitsend/SendPageAccessDataStart;
.super Ljava/lang/Object;
.source "SendPageAccessDataStart.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "SendPageAccessDataStart"

.field private static isSendPageAccessDataTaskRun:Ljava/lang/Boolean;

.field private static mContext:Landroid/content/Context;


# instance fields
.field final mSendDataTask:Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataStart;->isSendPageAccessDataTaskRun:Ljava/lang/Boolean;

    .line 17
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;)V
    .locals 2
    .parameter "context"
    .parameter "aSendDataTask"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sput-object p1, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataStart;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataStart;->mSendDataTask:Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;

    .line 29
    const-string v0, "SendPageAccessDataStart"

    const-string v1, "SendPageAccessDataStart, constructort!!!"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method public static getSendPageAccessDataStartThread()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataStart;->isSendPageAccessDataTaskRun:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static setSendPageAccessDataStartThread(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "flags"

    .prologue
    .line 32
    const-string v0, "SendPageAccessDataStart"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSendPageAccessDataStartThread()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sput-object p0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataStart;->isSendPageAccessDataTaskRun:Ljava/lang/Boolean;

    .line 34
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 41
    const-string v4, "SendPageAccessDataStart"

    const-string v5, "SendPageAccessDataStart, run start!!!"

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataStart;->setSendPageAccessDataStartThread(Ljava/lang/Boolean;)V

    .line 43
    monitor-enter p0

    .line 44
    const/4 v1, 0x1

    .line 45
    .local v1, isSendFinished:Z
    :try_start_0
    sget-object v4, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataStart;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/ja/sdk/db/PageAccessTable;->openSQLiteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-nez v4, :cond_5

    .line 46
    const-string v4, "SendPageAccessDataStart"

    const-string v5, "Can\'t open the database of PageAccessTable, return!!!"

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    monitor-exit p0

    .line 112
    :goto_0
    return-void

    .line 51
    :cond_0
    sget-object v4, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataStart;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/ja/sdk/db/PageAccessTable;->getAllPageAccessDataNotSendItem(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    .line 52
    .local v3, pageAccessArray:Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 53
    :cond_1
    const/4 v1, 0x0

    .line 54
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataStart;->setSendPageAccessDataStartThread(Ljava/lang/Boolean;)V

    .line 55
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;->setSendPageAccessDataStaskThread(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    invoke-static {}, Lcom/ja/sdk/JaMobLogService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 60
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 61
    .local v2, msg:Landroid/os/Message;
    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->what:I

    .line 62
    invoke-static {}, Lcom/ja/sdk/JaMobLogService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/32 v5, 0x1b7740

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 66
    const-string v4, "SendPageAccessDataStart"

    const-string v5, "Ready to send the message of STOP_SERVICE after 1800000 seconds..."

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v4, "SendPageAccessDataStart"

    const-string v5, "SendPageAccessDataStart, run end!!!"

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .end local v2           #msg:Landroid/os/Message;
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 43
    .end local v3           #pageAccessArray:Lorg/json/JSONArray;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 69
    .restart local v3       #pageAccessArray:Lorg/json/JSONArray;
    :cond_2
    :try_start_3
    const-string v4, "SendPageAccessDataStart"

    const-string v5, "JaMobLogService.getHandler() == null  !!!"

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v4, "SendPageAccessDataStart"

    const-string v5, "Server maybe not started !!"

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "SendPageAccessDataStart"

    const-string v5, "SDK get service handle == null  !!!"

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 79
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_5
    iget-object v4, p0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataStart;->mSendDataTask:Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;

    iget-object v4, v4, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;->mContext:Landroid/content/Context;

    if-nez v4, :cond_4

    .line 80
    const-string v4, "SendPageAccessDataStart"

    const-string v5, "mSendDataTask.mContext == null !!!"

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Lcom/ja/sdk/framework/PageAccessDataHandle;->getSingleInstance()Lcom/ja/sdk/framework/PageAccessDataHandle;

    move-result-object v4

    sget-object v5, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataStart;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Lcom/ja/sdk/framework/PageAccessDataHandle;->sendFivePageAccessDataToServer(Landroid/content/Context;Lorg/json/JSONArray;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 90
    :goto_2
    const-wide/16 v4, 0x3e8

    :try_start_6
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    .line 95
    :goto_3
    :try_start_7
    invoke-static {}, Lcom/ja/sdk/net/HttpUtils;->getPageVisitSendNetWorkStatus()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5

    .line 96
    const-string v4, "SendPageAccessDataStart"

    const-string v5, "The network exception, stop to send data..."

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 99
    .restart local v2       #msg:Landroid/os/Message;
    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->what:I

    .line 100
    invoke-static {}, Lcom/ja/sdk/JaMobLogService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/32 v5, 0x1b7740

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 103
    const-string v4, "SendPageAccessDataStart"

    const-string v5, "Ready to send the message of STOP_SERVICE after 1800000 seconds..."

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 83
    .end local v2           #msg:Landroid/os/Message;
    :cond_4
    :try_start_8
    const-string v4, "SendPageAccessDataStart"

    const-string v5, "mSendDataTask.mContext != null !!!"

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/ja/sdk/framework/PageAccessDataHandle;->getSingleInstance()Lcom/ja/sdk/framework/PageAccessDataHandle;

    move-result-object v4

    iget-object v5, p0, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataStart;->mSendDataTask:Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;

    iget-object v5, v5, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Lcom/ja/sdk/framework/PageAccessDataHandle;->sendFivePageAccessDataToServer(Landroid/content/Context;Lorg/json/JSONArray;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 86
    :catch_1
    move-exception v0

    .line 87
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 49
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #pageAccessArray:Lorg/json/JSONArray;
    :cond_5
    if-nez v1, :cond_0

    .line 43
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 91
    .restart local v3       #pageAccessArray:Lorg/json/JSONArray;
    :catch_2
    move-exception v4

    goto :goto_3
.end method
