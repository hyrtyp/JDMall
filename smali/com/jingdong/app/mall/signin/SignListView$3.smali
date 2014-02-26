.class Lcom/jingdong/app/mall/signin/SignListView$3;
.super Ljava/lang/Object;
.source "SignListView.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/signin/SignListView;->postHttp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/signin/SignListView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/signin/SignListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignListView$3;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 280
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 288
    .local v1, json:Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignListView$3;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    new-instance v3, Lcom/jingdong/common/entity/SigninList;

    invoke-direct {v3, v1}, Lcom/jingdong/common/entity/SigninList;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    #setter for: Lcom/jingdong/app/mall/signin/SignListView;->listInfo:Lcom/jingdong/common/entity/SigninList;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/signin/SignListView;->access$10(Lcom/jingdong/app/mall/signin/SignListView;Lcom/jingdong/common/entity/SigninList;)V

    .line 290
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignListView$3;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->listInfo:Lcom/jingdong/common/entity/SigninList;
    invoke-static {v2}, Lcom/jingdong/app/mall/signin/SignListView;->access$0(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/common/entity/SigninList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignListView$3;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    iget-object v2, v2, Lcom/jingdong/app/mall/signin/SignListView;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 292
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignListView$3;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    iget-object v2, v2, Lcom/jingdong/app/mall/signin/SignListView;->handler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 293
    iget-object v2, p0, Lcom/jingdong/app/mall/signin/SignListView$3;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    iget-object v2, v2, Lcom/jingdong/app/mall/signin/SignListView;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 275
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 269
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method
