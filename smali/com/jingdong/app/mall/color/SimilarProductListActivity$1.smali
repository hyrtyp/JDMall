.class Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;
.super Ljava/lang/Object;
.source "SimilarProductListActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/color/SimilarProductListActivity;->getSimilarProduct(Lcom/jingdong/common/entity/JDColorProductModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;)Lcom/jingdong/app/mall/color/SimilarProductListActivity;
    .locals 1
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 7
    .parameter "httpResponse"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 386
    iget-object v3, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    new-instance v4, Lcom/jingdong/app/mall/color/SimilarProductListActivity$1$1;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity$1$1;-><init>(Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 393
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 394
    .local v1, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v1, :cond_3

    .line 398
    const-string v3, "wareInfos"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 399
    .local v2, productList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 400
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    #calls: Lcom/jingdong/app/mall/color/SimilarProductListActivity;->showError()V
    invoke-static {v3}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->access$0(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)V

    .line 423
    .end local v2           #productList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    :goto_0
    return-void

    .line 404
    .restart local v2       #productList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    :cond_1
    move-object v0, v2

    .line 406
    .local v0, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0704d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 407
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 408
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0704d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 409
    move-object v2, v0

    .line 412
    :cond_2
    iget-object v3, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    #calls: Lcom/jingdong/app/mall/color/SimilarProductListActivity;->getSimilarProductList(Ljava/util/ArrayList;)V
    invoke-static {v3, v2}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->access$2(Lcom/jingdong/app/mall/color/SimilarProductListActivity;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v3

    goto :goto_0

    .line 421
    .end local v0           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v2           #productList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    :cond_3
    iget-object v3, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    #calls: Lcom/jingdong/app/mall/color/SimilarProductListActivity;->showError()V
    invoke-static {v3}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->access$0(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    #calls: Lcom/jingdong/app/mall/color/SimilarProductListActivity;->showError()V
    invoke-static {v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->access$0(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)V

    .line 379
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 371
    return-void
.end method
