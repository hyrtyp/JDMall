.class Lcom/jingdong/common/utils/ABTestUtils$1;
.super Ljava/lang/Object;
.source "ABTestUtils.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/ABTestUtils;->initABData(Lcom/jingdong/common/utils/HttpGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "funtionIdMap"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 163
    .local v1, objctPoxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-nez v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "productDetail"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    const-string v2, "productDetailType"

    const-string v3, "productDetail"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    const-string v2, "productDetail"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/common/utils/ABTestUtils;->access$0(Ljava/lang/String;)V

    .line 188
    :cond_1
    :goto_1
    const-string v2, "shakeAbTest"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/common/utils/ABTestUtils;->access$1(Ljava/lang/String;)V

    .line 189
    const-string v2, "shakeAbTest"

    invoke-static {}, Lcom/jingdong/common/utils/ABTestUtils;->access$2()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 173
    :cond_2
    const-string v2, "productDetailBTest"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    const-string v2, "productDetailType"

    const-string v3, "productDetailBTest"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 175
    const-string v2, "productDetailBTest"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/common/utils/ABTestUtils;->access$0(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 154
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 147
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method
