.class public Lcom/jingdong/common/broadcastReceiver/KillSelfManager;
.super Ljava/lang/Object;
.source "KillSelfManager.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "KillSelfManager"

.field private static killSelfTimer:Ljava/util/Timer;

.field private static synchronizTokenSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->synchronizTokenSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized StartKillSelfTimer()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 37
    const-class v2, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    .local v0, token:Ljava/lang/Object;
    sget-object v1, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->synchronizTokenSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/MyApplication;->getMainFrameActivity()Lcom/jingdong/common/frame/IMainActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 40
    sget-object v1, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelfTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelfTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 43
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelfTimer:Ljava/util/Timer;

    .line 44
    sget-object v1, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelfTimer:Ljava/util/Timer;

    new-instance v3, Lcom/jingdong/common/broadcastReceiver/KillSelfManager$1;

    invoke-direct {v3}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager$1;-><init>()V

    .line 52
    const-wide/32 v4, 0xea60

    .line 44
    invoke-virtual {v1, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    monitor-exit v2

    return-object v0

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 72
    invoke-static {}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelfMethod()V

    return-void
.end method

.method public static declared-synchronized killSelf(Ljava/lang/Object;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 62
    const-class v1, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->synchronizTokenSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->synchronizTokenSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelfMethod()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    monitor-exit v1

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized killSelfMethod()V
    .locals 2

    .prologue
    .line 78
    const-class v1, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelfTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelfTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelfTimer:Ljava/util/Timer;

    .line 84
    :cond_0
    new-instance v0, Lcom/jingdong/common/broadcastReceiver/KillSelfManager$2;

    invoke-direct {v0}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager$2;-><init>()V

    .line 91
    invoke-virtual {v0}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit v1

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
