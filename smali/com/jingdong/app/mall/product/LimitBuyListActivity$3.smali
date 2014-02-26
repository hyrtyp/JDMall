.class Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;
.super Ljava/lang/Object;
.source "LimitBuyListActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/LimitBuyListActivity;->doMiaoShaList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/LimitBuyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;)Lcom/jingdong/app/mall/product/LimitBuyListActivity;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 15
    .parameter "httpResponse"

    .prologue
    .line 170
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 171
    .local v4, timeMillis:J
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    const-string v1, "miaoShaList"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v9

    .line 172
    .local v9, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, message:Ljava/lang/String;
    iget-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v14, "url"

    invoke-virtual {v1, v14}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity;->url:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->access$3(Lcom/jingdong/app/mall/product/LimitBuyListActivity;Ljava/lang/String;)V

    .line 174
    invoke-static {v9}, Lcom/jingdong/common/entity/MiaoSha;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;

    move-result-object v10

    .line 175
    .local v10, miaoShaList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/MiaoSha;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v3, productList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Product;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_1

    .line 187
    iget-object v14, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    new-instance v0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/product/LimitBuyListActivity$3$1;-><init>(Lcom/jingdong/app/mall/product/LimitBuyListActivity$3;Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {v14, v0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->post(Ljava/lang/Runnable;)V

    .line 200
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #productList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Product;>;"
    .end local v4           #timeMillis:J
    .end local v7           #i:I
    .end local v9           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v10           #miaoShaList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/MiaoSha;>;"
    :cond_0
    :goto_1
    return-void

    .line 178
    .restart local v2       #message:Ljava/lang/String;
    .restart local v3       #productList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Product;>;"
    .restart local v4       #timeMillis:J
    .restart local v7       #i:I
    .restart local v9       #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v10       #miaoShaList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/MiaoSha;>;"
    :cond_1
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jingdong/common/entity/MiaoSha;

    .line 179
    .local v11, ms:Lcom/jingdong/common/entity/MiaoSha;
    invoke-virtual {v11}, Lcom/jingdong/common/entity/MiaoSha;->getWareInfoList()Ljava/util/List;

    move-result-object v13

    .line 180
    .local v13, products:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Product;>;"
    const/4 v8, 0x0

    .local v8, j:I
    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lt v8, v0, :cond_2

    .line 177
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 181
    :cond_2
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jingdong/common/entity/Product;

    .line 182
    .local v12, p:Lcom/jingdong/common/entity/Product;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 183
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 197
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #productList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Product;>;"
    .end local v4           #timeMillis:J
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v9           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v10           #miaoShaList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/MiaoSha;>;"
    .end local v11           #ms:Lcom/jingdong/common/entity/MiaoSha;
    .end local v12           #p:Lcom/jingdong/common/entity/Product;
    .end local v13           #products:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Product;>;"
    :catch_0
    move-exception v6

    .line 198
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 162
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 154
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method
