.class Lcom/jingdong/app/mall/color/SimilarProductListActivity$1$1;
.super Ljava/lang/Object;
.source "SimilarProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$1$1;->this$1:Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$1$1;->this$1:Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;

    #getter for: Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;->access$0(Lcom/jingdong/app/mall/color/SimilarProductListActivity$1;)Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/color/SimilarProductListActivity;->loadingViewPb:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->access$1(Lcom/jingdong/app/mall/color/SimilarProductListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 390
    return-void
.end method
