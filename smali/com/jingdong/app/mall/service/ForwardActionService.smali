.class public Lcom/jingdong/app/mall/service/ForwardActionService;
.super Landroid/app/Service;
.source "ForwardActionService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public killSelf()V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/jingdong/app/mall/service/ForwardActionService;->stopSelf()V

    .line 57
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 30
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 36
    if-nez p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    const-string v2, "a"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    new-instance v1, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v1}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 48
    .local v1, paramMap:Lcom/jingdong/common/utils/URLParamMap;
    const-string v2, "to"

    invoke-virtual {v1, v2, v0}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v2

    const-string v3, "to"

    invoke-virtual {v2, p0, v3, v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->forwardWebActivityForAction(Landroid/content/Context;Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;)V

    .line 51
    invoke-virtual {p0}, Lcom/jingdong/app/mall/service/ForwardActionService;->killSelf()V

    goto :goto_0
.end method
