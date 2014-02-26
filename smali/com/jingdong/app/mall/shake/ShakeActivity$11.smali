.class Lcom/jingdong/app/mall/shake/ShakeActivity$11;
.super Ljava/lang/Object;
.source "ShakeActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeActivity;->loadShakeTimes(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

.field private final synthetic val$currentShakeTimes:Ljava/lang/String;

.field private final synthetic val$standardDateFromSD:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->val$standardDateFromSD:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->val$currentShakeTimes:Ljava/lang/String;

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 6
    .parameter "httpResponse"

    .prologue
    const/4 v5, 0x0

    .line 586
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const/4 v4, 0x1

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimeSuccess:Z
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$50(Lcom/jingdong/app/mall/shake/ShakeActivity;Z)V

    .line 588
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 589
    .local v2, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v2, :cond_5

    .line 594
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const-string v4, "shakeTimes"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mMaxShakeTime:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$51(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V

    .line 596
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const-string v4, "currentDate"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->standardDate:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$52(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V

    .line 598
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mMaxShakeTime:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$53(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 600
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mMaxShakeTime:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$53(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/jingdong/common/utils/MathsUtils;->parseInt(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimes:I
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$6(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V

    .line 601
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimes:I
    invoke-static {v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$5(Lcom/jingdong/app/mall/shake/ShakeActivity;)I

    move-result v4

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mMaxIntShakeTime:I
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$54(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V

    .line 604
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->standardDate:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$29(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mMaxIntShakeTime:I
    invoke-static {v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$35(Lcom/jingdong/app/mall/shake/ShakeActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, content:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->standardDate:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$29(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->val$standardDateFromSD:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->val$standardDateFromSD:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 608
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v3, v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->saveStringToCache(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 621
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mMaxShakeTime:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$53(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->updateShakeTimes(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$8(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V

    .line 623
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const/16 v4, 0x8

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->optionsViewVisible(I)V
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$49(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V

    .line 627
    .end local v0           #content:Ljava/lang/String;
    :goto_1
    return-void

    .line 610
    .restart local v0       #content:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->val$currentShakeTimes:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 611
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->val$currentShakeTimes:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/jingdong/common/utils/MathsUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 613
    .local v1, currentShakeTimesSd:I
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mMaxIntShakeTime:I
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$35(Lcom/jingdong/app/mall/shake/ShakeActivity;)I

    move-result v3

    if-le v1, v3, :cond_4

    .line 614
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mMaxIntShakeTime:I
    invoke-static {v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$35(Lcom/jingdong/app/mall/shake/ShakeActivity;)I

    move-result v4

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimes:I
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$6(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V

    goto :goto_0

    .line 616
    :cond_4
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->val$currentShakeTimes:Ljava/lang/String;

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mMaxShakeTime:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$51(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 625
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #currentShakeTimesSd:I
    :cond_5
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->showError()V
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$48(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    goto :goto_1
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->showError()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$48(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    .line 576
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const/16 v1, 0x8

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->optionsViewVisible(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$49(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V

    .line 577
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$11;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimeSuccess:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$50(Lcom/jingdong/app/mall/shake/ShakeActivity;Z)V

    .line 578
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 568
    return-void
.end method
