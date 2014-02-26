.class Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$1;
.super Ljava/lang/Object;
.source "ImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$1;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 476
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$1;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->mActivity:Lcom/jingdong/app/mall/product/ImageActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ImageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$1;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->isLoading:Z

    .line 480
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$1;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$1;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$1;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4$1;->this$2:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;

    #getter for: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->this$1:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;->access$0(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment$4;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->setContentShown(ZZZ)V
    invoke-static {v0, v2, v2, v2}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->access$1(Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;ZZZ)V

    goto :goto_0
.end method
