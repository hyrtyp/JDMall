.class Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$3;
.super Ljava/lang/Object;
.source "CheckMyOrderDetail.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->getTraceInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$3;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 6
    .parameter "httpResponse"

    .prologue
    .line 299
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 302
    .local v1, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_start_0
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$3;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    const-string v5, "orderMessageList"

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    #setter for: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->jsonOrderMessageList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v4, v5}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->access$6(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 303
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$3;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    const-string v5, "orderInfo"

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    #setter for: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->jsonOrderInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v4, v5}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->access$7(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 308
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$3;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    #getter for: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->jsonOrderInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->access$1(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$3;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    #getter for: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->jsonOrderInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->access$1(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 309
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$3;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    #getter for: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->jsonOrderInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->access$1(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 310
    .local v2, orderJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v2, :cond_1

    .line 311
    const-string v4, "ukey"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, ukey:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 314
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$3;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$3;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    iget-object v5, v5, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->orderId:Ljava/lang/String;

    #calls: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->queryShowGis(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v3, v5}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->access$8(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$3;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    #calls: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->setTraceInfo()V
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->access$9(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v2           #orderJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v3           #ukey:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 334
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 339
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method
