.class Lcom/jingdong/app/mall/category/CategoryActivity$7;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryActivity;->setEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->promotionsEntry:Landroid/view/ViewGroup;
    invoke-static {v8}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$47(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    if-ne p2, v8, :cond_2

    iget-object v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->promotionId:Ljava/lang/String;
    invoke-static {v8}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$48(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 457
    new-instance v3, Landroid/content/Intent;

    iget-object v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    const-class v9, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 458
    .local v3, intent:Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 459
    .local v2, data:Landroid/os/Bundle;
    iget-object v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->promotionName:Ljava/lang/String;
    invoke-static {v8}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$49(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 460
    iget-object v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    const-string v9, "\u4fc3\u9500\u4e13\u9898"

    #setter for: Lcom/jingdong/app/mall/category/CategoryActivity;->promotionName:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$3(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;)V

    .line 462
    :cond_0
    const-string v8, "comeFrom"

    const-string v9, "category"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v8, "name"

    iget-object v9, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->promotionName:Ljava/lang/String;
    invoke-static {v9}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$49(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v8, "promotion_id"

    iget-object v9, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->promotionId:Ljava/lang/String;
    invoke-static {v9}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$48(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 467
    const-string v8, "com.360buy:navigationDisplayFlag"

    const/4 v9, -0x1

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 469
    iget-object v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-virtual {v8, v3}, Lcom/jingdong/app/mall/category/CategoryActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 532
    .end local v2           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 476
    :cond_2
    iget-object v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListView:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$18(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 477
    .local v7, o:Ljava/lang/Object;
    if-eqz v7, :cond_1

    move-object v1, v7

    .line 481
    check-cast v1, Lcom/jingdong/common/entity/Catelogy;

    .line 483
    .local v1, catelogy:Lcom/jingdong/common/entity/Catelogy;
    invoke-virtual {v1}, Lcom/jingdong/common/entity/Catelogy;->isWantedToEbookM()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Catelogy;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 484
    iget-object v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->ebookNewTip:Landroid/view/View;
    invoke-static {v8}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$50(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->ebookNewTip:Landroid/view/View;
    invoke-static {v8}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$50(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 485
    iget-object v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->ebookNewTip:Landroid/view/View;
    invoke-static {v8}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$50(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 486
    const-string v8, "ebook_guide_tip"

    invoke-static {v8}, Lcom/jingdong/app/mall/utils/CommonUtil;->setIsGuided(Ljava/lang/String;)V

    .line 489
    :cond_3
    iget-object v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Catelogy;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/jingdong/app/mall/utils/JDEbookUtil;->gotoEbookM(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_4
    invoke-virtual {v1}, Lcom/jingdong/common/entity/Catelogy;->isGoToMWithAction()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 495
    iget-object v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Catelogy;->getAction()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v10}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    invoke-static {v8, v9, v10}, Lcom/jingdong/app/mall/utils/CommonUtil;->toBrowserInFrame(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;)V

    goto :goto_0

    .line 499
    :cond_5
    invoke-virtual {v1}, Lcom/jingdong/common/entity/Catelogy;->isGoToMWithTo()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 500
    new-instance v6, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v6}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 501
    .local v6, map:Lcom/jingdong/common/utils/URLParamMap;
    const-string v8, "to"

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Catelogy;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 503
    invoke-virtual {v1}, Lcom/jingdong/common/entity/Catelogy;->isWantedToJDGame()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 504
    const-string v8, "hasApp"

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-static {v10}, Lcom/jingdong/common/utils/JDGameUtil;->checkJDGameHasExist(Landroid/content/Context;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 507
    :cond_6
    iget-object v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    const-string v9, "to"

    invoke-static {v8, v9, v6}, Lcom/jingdong/app/mall/utils/CommonUtil;->toBrowserInFrame(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;)V

    goto/16 :goto_0

    .line 512
    .end local v6           #map:Lcom/jingdong/common/utils/URLParamMap;
    :cond_7
    const-string v5, ""

    .line 513
    .local v5, levelSecond:Ljava/lang/String;
    const-string v4, ""

    .line 515
    .local v4, levelFirst:Ljava/lang/String;
    iget-object v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Catelogy;->getcId()Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/jingdong/app/mall/category/CategoryActivity;->categoryId:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$40(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v1}, Lcom/jingdong/common/entity/Catelogy;->getfId()Ljava/lang/String;

    move-result-object v4

    .line 517
    iget-object v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->categoryId:Ljava/lang/String;
    invoke-static {v8}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$0(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/String;

    move-result-object v5

    .line 518
    new-instance v3, Landroid/content/Intent;

    iget-object v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    const-class v9, Lcom/jingdong/app/mall/category/CategoryListActivity;

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 520
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 521
    .local v0, bundle:Landroid/os/Bundle;
    const-string v8, "name"

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Catelogy;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v8, "levelFirst"

    invoke-virtual {v0, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v8, "levelSecond"

    invoke-virtual {v0, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v8, "cid"

    iget-object v9, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->categoryId:Ljava/lang/String;
    invoke-static {v9}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$0(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v8, "cLevel"

    const/4 v9, 0x2

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 526
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 528
    const-string v8, "com.360buy:navigationFlag"

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 529
    const-string v8, "com.360buy:navigationId"

    const/4 v9, 0x2

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 530
    iget-object v8, p0, Lcom/jingdong/app/mall/category/CategoryActivity$7;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-virtual {v8, v3}, Lcom/jingdong/app/mall/category/CategoryActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
