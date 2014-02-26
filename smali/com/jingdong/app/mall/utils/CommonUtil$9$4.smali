.class Lcom/jingdong/app/mall/utils/CommonUtil$9$4;
.super Ljava/lang/Object;
.source "CommonUtil.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/CommonUtil$9;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/CommonUtil$9;

.field private final synthetic val$orderIdFinal:Ljava/lang/String;

.field private final synthetic val$pinFinal:Ljava/lang/String;

.field private final synthetic val$platFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/CommonUtil$9;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$4;->this$1:Lcom/jingdong/app/mall/utils/CommonUtil$9;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$4;->val$pinFinal:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$4;->val$orderIdFinal:Ljava/lang/String;

    iput-object p4, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$4;->val$platFinal:Ljava/lang/String;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 6
    .parameter "httpResponse"

    .prologue
    .line 505
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 506
    .local v1, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v4, "error"

    invoke-virtual {v1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, message:Ljava/lang/String;
    const-string v4, "message"

    invoke-virtual {v1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 510
    .local v3, xml:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 511
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 512
    new-instance v0, Lcom/jingdong/app/mall/utils/CommonUtil$9$4$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/CommonUtil$9$4$1;-><init>(Lcom/jingdong/app/mall/utils/CommonUtil$9$4;)V

    .line 528
    .local v0, dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v4

    const v5, 0x7f0701a9

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 529
    invoke-virtual {v0, v2}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 530
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v4

    const v5, 0x7f07014d

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setNeutralButton(Ljava/lang/CharSequence;)V

    .line 531
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/app/mall/utils/MyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jingdong/app/mall/utils/ui/DialogController;->init(Landroid/content/Context;)V

    .line 532
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v4

    new-instance v5, Lcom/jingdong/app/mall/utils/CommonUtil$9$4$2;

    invoke-direct {v5, p0, v0}, Lcom/jingdong/app/mall/utils/CommonUtil$9$4$2;-><init>(Lcom/jingdong/app/mall/utils/CommonUtil$9$4;Lcom/jingdong/app/mall/utils/ui/DialogController;)V

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 541
    .end local v0           #dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$4;->this$1:Lcom/jingdong/app/mall/utils/CommonUtil$9;

    #getter for: Lcom/jingdong/app/mall/utils/CommonUtil$9;->this$0:Lcom/jingdong/app/mall/utils/CommonUtil;
    invoke-static {v4}, Lcom/jingdong/app/mall/utils/CommonUtil$9;->access$0(Lcom/jingdong/app/mall/utils/CommonUtil$9;)Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/jingdong/app/mall/utils/CommonUtil;->doPay(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 501
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 2
    .parameter "httpSettingParams"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$4;->val$pinFinal:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    const-string v0, "pin"

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$4;->val$pinFinal:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$4;->val$orderIdFinal:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    const-string v0, "orderId"

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$4;->val$orderIdFinal:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$4;->val$platFinal:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 492
    const-string v0, "plat"

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$9$4;->val$platFinal:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_2
    const-string v0, "plat"

    const-string v1, "mobile"

    invoke-interface {p1, v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
