.class Lcom/jingdong/app/mall/more/HistoryListActivity$2;
.super Lcom/jingdong/common/utils/NextPageLoader;
.source "HistoryListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/HistoryListActivity;->getWareInfoList(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/HistoryListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/HistoryListActivity;Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$2;->this$0:Lcom/jingdong/app/mall/more/HistoryListActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 206
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/HistoryListActivity$2;)Lcom/jingdong/app/mall/more/HistoryListActivity;
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$2;->this$0:Lcom/jingdong/app/mall/more/HistoryListActivity;

    return-object v0
.end method


# virtual methods
.method protected createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 7
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
    const/4 v6, 0x3

    .line 224
    new-instance v0, Lcom/jingdong/app/mall/more/HistoryListActivity$2$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$2;->this$0:Lcom/jingdong/app/mall/more/HistoryListActivity;

    .line 225
    const v4, 0x7f0300e0

    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "imageurl"

    aput-object v3, v5, v1

    const/4 v1, 0x1

    .line 226
    const-string v3, "name"

    aput-object v3, v5, v1

    const/4 v1, 0x2

    const-string v3, "adword"

    aput-object v3, v5, v1

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v3, p3

    .line 224
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/more/HistoryListActivity$2$1;-><init>(Lcom/jingdong/app/mall/more/HistoryListActivity$2;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-object v0

    .line 226
    :array_0
    .array-data 0x4
        0xb1t 0x0t 0xct 0x7ft
        0xb6t 0x0t 0xct 0x7ft
        0x74t 0x1t 0xct 0x7ft
    .end array-data
.end method

.method protected handleParamsBeforeLoading()V
    .locals 6

    .prologue
    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$2;->params:Lorg/json/JSONObject;

    const-string v2, "wareId"

    .line 214
    iget-object v3, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$2;->this$0:Lcom/jingdong/app/mall/more/HistoryListActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$2;->pageNum:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$2;->pageSize:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/jingdong/app/mall/more/HistoryListActivity;->getProductIdArrayStr(II)Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "postion"

    .prologue
    .line 323
    return-void
.end method

.method protected showError()V
    .locals 0

    .prologue
    .line 301
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
    .line 305
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 308
    .local v1, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_start_0
    const-string v2, "wareInfoList"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    .line 309
    const/4 v3, 0x1

    .line 307
    invoke-static {v2, v3}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 315
    :goto_0
    return-object v2

    .line 310
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Lorg/json/JSONException;
    const/4 v2, 0x0

    goto :goto_0
.end method
