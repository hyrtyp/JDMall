.class Lcom/jingdong/app/mall/signin/SignActivity$5;
.super Ljava/lang/Object;
.source "SignActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/signin/SignActivity;->httpVerifyImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/signin/SignActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/signin/SignActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity$5;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/signin/SignActivity$5;)Lcom/jingdong/app/mall/signin/SignActivity;
    .locals 1
    .parameter

    .prologue
    .line 411
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$5;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 7
    .parameter "response"

    .prologue
    .line 436
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 443
    .local v0, json:Lcom/jingdong/common/utils/JSONObjectProxy;
    iget-object v3, p0, Lcom/jingdong/app/mall/signin/SignActivity$5;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    const-string v4, "randomTimes"

    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #setter for: Lcom/jingdong/app/mall/signin/SignActivity;->randomTimes:I
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/signin/SignActivity;->access$22(Lcom/jingdong/app/mall/signin/SignActivity;I)V

    .line 444
    const-string v3, "randomImgStr"

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, randomImgStr:Ljava/lang/String;
    const-string v3, "randomValideTime"

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 447
    .local v2, randomValideTime:I
    iget-object v3, p0, Lcom/jingdong/app/mall/signin/SignActivity$5;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/signin/SignActivity;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/jingdong/app/mall/signin/SignActivity$5$2;

    invoke-direct {v4, p0, v1}, Lcom/jingdong/app/mall/signin/SignActivity$5$2;-><init>(Lcom/jingdong/app/mall/signin/SignActivity$5;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 465
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 466
    iget-object v3, p0, Lcom/jingdong/app/mall/signin/SignActivity$5;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    const-string v4, "SignVerifyFail"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Time = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    iget-object v6, p0, Lcom/jingdong/app/mall/signin/SignActivity$5;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->randomTimes:I
    invoke-static {v6}, Lcom/jingdong/app/mall/signin/SignActivity;->access$24(Lcom/jingdong/app/mall/signin/SignActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 466
    invoke-static {v3, v4, v5}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_0
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$5;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/signin/SignActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jingdong/app/mall/signin/SignActivity$5$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/signin/SignActivity$5$1;-><init>(Lcom/jingdong/app/mall/signin/SignActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 431
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 418
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 474
    return-void
.end method
