.class Lcom/jingdong/common/utils/CommonBase$3;
.super Ljava/lang/Thread;
.source "CommonBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/CommonBase;->getLocalMacAddress(Lcom/jingdong/common/utils/CommonBase$MacAddressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$listener:Lcom/jingdong/common/utils/CommonBase$MacAddressListener;

.field private final synthetic val$waiter:Ljava/lang/Object;

.field private final synthetic val$wifi:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Ljava/lang/Object;Lcom/jingdong/common/utils/CommonBase$MacAddressListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/CommonBase$3;->val$wifi:Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/jingdong/common/utils/CommonBase$3;->val$waiter:Ljava/lang/Object;

    iput-object p3, p0, Lcom/jingdong/common/utils/CommonBase$3;->val$listener:Lcom/jingdong/common/utils/CommonBase$MacAddressListener;

    .line 364
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 373
    iget-object v3, p0, Lcom/jingdong/common/utils/CommonBase$3;->val$wifi:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 379
    const/4 v1, 0x0

    .line 380
    .local v1, macAddress:Ljava/lang/String;
    const/4 v2, 0x0

    .line 381
    .local v2, times:I
    :goto_0
    iget-object v3, p0, Lcom/jingdong/common/utils/CommonBase$3;->val$wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_1

    .line 398
    :cond_0
    iget-object v3, p0, Lcom/jingdong/common/utils/CommonBase$3;->val$wifi:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 408
    iget-object v3, p0, Lcom/jingdong/common/utils/CommonBase$3;->val$listener:Lcom/jingdong/common/utils/CommonBase$MacAddressListener;

    invoke-interface {v3, v1}, Lcom/jingdong/common/utils/CommonBase$MacAddressListener;->setMacAddress(Ljava/lang/String;)V

    .line 409
    return-void

    .line 382
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 383
    iget-object v4, p0, Lcom/jingdong/common/utils/CommonBase$3;->val$waiter:Ljava/lang/Object;

    monitor-enter v4

    .line 388
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/common/utils/CommonBase$3;->val$waiter:Ljava/lang/Object;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_1
    :try_start_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
