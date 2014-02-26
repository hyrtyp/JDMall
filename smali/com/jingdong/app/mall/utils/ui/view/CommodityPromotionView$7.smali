.class Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;
.super Ljava/lang/Object;
.source "CommodityPromotionView.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->getActivities(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

.field private final synthetic val$listener:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->val$listener:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;)Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;
    .locals 1
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    return-object v0
.end method

.method private reLoadData()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 509
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isOnlyNetData:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$15(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isOnlyNetData:Z
    invoke-static {v1, v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$21(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V

    .line 511
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->getActivities()V

    .line 514
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 7
    .parameter "httpResponse"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$13(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7$3;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isActivityLoader:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$22(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V

    .line 533
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    const-string v1, "activityList"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    .line 534
    .local v6, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v6, :cond_1

    .line 535
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    const/4 v1, 0x0

    invoke-static {v6, v1}, Lcom/jingdong/common/entity/Commercial;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    .line 536
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v0, v0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialCache:Ljava/util/HashMap;

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->val$listener:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v1, v1, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;->onSyncronizotionParams(Ljava/util/ArrayList;)V

    .line 543
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v2, v2, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v3, v3, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialsList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/Commercial;

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$13(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->val$listener:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;

    #calls: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->getActivitesImage(ILjava/util/ArrayList;Lcom/jingdong/common/entity/Commercial;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;)V
    invoke-static/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$14(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;ILjava/util/ArrayList;Lcom/jingdong/common/entity/Commercial;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->val$listener:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;

    invoke-interface {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;->onFinish()V

    .line 556
    .end local v6           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :goto_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->reLoadData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    :cond_2
    return-void

    .line 548
    :catch_0
    move-exception v0

    .line 553
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->val$listener:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;

    invoke-interface {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;->onFinish()V

    goto :goto_0

    .line 552
    :catchall_0
    move-exception v0

    .line 553
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->val$listener:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;

    invoke-interface {v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;->onFinish()V

    .line 554
    throw v0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->reLoadData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isOnlyNetData:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$15(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isActivityLoader:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$16(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$13(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 492
    :cond_2
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/MyApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7$2;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 467
    return-void
.end method
