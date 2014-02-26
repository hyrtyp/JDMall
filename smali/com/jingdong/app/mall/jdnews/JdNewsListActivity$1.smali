.class Lcom/jingdong/app/mall/jdnews/JdNewsListActivity$1;
.super Lcom/jingdong/common/utils/NextPageLoader;
.source "JdNewsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/jdnews/JdNewsListActivity;->showJdNewsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/jdnews/JdNewsListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/jdnews/JdNewsListActivity;Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter "$anonymous3"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/jdnews/JdNewsListActivity$1;->this$0:Lcom/jingdong/app/mall/jdnews/JdNewsListActivity;

    .line 85
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;)V

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
    const/4 v3, 0x2

    .line 105
    new-instance v0, Lcom/jingdong/app/mall/jdnews/JdNewsListActivity$1$1;

    .line 108
    const v4, 0x7f030081

    .line 109
    new-array v5, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 110
    const-string v2, "title"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    .line 111
    const-string v2, "addTime"

    aput-object v2, v5, v1

    .line 113
    new-array v6, v3, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    .line 105
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/jdnews/JdNewsListActivity$1$1;-><init>(Lcom/jingdong/app/mall/jdnews/JdNewsListActivity$1;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-object v0

    .line 113
    :array_0
    .array-data 0x4
        0xd4t 0x2t 0xct 0x7ft
        0xd5t 0x2t 0xct 0x7ft
    .end array-data
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "postion"

    .prologue
    .line 149
    return-void
.end method

.method protected showError()V
    .locals 0

    .prologue
    .line 143
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
    .line 90
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 92
    .local v1, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_start_0
    const-string v2, "jdnewsList"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    .line 93
    const/4 v3, 0x0

    .line 92
    invoke-static {v2, v3}, Lcom/jingdong/common/entity/JdNews;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 98
    :goto_0
    return-object v2

    .line 94
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Lorg/json/JSONException;
    const/4 v2, 0x0

    goto :goto_0
.end method
