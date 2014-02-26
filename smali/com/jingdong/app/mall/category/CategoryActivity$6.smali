.class Lcom/jingdong/app/mall/category/CategoryActivity$6;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 399
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->initIconRight(Landroid/view/View;)V
    invoke-static {v1, p2}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$38(Lcom/jingdong/app/mall/category/CategoryActivity;Landroid/view/View;)V

    .line 400
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->initSubListLeft(Landroid/view/View;)V
    invoke-static {v1, p2}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$39(Lcom/jingdong/app/mall/category/CategoryActivity;Landroid/view/View;)V

    .line 403
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$7(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Catelogy;

    .line 404
    .local v0, catelogy:Lcom/jingdong/common/entity/Catelogy;
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Catelogy;->getcId()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/category/CategoryActivity;->categoryId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$40(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mTitleView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$41(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Catelogy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CategoryActivity2"

    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->categoryId:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$0(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/category/CategoryActivity;->getFirstCategoryParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #setter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListSelectedItemPosition:I
    invoke-static {v1, p3}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$42(Lcom/jingdong/app/mall/category/CategoryActivity;I)V

    .line 414
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->computeMainListSelectedItemCenterY()V
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$36(Lcom/jingdong/app/mall/category/CategoryActivity;)V

    .line 416
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mShowLevel:I
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$25(Lcom/jingdong/app/mall/category/CategoryActivity;)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 418
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    const/4 v2, 0x3

    #setter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mShowState:I
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$27(Lcom/jingdong/app/mall/category/CategoryActivity;I)V

    .line 421
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->screenshotsAll()V
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$32(Lcom/jingdong/app/mall/category/CategoryActivity;)V

    .line 424
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    const/4 v2, 0x2

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->readyCorrectAnimation(I)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$28(Lcom/jingdong/app/mall/category/CategoryActivity;I)V

    .line 432
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$10(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 433
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mSubAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$11(Lcom/jingdong/app/mall/category/CategoryActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 434
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->categoryId:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$0(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->loadCategory(Ljava/lang/String;I)V
    invoke-static {v1, v2, v5}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$44(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;I)V

    .line 435
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->categoryId:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$0(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->loadCategoryPromotions(Ljava/lang/String;I)V
    invoke-static {v1, v2, v5}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$45(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;I)V

    .line 436
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->hidePromotionsImage()V
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$46(Lcom/jingdong/app/mall/category/CategoryActivity;)V

    .line 437
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    const-string v2, "0"

    #setter for: Lcom/jingdong/app/mall/category/CategoryActivity;->promotionId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$2(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    const-string v2, ""

    #setter for: Lcom/jingdong/app/mall/category/CategoryActivity;->promotionName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$3(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;)V

    .line 439
    return-void

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->setupMainListChildView()V
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$43(Lcom/jingdong/app/mall/category/CategoryActivity;)V

    .line 429
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$6;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mStageDrawable:Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$31(Lcom/jingdong/app/mall/category/CategoryActivity;)Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->invalidateSelf()V

    goto :goto_0
.end method
