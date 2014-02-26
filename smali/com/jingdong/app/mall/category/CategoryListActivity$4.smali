.class Lcom/jingdong/app/mall/category/CategoryListActivity$4;
.super Ljava/lang/Object;
.source "CategoryListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryListActivity;->setEvents()V
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
.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$4;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 205
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    check-cast v3, Landroid/widget/Adapter;

    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/Catelogy;

    .line 206
    .local v1, category:Lcom/jingdong/common/entity/Catelogy;
    if-nez v1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$4;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Catelogy;->getcId()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->lId:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$10(Lcom/jingdong/app/mall/category/CategoryListActivity;Ljava/lang/String;)V

    .line 210
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$4;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Catelogy;->getName()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->cName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$11(Lcom/jingdong/app/mall/category/CategoryListActivity;Ljava/lang/String;)V

    .line 211
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$4;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/category/CategoryListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$4;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    iget-object v6, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$4;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->lId:Ljava/lang/String;
    invoke-static {v6}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$12(Lcom/jingdong/app/mall/category/CategoryListActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/category/CategoryListActivity;->getSecondCategoryParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$4;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    const-class v4, Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v2, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "name"

    iget-object v4, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$4;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->cName:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$13(Lcom/jingdong/app/mall/category/CategoryListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v3, "cid"

    iget-object v4, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$4;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->lId:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$12(Lcom/jingdong/app/mall/category/CategoryListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v3, "levelFirst"

    iget-object v4, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$4;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->levelFirst:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$14(Lcom/jingdong/app/mall/category/CategoryListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v3, "levelSecond"

    iget-object v4, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$4;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->levelSecond:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$15(Lcom/jingdong/app/mall/category/CategoryListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v3, "firstToList"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 228
    const-string v3, "source"

    new-instance v4, Lcom/jingdong/common/entity/SourceEntity;

    const-string v5, "catelogy"

    iget-object v6, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$4;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->lId:Ljava/lang/String;
    invoke-static {v6}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$12(Lcom/jingdong/app/mall/category/CategoryListActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 229
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$4;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    invoke-static {v3, v2}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductListActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
