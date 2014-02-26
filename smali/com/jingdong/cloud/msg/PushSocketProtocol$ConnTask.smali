.class final Lcom/jingdong/cloud/msg/PushSocketProtocol$ConnTask;
.super Ljava/util/TimerTask;
.source "PushSocketProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/cloud/msg/PushSocketProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConnTask"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 75
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    sget-boolean v0, Lcom/jingdong/cloud/msg/PushSocketProtocol;->isConn:Z

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 82
    :cond_0
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v0, :cond_1

    .line 83
    invoke-static {}, Lcom/jingdong/cloud/msg/PushSocketProtocol;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnTask retry Conn....."

    invoke-static {v0, v1}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_1
    invoke-static {}, Lcom/jingdong/cloud/msg/PushSocket;->closeConnect()V

    .line 87
    invoke-static {}, Lcom/jingdong/cloud/msg/PushService;->getInstance()Lcom/jingdong/cloud/msg/PushService;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/cloud/msg/PushSocketProtocol$ConnTask;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/jingdong/cloud/msg/PushService;->connectServer(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/jingdong/cloud/msg/PushSocketProtocol$ConnTask;->context:Landroid/content/Context;

    .line 106
    return-void
.end method
