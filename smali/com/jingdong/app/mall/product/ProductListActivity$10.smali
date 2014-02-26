.class Lcom/jingdong/app/mall/product/ProductListActivity$10;
.super Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;
.source "ProductListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity;->getWareInfoList(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

.field private final synthetic val$functionIdTemp:Ljava/lang/String;

.field private final synthetic val$paramsTemp:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iput-object p7, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->val$paramsTemp:Lorg/json/JSONObject;

    iput-object p8, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->val$functionIdTemp:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 955
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;
    .locals 1
    .parameter

    .prologue
    .line 955
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    return-object v0
.end method


# virtual methods
.method protected createAdapter(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 11
    .parameter "myActivity"
    .parameter "view"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/app/mall/utils/MyActivity;",
            "Landroid/widget/AdapterView;",
            "Ljava/util/ArrayList",
            "<*>;)",
            "Lcom/jingdong/common/utils/MySimpleAdapter;"
        }
    .end annotation

    .prologue
    .local p3, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    const/4 v10, 0x3

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 998
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->loadingViewPb:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$29(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1000
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->isGrid:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$30(Lcom/jingdong/app/mall/product/ProductListActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mGridAdapter:Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$31(Lcom/jingdong/app/mall/product/ProductListActivity;)Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mGridAdapter:Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$31(Lcom/jingdong/app/mall/product/ProductListActivity;)Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;->setData(Ljava/util/List;)V

    .line 1006
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mGridAdapter:Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$31(Lcom/jingdong/app/mall/product/ProductListActivity;)Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;

    move-result-object v7

    .line 1015
    .local v7, adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    :goto_1
    return-object v7

    .line 1004
    .end local v7           #adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    :cond_0
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    new-instance v0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    const v4, 0x7f0300de

    new-array v5, v6, [Ljava/lang/String;

    const-string v3, "imageurl"

    aput-object v3, v5, v9

    new-array v6, v6, [I

    const v3, 0x7f0c00b1

    aput v3, v6, v9

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mGridAdapter:Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;
    invoke-static {v8, v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$32(Lcom/jingdong/app/mall/product/ProductListActivity;Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;)V

    goto :goto_0

    .line 1008
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mListAdapter:Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$33(Lcom/jingdong/app/mall/product/ProductListActivity;)Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1009
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mListAdapter:Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$33(Lcom/jingdong/app/mall/product/ProductListActivity;)Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;->setData(Ljava/util/List;)V

    .line 1013
    :goto_2
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mListAdapter:Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$33(Lcom/jingdong/app/mall/product/ProductListActivity;)Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;

    move-result-object v7

    .restart local v7       #adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    goto :goto_1

    .line 1011
    .end local v7           #adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    :cond_2
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    new-instance v0, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    const v4, 0x7f0300e1

    new-array v5, v10, [Ljava/lang/String;

    const-string v3, "imageurl"

    aput-object v3, v5, v9

    const-string v3, "name"

    aput-object v3, v5, v6

    const/4 v3, 0x2

    const-string v6, "adWord"

    aput-object v6, v5, v3

    new-array v6, v10, [I

    fill-array-data v6, :array_0

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mListAdapter:Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;
    invoke-static {v8, v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$34(Lcom/jingdong/app/mall/product/ProductListActivity;Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;)V

    goto :goto_2

    nop

    :array_0
    .array-data 0x4
        0xb1t 0x0t 0xct 0x7ft
        0xb6t 0x0t 0xct 0x7ft
        0x74t 0x1t 0xct 0x7ft
    .end array-data
.end method

.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 10
    .parameter "httpResponse"

    .prologue
    const/4 v9, 0x0

    .line 1152
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    .line 1155
    :try_start_0
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->val$paramsTemp:Lorg/json/JSONObject;

    const-string v8, "keyword"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$51(Lcom/jingdong/app/mall/product/ProductListActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    :goto_0
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->val$functionIdTemp:Ljava/lang/String;

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$52(Lcom/jingdong/app/mall/product/ProductListActivity;Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 1165
    .local v2, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v2, :cond_2

    .line 1167
    const-string v6, "wareCount"

    invoke-virtual {v2, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1168
    .local v3, productTotalCount:Ljava/lang/Integer;
    const-string v6, "totalCount"

    invoke-virtual {v2, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1169
    .local v5, totalCount:Ljava/lang/Integer;
    const-string v6, "couponStatus"

    invoke-virtual {v2, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1170
    .local v0, couponStatus:Ljava/lang/String;
    const-string v6, "roleIds"

    invoke-virtual {v2, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1171
    .local v4, roleIds:Ljava/lang/String;
    const-string v6, "couponURL"

    invoke-virtual {v2, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1172
    .local v1, couponURL:Ljava/lang/String;
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    const-string v8, "promotionDetail"

    invoke-virtual {v7, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->promotionDetail:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$53(Lcom/jingdong/app/mall/product/ProductListActivity;Ljava/lang/String;)V

    .line 1173
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    const-string v8, "title"

    invoke-virtual {v7, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->commercialTitle:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$54(Lcom/jingdong/app/mall/product/ProductListActivity;Ljava/lang/String;)V

    .line 1175
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_0

    .line 1176
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->productSize:I
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$55(Lcom/jingdong/app/mall/product/ProductListActivity;I)V

    .line 1180
    :cond_0
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->region:Ljava/lang/String;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$56(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->region:Ljava/lang/String;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$56(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1181
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->region:Ljava/lang/String;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$56(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jingdong/app/mall/utils/CommonUtil;->setProvinceIDToSharedPreferences(Ljava/lang/String;)V

    .line 1182
    invoke-static {v9}, Lcom/jingdong/app/mall/utils/CommonUtil;->setCityIDToSharedPreferences(Ljava/lang/String;)V

    .line 1183
    invoke-static {v9}, Lcom/jingdong/app/mall/utils/CommonUtil;->setDistrictIdToSharedPreferences(Ljava/lang/String;)V

    .line 1184
    invoke-static {v9}, Lcom/jingdong/app/mall/utils/CommonUtil;->setTownIdToSharedPreferences(Ljava/lang/String;)V

    .line 1187
    :cond_1
    const-string v6, "search"

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->functionId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1188
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    new-instance v7, Lcom/jingdong/app/mall/product/ProductListActivity$10$5;

    invoke-direct {v7, p0, v3}, Lcom/jingdong/app/mall/product/ProductListActivity$10$5;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity$10;Ljava/lang/Integer;)V

    invoke-virtual {v6, v7}, Lcom/jingdong/app/mall/product/ProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 1297
    .end local v0           #couponStatus:Ljava/lang/String;
    .end local v1           #couponURL:Ljava/lang/String;
    .end local v3           #productTotalCount:Ljava/lang/Integer;
    .end local v4           #roleIds:Ljava/lang/String;
    .end local v5           #totalCount:Ljava/lang/Integer;
    :cond_2
    :goto_1
    return-void

    .line 1200
    .restart local v0       #couponStatus:Ljava/lang/String;
    .restart local v1       #couponURL:Ljava/lang/String;
    .restart local v3       #productTotalCount:Ljava/lang/Integer;
    .restart local v4       #roleIds:Ljava/lang/String;
    .restart local v5       #totalCount:Ljava/lang/Integer;
    :cond_3
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->isFromShortcuts:Z
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$46(Lcom/jingdong/app/mall/product/ProductListActivity;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1201
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    new-instance v7, Lcom/jingdong/app/mall/product/ProductListActivity$10$6;

    invoke-direct {v7, p0, v3}, Lcom/jingdong/app/mall/product/ProductListActivity$10$6;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity$10;Ljava/lang/Integer;)V

    invoke-virtual {v6, v7}, Lcom/jingdong/app/mall/product/ProductListActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1213
    :cond_4
    const-string v6, "searchCatelogy"

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->functionId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1214
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    new-instance v7, Lcom/jingdong/app/mall/product/ProductListActivity$10$7;

    invoke-direct {v7, p0, v3}, Lcom/jingdong/app/mall/product/ProductListActivity$10$7;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity$10;Ljava/lang/Integer;)V

    invoke-virtual {v6, v7}, Lcom/jingdong/app/mall/product/ProductListActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1230
    :cond_5
    const-string v6, "newViewActivity"

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->functionId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1231
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->promotionDetail:Ljava/lang/String;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$57(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1232
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    new-instance v7, Lcom/jingdong/app/mall/product/ProductListActivity$10$8;

    invoke-direct {v7, p0}, Lcom/jingdong/app/mall/product/ProductListActivity$10$8;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity$10;)V

    invoke-virtual {v6, v7}, Lcom/jingdong/app/mall/product/ProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 1238
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1240
    const-string v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1241
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    new-instance v7, Lcom/jingdong/app/mall/product/ProductListActivity$10$9;

    invoke-direct {v7, p0, v4, v1}, Lcom/jingdong/app/mall/product/ProductListActivity$10$9;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity$10;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/jingdong/app/mall/product/ProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 1278
    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->commercialTitle:Ljava/lang/String;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$59(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1279
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->name:Ljava/lang/String;
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$42(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->commercialTitle:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$54(Lcom/jingdong/app/mall/product/ProductListActivity;Ljava/lang/String;)V

    .line 1281
    :cond_8
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    new-instance v7, Lcom/jingdong/app/mall/product/ProductListActivity$10$11;

    invoke-direct {v7, p0, v5}, Lcom/jingdong/app/mall/product/ProductListActivity$10$11;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity$10;Ljava/lang/Integer;)V

    invoke-virtual {v6, v7}, Lcom/jingdong/app/mall/product/ProductListActivity;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 1269
    :cond_9
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    new-instance v7, Lcom/jingdong/app/mall/product/ProductListActivity$10$10;

    invoke-direct {v7, p0}, Lcom/jingdong/app/mall/product/ProductListActivity$10$10;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity$10;)V

    invoke-virtual {v6, v7}, Lcom/jingdong/app/mall/product/ProductListActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1156
    .end local v0           #couponStatus:Ljava/lang/String;
    .end local v1           #couponURL:Ljava/lang/String;
    .end local v2           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v3           #productTotalCount:Ljava/lang/Integer;
    .end local v4           #roleIds:Ljava/lang/String;
    .end local v5           #totalCount:Ljava/lang/Integer;
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method protected onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 959
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/ProductListActivity;->mNextPageLoader:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iget-boolean v1, v1, Lcom/jingdong/app/mall/product/ProductListActivity;->isFromSwitch:Z

    if-nez v1, :cond_0

    .line 960
    add-int v0, p2, p3

    .line 961
    .local v0, currentNum:I
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->productSize:I
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$26(Lcom/jingdong/app/mall/product/ProductListActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 962
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->countNumTv:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$27(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 970
    .end local v0           #currentNum:I
    :cond_0
    :goto_0
    return-void

    .line 964
    .restart local v0       #currentNum:I
    :cond_1
    sub-int v1, v0, p4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/ProductListActivity;->mNextPageLoader:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isLoadedLastPage()Z

    move-result v1

    if-nez v1, :cond_2

    .line 965
    add-int/lit8 v0, v0, -0x1

    .line 967
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->countNumTv:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$27(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->productSize:I
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$26(Lcom/jingdong/app/mall/product/ProductListActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->needShowBottomTip:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$28(Lcom/jingdong/app/mall/product/ProductListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 994
    :goto_0
    :pswitch_0
    return-void

    .line 979
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 988
    :pswitch_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->fadeInSwitchButton()V

    .line 989
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->fadeOutCountNumTv()V

    .line 990
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jingdong/app/mall/product/ProductListActivity;->isFromSwitch:Z

    goto :goto_0

    .line 981
    :pswitch_2
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->fadeOutSwitchButton()V

    .line 982
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->fadeInCountNumTv()V

    goto :goto_0

    .line 979
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "postion"

    .prologue
    .line 1302
    return-void
.end method

.method protected showEmpty(Z)V
    .locals 2
    .parameter "isShow"

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductListActivity$10$1;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/product/ProductListActivity$10$1;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity$10;Z)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 1046
    return-void
.end method

.method protected showError()V
    .locals 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductListActivity$10$2;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity$10;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 1098
    return-void
.end method

.method protected toList(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Ljava/util/ArrayList;
    .locals 6
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
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1105
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 1106
    .local v0, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-nez v0, :cond_1

    .line 1107
    const/4 v1, 0x0

    .line 1147
    :cond_0
    :goto_0
    return-object v1

    .line 1110
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->isFromShortcuts:Z
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$46(Lcom/jingdong/app/mall/product/ProductListActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1111
    const-string v2, "wareInfoList"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1128
    .local v1, productList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    :goto_1
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->errorView:Landroid/view/View;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$44(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 1129
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    new-instance v3, Lcom/jingdong/app/mall/product/ProductListActivity$10$3;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/product/ProductListActivity$10$3;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity$10;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/product/ProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 1137
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->isFirstToList:Z
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$50(Lcom/jingdong/app/mall/product/ProductListActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1138
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/product/ProductListActivity;->mNextPageLoader:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->getPageNum()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v5, :cond_0

    .line 1139
    :cond_3
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    new-instance v3, Lcom/jingdong/app/mall/product/ProductListActivity$10$4;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/product/ProductListActivity$10$4;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity$10;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/product/ProductListActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1112
    .end local v1           #productList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    :cond_4
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->commercialId:Ljava/lang/Long;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$47(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1113
    const-string v2, "activityProducts"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1114
    .restart local v1       #productList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    goto :goto_1

    .line 1116
    .end local v1           #productList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    :cond_5
    const-string v2, "wareInfo"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1118
    .restart local v1       #productList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    const-string v2, "regionIsTrue"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "regionIsTrue"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_2
    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->regionIsTrue:Z
    invoke-static {v4, v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$48(Lcom/jingdong/app/mall/product/ProductListActivity;Z)V

    .line 1119
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    const-string v4, "selfIsTrue"

    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v3, "selfIsTrue"

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_6
    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->selfIsTrue:Z
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$49(Lcom/jingdong/app/mall/product/ProductListActivity;Z)V

    goto/16 :goto_1

    :cond_7
    move v2, v3

    .line 1118
    goto :goto_2
.end method
