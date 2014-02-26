.class Lcom/jingdong/app/mall/home/PanicBuyingService$2;
.super Ljava/lang/Object;
.source "PanicBuyingService.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/PanicBuyingService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/PanicBuyingService;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/PanicBuyingService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/PanicBuyingService$2;->this$0:Lcom/jingdong/app/mall/home/PanicBuyingService;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 12
    .parameter "httpResponse"

    .prologue
    .line 121
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v8

    const-string v9, "miaoShaList"

    invoke-virtual {v8, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    .line 122
    .local v2, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v2}, Lcom/jingdong/common/entity/MiaoSha;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 123
    .local v3, miaoShaList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/MiaoSha;>;"
    if-nez v3, :cond_0

    .line 153
    iget-object v8, p0, Lcom/jingdong/app/mall/home/PanicBuyingService$2;->this$0:Lcom/jingdong/app/mall/home/PanicBuyingService;

    invoke-virtual {v8}, Lcom/jingdong/app/mall/home/PanicBuyingService;->killSelf()V

    .line 155
    .end local v2           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v3           #miaoShaList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/MiaoSha;>;"
    :goto_0
    return-void

    .line 126
    .restart local v2       #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v3       #miaoShaList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/MiaoSha;>;"
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/jingdong/common/database/table/MS_AlarmTable;->delAll()V

    .line 127
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-lt v0, v8, :cond_1

    .line 153
    iget-object v8, p0, Lcom/jingdong/app/mall/home/PanicBuyingService$2;->this$0:Lcom/jingdong/app/mall/home/PanicBuyingService;

    invoke-virtual {v8}, Lcom/jingdong/app/mall/home/PanicBuyingService;->killSelf()V

    goto :goto_0

    .line 128
    :cond_1
    :try_start_2
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/MiaoSha;

    .line 129
    .local v4, ms:Lcom/jingdong/common/entity/MiaoSha;
    invoke-virtual {v4}, Lcom/jingdong/common/entity/MiaoSha;->getWareInfoList()Ljava/util/List;

    move-result-object v6

    .line 130
    .local v6, products:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Product;>;"
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lt v1, v8, :cond_2

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    :cond_2
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/Product;

    .line 135
    .local v5, product:Lcom/jingdong/common/entity/Product;
    if-nez v5, :cond_4

    .line 130
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 139
    :cond_4
    iget-object v8, p0, Lcom/jingdong/app/mall/home/PanicBuyingService$2;->this$0:Lcom/jingdong/app/mall/home/PanicBuyingService;

    iget-object v9, p0, Lcom/jingdong/app/mall/home/PanicBuyingService$2;->this$0:Lcom/jingdong/app/mall/home/PanicBuyingService;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/jingdong/app/mall/home/PanicBuyingService;->filterIntMax(J)I

    move-result v7

    .local v7, request:I
    invoke-virtual {v8, v7}, Lcom/jingdong/app/mall/home/PanicBuyingService;->contains(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 140
    iget-object v8, p0, Lcom/jingdong/app/mall/home/PanicBuyingService$2;->this$0:Lcom/jingdong/app/mall/home/PanicBuyingService;

    invoke-virtual {v8, v7, v5}, Lcom/jingdong/app/mall/home/PanicBuyingService;->setAlram(ILcom/jingdong/common/entity/Product;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 148
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v3           #miaoShaList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/MiaoSha;>;"
    .end local v4           #ms:Lcom/jingdong/common/entity/MiaoSha;
    .end local v5           #product:Lcom/jingdong/common/entity/Product;
    .end local v6           #products:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Product;>;"
    .end local v7           #request:I
    :catch_0
    move-exception v8

    .line 153
    iget-object v8, p0, Lcom/jingdong/app/mall/home/PanicBuyingService$2;->this$0:Lcom/jingdong/app/mall/home/PanicBuyingService;

    invoke-virtual {v8}, Lcom/jingdong/app/mall/home/PanicBuyingService;->killSelf()V

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v8

    .line 153
    iget-object v9, p0, Lcom/jingdong/app/mall/home/PanicBuyingService$2;->this$0:Lcom/jingdong/app/mall/home/PanicBuyingService;

    invoke-virtual {v9}, Lcom/jingdong/app/mall/home/PanicBuyingService;->killSelf()V

    .line 154
    throw v8
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jingdong/app/mall/home/PanicBuyingService$2;->this$0:Lcom/jingdong/app/mall/home/PanicBuyingService;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/home/PanicBuyingService;->killSelf()V

    .line 112
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 104
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method
