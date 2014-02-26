.class public Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;
.super Ljava/lang/Object;
.source "CrashWorkThreadHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler$CrashThreadHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static mHandler:Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler$CrashThreadHandler;

.field private static mSendCrashLogThreadHandler:Landroid/os/HandlerThread;

.field private static mSendDataMainThread:Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-class v0, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CrashWorkThreadHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;->mSendCrashLogThreadHandler:Landroid/os/HandlerThread;

    .line 22
    new-instance v0, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;

    invoke-direct {v0}, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;-><init>()V

    sput-object v0, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;->mSendDataMainThread:Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;

    .line 15
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;->mSendCrashLogThreadHandler:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 26
    new-instance v0, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler$CrashThreadHandler;

    sget-object v1, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;->mSendCrashLogThreadHandler:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler$CrashThreadHandler;-><init>(Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;Landroid/os/Looper;)V

    sput-object v0, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;->mHandler:Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler$CrashThreadHandler;

    .line 27
    return-void
.end method

.method static getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;->mHandler:Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler$CrashThreadHandler;

    return-object v0
.end method

.method public static getSingleton()Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;->mSendDataMainThread:Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized postTaskToMainThread(Landroid/content/Context;Lorg/json/JSONArray;I)V
    .locals 2
    .parameter "context"
    .parameter "jsonArray"
    .parameter "logType"

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;->TAG:Ljava/lang/String;

    const-string v1, "postTaskToMainThread()"

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 45
    :cond_1
    :try_start_1
    sget-object v0, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;->TAG:Ljava/lang/String;

    const-string v1, "new SendExceptionDataTask(this, context)!!"

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v0, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;->mHandler:Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler$CrashThreadHandler;

    new-instance v1, Lcom/ja/analytics/sendcrashlog/SendCrashLogSubthread;

    invoke-direct {v1, p1, p2, p3}, Lcom/ja/analytics/sendcrashlog/SendCrashLogSubthread;-><init>(Landroid/content/Context;Lorg/json/JSONArray;I)V

    invoke-virtual {v0, v1}, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler$CrashThreadHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
