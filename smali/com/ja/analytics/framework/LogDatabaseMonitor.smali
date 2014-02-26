.class public Lcom/ja/analytics/framework/LogDatabaseMonitor;
.super Ljava/lang/Object;
.source "LogDatabaseMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;,
        Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static dataMonitor:Lcom/ja/analytics/framework/LogDatabaseMonitor;

.field private static monitorHandlerThread:Landroid/os/HandlerThread;

.field private static monitorThreadHandler:Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-class v0, Lcom/ja/analytics/framework/LogDatabaseMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/framework/LogDatabaseMonitor;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LogDatabaseMonitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ja/analytics/framework/LogDatabaseMonitor;->monitorHandlerThread:Landroid/os/HandlerThread;

    .line 29
    new-instance v0, Lcom/ja/analytics/framework/LogDatabaseMonitor;

    invoke-direct {v0}, Lcom/ja/analytics/framework/LogDatabaseMonitor;-><init>()V

    sput-object v0, Lcom/ja/analytics/framework/LogDatabaseMonitor;->dataMonitor:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    .line 21
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/ja/analytics/framework/LogDatabaseMonitor;->TAG:Ljava/lang/String;

    const-string v1, "LogDatabaseMonitor() --->"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v0, Lcom/ja/analytics/framework/LogDatabaseMonitor;->monitorHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    sget-object v0, Lcom/ja/analytics/framework/LogDatabaseMonitor;->monitorHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 42
    :goto_0
    new-instance v0, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;

    sget-object v1, Lcom/ja/analytics/framework/LogDatabaseMonitor;->monitorHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;-><init>(Lcom/ja/analytics/framework/LogDatabaseMonitor;Landroid/os/Looper;)V

    sput-object v0, Lcom/ja/analytics/framework/LogDatabaseMonitor;->monitorThreadHandler:Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;

    .line 43
    return-void

    .line 40
    :cond_0
    sget-object v0, Lcom/ja/analytics/framework/LogDatabaseMonitor;->monitorHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->run()V

    goto :goto_0
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/ja/analytics/framework/LogDatabaseMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ja/analytics/framework/LogDatabaseMonitor;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$2(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3()Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/ja/analytics/framework/LogDatabaseMonitor;->monitorThreadHandler:Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;

    return-object v0
.end method

.method public static getMonitor()Lcom/ja/analytics/framework/LogDatabaseMonitor;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/ja/analytics/framework/LogDatabaseMonitor;->TAG:Ljava/lang/String;

    const-string v1, "getMonitor() --->"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v0, Lcom/ja/analytics/framework/LogDatabaseMonitor;->dataMonitor:Lcom/ja/analytics/framework/LogDatabaseMonitor;

    return-object v0
.end method

.method public static getMonitorHandler()Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/ja/analytics/framework/LogDatabaseMonitor;->monitorThreadHandler:Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;

    return-object v0
.end method

.method public static getMonitorThreadHandler()Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/ja/analytics/framework/LogDatabaseMonitor;->monitorThreadHandler:Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;

    return-object v0
.end method


# virtual methods
.method public startMonitorLog(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ja/analytics/framework/LogDatabaseMonitor;->mContext:Landroid/content/Context;

    .line 52
    sget-object v0, Lcom/ja/analytics/framework/LogDatabaseMonitor;->monitorThreadHandler:Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;

    new-instance v1, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;

    invoke-direct {v1, p0, p1}, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThread;-><init>(Lcom/ja/analytics/framework/LogDatabaseMonitor;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method
