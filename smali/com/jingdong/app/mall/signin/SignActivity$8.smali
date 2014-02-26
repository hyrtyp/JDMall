.class Lcom/jingdong/app/mall/signin/SignActivity$8;
.super Ljava/lang/Object;
.source "SignActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/signin/SignActivity;->httpGetReward()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity$8;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/signin/SignActivity$8;)Lcom/jingdong/app/mall/signin/SignActivity;
    .locals 1
    .parameter

    .prologue
    .line 658
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$8;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 676
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 682
    .local v1, json:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v2, "resultCode"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 686
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 688
    :pswitch_0
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$8;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    const-string v3, "refundsResultText"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/signin/SignActivity;->resultText:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/signin/SignActivity;->access$25(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V

    .line 689
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$8;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    const-string v3, "refundsResultValue"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/signin/SignActivity;->resultValue:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/signin/SignActivity;->access$26(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V

    .line 691
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$8;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/signin/SignActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/jingdong/app/mall/signin/SignActivity$8$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/signin/SignActivity$8$1;-><init>(Lcom/jingdong/app/mall/signin/SignActivity$8;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 699
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 700
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$8;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    const-string v3, "SignRewardValue"

    .line 701
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reward = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jingdong/app/mall/signin/SignActivity$8;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->resultValue:Ljava/lang/String;
    invoke-static {v5}, Lcom/jingdong/app/mall/signin/SignActivity;->access$32(Lcom/jingdong/app/mall/signin/SignActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 700
    invoke-static {v2, v3, v4}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 710
    :pswitch_1
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$8;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    const-string v3, "radomCodeErrorText"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/signin/SignActivity;->radomCodeErrorText:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/signin/SignActivity;->access$33(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V

    .line 711
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$8;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->radomCodeErrorText:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/signin/SignActivity;->access$34(Lcom/jingdong/app/mall/signin/SignActivity;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 712
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$8;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/signin/SignActivity$8;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/signin/SignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 713
    const v4, 0x7f07056f

    .line 712
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/signin/SignActivity;->radomCodeErrorText:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/signin/SignActivity;->access$33(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V

    .line 715
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignActivity$8;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/signin/SignActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/jingdong/app/mall/signin/SignActivity$8$2;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/signin/SignActivity$8$2;-><init>(Lcom/jingdong/app/mall/signin/SignActivity$8;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 686
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 671
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 665
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 732
    return-void
.end method
