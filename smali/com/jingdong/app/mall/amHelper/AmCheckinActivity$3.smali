.class Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;
.super Ljava/lang/Object;
.source "AmCheckinActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->doCheckin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;)Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 8
    .parameter "httpResponse"

    .prologue
    .line 219
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 220
    .local v1, jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v6, "sc"

    invoke-virtual {v1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, subcode:Ljava/lang/String;
    const-string v6, "pinType"

    invoke-virtual {v1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, pinType:Ljava/lang/String;
    const-string v6, "name"

    invoke-virtual {v1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, name:Ljava/lang/String;
    const-string v6, "number"

    invoke-virtual {v1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, number:Ljava/lang/String;
    iget-object v6, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    new-instance v7, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3$2;

    invoke-direct {v7, p0, v5, v3}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3$2;-><init>(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v1           #jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #pinType:Ljava/lang/String;
    .end local v5           #subcode:Ljava/lang/String;
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "httpError"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    new-instance v1, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3$1;-><init>(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->post(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 200
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method
