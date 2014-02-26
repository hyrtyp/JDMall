.class Lcom/jingdong/common/broadcastReceiver/KillSelfManager$2;
.super Ljava/lang/Thread;
.source "KillSelfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelfMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "KillSelfManager"

    invoke-virtual {p0, v0}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager$2;->setName(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/jingdong/common/MyApplication;->killStageNoUI()V

    .line 90
    return-void
.end method
