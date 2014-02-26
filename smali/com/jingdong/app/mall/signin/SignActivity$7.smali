.class Lcom/jingdong/app/mall/signin/SignActivity$7;
.super Ljava/lang/Object;
.source "SignActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/signin/SignActivity;->httpSummit()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity$7;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/signin/SignActivity$7;)Lcom/jingdong/app/mall/signin/SignActivity;
    .locals 1
    .parameter

    .prologue
    .line 558
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$7;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 576
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 584
    .local v1, json:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v2, "resultCode"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 587
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    .line 628
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 590
    :pswitch_1
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$7;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    const-string v3, "refundsResultText"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/signin/SignActivity;->resultText:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/signin/SignActivity;->access$25(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V

    .line 591
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$7;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    const-string v3, "refundsResultValue"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/signin/SignActivity;->resultValue:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/signin/SignActivity;->access$26(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V

    .line 593
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$7;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/signin/SignActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/jingdong/app/mall/signin/SignActivity$7$1;

    invoke-direct {v3, p0, v1}, Lcom/jingdong/app/mall/signin/SignActivity$7$1;-><init>(Lcom/jingdong/app/mall/signin/SignActivity$7;Lcom/jingdong/common/utils/JSONObjectProxy;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 613
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$7;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    const-string v3, "SignCommit"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :pswitch_2
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$7;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    const/4 v3, 0x1

    #setter for: Lcom/jingdong/app/mall/signin/SignActivity;->hasDone:Z
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/signin/SignActivity;->access$29(Lcom/jingdong/app/mall/signin/SignActivity;Z)V

    goto :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 571
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 565
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 633
    return-void
.end method
