.class Lcom/jingdong/common/utils/NextPageLoader$1;
.super Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;
.source "NextPageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/NextPageLoader;->showNextPage(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/NextPageLoader;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/common/utils/NextPageLoader;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p2, p0, Lcom/jingdong/common/utils/NextPageLoader$1;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    .line 378
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;-><init>(Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;)V

    return-void
.end method


# virtual methods
.method public onScrollFling()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$1;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/common/utils/NextPageLoader;->isFling:Z
    invoke-static {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->access$2(Lcom/jingdong/common/utils/NextPageLoader;Z)V

    .line 392
    return-void
.end method

.method public onScrollIdle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 396
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$1;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    #setter for: Lcom/jingdong/common/utils/NextPageLoader;->isHolding:Z
    invoke-static {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->access$3(Lcom/jingdong/common/utils/NextPageLoader;Z)V

    .line 397
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$1;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    #setter for: Lcom/jingdong/common/utils/NextPageLoader;->isFling:Z
    invoke-static {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->access$2(Lcom/jingdong/common/utils/NextPageLoader;Z)V

    .line 398
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$1;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    #getter for: Lcom/jingdong/common/utils/NextPageLoader;->isFinishing:Z
    invoke-static {v0}, Lcom/jingdong/common/utils/NextPageLoader;->access$0(Lcom/jingdong/common/utils/NextPageLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$1;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    #getter for: Lcom/jingdong/common/utils/NextPageLoader;->hasNotify:Z
    invoke-static {v0}, Lcom/jingdong/common/utils/NextPageLoader;->access$4(Lcom/jingdong/common/utils/NextPageLoader;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$1;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    #setter for: Lcom/jingdong/common/utils/NextPageLoader;->hasNotify:Z
    invoke-static {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->access$5(Lcom/jingdong/common/utils/NextPageLoader;Z)V

    .line 403
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$1;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    #getter for: Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/common/utils/NextPageLoader;->access$6(Lcom/jingdong/common/utils/NextPageLoader;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$1;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    #getter for: Lcom/jingdong/common/utils/NextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/common/utils/NextPageLoader;->access$6(Lcom/jingdong/common/utils/NextPageLoader;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/NextPageLoader$1;->checkLast()V

    goto :goto_0
.end method

.method public onScrollLast()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$1;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    #getter for: Lcom/jingdong/common/utils/NextPageLoader;->isFinishing:Z
    invoke-static {v0}, Lcom/jingdong/common/utils/NextPageLoader;->access$0(Lcom/jingdong/common/utils/NextPageLoader;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$1;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/NextPageLoader;->isLoadedLastPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$1;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    #calls: Lcom/jingdong/common/utils/NextPageLoader;->tryShowNextPage()V
    invoke-static {v0}, Lcom/jingdong/common/utils/NextPageLoader;->access$1(Lcom/jingdong/common/utils/NextPageLoader;)V

    goto :goto_0
.end method
