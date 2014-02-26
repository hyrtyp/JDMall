.class Lcom/ja/sdk/exceptionsend/SendExceptionDataStart;
.super Ljava/lang/Object;
.source "SendExceptionDataStart.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "SendExceptionDataStart"

.field private static isSendExceptionDataStartRun:Ljava/lang/Boolean;


# instance fields
.field private mContext:Landroid/content/Context;

.field final mSendDataTask:Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ja/sdk/exceptionsend/SendExceptionDataStart;->isSendExceptionDataStartRun:Ljava/lang/Boolean;

    .line 20
    return-void
.end method

.method constructor <init>(Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;)V
    .locals 2
    .parameter "aSendDataTask"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ja/sdk/exceptionsend/SendExceptionDataStart;->mSendDataTask:Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;

    .line 30
    const-string v0, "SendExceptionDataStart"

    const-string v1, " SendExceptionDataStart constructor!!"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method public static getSendExceptionDataStartThread()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/ja/sdk/exceptionsend/SendExceptionDataStart;->isSendExceptionDataStartRun:Ljava/lang/Boolean;

    return-object v0
.end method

.method private setSendExceptionDataStartThread(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "flags"

    .prologue
    .line 34
    const-string v0, "SendExceptionDataStart"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " setSendExceptionDataStartThread()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sput-object p1, Lcom/ja/sdk/exceptionsend/SendExceptionDataStart;->isSendExceptionDataStartRun:Ljava/lang/Boolean;

    .line 36
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 42
    const-string v4, "SendExceptionDataStart"

    const-string v5, " SendExceptionDataStart run() start!!"

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    monitor-enter p0

    .line 44
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ja/sdk/exceptionsend/SendExceptionDataStart;->setSendExceptionDataStartThread(Ljava/lang/Boolean;)V

    .line 45
    const/4 v2, 0x1

    .line 46
    .local v2, isSendFinished:Z
    iget-object v4, p0, Lcom/ja/sdk/exceptionsend/SendExceptionDataStart;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/ja/sdk/db/ExceptionTable;->openSQLiteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-nez v4, :cond_5

    .line 47
    const-string v4, "SendExceptionDataStart"

    const-string v5, "Can\'t open the database of ExceptionTable, return!!!"

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    monitor-exit p0

    .line 112
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v4, p0, Lcom/ja/sdk/exceptionsend/SendExceptionDataStart;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/ja/sdk/db/ExceptionTable;->getAllExceptionDataNotSendItem(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    .line 53
    .local v1, exceptionArray:Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 54
    :cond_1
    const/4 v2, 0x0

    .line 55
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ja/sdk/exceptionsend/SendExceptionDataStart;->setSendExceptionDataStartThread(Ljava/lang/Boolean;)V

    .line 56
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;->setSendExceptionDataStaskThread(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :try_start_1
    invoke-static {}, Lcom/ja/sdk/JaMobLogService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 61
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 62
    .local v3, msg:Landroid/os/Message;
    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->what:I

    .line 63
    invoke-static {}, Lcom/ja/sdk/JaMobLogService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/32 v5, 0x1b7740

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 67
    const-string v4, "SendExceptionDataStart"

    const-string v5, "Ready to send the message of STOP_SERVICE after 1800000 seconds..."

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v4, "SendExceptionDataStart"

    const-string v5, " SendExceptionDataStart run() end!!"

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    .end local v3           #msg:Landroid/os/Message;
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 43
    .end local v1           #exceptionArray:Lorg/json/JSONArray;
    .end local v2           #isSendFinished:Z
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 71
    .restart local v1       #exceptionArray:Lorg/json/JSONArray;
    .restart local v2       #isSendFinished:Z
    :cond_2
    :try_start_3
    const-string v4, "SendExceptionDataStart"

    const-string v5, "Exception JaMobLogService.getHandler() == null  !!!"

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v4, "SendExceptionDataStart"

    const-string v5, "Exception Server maybe not started == null  !!!"

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 75
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "SendExceptionDataStart"

    const-string v5, "SDK get service handle == null  !!!"

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 82
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_5
    iget-object v4, p0, Lcom/ja/sdk/exceptionsend/SendExceptionDataStart;->mSendDataTask:Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;

    iget-object v4, v4, Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;->mContext:Landroid/content/Context;

    if-nez v4, :cond_4

    .line 83
    const-string v4, "SendExceptionDataStart"

    const-string v5, "mSendDataTask.mContext == null !!!"

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/ja/sdk/framework/ExceptionDataHandle;->getSingleInstance()Lcom/ja/sdk/framework/ExceptionDataHandle;

    move-result-object v4

    iget-object v5, p0, Lcom/ja/sdk/exceptionsend/SendExceptionDataStart;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/ja/sdk/framework/ExceptionDataHandle;->sendFiveExceptionDataToServer(Landroid/content/Context;Lorg/json/JSONArray;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 93
    :goto_2
    const-wide/16 v4, 0x3e8

    :try_start_6
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    .line 99
    :goto_3
    :try_start_7
    invoke-static {}, Lcom/ja/sdk/net/HttpUtils;->getExceptionSendNetWorkStatus()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5

    .line 100
    const-string v4, "SendExceptionDataStart"

    const-string v5, "The network exception, stop to send data..."

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 103
    .restart local v3       #msg:Landroid/os/Message;
    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->what:I

    .line 104
    invoke-static {}, Lcom/ja/sdk/JaMobLogService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/32 v5, 0x1b7740

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 107
    const-string v4, "SendExceptionDataStart"

    const-string v5, "Ready to send the message of STOP_SERVICE after 1800000 seconds..."

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 86
    .end local v3           #msg:Landroid/os/Message;
    :cond_4
    :try_start_8
    const-string v4, "SendExceptionDataStart"

    const-string v5, "mSendDataTask.mContext != null !!!"

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/ja/sdk/framework/ExceptionDataHandle;->getSingleInstance()Lcom/ja/sdk/framework/ExceptionDataHandle;

    move-result-object v4

    iget-object v5, p0, Lcom/ja/sdk/exceptionsend/SendExceptionDataStart;->mSendDataTask:Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;

    iget-object v5, v5, Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/ja/sdk/framework/ExceptionDataHandle;->sendFiveExceptionDataToServer(Landroid/content/Context;Lorg/json/JSONArray;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 89
    :catch_1
    move-exception v0

    .line 90
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 50
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #exceptionArray:Lorg/json/JSONArray;
    :cond_5
    if-nez v2, :cond_0

    .line 43
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 94
    .restart local v1       #exceptionArray:Lorg/json/JSONArray;
    :catch_2
    move-exception v4

    goto :goto_3
.end method
