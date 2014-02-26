.class Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$3;
.super Ljava/lang/Object;
.source "MyBackAndExchangeActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->queryBackExchange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 198
    .local v1, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v1, :cond_1

    .line 199
    const-string v3, "subItemList"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 203
    .local v0, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->backList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->access$0(Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->backList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->access$0(Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 206
    :cond_0
    invoke-static {v0}, Lcom/jingdong/common/entity/BackExchange;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;

    move-result-object v2

    .line 207
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BackExchange;>;"
    if-eqz v2, :cond_1

    .line 208
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->backList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->access$0(Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0}, Lcom/jingdong/common/entity/BackExchange;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 209
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;

    #calls: Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->createListView()V
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->access$1(Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;)V

    .line 214
    .end local v0           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BackExchange;>;"
    :cond_1
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 185
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 2
    .parameter "httpSettingParams"

    .prologue
    .line 179
    const-string v0, "type"

    const-string v1, "ReturnBack"

    invoke-interface {p1, v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    return-void
.end method
