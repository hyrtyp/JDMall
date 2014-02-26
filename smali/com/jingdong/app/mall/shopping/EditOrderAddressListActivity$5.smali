.class Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$5;
.super Ljava/lang/Object;
.source "EditOrderAddressListActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->httpGetAddressByPin()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 333
    if-eqz p1, :cond_1

    .line 335
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 336
    .local v1, jsonRoot:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v2, "addressList"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 338
    .local v0, jsonAddressList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->listData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->access$7(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->listData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->access$7(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 341
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->listData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->access$7(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Lcom/jingdong/common/entity/UserAddress;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 345
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    #calls: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->refreshLayout()V
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->access$8(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)V

    .line 348
    .end local v0           #jsonAddressList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v1           #jsonRoot:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_1
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 329
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 325
    return-void
.end method
