.class Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;
.super Ljava/lang/Object;
.source "QuickRegisterLoginActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;)Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 11
    .parameter "httpResponse"

    .prologue
    const/4 v10, 0x1

    .line 147
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getCode()I

    move-result v1

    .line 149
    .local v1, code:I
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    .line 154
    .local v4, jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v6, ""

    .line 155
    .local v6, randomNum:Ljava/lang/String;
    const-string v5, "\u83b7\u53d6\u9a8c\u8bc1\u5bc6\u7801\u5931\u8d25"

    .line 156
    .local v5, message:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 158
    .local v3, hasError:Ljava/lang/Boolean;
    :try_start_0
    const-string v7, "randomPwd"

    invoke-virtual {v4, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 159
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 163
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    .line 165
    iget-object v7, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;)Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    move-result-object v7

    new-instance v8, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1$1;

    invoke-direct {v8, p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1$1;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;)V

    invoke-virtual {v7, v8}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->post(Ljava/lang/Runnable;)V

    .line 176
    :cond_0
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "random"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 184
    :try_start_1
    const-string v7, "message"

    invoke-virtual {v4, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    :goto_2
    iget-object v7, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;)Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    move-result-object v7

    #calls: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->resendError(Ljava/lang/String;)V
    invoke-static {v7, v5}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->access$9(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;Ljava/lang/String;)V

    .line 190
    const-string v7, "ip"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 192
    iget-object v7, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;)Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    move-result-object v7

    new-instance v8, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1$2;

    invoke-direct {v8, p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1$2;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;)V

    invoke-virtual {v7, v8}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->post(Ljava/lang/Runnable;)V

    .line 203
    :cond_1
    return-void

    .line 161
    :cond_2
    :try_start_2
    const-string v7, "randomPwd"

    invoke-virtual {v4, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v2

    .line 179
    .local v2, e:Lorg/json/JSONException;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 180
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 185
    .end local v2           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 187
    .restart local v2       #e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 211
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 217
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method
