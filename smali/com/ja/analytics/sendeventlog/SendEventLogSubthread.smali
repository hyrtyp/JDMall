.class Lcom/ja/analytics/sendeventlog/SendEventLogSubthread;
.super Ljava/lang/Object;
.source "SendEventLogSubthread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private sendDataJsonarray:Lorg/json/JSONArray;

.field private sendLogType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/ja/analytics/sendeventlog/SendEventLogSubthread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/sendeventlog/SendEventLogSubthread;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;I)V
    .locals 2
    .parameter "context"
    .parameter "jsonArray"
    .parameter "logType"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/ja/analytics/sendeventlog/SendEventLogSubthread;->TAG:Ljava/lang/String;

    const-string v1, "SendEventLogSubthread() --->"

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    if-nez p1, :cond_0

    .line 31
    :goto_0
    return-void

    .line 26
    :cond_0
    sput-object p1, Lcom/ja/analytics/sendeventlog/SendEventLogSubthread;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/ja/analytics/sendeventlog/SendEventLogSubthread;->sendDataJsonarray:Lorg/json/JSONArray;

    .line 28
    iput-object p2, p0, Lcom/ja/analytics/sendeventlog/SendEventLogSubthread;->sendDataJsonarray:Lorg/json/JSONArray;

    .line 29
    iput p3, p0, Lcom/ja/analytics/sendeventlog/SendEventLogSubthread;->sendLogType:I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    sget-object v0, Lcom/ja/analytics/sendeventlog/SendEventLogSubthread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ja/analytics/db/EventTable;->openSQLiteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 37
    monitor-exit p0

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-static {}, Lcom/ja/analytics/framework/EventLogSend;->getSingleton()Lcom/ja/analytics/framework/EventLogSend;

    move-result-object v0

    sget-object v1, Lcom/ja/analytics/sendeventlog/SendEventLogSubthread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ja/analytics/sendeventlog/SendEventLogSubthread;->sendDataJsonarray:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lcom/ja/analytics/framework/EventLogSend;->sendFiveEventLog(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 35
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
