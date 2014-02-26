.class Lcom/jingdong/app/mall/shake/ShakeActivity$10;
.super Ljava/lang/Object;
.source "ShakeActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeActivity;->querryShakeData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shake/ShakeActivity$10;)Lcom/jingdong/app/mall/shake/ShakeActivity;
    .locals 1
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 7
    .parameter "httpResponse"

    .prologue
    .line 507
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->setShakeProgressVisible(I)V

    .line 509
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const-string v4, "shake_shake"

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGEvent:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$18(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 511
    .local v1, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v1, :cond_3

    .line 517
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    new-instance v4, Lcom/jingdong/common/entity/ShakeResult;

    invoke-direct {v4, v1}, Lcom/jingdong/common/entity/ShakeResult;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeResult:Lcom/jingdong/common/entity/ShakeResult;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$42(Lcom/jingdong/app/mall/shake/ShakeActivity;Lcom/jingdong/common/entity/ShakeResult;)V

    .line 518
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeResult:Lcom/jingdong/common/entity/ShakeResult;
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$43(Lcom/jingdong/app/mall/shake/ShakeActivity;)Lcom/jingdong/common/entity/ShakeResult;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 520
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeResult:Lcom/jingdong/common/entity/ShakeResult;
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$43(Lcom/jingdong/app/mall/shake/ShakeActivity;)Lcom/jingdong/common/entity/ShakeResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/ShakeResult;->getType()Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, type:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->obtainFunctionId(Ljava/lang/String;)I
    invoke-static {v4, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$44(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)I

    move-result v4

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->switchValue:I
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$45(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V

    .line 523
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGValue:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$19(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V

    .line 524
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const-string v4, "type"

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGKey:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$38(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V

    .line 526
    const-string v3, "bean"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "coupon"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 527
    const-string v3, "special_prize"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 528
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/jingdong/app/mall/shake/ShakeActivity;->isHintUser:Z

    .line 531
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->stopShakeListener()V
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$11(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    .line 532
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->shakeHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$46(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->shakeRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$47(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .end local v2           #type:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGEvent:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$20(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v5}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getShakeParams()Ljava/util/Map;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/jingdong/common/utils/ShakeUtils;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 548
    :goto_0
    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 537
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const-string v4, "-1"

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGValue:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$19(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V

    .line 538
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const-string v4, "err"

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGKey:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$38(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGEvent:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$20(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v5}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getShakeParams()Ljava/util/Map;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/jingdong/common/utils/ShakeUtils;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 539
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 540
    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGEvent:Ljava/lang/String;
    invoke-static {v5}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$20(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v6}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getShakeParams()Ljava/util/Map;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/jingdong/common/utils/ShakeUtils;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 541
    throw v3

    .line 544
    :cond_3
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const-string v4, "-1"

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGValue:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$19(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V

    .line 545
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const-string v4, "err"

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGKey:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$38(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V

    .line 546
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGEvent:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$20(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v5}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getShakeParams()Ljava/util/Map;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/jingdong/common/utils/ShakeUtils;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 5
    .parameter "error"

    .prologue
    .line 470
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->setShakeProgressVisible(I)V

    .line 471
    if-eqz p1, :cond_0

    .line 472
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->getErrorCode()I

    move-result v0

    .line 474
    .local v0, errorCode:I
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGValue:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$19(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V

    .line 475
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const-string v3, "err"

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGKey:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$38(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V

    .line 476
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const-string v3, "shake_shake"

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGEvent:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$18(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V

    .line 477
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGEvent:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$20(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getShakeParams()Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/jingdong/common/utils/ShakeUtils;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 483
    const/16 v2, 0x1e

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->getJsonCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->shakeDialogIsShowing()Z
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$39(Lcom/jingdong/app/mall/shake/ShakeActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->shakeMoreTimesDialog:Z
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$40(Lcom/jingdong/app/mall/shake/ShakeActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 484
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const v3, 0x7f070554

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, errorComment:Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    new-instance v3, Lcom/jingdong/app/mall/shake/ShakeActivity$10$1;

    invoke-direct {v3, p0, v1}, Lcom/jingdong/app/mall/shake/ShakeActivity$10$1;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity$10;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->post(Ljava/lang/Runnable;)V

    .line 496
    .end local v0           #errorCode:I
    .end local v1           #errorComment:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeListener()V
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$9(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    .line 497
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->cancelVibrator()V
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$4(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    .line 498
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$10;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const/4 v3, 0x0

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeDataIsQuerying:Z
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$10(Lcom/jingdong/app/mall/shake/ShakeActivity;Z)V

    .line 499
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 463
    return-void
.end method
