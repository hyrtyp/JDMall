.class Lcom/jingdong/common/utils/GlobalInitialization$5;
.super Ljava/lang/Object;
.source "GlobalInitialization.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/GlobalInitialization;->checksofteWareUpdated(ZLcom/jingdong/common/frame/IMyActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/GlobalInitialization;

.field private final synthetic val$isAuto:Z

.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/GlobalInitialization;Lcom/jingdong/common/frame/IMyActivity;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/GlobalInitialization$5;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    iput-object p2, p0, Lcom/jingdong/common/utils/GlobalInitialization$5;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iput-boolean p3, p0, Lcom/jingdong/common/utils/GlobalInitialization$5;->val$isAuto:Z

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 11
    .parameter "httpResponse"

    .prologue
    .line 502
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v9

    .line 505
    .local v9, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v4, "changes"

    invoke-virtual {v9, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 507
    .local v5, description:Ljava/lang/String;
    const-string v4, "version"

    invoke-virtual {v9, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, remoteVersion:Ljava/lang/String;
    const-string v4, "url"

    invoke-virtual {v9, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, downloadUrl:Ljava/lang/String;
    const-string v4, "upgrade"

    invoke-virtual {v9, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, upgradeCode:Ljava/lang/String;
    const-string v4, "size"

    invoke-virtual {v9, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 515
    .local v8, apkSize:Ljava/lang/Integer;
    if-nez v8, :cond_0

    .line 516
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization$5;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 532
    .local v0, myShowActivity:Lcom/jingdong/common/frame/IMyActivity;
    if-nez v0, :cond_1

    .line 533
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/MyApplication;->getMainFrameActivity()Lcom/jingdong/common/frame/IMainActivity;

    move-result-object v10

    .line 534
    .local v10, mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;
    if-eqz v10, :cond_1

    .line 535
    invoke-interface {v10}, Lcom/jingdong/common/frame/IMainActivity;->getCurrentMyActivity()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v7

    .line 536
    .local v7, activity:Lcom/jingdong/common/frame/IMyActivity;
    instance-of v4, v7, Lcom/jingdong/common/frame/IMyActivity;

    if-eqz v4, :cond_1

    .line 537
    move-object v0, v7

    .line 542
    .end local v7           #activity:Lcom/jingdong/common/frame/IMyActivity;
    .end local v10           #mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;
    :cond_1
    if-eqz v0, :cond_2

    .line 543
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-boolean v6, p0, Lcom/jingdong/common/utils/GlobalInitialization$5;->val$isAuto:Z

    invoke-static/range {v0 .. v6}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->tryUpgrade(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 546
    :cond_2
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 497
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 492
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 550
    return-void
.end method
