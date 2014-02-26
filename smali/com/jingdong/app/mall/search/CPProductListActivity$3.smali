.class Lcom/jingdong/app/mall/search/CPProductListActivity$3;
.super Ljava/lang/Object;
.source "CPProductListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/search/CPProductListActivity;->initData()V
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
.field final synthetic this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/search/CPProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/search/CPProductListActivity$3;->this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 92
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, obj:Ljava/lang/Object;
    instance-of v2, v0, Lcom/jingdong/common/entity/Product;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 94
    check-cast v1, Lcom/jingdong/common/entity/Product;

    .line 95
    .local v1, product:Lcom/jingdong/common/entity/Product;
    if-eqz v1, :cond_0

    .line 96
    iget-object v2, p0, Lcom/jingdong/app/mall/search/CPProductListActivity$3;->this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v4

    .line 97
    new-instance v5, Lcom/jingdong/common/entity/SourceEntity;

    const-string v6, "visualSearch"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {v2, v3, v4, v5}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V

    .line 100
    .end local v1           #product:Lcom/jingdong/common/entity/Product;
    :cond_0
    return-void
.end method
