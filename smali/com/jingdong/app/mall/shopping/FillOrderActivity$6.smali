.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$6;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->submitEasyBuyOrder(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$6;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 650
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 6
    .parameter "httpResponse"

    .prologue
    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, captchaUrl:Ljava/lang/String;
    const/4 v2, 0x0

    .line 669
    .local v2, message:Ljava/lang/String;
    const/4 v3, 0x0

    .line 670
    .local v3, submitOrderJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 672
    .local v1, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v1, :cond_0

    .line 673
    const-string v4, "submitOrder"

    invoke-virtual {v1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    .line 675
    :cond_0
    if-eqz v3, :cond_1

    .line 676
    const-string v4, "url"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    const-string v4, "Message"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 680
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 681
    new-instance v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity$6$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$6$1;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$6;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :goto_0
    return-void

    .line 688
    :cond_2
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const-string v5, "easyBuySubmitOrder"

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getOrderInfoFromSer(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V
    invoke-static {v4, p1, v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$6(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 658
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 662
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 654
    return-void
.end method
