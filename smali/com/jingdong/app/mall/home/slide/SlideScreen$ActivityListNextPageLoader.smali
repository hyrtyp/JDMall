.class public Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;
.super Lcom/jingdong/common/utils/NextPageLoader;
.source "SlideScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/home/slide/SlideScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityListNextPageLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/home/slide/SlideScreen;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AbsListView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)V
    .locals 9
    .parameter
    .parameter "myActivity"
    .parameter "listView"
    .parameter "loadingView"
    .parameter "functionId"
    .parameter "params"
    .parameter "noData"
    .parameter "localFileCacheTime"

    .prologue
    .line 518
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-wide/from16 v7, p8

    .line 519
    invoke-direct/range {v0 .. v8}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 520
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->setPageSize(I)V

    .line 521
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;)Lcom/jingdong/app/mall/home/slide/SlideScreen;
    .locals 1
    .parameter

    .prologue
    .line 516
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    return-object v0
.end method


# virtual methods
.method protected createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 9
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
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 526
    iget-object v8, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    new-instance v0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$1;

    const v4, 0x7f0300e3

    .line 527
    new-array v5, v2, [Ljava/lang/String;

    const-string v1, "imageUrl"

    aput-object v1, v5, v7

    .line 528
    new-array v6, v2, [I

    const v1, 0x7f0c05c7

    aput v1, v6, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$1;-><init>(Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V

    .line 526
    #setter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v8, v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$1(Lcom/jingdong/app/mall/home/slide/SlideScreen;Lcom/jingdong/common/utils/MySimpleAdapter;)V

    .line 545
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$2(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    new-instance v1, Lcom/jingdong/common/utils/SimpleSubViewBinder;

    new-instance v2, Lcom/jingdong/app/mall/home/slide/SlideScreen$PromotionImageProcessor;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/jingdong/app/mall/home/slide/SlideScreen$PromotionImageProcessor;-><init>(Lcom/jingdong/app/mall/home/slide/SlideScreen$PromotionImageProcessor;)V

    invoke-direct {v1, v2}, Lcom/jingdong/common/utils/SimpleSubViewBinder;-><init>(Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->setViewBinder(Lcom/jingdong/common/utils/SubViewBinder;)V

    .line 546
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$2;-><init>(Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 557
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$2(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    return-object v0
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "postion"

    .prologue
    .line 605
    return-void
.end method

.method protected showError()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->showItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #calls: Lcom/jingdong/app/mall/home/slide/SlideScreen;->reLoad()V
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$6(Lcom/jingdong/app/mall/home/slide/SlideScreen;)V

    .line 565
    :cond_0
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
    .line 569
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 573
    .local v0, cmsActivityListObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    const/4 v1, 0x0

    .line 580
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PromotionMessage;>;"
    :try_start_0
    const-string v2, "activityList"

    .line 582
    .local v2, listKey:Ljava/lang/String;
    iget-object v4, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->element:Lcom/jingdong/common/entity/HomeFloorElement;
    invoke-static {v4}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$7(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/common/entity/HomeFloorElement;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->element:Lcom/jingdong/common/entity/HomeFloorElement;
    invoke-static {v4}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$7(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/common/entity/HomeFloorElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/HomeFloorElement;->isGoTOActvityNoHot()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 583
    const-string v2, "cmsActivityList"

    .line 586
    :cond_0
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    .line 587
    .local v3, mActivityList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/jingdong/common/entity/PromotionMessage;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 588
    iget-object v4, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v4

    new-instance v5, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$3;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$3;-><init>(Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;)V

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    .end local v2           #listKey:Ljava/lang/String;
    .end local v3           #mActivityList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :goto_0
    return-object v1

    .line 594
    :catch_0
    move-exception v4

    goto :goto_0
.end method
