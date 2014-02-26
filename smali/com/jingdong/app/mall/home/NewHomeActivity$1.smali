.class Lcom/jingdong/app/mall/home/NewHomeActivity$1;
.super Ljava/lang/Object;
.source "NewHomeActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/NewHomeActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/NewHomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$1;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/home/NewHomeActivity$1;)Lcom/jingdong/app/mall/home/NewHomeActivity;
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$1;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 6
    .parameter "httpResponse"

    .prologue
    .line 262
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 263
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 264
    .local v2, jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v4, "floorTemps"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    .line 265
    .local v3, tempList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    const-string v4, "currentTime"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/jingdong/app/mall/home/NewHomeActivity;->currentTime:Ljava/lang/String;

    .line 266
    invoke-static {v3}, Lcom/jingdong/common/entity/HomeFloorModel;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 269
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeFloorModel;>;"
    iget-object v4, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$1;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity;->modelGroupUtil:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;
    invoke-static {v4}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$2(Lcom/jingdong/app/mall/home/NewHomeActivity;)Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->isCacheBack()Z

    move-result v1

    .line 271
    .local v1, isCacheBack:Z
    iget-object v4, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$1;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    new-instance v5, Lcom/jingdong/app/mall/home/NewHomeActivity$1$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/jingdong/app/mall/home/NewHomeActivity$1$1;-><init>(Lcom/jingdong/app/mall/home/NewHomeActivity$1;Ljava/util/ArrayList;Z)V

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/home/NewHomeActivity;->post(Ljava/lang/Runnable;)V

    .line 279
    .end local v0           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeFloorModel;>;"
    .end local v1           #isCacheBack:Z
    .end local v2           #jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v3           #tempList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_0
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 284
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/app/mall/home/NewHomeActivity;->currentTime:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$1;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    new-instance v1, Lcom/jingdong/app/mall/home/NewHomeActivity$1$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/home/NewHomeActivity$1$2;-><init>(Lcom/jingdong/app/mall/home/NewHomeActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/home/NewHomeActivity;->post(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 305
    return-void
.end method
