.class Lcom/jingdong/app/mall/product/PriceReportActivity$6;
.super Ljava/lang/Object;
.source "PriceReportActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/PriceReportActivity;->submit(JLjava/lang/String;Ljava/lang/String;Lcom/jingdong/common/entity/DiscussImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/PriceReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/PriceReportActivity$6;)Lcom/jingdong/app/mall/product/PriceReportActivity;
    .locals 1
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 7
    .parameter "httpResponse"

    .prologue
    .line 389
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 390
    .local v2, jsonProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v5, "success"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, isSucessStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 392
    const-string v5, "failedReason"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, reportFailedReason:Ljava/lang/String;
    const-string v5, "true"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 396
    const-string v5, "rewardCouponId"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 398
    .local v4, rewardCouponId:Ljava/lang/String;
    iget-object v5, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    new-instance v6, Lcom/jingdong/app/mall/product/PriceReportActivity$6$2;

    invoke-direct {v6, p0, v4, v3}, Lcom/jingdong/app/mall/product/PriceReportActivity$6$2;-><init>(Lcom/jingdong/app/mall/product/PriceReportActivity$6;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/product/PriceReportActivity;->post(Ljava/lang/Runnable;)V

    .line 441
    .end local v1           #isSucessStr:Ljava/lang/String;
    .end local v2           #jsonProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v3           #reportFailedReason:Ljava/lang/String;
    .end local v4           #rewardCouponId:Ljava/lang/String;
    :goto_0
    return-void

    .line 415
    .restart local v1       #isSucessStr:Ljava/lang/String;
    .restart local v2       #jsonProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v3       #reportFailedReason:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    new-instance v6, Lcom/jingdong/app/mall/product/PriceReportActivity$6$3;

    invoke-direct {v6, p0, v3}, Lcom/jingdong/app/mall/product/PriceReportActivity$6$3;-><init>(Lcom/jingdong/app/mall/product/PriceReportActivity$6;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/product/PriceReportActivity;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    .end local v1           #isSucessStr:Ljava/lang/String;
    .end local v2           #jsonProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v3           #reportFailedReason:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 432
    .local v0, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    new-instance v6, Lcom/jingdong/app/mall/product/PriceReportActivity$6$4;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/product/PriceReportActivity$6$4;-><init>(Lcom/jingdong/app/mall/product/PriceReportActivity$6;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/product/PriceReportActivity;->post(Ljava/lang/Runnable;)V

    .line 439
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 429
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #isSucessStr:Ljava/lang/String;
    .restart local v2       #jsonProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "\u6570\u636e\u89e3\u6790\u9519\u8bef"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    new-instance v1, Lcom/jingdong/app/mall/product/PriceReportActivity$6$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/PriceReportActivity$6$1;-><init>(Lcom/jingdong/app/mall/product/PriceReportActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/product/PriceReportActivity;->post(Ljava/lang/Runnable;)V

    .line 384
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 372
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 446
    return-void
.end method
