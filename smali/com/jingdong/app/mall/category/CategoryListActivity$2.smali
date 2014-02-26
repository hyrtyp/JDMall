.class Lcom/jingdong/app/mall/category/CategoryListActivity$2;
.super Landroid/database/DataSetObserver;
.source "CategoryListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryListActivity;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$2;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    .line 151
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$2;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->dataList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$4(Lcom/jingdong/app/mall/category/CategoryListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$2;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->listEmptyView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$8(Lcom/jingdong/app/mall/category/CategoryListActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$2;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->listEmptyView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$8(Lcom/jingdong/app/mall/category/CategoryListActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
