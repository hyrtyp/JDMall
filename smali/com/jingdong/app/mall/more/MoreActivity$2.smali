.class Lcom/jingdong/app/mall/more/MoreActivity$2;
.super Ljava/lang/Object;
.source "MoreActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/MoreActivity;->queryPaperAndRecommend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/MoreActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/MoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/MoreActivity$2;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 567
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 571
    .local v1, jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v1, :cond_0

    .line 573
    const-string v3, "contentList"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 575
    .local v0, array:Lcom/jingdong/common/utils/JSONArrayPoxy;
    const/4 v2, 0x0

    .line 576
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeLayout;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 577
    invoke-static {v0}, Lcom/jingdong/common/entity/HomeLayout;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;

    move-result-object v2

    .line 578
    iget-object v3, p0, Lcom/jingdong/app/mall/more/MoreActivity$2;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    #calls: Lcom/jingdong/app/mall/more/MoreActivity;->addContentList(Ljava/util/ArrayList;)V
    invoke-static {v3, v2}, Lcom/jingdong/app/mall/more/MoreActivity;->access$10(Lcom/jingdong/app/mall/more/MoreActivity;Ljava/util/ArrayList;)V

    .line 582
    .end local v0           #array:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeLayout;>;"
    :cond_0
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 563
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 558
    return-void
.end method
