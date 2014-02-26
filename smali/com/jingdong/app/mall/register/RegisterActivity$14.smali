.class Lcom/jingdong/app/mall/register/RegisterActivity$14;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/RegisterActivity;->onRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/register/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$14;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 6
    .parameter "httpResponse"

    .prologue
    const/4 v5, 0x1

    .line 713
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "regInfo"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    .line 715
    .local v1, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-virtual {v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v2

    if-ge v2, v5, :cond_0

    .line 716
    iget-object v2, p0, Lcom/jingdong/app/mall/register/RegisterActivity$14;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/register/RegisterActivity$14;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    const v4, 0x7f07021c

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/register/RegisterActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/register/RegisterActivity;->showDialog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    .end local v1           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/register/RegisterActivity$14;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    iput-boolean v5, v2, Lcom/jingdong/app/mall/register/RegisterActivity;->bThreadStop:Z

    .line 741
    return-void

    .line 719
    .restart local v1       #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->names()Lorg/json/JSONArray;

    move-result-object v0

    .line 720
    .local v0, jNames:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "info"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 721
    iget-object v2, p0, Lcom/jingdong/app/mall/register/RegisterActivity$14;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "info"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/jingdong/app/mall/register/RegisterActivity;->messageBody:Ljava/lang/String;

    .line 722
    iget-object v2, p0, Lcom/jingdong/app/mall/register/RegisterActivity$14;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/register/RegisterActivity$14;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/register/RegisterActivity;->messageBody:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/register/RegisterActivity;->showDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 735
    .end local v0           #jNames:Lorg/json/JSONArray;
    .end local v1           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 728
    .restart local v0       #jNames:Lorg/json/JSONArray;
    .restart local v1       #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/register/RegisterActivity$14;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    #calls: Lcom/jingdong/app/mall/register/RegisterActivity;->onRegisterSuccess()V
    invoke-static {v2}, Lcom/jingdong/app/mall/register/RegisterActivity;->access$7(Lcom/jingdong/app/mall/register/RegisterActivity;)V

    .line 729
    iget-object v2, p0, Lcom/jingdong/app/mall/register/RegisterActivity$14;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    #calls: Lcom/jingdong/app/mall/register/RegisterActivity;->onLogin()V
    invoke-static {v2}, Lcom/jingdong/app/mall/register/RegisterActivity;->access$8(Lcom/jingdong/app/mall/register/RegisterActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$14;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$14;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    const v2, 0x7f07021c

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/register/RegisterActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/register/RegisterActivity;->showDialog(Ljava/lang/String;)V

    .line 749
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 754
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$14;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jingdong/app/mall/register/RegisterActivity;->bThreadStop:Z

    .line 705
    return-void
.end method
