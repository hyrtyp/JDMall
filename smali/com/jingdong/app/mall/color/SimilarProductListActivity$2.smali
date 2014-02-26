.class Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;
.super Ljava/lang/Object;
.source "SimilarProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/color/SimilarProductListActivity;->showError()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;)Lcom/jingdong/app/mall/color/SimilarProductListActivity;
    .locals 1
    .parameter

    .prologue
    .line 432
    iget-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    #getter for: Lcom/jingdong/app/mall/color/SimilarProductListActivity;->errorView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->access$3(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    #getter for: Lcom/jingdong/app/mall/color/SimilarProductListActivity;->errorLoadingBut:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->access$4(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/color/SimilarProductListActivity$2$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity$2$1;-><init>(Lcom/jingdong/app/mall/color/SimilarProductListActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    return-void
.end method
