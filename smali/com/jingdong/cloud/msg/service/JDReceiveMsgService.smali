.class public Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;
.super Landroid/app/Service;
.source "JDReceiveMsgService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/cloud/msg/service/JDReceiveMsgService$MsgThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static isNeedLive:Z


# instance fields
.field private msgThread:Lcom/jingdong/cloud/msg/service/JDReceiveMsgService$MsgThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;->isNeedLive:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    new-instance v0, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService$MsgThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService$MsgThread;-><init>(Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;Lcom/jingdong/cloud/msg/service/JDReceiveMsgService$MsgThread;)V

    iput-object v0, p0, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;->msgThread:Lcom/jingdong/cloud/msg/service/JDReceiveMsgService$MsgThread;

    .line 17
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private quitThread()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;->isNeedLive:Z

    .line 76
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 31
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;->TAG:Ljava/lang/String;

    const-string v1, "Invoke onCreate()"

    invoke-static {v0, v1}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;->msgThread:Lcom/jingdong/cloud/msg/service/JDReceiveMsgService$MsgThread;

    invoke-virtual {v0}, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService$MsgThread;->start()V

    .line 35
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 45
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;->TAG:Ljava/lang/String;

    const-string v1, "Invoke onDestroy()"

    invoke-static {v0, v1}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jingdong/cloud/msg/entity/LoginState;->setHasLogin(Z)V

    .line 49
    invoke-direct {p0}, Lcom/jingdong/cloud/msg/service/JDReceiveMsgService;->quitThread()V

    .line 51
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 40
    return-void
.end method
