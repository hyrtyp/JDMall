.class Lcom/jingdong/app/mall/product/CommentListActivity$2;
.super Ljava/lang/Object;
.source "CommentListActivity.java"

# interfaces
.implements Lcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/CommentListActivity;->showCommentCount(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/CommentListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/CommentListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/CommentListActivity$2;)Lcom/jingdong/app/mall/product/CommentListActivity;
    .locals 1
    .parameter

    .prologue
    .line 420
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    return-object v0
.end method


# virtual methods
.method public onFinish(Lcom/jingdong/common/entity/Product;IZ)V
    .locals 6
    .parameter "resultProduct"
    .parameter "resultCode"
    .parameter "isSucceed"

    .prologue
    .line 428
    const/4 v2, 0x6

    if-ne p2, v2, :cond_1

    .line 430
    invoke-virtual {p1}, Lcom/jingdong/common/entity/Product;->getCommentCountList()Ljava/util/ArrayList;

    move-result-object v0

    .line 432
    .local v0, commentCountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 433
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 439
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    #getter for: Lcom/jingdong/app/mall/product/CommentListActivity;->commentBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$1(Lcom/jingdong/app/mall/product/CommentListActivity;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "message0"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/product/CommentListActivity;->messageGood:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$2(Lcom/jingdong/app/mall/product/CommentListActivity;Ljava/lang/String;)V

    .line 440
    iget-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    #getter for: Lcom/jingdong/app/mall/product/CommentListActivity;->commentBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$1(Lcom/jingdong/app/mall/product/CommentListActivity;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "message1"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/product/CommentListActivity;->messageMiddle:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$3(Lcom/jingdong/app/mall/product/CommentListActivity;Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    #getter for: Lcom/jingdong/app/mall/product/CommentListActivity;->commentBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$1(Lcom/jingdong/app/mall/product/CommentListActivity;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "message2"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/product/CommentListActivity;->messageBad:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$4(Lcom/jingdong/app/mall/product/CommentListActivity;Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    #getter for: Lcom/jingdong/app/mall/product/CommentListActivity;->commentBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$1(Lcom/jingdong/app/mall/product/CommentListActivity;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "scoreCount0"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/jingdong/app/mall/product/CommentListActivity;->trimIntForString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$5(Lcom/jingdong/app/mall/product/CommentListActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/product/CommentListActivity;->scoreCountGood:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$6(Lcom/jingdong/app/mall/product/CommentListActivity;Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    #getter for: Lcom/jingdong/app/mall/product/CommentListActivity;->commentBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$1(Lcom/jingdong/app/mall/product/CommentListActivity;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "scoreCount1"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/jingdong/app/mall/product/CommentListActivity;->trimIntForString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$5(Lcom/jingdong/app/mall/product/CommentListActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/product/CommentListActivity;->scoreCountCenter:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$7(Lcom/jingdong/app/mall/product/CommentListActivity;Ljava/lang/String;)V

    .line 444
    iget-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    #getter for: Lcom/jingdong/app/mall/product/CommentListActivity;->commentBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$1(Lcom/jingdong/app/mall/product/CommentListActivity;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "scoreCount2"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/jingdong/app/mall/product/CommentListActivity;->trimIntForString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$5(Lcom/jingdong/app/mall/product/CommentListActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/product/CommentListActivity;->scoreCountBad:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$8(Lcom/jingdong/app/mall/product/CommentListActivity;Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    new-instance v3, Lcom/jingdong/app/mall/product/CommentListActivity$2$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/product/CommentListActivity$2$1;-><init>(Lcom/jingdong/app/mall/product/CommentListActivity$2;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/product/CommentListActivity;->post(Ljava/lang/Runnable;)V

    .line 453
    .end local v0           #commentCountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    :cond_1
    return-void

    .line 434
    .restart local v0       #commentCountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    .restart local v1       #i:I
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    #getter for: Lcom/jingdong/app/mall/product/CommentListActivity;->commentBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$1(Lcom/jingdong/app/mall/product/CommentListActivity;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "message"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/CommentCount;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/CommentCount;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v2, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    #getter for: Lcom/jingdong/app/mall/product/CommentListActivity;->commentBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$1(Lcom/jingdong/app/mall/product/CommentListActivity;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "scoreCount"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/CommentCount;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/CommentCount;->getScoreCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
