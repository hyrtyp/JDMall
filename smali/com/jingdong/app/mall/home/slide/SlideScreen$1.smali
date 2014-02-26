.class Lcom/jingdong/app/mall/home/slide/SlideScreen$1;
.super Ljava/lang/Object;
.source "SlideScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/home/slide/SlideScreen;
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
.field final synthetic this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/slide/SlideScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$1;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    .line 192
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
    .line 196
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/CommonUtil;->isCanClick()Z

    move-result v3

    if-nez v3, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 201
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    check-cast v3, Landroid/widget/Adapter;

    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/PromotionMessage;

    .line 202
    .local v2, promotionMessage:Lcom/jingdong/common/entity/PromotionMessage;
    if-eqz v2, :cond_0

    .line 203
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$1;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    const-class v4, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 205
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "content"

    invoke-virtual {v2}, Lcom/jingdong/common/entity/PromotionMessage;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v3, "activityId"

    invoke-virtual {v2}, Lcom/jingdong/common/entity/PromotionMessage;->getActivityId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v3, "catelogyId"

    invoke-virtual {v2}, Lcom/jingdong/common/entity/PromotionMessage;->getCategoryId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v3, "title"

    invoke-virtual {v2}, Lcom/jingdong/common/entity/PromotionMessage;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v3, "comeFrom"

    const-string v4, "salse"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 212
    const-string v3, "com.360buy:navigationDisplayFlag"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    iget-object v3, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$1;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0
.end method
