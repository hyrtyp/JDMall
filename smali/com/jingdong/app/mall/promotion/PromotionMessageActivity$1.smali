.class Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$1;
.super Ljava/lang/Object;
.source "PromotionMessageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->setListenter()V
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
.field final synthetic this$0:Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 100
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 101
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    check-cast v3, Landroid/widget/Adapter;

    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/PromotionMessage;

    .line 102
    .local v2, promotionMessage:Lcom/jingdong/common/entity/PromotionMessage;
    if-eqz v2, :cond_0

    .line 103
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;

    const-class v4, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "content"

    invoke-virtual {v2}, Lcom/jingdong/common/entity/PromotionMessage;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v3, "activityId"

    invoke-virtual {v2}, Lcom/jingdong/common/entity/PromotionMessage;->getActivityId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v3, "catelogyId"

    invoke-virtual {v2}, Lcom/jingdong/common/entity/PromotionMessage;->getCategoryId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v3, "title"

    invoke-virtual {v2}, Lcom/jingdong/common/entity/PromotionMessage;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v3, "landPageId"

    iget-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->landPageId:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->access$0(Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v3, "comeFrom"

    iget-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->comeFrom:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->access$1(Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 115
    const-string v3, "com.360buy:navigationDisplayFlag"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    iget-object v3, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;

    invoke-virtual {v3, v1}, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 120
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
