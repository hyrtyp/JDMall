.class Lcom/jingdong/app/mall/home/FloorProductListActivity$4;
.super Ljava/lang/Object;
.source "FloorProductListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/FloorProductListActivity;->setOnItemClick(Landroid/view/View;Lcom/jingdong/common/entity/Product;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/FloorProductListActivity;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$4;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$4;->val$product:Lcom/jingdong/common/entity/Product;

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 468
    iget-object v6, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$4;->val$product:Lcom/jingdong/common/entity/Product;

    if-eqz v6, :cond_1

    .line 469
    const/4 v4, 0x0

    .line 470
    .local v4, sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    iget-object v6, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$4;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->comeFrom:Ljava/lang/String;
    invoke-static {v6}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$22(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "home"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 471
    new-instance v4, Lcom/jingdong/common/entity/SourceEntity;

    .end local v4           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    const-string v6, "promotionProductListFromHome"

    iget-object v7, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$4;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->activityId:Ljava/lang/String;
    invoke-static {v7}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$23(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .restart local v4       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$4;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    iget-object v7, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$4;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v7}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v4}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V

    .line 503
    .end local v4           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    :cond_1
    return-void

    .line 472
    .restart local v4       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    :cond_2
    iget-object v6, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$4;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->comeFrom:Ljava/lang/String;
    invoke-static {v6}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$22(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "category"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 473
    new-instance v4, Lcom/jingdong/common/entity/SourceEntity;

    .end local v4           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    const-string v6, "promotionProductListFromCategory"

    iget-object v7, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$4;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->activityId:Ljava/lang/String;
    invoke-static {v7}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$23(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .restart local v4       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$4;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->comeFrom:Ljava/lang/String;
    invoke-static {v6}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$22(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "salse"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 475
    new-instance v4, Lcom/jingdong/common/entity/SourceEntity;

    .end local v4           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    const-string v6, "promotionProductListFromSlideScreen"

    iget-object v7, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$4;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->activityId:Ljava/lang/String;
    invoke-static {v7}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$23(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .restart local v4       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    goto :goto_0

    :cond_4
    const-string v6, "m_destination"

    iget-object v7, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$4;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->comeFrom:Ljava/lang/String;
    invoke-static {v7}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$22(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 477
    new-instance v4, Lcom/jingdong/common/entity/SourceEntity;

    .end local v4           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    const-string v6, "m_destination_page"

    iget-object v7, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$4;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->landPageId:Ljava/lang/String;
    invoke-static {v7}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$24(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .restart local v4       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$4;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->comeFrom:Ljava/lang/String;
    invoke-static {v6}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$22(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "floor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 480
    const-string v5, ""

    .line 483
    .local v5, temp:Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$4;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->tmpJsonString:Ljava/lang/String;
    invoke-static {v6}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$25(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 484
    .local v2, jsonObject:Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 486
    .local v1, iterator:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_6

    .line 498
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :goto_2
    new-instance v4, Lcom/jingdong/common/entity/SourceEntity;

    .end local v4           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    const-string v6, "home_floor"

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$4;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->functionId:Ljava/lang/String;
    invoke-static {v8}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$26(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v4       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    goto/16 :goto_0

    .line 487
    .restart local v1       #iterator:Ljava/util/Iterator;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :cond_6
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 488
    .local v3, key:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 491
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v3           #key:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 495
    .local v0, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$4;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->tmpJsonString:Ljava/lang/String;
    invoke-static {v6}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$25(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method
