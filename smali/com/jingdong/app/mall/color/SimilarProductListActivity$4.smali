.class Lcom/jingdong/app/mall/color/SimilarProductListActivity$4;
.super Ljava/lang/Object;
.source "SimilarProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/color/SimilarProductListActivity;->getSimilarProductList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$4;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$4;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    #getter for: Lcom/jingdong/app/mall/color/SimilarProductListActivity;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->access$6(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$4;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    #getter for: Lcom/jingdong/app/mall/color/SimilarProductListActivity;->productAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v1}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->access$7(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 572
    return-void
.end method
