.class Lcom/jingdong/cloud/msg/service/JDReceiveMsgService$MsgThread;
.super Ljava/lang/Thread;
.source "JDReceiveMsgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsgThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;


# direct methods
.method private constructor <init>(Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService$MsgThread;->this$0:Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;Lcom/jingdong/cloud/msg/service/JDReceiveMsgService$MsgThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService$MsgThread;-><init>(Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 60
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 62
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;->isNeedLive:Z

    .line 63
    invoke-static {}, Lcom/jingdong/cloud/msg/PushService;->getInstance()Lcom/jingdong/cloud/msg/PushService;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService$MsgThread;->this$0:Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;

    invoke-virtual {v1, v2}, Lcom/jingdong/cloud/msg/PushService;->connectServer(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to connect server: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
