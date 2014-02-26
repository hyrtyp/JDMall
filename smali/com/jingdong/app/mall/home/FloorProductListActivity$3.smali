.class Lcom/jingdong/app/mall/home/FloorProductListActivity$3;
.super Lcom/jingdong/common/utils/NextPageLoader;
.source "FloorProductListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/FloorProductListActivity;->handleListView(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/FloorProductListActivity;Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 274
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$3;)Lcom/jingdong/app/mall/home/FloorProductListActivity;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    return-object v0
.end method


# virtual methods
.method protected createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 7
    .parameter "myActivity"
    .parameter "adapterView"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/frame/IMyActivity;",
            "Landroid/widget/AdapterView;",
            "Ljava/util/ArrayList",
            "<*>;)",
            "Lcom/jingdong/common/utils/MySimpleAdapter;"
        }
    .end annotation

    .prologue
    .local p3, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    const/4 v1, 0x0

    .line 377
    new-instance v0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$3;

    iget-object v2, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    const v4, 0x7f030062

    new-array v5, v1, [Ljava/lang/String;

    new-array v6, v1, [I

    move-object v1, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$3;-><init>(Lcom/jingdong/app/mall/home/FloorProductListActivity$3;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 441
    .local v0, promotionProductListAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    new-instance v1, Lcom/jingdong/common/utils/SimpleSubViewBinder;

    new-instance v2, Lcom/jingdong/app/mall/home/FloorProductListActivity$PromotionProductListImageProcessor;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/jingdong/app/mall/home/FloorProductListActivity$PromotionProductListImageProcessor;-><init>(Lcom/jingdong/app/mall/home/FloorProductListActivity$PromotionProductListImageProcessor;)V

    invoke-direct {v1, v2}, Lcom/jingdong/common/utils/SimpleSubViewBinder;-><init>(Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->setViewBinder(Lcom/jingdong/common/utils/SubViewBinder;)V

    .line 442
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    new-instance v2, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$4;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$4;-><init>(Lcom/jingdong/app/mall/home/FloorProductListActivity$3;Lcom/jingdong/common/utils/MySimpleAdapter;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 451
    return-object v0
.end method

.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/jingdong/common/utils/NextPageLoader;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    .line 284
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 285
    .local v0, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v0, :cond_0

    .line 287
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    const-string v2, "activityIntro"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mActivityIntro:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$12(Lcom/jingdong/app/mall/home/FloorProductListActivity;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    const-string v2, "share"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mShare:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$13(Lcom/jingdong/app/mall/home/FloorProductListActivity;Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    const-string v2, "shareTitle"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mShareTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$14(Lcom/jingdong/app/mall/home/FloorProductListActivity;Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    const-string v2, "bgColor"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mBgColor:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$15(Lcom/jingdong/app/mall/home/FloorProductListActivity;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    const-string v2, "bannerUrl"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mBannerUrl:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$16(Lcom/jingdong/app/mall/home/FloorProductListActivity;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #calls: Lcom/jingdong/app/mall/home/FloorProductListActivity;->handleBanner()V
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$17(Lcom/jingdong/app/mall/home/FloorProductListActivity;)V

    .line 295
    :cond_0
    return-void
.end method

.method protected onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 360
    invoke-super {p0, p1, p2, p3, p4}, Lcom/jingdong/common/utils/NextPageLoader;->onScroll(Landroid/widget/AbsListView;III)V

    .line 361
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #setter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->curSelection:I
    invoke-static {v0, p2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$19(Lcom/jingdong/app/mall/home/FloorProductListActivity;I)V

    .line 362
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "postion"

    .prologue
    .line 279
    return-void
.end method

.method protected showError()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    new-instance v1, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$2;-><init>(Lcom/jingdong/app/mall/home/FloorProductListActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 356
    return-void
.end method

.method protected toList(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Ljava/util/ArrayList;
    .locals 9
    .parameter "httpResponse"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/HttpGroup$HttpResponse;",
            ")",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x14

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 299
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 303
    .local v1, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    if-eqz v1, :cond_4

    const-string v5, "cmsActivityWareList"

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 305
    const-string v5, "cmsActivityWareList"

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 310
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v7, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->getAllProductList()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->getAllProductList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v7, :cond_3

    .line 311
    :cond_2
    iget-object v5, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    new-instance v6, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1;-><init>(Lcom/jingdong/app/mall/home/FloorProductListActivity$3;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 322
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v3, list2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Lcom/jingdong/common/entity/Product;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_5

    .line 336
    return-object v3

    .line 306
    .end local v0           #i:I
    .end local v3           #list2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Lcom/jingdong/common/entity/Product;>;"
    :cond_4
    if-eqz v1, :cond_0

    const-string v5, "wareInfoList"

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 307
    const-string v5, "wareInfoList"

    invoke-virtual {v1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 324
    .restart local v0       #i:I
    .restart local v3       #list2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Lcom/jingdong/common/entity/Product;>;"
    :cond_5
    const/4 v5, 0x2

    new-array v4, v5, [Lcom/jingdong/common/entity/Product;

    .line 325
    .local v4, products:[Lcom/jingdong/common/entity/Product;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/Product;

    aput-object v5, v4, v8

    .line 326
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_6

    .line 327
    const/4 v5, 0x0

    aput-object v5, v4, v7

    .line 328
    iput-boolean v8, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->isPaging:Z

    .line 332
    :goto_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 330
    :cond_6
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/Product;

    aput-object v5, v4, v7

    goto :goto_2
.end method
