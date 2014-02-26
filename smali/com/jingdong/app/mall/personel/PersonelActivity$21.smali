.class Lcom/jingdong/app/mall/personel/PersonelActivity$21;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->queryOnlineAppointment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$21;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    .line 2063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$21;)Lcom/jingdong/app/mall/personel/PersonelActivity;
    .locals 1
    .parameter

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$21;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 7
    .parameter "httpResponse"

    .prologue
    .line 2081
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    .line 2086
    .local v3, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v5, "subItemList"

    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 2088
    .local v0, array:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 2089
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 2090
    .local v2, json:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-nez v2, :cond_1

    .line 2133
    .end local v2           #json:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_0
    :goto_0
    return-void

    .line 2093
    .restart local v2       #json:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_1
    const-string v5, "url"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2094
    .local v4, tempUrl:Ljava/lang/String;
    const-string v5, "functionId"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2101
    .local v1, functionId:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2103
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$21;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    new-instance v6, Lcom/jingdong/app/mall/personel/PersonelActivity$21$1;

    invoke-direct {v6, p0, v4, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$21$1;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$21;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 2073
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 2
    .parameter "httpSettingParams"

    .prologue
    .line 2067
    const-string v0, "type"

    const-string v1, "tbis"

    invoke-interface {p1, v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2068
    return-void
.end method
