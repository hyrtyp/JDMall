.class Lcom/jingdong/app/mall/more/AboutActivity$2;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/AboutActivity;->showAboutContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/AboutActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/AboutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/AboutActivity$2;->this$0:Lcom/jingdong/app/mall/more/AboutActivity;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/AboutActivity$2;)Lcom/jingdong/app/mall/more/AboutActivity;
    .locals 1
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/jingdong/app/mall/more/AboutActivity$2;->this$0:Lcom/jingdong/app/mall/more/AboutActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 230
    .local v0, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v2, "iphoneVersion"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, productCopyRight:Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/more/AboutActivity$2;->this$0:Lcom/jingdong/app/mall/more/AboutActivity;

    new-instance v3, Lcom/jingdong/app/mall/more/AboutActivity$2$1;

    invoke-direct {v3, p0, v1}, Lcom/jingdong/app/mall/more/AboutActivity$2$1;-><init>(Lcom/jingdong/app/mall/more/AboutActivity$2;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/more/AboutActivity;->post(Ljava/lang/Runnable;)V

    .line 241
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 221
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 216
    return-void
.end method
