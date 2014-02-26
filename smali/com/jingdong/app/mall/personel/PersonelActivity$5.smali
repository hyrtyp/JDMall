.class Lcom/jingdong/app/mall/personel/PersonelActivity$5;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->getOneMonthOrder()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$5;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    .line 995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 1016
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 1020
    .local v0, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v2, "orderList"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1021
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1025
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$5;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->setOrderList(Ljava/util/ArrayList;)V
    invoke-static {v2, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$41(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    .end local v0           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    :cond_0
    :goto_0
    return-void

    .line 1027
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 1005
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 1000
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1037
    return-void
.end method
