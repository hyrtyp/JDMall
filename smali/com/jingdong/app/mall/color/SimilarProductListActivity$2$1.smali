.class Lcom/jingdong/app/mall/color/SimilarProductListActivity$2$1;
.super Ljava/lang/Object;
.source "SimilarProductListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$2$1;->this$1:Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$2$1;->this$1:Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;

    #getter for: Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;->access$0(Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;)Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/color/SimilarProductListActivity;->loadingViewPb:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->access$1(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$2$1;->this$1:Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;

    #getter for: Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;->access$0(Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;)Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/color/SimilarProductListActivity;->errorView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->access$3(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$2$1;->this$1:Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;

    #getter for: Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;->access$0(Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;)Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/color/SimilarProductListActivity;->reLoad()V
    invoke-static {v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->access$5(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)V

    .line 443
    return-void
.end method
