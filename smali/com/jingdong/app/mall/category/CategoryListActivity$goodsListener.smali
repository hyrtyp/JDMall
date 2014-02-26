.class Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;
.super Ljava/lang/Object;
.source "CategoryListActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/category/CategoryListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "goodsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;)Lcom/jingdong/app/mall/category/CategoryListActivity;
    .locals 1
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 10
    .parameter "httpResponse"

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x1

    .line 280
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "wareInfoList"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v8

    .line 284
    .local v8, jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    const/16 v2, 0x10

    invoke-static {v8, v2}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->goodsList:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$0(Lcom/jingdong/app/mall/category/CategoryListActivity;Ljava/util/ArrayList;)V

    .line 293
    new-instance v0, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    .line 294
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->goodsList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$1(Lcom/jingdong/app/mall/category/CategoryListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    .line 295
    const v4, 0x7f03003a

    .line 296
    new-array v5, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "imageurl"

    aput-object v6, v5, v1

    const-string v1, "name"

    aput-object v1, v5, v7

    const/4 v1, 0x2

    const-string v6, "jdPrice"

    aput-object v6, v5, v1

    .line 297
    new-array v6, v9, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    .line 293
    invoke-direct/range {v0 .. v7}, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener$1;-><init>(Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V

    .line 317
    .local v0, adapter:Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    new-instance v2, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener$2;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener$2;-><init>(Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/category/CategoryListActivity;->post(Ljava/lang/Runnable;)V

    .line 325
    .end local v0           #adapter:Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;
    :cond_0
    return-void

    .line 297
    :array_0
    .array-data 0x4
        0x6at 0x1t 0xct 0x7ft
        0x6bt 0x1t 0xct 0x7ft
        0x6ct 0x1t 0xct 0x7ft
    .end array-data
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 330
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 335
    return-void
.end method
