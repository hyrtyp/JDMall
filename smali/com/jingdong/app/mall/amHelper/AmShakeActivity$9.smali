.class Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;
.super Ljava/lang/Object;
.source "AmShakeActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->querryShakeData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;)Lcom/jingdong/app/mall/amHelper/AmShakeActivity;
    .locals 1
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 6
    .parameter "httpResponse"

    .prologue
    .line 308
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    new-instance v3, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9$2;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9$2;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->post(Ljava/lang/Runnable;)V

    .line 315
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 316
    .local v1, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v1, :cond_1

    .line 322
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    new-instance v3, Lcom/jingdong/app/mall/amHelper/AmShakeResult;

    invoke-direct {v3, v1}, Lcom/jingdong/app/mall/amHelper/AmShakeResult;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    #setter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeResult:Lcom/jingdong/app/mall/amHelper/AmShakeResult;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$15(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;Lcom/jingdong/app/mall/amHelper/AmShakeResult;)V

    .line 323
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeResult:Lcom/jingdong/app/mall/amHelper/AmShakeResult;
    invoke-static {v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$16(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)Lcom/jingdong/app/mall/amHelper/AmShakeResult;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    #calls: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->stopShakeListener()V
    invoke-static {v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$6(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    .line 325
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->shakeHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$17(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->shakeRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$18(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 331
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    iget-boolean v0, v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->isShowDialog:Z

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    new-instance v1, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9$1;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;)V

    .line 295
    const/16 v2, 0x3e8

    .line 284
    invoke-virtual {v0, v1, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->post(Ljava/lang/Runnable;I)V

    .line 297
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->isShowDialog:Z

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeDataIsQuerying:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$5(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;Z)V

    .line 301
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 276
    return-void
.end method
