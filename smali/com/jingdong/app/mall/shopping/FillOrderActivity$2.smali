.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$2;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 6875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 6889
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    iput-object v3, v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdIsPutPassword:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 6891
    const/4 v1, 0x0

    .line 6894
    .local v1, isShowSecurity:Z
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdIsPutPassword:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v3, "showSecurityPayBlock"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6901
    :goto_0
    if-eqz v1, :cond_0

    .line 6902
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->showPasswordEdit()V
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$2(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 6907
    :goto_1
    return-void

    .line 6895
    :catch_0
    move-exception v0

    .line 6896
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 6904
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->hidePasswordEdit()V
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    goto :goto_1
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 6884
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->hidePasswordEdit()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 6885
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 6880
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 6911
    return-void
.end method
