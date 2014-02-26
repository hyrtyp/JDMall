.class Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;
.super Ljava/lang/Object;
.source "CheckMyOrderDetail.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->queryShowGis(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$ukey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;->val$ukey:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;->val$orderId:Ljava/lang/String;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;)Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;
    .locals 1
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 6
    .parameter "httpResponse"

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 262
    .local v1, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v2, "showGis"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 263
    .local v0, can:Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 264
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 268
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    new-instance v3, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2$1;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;->val$orderId:Ljava/lang/String;

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;->val$ukey:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2$1;-><init>(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->post(Ljava/lang/Runnable;)V

    .line 277
    :cond_1
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 257
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 2
    .parameter "httpSettingParams"

    .prologue
    .line 250
    const-string v0, "ukey"

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;->val$ukey:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    const-string v0, "orderId"

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$2;->val$orderId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    return-void
.end method
