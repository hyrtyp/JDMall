.class Lcom/jingdong/app/mall/personel/PersonelActivity$12;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->getRecomandProduct()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$12;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    .line 1356
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$12;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "wareInfoList"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->jsonRecomandArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$47(Lcom/jingdong/app/mall/personel/PersonelActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 1357
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$12;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->jsonRecomandArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$48(Lcom/jingdong/app/mall/personel/PersonelActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1358
    .local v1, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1359
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$12;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->guessProductlist:Ljava/util/ArrayList;
    invoke-static {v2, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$49(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/util/ArrayList;)V

    .line 1360
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$12;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$12;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->guessProductlist:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$6(Lcom/jingdong/app/mall/personel/PersonelActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$12;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    iget v4, v4, Lcom/jingdong/app/mall/personel/PersonelActivity;->nCurrentIndex:I

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->setRecomandList(Ljava/util/ArrayList;I)V
    invoke-static {v2, v3, v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$17(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/util/ArrayList;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    .end local v1           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    :cond_0
    :goto_0
    return-void

    .line 1363
    :catch_0
    move-exception v0

    .line 1364
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 1375
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 1380
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1348
    return-void
.end method
