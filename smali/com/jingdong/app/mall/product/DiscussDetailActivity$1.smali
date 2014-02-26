.class Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;
.super Ljava/lang/Object;
.source "DiscussDetailActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/DiscussDetailActivity;->showOrderCommentDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;)Lcom/jingdong/app/mall/product/DiscussDetailActivity;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 13
    .parameter "httpResponse"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity;->jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->access$0(Lcom/jingdong/app/mall/product/DiscussDetailActivity;Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity;->jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->access$1(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "orderCommentInfo"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v10

    .line 133
    .local v10, jsonOrderComment:Lcom/jingdong/common/utils/JSONObjectProxy;
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity;->jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->access$1(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "imagPath"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v9

    .line 134
    .local v9, jsonImageArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    new-instance v11, Lcom/jingdong/common/entity/OrderComment;

    const/4 v1, 0x1

    invoke-direct {v11, v10, v9, v1}, Lcom/jingdong/common/entity/OrderComment;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Lcom/jingdong/common/utils/JSONArrayPoxy;I)V

    .line 138
    .local v11, orderComment:Lcom/jingdong/common/entity/OrderComment;
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    new-instance v2, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;

    invoke-direct {v2, p0, v11}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$1;-><init>(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;Lcom/jingdong/common/entity/OrderComment;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 204
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    const v2, 0x7f0c01c9

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    .line 206
    .local v12, replyList:Landroid/widget/ListView;
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity;->jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->access$1(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "replyList"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v8

    .line 207
    .local v8, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    const/4 v1, 0x2

    invoke-static {v8, v1}, Lcom/jingdong/common/entity/OrderComment;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 209
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/OrderComment;>;"
    new-instance v0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$2;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    const v4, 0x7f03004c

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "userId"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string v6, "creationTime"

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const-string v6, "content"

    aput-object v6, v5, v1

    const/4 v1, 0x3

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$2;-><init>(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 221
    .local v0, adapter:Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    new-instance v2, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$3;

    invoke-direct {v2, p0, v12, v0}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$3;-><init>(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;Landroid/widget/ListView;Landroid/widget/ListAdapter;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/OrderComment;>;"
    .end local v8           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v9           #jsonImageArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v10           #jsonOrderComment:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v11           #orderComment:Lcom/jingdong/common/entity/OrderComment;
    .end local v12           #replyList:Landroid/widget/ListView;
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v7

    .line 237
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 232
    .end local v7           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0

    .line 209
    :array_0
    .array-data 0x4
        0xd2t 0x1t 0xct 0x7ft
        0xd3t 0x1t 0xct 0x7ft
        0xd4t 0x1t 0xct 0x7ft
    .end array-data
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 248
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 259
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method
