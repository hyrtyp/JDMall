.class Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;
.super Ljava/lang/Object;
.source "QuickRegisterLoginListener.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;

.field private final synthetic val$pwd:Ljava/lang/String;

.field private final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;

    iput-object p2, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;->val$userName:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;->val$pwd:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;)Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 10
    .parameter "httpResponse"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 79
    if-nez p1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 83
    .local v2, jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v5, ""

    .line 84
    .local v5, pinNumber:Ljava/lang/String;
    const-string v3, ""

    .line 85
    .local v3, message:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 89
    .local v1, hasError:Ljava/lang/Boolean;
    :try_start_0
    const-string v6, "pin"

    invoke-virtual {v2, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 90
    const-string v6, "pin"

    invoke-virtual {v2, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    iget-object v6, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;

    iput-object v5, v6, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;->pin:Ljava/lang/String;

    .line 92
    const-string v6, "regInfo"

    invoke-virtual {v2, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "success"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 104
    :goto_1
    move-object v4, v3

    .line 106
    .local v4, newMessage:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 107
    iget-object v6, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;

    iget-object v6, v6, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;->listener:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$QuickRegisterLoginStatusListener;

    invoke-interface {v6, v4}, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$QuickRegisterLoginStatusListener;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v4           #newMessage:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v6, "regInfo"

    invoke-virtual {v2, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "info"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Lorg/json/JSONException;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 101
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 110
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v4       #newMessage:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;

    iget-object v6, v6, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;->myactivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v7, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1$1;

    iget-object v8, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;->val$userName:Ljava/lang/String;

    iget-object v9, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;->val$pwd:Ljava/lang/String;

    invoke-direct {v7, p0, v8, v9, v4}, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1$1;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 150
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 156
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
