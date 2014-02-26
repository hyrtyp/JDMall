.class Lcom/jingdong/common/utils/PushMessageUtils$1;
.super Ljava/lang/Object;
.source "PushMessageUtils.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/PushMessageUtils;->regPushMessageToken(Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$listener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

.field private final synthetic val$otherGroup:Lcom/jingdong/common/utils/HttpGroup;

.field private final synthetic val$otherSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/PushMessageUtils$1;->val$listener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    iput-object p2, p0, Lcom/jingdong/common/utils/PushMessageUtils$1;->val$otherGroup:Lcom/jingdong/common/utils/HttpGroup;

    iput-object p3, p0, Lcom/jingdong/common/utils/PushMessageUtils$1;->val$otherSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "devicetoken"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, token:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/jingdong/common/utils/PushMessageUtils$1;->val$listener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/jingdong/common/utils/PushMessageUtils$1;->val$listener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    invoke-interface {v1, p1}, Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    .line 91
    :cond_2
    invoke-static {v0}, Lcom/jingdong/common/utils/PushMessageUtils;->saveDeviceToken(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/jingdong/common/utils/PushMessageUtils$1;->val$otherGroup:Lcom/jingdong/common/utils/HttpGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/common/utils/PushMessageUtils$1;->val$otherSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/jingdong/common/utils/PushMessageUtils$1;->val$otherSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    const-string v2, "devicetoken"

    invoke-virtual {v1, v2, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lcom/jingdong/common/utils/PushMessageUtils$1;->val$otherGroup:Lcom/jingdong/common/utils/HttpGroup;

    iget-object v2, p0, Lcom/jingdong/common/utils/PushMessageUtils$1;->val$otherSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/common/utils/PushMessageUtils$1;->val$listener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/jingdong/common/utils/PushMessageUtils$1;->val$listener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    invoke-interface {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 1
    .parameter "httpSettingParams"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jingdong/common/utils/PushMessageUtils$1;->val$listener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/jingdong/common/utils/PushMessageUtils$1;->val$listener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    invoke-interface {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;->onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V

    .line 73
    :cond_0
    return-void
.end method
