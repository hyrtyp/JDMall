.class Lcom/jingdong/app/mall/product/SearchFilterActivity$8;
.super Ljava/lang/Object;
.source "SearchFilterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/SearchFilterActivity;->showSearchFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$8;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$8;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$34(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$8;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$35(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 688
    return-void
.end method
