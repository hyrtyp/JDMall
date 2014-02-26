.class Lcom/jingdong/app/mall/promotion/PromotionActivity$1;
.super Ljava/lang/Object;
.source "PromotionActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/promotion/PromotionActivity;->getCmsActivityList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/promotion/PromotionActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/promotion/PromotionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionActivity;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/promotion/PromotionActivity$1;)Lcom/jingdong/app/mall/promotion/PromotionActivity;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionActivity;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "cmsPromotionsAll"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/promotion/PromotionActivity;->jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->access$1(Lcom/jingdong/app/mall/promotion/PromotionActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 124
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionActivity;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionActivity;->jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->access$2(Lcom/jingdong/app/mall/promotion/PromotionActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionActivity;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionActivity;->jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->access$2(Lcom/jingdong/app/mall/promotion/PromotionActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionActivity;

    new-instance v1, Lcom/jingdong/app/mall/promotion/PromotionActivity$1$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/promotion/PromotionActivity$1$1;-><init>(Lcom/jingdong/app/mall/promotion/PromotionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->post(Ljava/lang/Runnable;)V

    .line 149
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionActivity;

    new-instance v1, Lcom/jingdong/app/mall/promotion/PromotionActivity$1$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/promotion/PromotionActivity$1$2;-><init>(Lcom/jingdong/app/mall/promotion/PromotionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionActivity;

    #calls: Lcom/jingdong/app/mall/promotion/PromotionActivity;->showError()V
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->access$0(Lcom/jingdong/app/mall/promotion/PromotionActivity;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionActivity;

    #calls: Lcom/jingdong/app/mall/promotion/PromotionActivity;->showError()V
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->access$0(Lcom/jingdong/app/mall/promotion/PromotionActivity;)V

    .line 112
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 103
    return-void
.end method
