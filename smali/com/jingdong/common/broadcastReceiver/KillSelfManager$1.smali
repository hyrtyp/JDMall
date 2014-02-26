.class Lcom/jingdong/common/broadcastReceiver/KillSelfManager$1;
.super Ljava/util/TimerTask;
.source "KillSelfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->StartKillSelfTimer()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 50
    #calls: Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelfMethod()V
    invoke-static {}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->access$0()V

    .line 51
    return-void
.end method
