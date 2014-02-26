.class Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;
.super Lcom/jingdong/common/utils/NewNextPageLoader;
.source "MyCommentDiscussActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->getCommentDiscussList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"
    .parameter "$anonymous5"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 223
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/common/utils/NewNextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->params:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    .locals 1
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

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
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 227
    new-instance v0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    const v4, 0x7f030042

    new-array v5, v6, [Ljava/lang/String;

    const-string v1, "imageurl"

    aput-object v1, v5, v3

    new-array v6, v6, [I

    const v1, 0x7f0c01aa

    aput v1, v6, v3

    move-object v1, p0

    move-object v3, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;-><init>(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[ILcom/jingdong/common/frame/IMyActivity;)V

    return-object v0
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "postion"

    .prologue
    .line 351
    return-void
.end method

.method protected showError()V
    .locals 0

    .prologue
    .line 324
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
    .line 328
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 332
    .local v2, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v4, "totalPage"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, count:Ljava/lang/String;
    const/4 v1, 0x0

    .line 335
    .local v1, countInt:I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 338
    :goto_0
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    iget-object v4, v4, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->nextPageLoader:Lcom/jingdong/common/utils/NewNextPageLoader;

    invoke-virtual {v4, v1}, Lcom/jingdong/common/utils/NewNextPageLoader;->setTotalPageCount(I)V

    .line 339
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    if-eqz v2, :cond_0

    .line 341
    const-string v4, "orderWares"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v4, v5}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 344
    :cond_0
    return-object v3

    .line 336
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    :catch_0
    move-exception v4

    goto :goto_0
.end method
