.class Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1;
.super Ljava/lang/Object;
.source "JdNewsDetailActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;->showJdNewsDetials()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1;->this$0:Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 8
    .parameter "httpResponse"

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    const-string v1, "jdNews"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jingdong/common/entity/JdNews;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v6

    .line 111
    .local v6, jdNewsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdNews;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/JdNews;

    .line 113
    .local v3, jdNews:Lcom/jingdong/common/entity/JdNews;
    iget-object v0, p0, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1;->this$0:Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;

    const v1, 0x7f0c02ce

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 114
    .local v2, jdnewsDetailTitle:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1;->this$0:Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;

    const v1, 0x7f0c02cf

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 115
    .local v4, jdnewsDetailTime:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1;->this$0:Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;

    const v1, 0x7f0c02d1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 117
    .local v5, jdnewsDetailContent:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1;->this$0:Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;

    new-instance v0, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1$1;-><init>(Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1;Landroid/widget/TextView;Lcom/jingdong/common/entity/JdNews;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v7, v0}, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 128
    .end local v2           #jdnewsDetailTitle:Landroid/widget/TextView;
    .end local v3           #jdNews:Lcom/jingdong/common/entity/JdNews;
    .end local v4           #jdnewsDetailTime:Landroid/widget/TextView;
    .end local v5           #jdnewsDetailContent:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 94
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 105
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
