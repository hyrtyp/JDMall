.class Lcom/jingdong/app/mall/register/QuickRegisterListener$1;
.super Ljava/lang/Object;
.source "QuickRegisterListener.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/QuickRegisterListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/register/QuickRegisterListener;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterListener$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterListener;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getCode()I

    move-result v0

    .line 59
    .local v0, code:I
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 63
    .local v2, jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v3, ""

    .line 65
    .local v3, message:Ljava/lang/String;
    const-string v4, "success"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    :try_start_0
    const-string v4, "success"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    iget-object v4, p0, Lcom/jingdong/app/mall/register/QuickRegisterListener$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterListener;

    iget-object v4, v4, Lcom/jingdong/app/mall/register/QuickRegisterListener;->listener:Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;

    invoke-interface {v4, v3}, Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v1           #e:Lorg/json/JSONException;
    :cond_0
    :try_start_1
    const-string v4, "message"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    iget-object v4, p0, Lcom/jingdong/app/mall/register/QuickRegisterListener$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterListener;

    iget-object v4, v4, Lcom/jingdong/app/mall/register/QuickRegisterListener;->listener:Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;

    invoke-interface {v4, v3}, Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;->onFailed(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 77
    :catch_1
    move-exception v1

    .line 78
    .restart local v1       #e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterListener$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterListener;

    iget-object v0, v0, Lcom/jingdong/app/mall/register/QuickRegisterListener;->listener:Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;

    const-string v1, "\u53d1\u9001\u5931\u8d25,\u8bf7\u91cd\u8bd5!"

    invoke-interface {v0, v1}, Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;->onFailed(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 96
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
