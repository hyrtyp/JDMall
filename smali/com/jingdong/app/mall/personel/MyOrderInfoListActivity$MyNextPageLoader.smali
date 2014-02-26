.class public Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;
.super Lcom/jingdong/common/utils/NextPageLoader;
.source "MyOrderInfoListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyNextPageLoader"
.end annotation


# instance fields
.field private mFunctionId:Ljava/lang/String;

.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AbsListView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "myActivity"
    .parameter "listView"
    .parameter "loadingView"
    .parameter "functionId"
    .parameter "params"
    .parameter "noData"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 286
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 287
    iput-object p5, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->mFunctionId:Ljava/lang/String;

    .line 288
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->setPageSize(I)V

    .line 289
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->mFunctionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    .locals 1
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    return-object v0
.end method


# virtual methods
.method protected createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 8
    .parameter "myActivity"
    .parameter "view"
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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    move-object v7, p2

    .line 294
    .local v7, tmView:Landroid/widget/AdapterView;
    new-instance v0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;

    const v4, 0x7f0300af

    new-array v5, v3, [Ljava/lang/String;

    const-string v1, "productList"

    aput-object v1, v5, v2

    new-array v6, v3, [I

    const v1, 0x7f0c0432

    aput v1, v6, v2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[ILandroid/widget/AdapterView;)V

    .line 422
    .local v0, mySimpleAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    new-instance v1, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$2;

    new-instance v2, Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;

    invoke-direct {v2}, Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$2;-><init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->setViewBinder(Lcom/jingdong/common/utils/SubViewBinder;)V

    .line 509
    return-object v0
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "postion"

    .prologue
    .line 542
    return-void
.end method

.method protected showError()V
    .locals 0

    .prologue
    .line 515
    return-void
.end method

.method protected toList(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Ljava/util/ArrayList;
    .locals 4
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
    .line 519
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 520
    .local v0, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    const-string v3, "orderList"

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mOrderListJSONArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->access$2(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 521
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mOrderListJSONArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->access$3(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 522
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->adapterView:Landroid/widget/AdapterView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->adapterView:Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 523
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    new-instance v3, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$3;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$3;-><init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->post(Ljava/lang/Runnable;)V

    .line 535
    :cond_1
    return-object v1
.end method
