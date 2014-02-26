.class Lcom/ja/sdk/JaMobLogService$ServiceHandler;
.super Landroid/os/Handler;
.source "JaMobLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ja/sdk/JaMobLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ja/sdk/JaMobLogService;


# direct methods
.method public constructor <init>(Lcom/ja/sdk/JaMobLogService;)V
    .locals 0
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/ja/sdk/JaMobLogService$ServiceHandler;->this$0:Lcom/ja/sdk/JaMobLogService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 751
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 757
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 758
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 760
    :pswitch_0
    const-string v2, "JaMobLogService"

    const-string v3, "Get the message of  STOP_SERVICE"

    invoke-static {v2, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-static {}, Lcom/ja/sdk/JaMobLogService;->access$0()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ja/sdk/db/PageAccessTable;->getAllPageAccessDataNotSendItem(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    .line 762
    .local v1, pageAccessArray:Lorg/json/JSONArray;
    invoke-static {}, Lcom/ja/sdk/JaMobLogService;->access$0()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ja/sdk/db/ExceptionTable;->getAllExceptionDataNotSendItem(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    .line 763
    .local v0, exceptionArray:Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 764
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 765
    :cond_2
    invoke-static {}, Lcom/ja/sdk/net/HttpUtils;->getPageVisitSendNetWorkStatus()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/ja/sdk/net/HttpUtils;->getExceptionSendNetWorkStatus()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 766
    :cond_3
    const-string v2, "JaMobLogService"

    const-string v3, "Stop the SDK service..."

    invoke-static {v2, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v2, p0, Lcom/ja/sdk/JaMobLogService$ServiceHandler;->this$0:Lcom/ja/sdk/JaMobLogService;

    invoke-virtual {v2}, Lcom/ja/sdk/JaMobLogService;->stopSelf()V

    .line 769
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/ja/sdk/JaMobLogService;->access$1(Z)V

    goto :goto_0

    .line 758
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
