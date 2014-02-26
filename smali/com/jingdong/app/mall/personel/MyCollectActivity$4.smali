.class Lcom/jingdong/app/mall/personel/MyCollectActivity$4;
.super Ljava/lang/Object;
.source "MyCollectActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCollectActivity;->cancelFavorites(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/common/entity/Product;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$4;->val$nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$4;->val$context:Lcom/jingdong/app/mall/utils/MyActivity;

    iput-object p3, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$4;->val$product:Lcom/jingdong/common/entity/Product;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    .line 305
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 306
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 308
    .local v0, jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_start_0
    const-string v1, "flag"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$4;->val$nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$4;->val$context:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v2, Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$4;->val$nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$4;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-direct {v2, p0, v3, v4}, Lcom/jingdong/app/mall/personel/MyCollectActivity$4$1;-><init>(Lcom/jingdong/app/mall/personel/MyCollectActivity$4;Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/common/entity/Product;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$4;->val$context:Lcom/jingdong/app/mall/utils/MyActivity;

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/ToastUtils;->showToast(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V

    .line 334
    .end local v0           #jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_1
    :goto_0
    return-void

    .line 325
    .restart local v0       #jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$4;->val$context:Lcom/jingdong/app/mall/utils/MyActivity;

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/ToastUtils;->showToast(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$4;->val$context:Lcom/jingdong/app/mall/utils/MyActivity;

    const-string v1, "\u53d6\u6d88\u5173\u6ce8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/ToastUtils;->showToast(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 344
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method
