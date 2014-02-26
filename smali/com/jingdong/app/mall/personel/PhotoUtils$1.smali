.class Lcom/jingdong/app/mall/personel/PhotoUtils$1;
.super Ljava/lang/Object;
.source "PhotoUtils.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PhotoUtils;->submitPhoto(Landroid/webkit/WebView;Lcom/jingdong/app/mall/WebActivity;Lcom/jingdong/common/entity/DiscussImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$webActivity:Lcom/jingdong/app/mall/WebActivity;

.field private final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/WebActivity;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$1;->val$webActivity:Lcom/jingdong/app/mall/WebActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$1;->val$webView:Landroid/webkit/WebView;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 7
    .parameter "httpResponse"

    .prologue
    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, imageUrl:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    .line 152
    .local v4, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 156
    .local v3, jsonArrayResult:Lorg/json/JSONArray;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, code:Ljava/lang/String;
    const-string v5, "urls"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    .line 160
    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 170
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const-string v5, "0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 171
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 172
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$1;->val$webActivity:Lcom/jingdong/app/mall/WebActivity;

    iget-object v6, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$1;->val$webView:Landroid/webkit/WebView;

    invoke-static {v5, v6, v2}, Lcom/jingdong/app/mall/personel/PhotoUtils;->updateWebView(Lcom/jingdong/app/mall/WebActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 175
    :cond_1
    return-void

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$1;->val$webActivity:Lcom/jingdong/app/mall/WebActivity;

    new-instance v1, Lcom/jingdong/app/mall/personel/PhotoUtils$1$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$1;->val$webActivity:Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/personel/PhotoUtils$1$1;-><init>(Lcom/jingdong/app/mall/personel/PhotoUtils$1;Lcom/jingdong/app/mall/WebActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/WebActivity;->post(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 131
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PhotoUtils$1;->val$webActivity:Lcom/jingdong/app/mall/WebActivity;

    new-instance v1, Lcom/jingdong/app/mall/personel/PhotoUtils$1$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/PhotoUtils$1$2;-><init>(Lcom/jingdong/app/mall/personel/PhotoUtils$1;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/WebActivity;->post(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method
