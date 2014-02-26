.class Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6;
.super Ljava/lang/Object;
.source "EditOrderAddressListActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->httpDelAddress(Lcom/jingdong/common/entity/UserAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6;)Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;
    .locals 1
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 7
    .parameter "httpResponse"

    .prologue
    .line 377
    if-eqz p1, :cond_0

    .line 378
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 379
    .local v2, jsonRoot:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v5, "addressList"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 381
    .local v1, jsonAddress:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v1, :cond_0

    .line 382
    const-string v5, "Flag"

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 383
    .local v0, flag:Ljava/lang/Boolean;
    const/4 v3, 0x0

    .line 384
    .local v3, message:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 385
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    invoke-virtual {v5}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0704f9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 389
    :goto_0
    move-object v4, v3

    .line 390
    .local v4, msg:Ljava/lang/String;
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    new-instance v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6$1;

    invoke-direct {v6, p0, v4}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6$1;-><init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->post(Ljava/lang/Runnable;)V

    .line 398
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 399
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    #calls: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->httpGetAddressByPin()V
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->access$9(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)V

    .line 403
    .end local v0           #flag:Ljava/lang/Boolean;
    .end local v1           #jsonAddress:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v2           #jsonRoot:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v3           #message:Ljava/lang/String;
    .end local v4           #msg:Ljava/lang/String;
    :cond_0
    return-void

    .line 387
    .restart local v0       #flag:Ljava/lang/Boolean;
    .restart local v1       #jsonAddress:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v2       #jsonRoot:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v3       #message:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    invoke-virtual {v5}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0704fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 373
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 369
    return-void
.end method
