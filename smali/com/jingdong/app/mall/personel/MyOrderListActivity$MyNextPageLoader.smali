.class public Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;
.super Lcom/jingdong/common/utils/NextPageLoader;
.source "MyOrderListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/MyOrderListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyNextPageLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AbsListView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "myActivity"
    .parameter "listView"
    .parameter "loadingView"
    .parameter "functionId"
    .parameter "params"
    .parameter "noData"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 268
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 269
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->setPageSize(I)V

    .line 270
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->mInflater:Landroid/view/LayoutInflater;

    .line 271
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderListActivity;
    .locals 1
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

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

    .line 275
    move-object v7, p2

    .line 276
    .local v7, tmView:Landroid/widget/AdapterView;
    new-instance v0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;

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

    invoke-direct/range {v0 .. v7}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[ILandroid/widget/AdapterView;)V

    .line 456
    .local v0, mySimpleAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    new-instance v1, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$2;

    new-instance v2, Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;

    invoke-direct {v2}, Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$2;-><init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->setViewBinder(Lcom/jingdong/common/utils/SubViewBinder;)V

    .line 544
    return-object v0
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "postion"

    .prologue
    .line 601
    return-void
.end method

.method protected showError()V
    .locals 0

    .prologue
    .line 549
    return-void
.end method

.method protected toList(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Ljava/util/ArrayList;
    .locals 5
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
    .line 553
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 557
    .local v1, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const/4 v2, 0x0

    .line 560
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    :try_start_0
    const-string v3, "orderList"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 564
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->adapterView:Landroid/widget/AdapterView;

    if-eqz v3, :cond_1

    .line 565
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->adapterView:Landroid/widget/AdapterView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 566
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    const/4 v4, 0x1

    #setter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->isShowTextView:Z
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderListActivity;Z)V

    .line 567
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    #calls: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->showVisibleCustomView()V
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$3(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)V

    .line 581
    :cond_1
    :goto_0
    return-object v2

    .line 569
    :cond_2
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    new-instance v4, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$3;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$3;-><init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
