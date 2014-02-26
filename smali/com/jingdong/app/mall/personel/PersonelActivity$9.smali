.class Lcom/jingdong/app/mall/personel/PersonelActivity$9;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->loadUnreadMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$9;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    .line 1109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$9;)Lcom/jingdong/app/mall/personel/PersonelActivity;
    .locals 1
    .parameter

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$9;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 1124
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "messageCount"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1125
    .local v0, obj:Lorg/json/JSONObject;
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1127
    .local v1, unReadMessageCount:I
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$9;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    new-instance v3, Lcom/jingdong/app/mall/personel/PersonelActivity$9$1;

    invoke-direct {v3, p0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$9$1;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$9;I)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    .end local v0           #obj:Lorg/json/JSONObject;
    .end local v1           #unReadMessageCount:I
    :goto_0
    return-void

    .line 1148
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 1119
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 1114
    return-void
.end method
