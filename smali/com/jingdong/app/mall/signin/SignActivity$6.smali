.class Lcom/jingdong/app/mall/signin/SignActivity$6;
.super Ljava/lang/Object;
.source "SignActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/signin/SignActivity;->httpShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/signin/SignActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/signin/SignActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity$6;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 520
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 527
    .local v0, json:Lcom/jingdong/common/utils/JSONObjectProxy;
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity$6;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/signin/SignActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/jingdong/app/mall/signin/SignActivity$6$2;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/signin/SignActivity$6$2;-><init>(Lcom/jingdong/app/mall/signin/SignActivity$6;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 534
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$6;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/signin/SignActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jingdong/app/mall/signin/SignActivity$6$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/signin/SignActivity$6$1;-><init>(Lcom/jingdong/app/mall/signin/SignActivity$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 502
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 539
    return-void
.end method
