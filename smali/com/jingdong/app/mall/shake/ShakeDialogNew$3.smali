.class Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;
.super Ljava/lang/Object;
.source "ShakeDialogNew.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeDialogNew;->loadAchieveCoupon(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

.field private final synthetic val$achieveType:Ljava/lang/String;

.field private final synthetic val$couponTextView:Landroid/widget/TextView;

.field private final synthetic val$receiveCoupon:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    iput-object p2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->val$achieveType:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->val$couponTextView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->val$receiveCoupon:Landroid/widget/Button;

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    .locals 1
    .parameter

    .prologue
    .line 723
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 10
    .parameter "httpResponse"

    .prologue
    const/4 v1, 0x1

    .line 755
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    #calls: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->setCustomButtonClick(Z)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$10(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Z)V

    .line 756
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->setAchieveProgressVisible(I)V

    .line 757
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v8

    .line 758
    .local v8, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v8, :cond_0

    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    const-string v1, "shake_achieve"

    #setter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGEvent:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$8(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;)V

    .line 765
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->isReceiveCouponed:Z

    .line 767
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    const-string v1, "type"

    #setter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGKey:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$7(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->val$achieveType:Ljava/lang/String;

    #setter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$6(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;)V

    .line 770
    const-string v0, "achieveResult"

    invoke-virtual {v8, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, achieveResult:Ljava/lang/String;
    const-string v0, "msg"

    invoke-virtual {v8, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 773
    .local v6, msg:Ljava/lang/String;
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v9

    new-instance v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->val$achieveType:Ljava/lang/String;

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->val$couponTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->val$receiveCoupon:Landroid/widget/Button;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;-><init>(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGEvent:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$9(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getShakeParams()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/jingdong/common/utils/ShakeUtils;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 878
    .end local v2           #achieveResult:Ljava/lang/String;
    .end local v6           #msg:Ljava/lang/String;
    :goto_0
    return-void

    .line 862
    :catch_0
    move-exception v7

    .line 863
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 865
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    const-string v1, "-1"

    #setter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$6(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    const-string v1, "err"

    #setter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGKey:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$7(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 868
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGEvent:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$9(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getShakeParams()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/jingdong/common/utils/ShakeUtils;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 867
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 868
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGEvent:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$9(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getShakeParams()Ljava/util/Map;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/jingdong/common/utils/ShakeUtils;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 869
    throw v0

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    const-string v1, "-1"

    #setter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$6(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    const-string v1, "err"

    #setter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGKey:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$7(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGEvent:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$9(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getShakeParams()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/jingdong/common/utils/ShakeUtils;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 4
    .parameter "error"

    .prologue
    .line 736
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->setAchieveProgressVisible(I)V

    .line 737
    if-eqz p1, :cond_0

    .line 738
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->getErrorCode()I

    move-result v0

    .line 740
    .local v0, errorCode:I
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGValue:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$6(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;)V

    .line 741
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    const-string v2, "err"

    #setter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGKey:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$7(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;)V

    .line 742
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    const-string v2, "shake_achieve"

    #setter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGEvent:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$8(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;)V

    .line 743
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mJLOGEvent:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$9(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getShakeParams()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/jingdong/common/utils/ShakeUtils;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 746
    .end local v0           #errorCode:I
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    const/4 v2, 0x1

    #calls: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->setCustomButtonClick(Z)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$10(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Z)V

    .line 747
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 728
    return-void
.end method
