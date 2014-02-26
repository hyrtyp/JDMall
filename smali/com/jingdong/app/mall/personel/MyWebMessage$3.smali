.class Lcom/jingdong/app/mall/personel/MyWebMessage$3;
.super Ljava/lang/Object;
.source "MyWebMessage.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyWebMessage;->setMyMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyWebMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$3;)Lcom/jingdong/app/mall/personel/MyWebMessage;
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 10
    .parameter "httpResponse"

    .prologue
    .line 206
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 207
    .local v2, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v5, "current"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, current:Ljava/lang/String;
    const-string v5, "format"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, format:Ljava/lang/String;
    const-string v5, "msgList"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    invoke-static {v5, v0, v1}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->toListForMyWebMessage(Lcom/jingdong/common/utils/JSONArrayPoxy;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 217
    .local v3, listForMyWebMessage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 218
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    const-string v6, "lasteMessageReadeTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/jingdong/app/mall/personel/MyWebMessage;->putStringToPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->dayIcon:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$14(Lcom/jingdong/app/mall/personel/MyWebMessage;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 231
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    new-instance v6, Lcom/jingdong/app/mall/personel/MyWebMessage$3$2;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/personel/MyWebMessage$3$2;-><init>(Lcom/jingdong/app/mall/personel/MyWebMessage$3;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/personel/MyWebMessage;->post(Ljava/lang/Runnable;)V

    .line 239
    :cond_0
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->list:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$17(Lcom/jingdong/app/mall/personel/MyWebMessage;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 240
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->list:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$17(Lcom/jingdong/app/mall/personel/MyWebMessage;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 241
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->list:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$17(Lcom/jingdong/app/mall/personel/MyWebMessage;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 244
    :cond_1
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    new-instance v6, Lcom/jingdong/app/mall/personel/MyWebMessage$3$3;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/personel/MyWebMessage$3$3;-><init>(Lcom/jingdong/app/mall/personel/MyWebMessage$3;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/personel/MyWebMessage;->post(Ljava/lang/Runnable;)V

    .line 259
    :goto_0
    return-void

    .line 220
    :cond_2
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    const v6, 0x7f0c03a4

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/personel/MyWebMessage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 221
    .local v4, noData:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    new-instance v6, Lcom/jingdong/app/mall/personel/MyWebMessage$3$1;

    invoke-direct {v6, p0, v4}, Lcom/jingdong/app/mall/personel/MyWebMessage$3$1;-><init>(Lcom/jingdong/app/mall/personel/MyWebMessage$3;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/personel/MyWebMessage;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 199
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 263
    return-void
.end method
