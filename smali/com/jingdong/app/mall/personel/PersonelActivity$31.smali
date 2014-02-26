.class Lcom/jingdong/app/mall/personel/PersonelActivity$31;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->queryAnnualInfo()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$31;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    .line 2641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$31;)Lcom/jingdong/app/mall/personel/PersonelActivity;
    .locals 1
    .parameter

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$31;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 2
    .parameter "httpResponse"

    .prologue
    .line 2660
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 2661
    .local v0, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$31;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->handleMeetingEntrance(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    invoke-static {v1, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$70(Lcom/jingdong/app/mall/personel/PersonelActivity;Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 2663
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 2651
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$31;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$31$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$31$1;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$31;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    .line 2656
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 2
    .parameter "httpSettingParams"

    .prologue
    .line 2645
    const-string v1, "key"

    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$31;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->scankey:Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$68(Lcom/jingdong/app/mall/personel/PersonelActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-interface {p1, v1, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2646
    return-void

    .line 2645
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$31;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->scankey:Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$68(Lcom/jingdong/app/mall/personel/PersonelActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
