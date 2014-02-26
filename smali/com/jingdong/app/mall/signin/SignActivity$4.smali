.class Lcom/jingdong/app/mall/signin/SignActivity$4;
.super Ljava/lang/Object;
.source "SignActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/signin/SignActivity;->httpSigninInfo()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/signin/SignActivity$4;)Lcom/jingdong/app/mall/signin/SignActivity;
    .locals 1
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 8
    .parameter "response"

    .prologue
    .line 317
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    .line 325
    .local v3, json:Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_start_0
    iget-object v4, p0, Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    new-instance v5, Lcom/jingdong/common/entity/SigninInfo;

    invoke-direct {v5, v3}, Lcom/jingdong/common/entity/SigninInfo;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    #setter for: Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;
    invoke-static {v4, v5}, Lcom/jingdong/app/mall/signin/SignActivity;->access$8(Lcom/jingdong/app/mall/signin/SignActivity;Lcom/jingdong/common/entity/SigninInfo;)V

    .line 330
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v4

    if-nez v4, :cond_1

    .line 331
    iget-object v4, p0, Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    iget-object v4, v4, Lcom/jingdong/app/mall/signin/SignActivity;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/jingdong/app/mall/signin/SignActivity$4$1;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/signin/SignActivity$4$1;-><init>(Lcom/jingdong/app/mall/signin/SignActivity$4;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v4, p0, Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    iget-object v5, p0, Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;
    invoke-static {v5}, Lcom/jingdong/app/mall/signin/SignActivity;->access$10(Lcom/jingdong/app/mall/signin/SignActivity;)Lcom/jingdong/common/entity/SigninInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/entity/SigninInfo;->getLoginText()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/jingdong/app/mall/signin/SignActivity;->loginText:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/jingdong/app/mall/signin/SignActivity;->access$12(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V

    .line 344
    iget-object v4, p0, Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    iget-object v5, p0, Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;
    invoke-static {v5}, Lcom/jingdong/app/mall/signin/SignActivity;->access$10(Lcom/jingdong/app/mall/signin/SignActivity;)Lcom/jingdong/common/entity/SigninInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/entity/SigninInfo;->getLoginTextTitle()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/jingdong/app/mall/signin/SignActivity;->loginTextTitle:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/jingdong/app/mall/signin/SignActivity;->access$13(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V

    .line 345
    iget-object v4, p0, Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    iget-object v5, p0, Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;
    invoke-static {v5}, Lcom/jingdong/app/mall/signin/SignActivity;->access$10(Lcom/jingdong/app/mall/signin/SignActivity;)Lcom/jingdong/common/entity/SigninInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/entity/SigninInfo;->getHintText()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/jingdong/app/mall/signin/SignActivity;->hintText:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/jingdong/app/mall/signin/SignActivity;->access$14(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V

    .line 346
    iget-object v4, p0, Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    iget-object v5, p0, Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;
    invoke-static {v5}, Lcom/jingdong/app/mall/signin/SignActivity;->access$10(Lcom/jingdong/app/mall/signin/SignActivity;)Lcom/jingdong/common/entity/SigninInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/entity/SigninInfo;->getHintTextTitle()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/jingdong/app/mall/signin/SignActivity;->hintTextTitle:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/jingdong/app/mall/signin/SignActivity;->access$15(Lcom/jingdong/app/mall/signin/SignActivity;Ljava/lang/String;)V

    .line 348
    iget-object v4, p0, Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    iget-object v4, v4, Lcom/jingdong/app/mall/signin/SignActivity;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/jingdong/app/mall/signin/SignActivity$4$2;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/signin/SignActivity$4$2;-><init>(Lcom/jingdong/app/mall/signin/SignActivity$4;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    iget-object v4, p0, Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;
    invoke-static {v4}, Lcom/jingdong/app/mall/signin/SignActivity;->access$10(Lcom/jingdong/app/mall/signin/SignActivity;)Lcom/jingdong/common/entity/SigninInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;
    invoke-static {v4}, Lcom/jingdong/app/mall/signin/SignActivity;->access$10(Lcom/jingdong/app/mall/signin/SignActivity;)Lcom/jingdong/common/entity/SigninInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/SigninInfo;->getNextUpdateTime()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 373
    iget-object v4, p0, Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->sInfo:Lcom/jingdong/common/entity/SigninInfo;
    invoke-static {v4}, Lcom/jingdong/app/mall/signin/SignActivity;->access$10(Lcom/jingdong/app/mall/signin/SignActivity;)Lcom/jingdong/common/entity/SigninInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/SigninInfo;->getNextUpdateTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 373
    sub-long v0, v4, v6

    .line 378
    .local v0, delay:J
    iget-object v4, p0, Lcom/jingdong/app/mall/signin/SignActivity$4;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/jingdong/app/mall/signin/SignActivity;->access$20(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    .end local v0           #delay:J
    :catch_0
    move-exception v2

    .line 382
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 312
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 306
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 389
    return-void
.end method
