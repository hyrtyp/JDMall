.class Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;
.super Lcom/jingdong/common/utils/NextPageLoader;
.source "CommentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/CommentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentNextPageLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/CommentListActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/product/CommentListActivity;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AbsListView;Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "myActivity"
    .parameter "listView"
    .parameter "loadingView"
    .parameter "functionId"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    .line 225
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;)V

    .line 226
    return-void
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
    const/4 v6, 0x4

    .line 243
    new-instance v0, Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    const v4, 0x7f03003f

    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 244
    const-string v3, "userName"

    aput-object v3, v5, v1

    const/4 v1, 0x1

    .line 245
    const-string v3, "score"

    aput-object v3, v5, v1

    const/4 v1, 0x2

    .line 246
    const-string v3, "insertTime"

    aput-object v3, v5, v1

    const/4 v1, 0x3

    .line 247
    const-string v3, "attribute"

    aput-object v3, v5, v1

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v3, p3

    .line 243
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader$1;-><init>(Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 261
    .local v0, adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    new-instance v1, Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader$2;

    new-instance v2, Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;

    invoke-direct {v2}, Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader$2;-><init>(Lcom/jingdong/app/mall/product/CommentListActivity$CommentNextPageLoader;Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->setViewBinder(Lcom/jingdong/common/utils/SubViewBinder;)V

    .line 275
    return-object v0

    .line 247
    :array_0
    .array-data 0x4
        0x93t 0x1t 0xct 0x7ft
        0x94t 0x1t 0xct 0x7ft
        0x95t 0x1t 0xct 0x7ft
        0x96t 0x1t 0xct 0x7ft
    .end array-data
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "postion"

    .prologue
    .line 286
    return-void
.end method

.method protected showError()V
    .locals 0

    .prologue
    .line 280
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
    .line 230
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 232
    .local v1, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_start_0
    const-string v2, "commentInfoList"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jingdong/common/entity/Comment;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 237
    :goto_0
    return-object v2

    .line 233
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Lorg/json/JSONException;
    const/4 v2, 0x0

    goto :goto_0
.end method
