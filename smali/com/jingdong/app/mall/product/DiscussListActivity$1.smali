.class Lcom/jingdong/app/mall/product/DiscussListActivity$1;
.super Lcom/jingdong/common/utils/NextPageLoader;
.source "DiscussListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/DiscussListActivity;->showOrderCommentList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/DiscussListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/DiscussListActivity;Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/DiscussListActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussListActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 102
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;)V

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
    const/4 v3, 0x3

    .line 120
    new-instance v0, Lcom/jingdong/app/mall/product/DiscussListActivity$1$1;

    .line 123
    const v4, 0x7f03004f

    .line 124
    new-array v5, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 125
    const-string v2, "title"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    .line 126
    const-string v2, "creationTime"

    aput-object v2, v5, v1

    const/4 v1, 0x2

    .line 127
    const-string v2, "replyCount"

    aput-object v2, v5, v1

    .line 129
    new-array v6, v3, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    .line 120
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/product/DiscussListActivity$1$1;-><init>(Lcom/jingdong/app/mall/product/DiscussListActivity$1;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-object v0

    .line 129
    nop

    :array_0
    .array-data 0x4
        0xd8t 0x1t 0xct 0x7ft
        0xd9t 0x1t 0xct 0x7ft
        0xdat 0x1t 0xct 0x7ft
    .end array-data
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "postion"

    .prologue
    .line 158
    return-void
.end method

.method protected showError()V
    .locals 0

    .prologue
    .line 152
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
    .line 106
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 108
    .local v1, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_start_0
    const-string v2, "orderCommentList"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jingdong/common/entity/OrderComment;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 114
    :goto_0
    return-object v2

    .line 109
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Lorg/json/JSONException;
    const/4 v2, 0x0

    goto :goto_0
.end method
