.class Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;
.super Ljava/lang/Object;
.source "AmHelperActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->createComponent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private seat:Ljava/lang/String;

.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private urlLoc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->url:Ljava/lang/String;

    .line 259
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->urlLoc:Ljava/lang/String;

    .line 260
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->seat:Ljava/lang/String;

    .line 261
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->type:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->seat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->urlLoc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Lcom/jingdong/app/mall/amHelper/AmHelperActivity;
    .locals 1
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 9
    .parameter "response"

    .prologue
    .line 269
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 270
    .local v2, jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v7, "sc"

    invoke-virtual {v2, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, subcode:Ljava/lang/String;
    const-string v7, "name"

    invoke-virtual {v2, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, name:Ljava/lang/String;
    const-string v7, "number"

    invoke-virtual {v2, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, number:Ljava/lang/String;
    const-string v7, "pin"

    invoke-virtual {v2, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    const-string v7, "tk"

    invoke-virtual {v2, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    const-string v7, "infos"

    invoke-virtual {v2, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    .line 276
    .local v1, jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v1, :cond_0

    .line 277
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    .line 278
    .local v5, objectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v7, "pageType"

    invoke-virtual {v5, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->type:Ljava/lang/String;

    .line 279
    const-string v7, "flowUrl"

    invoke-virtual {v5, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->url:Ljava/lang/String;

    .line 280
    const-string v7, "flowLoc"

    invoke-virtual {v5, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->urlLoc:Ljava/lang/String;

    .line 281
    const-string v7, "seat"

    invoke-virtual {v5, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->seat:Ljava/lang/String;

    .line 283
    .end local v5           #objectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_0
    iget-object v7, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    new-instance v8, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;

    invoke-direct {v8, p0, v3, v4, v6}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;-><init>(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v1           #jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v2           #jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    .end local v6           #subcode:Ljava/lang/String;
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->isLoader:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$7(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;Z)V

    .line 256
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 251
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 337
    return-void
.end method
