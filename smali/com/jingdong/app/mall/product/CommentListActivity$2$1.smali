.class Lcom/jingdong/app/mall/product/CommentListActivity$2$1;
.super Ljava/lang/Object;
.source "CommentListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/CommentListActivity$2;->onFinish(Lcom/jingdong/common/entity/Product;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/CommentListActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/CommentListActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2$1;->this$1:Lcom/jingdong/app/mall/product/CommentListActivity$2;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$2$1;->this$1:Lcom/jingdong/app/mall/product/CommentListActivity$2;

    #getter for: Lcom/jingdong/app/mall/product/CommentListActivity$2;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/CommentListActivity$2;->access$0(Lcom/jingdong/app/mall/product/CommentListActivity$2;)Lcom/jingdong/app/mall/product/CommentListActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/product/CommentListActivity;->first()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/CommentListActivity;->access$9(Lcom/jingdong/app/mall/product/CommentListActivity;)V

    .line 450
    return-void
.end method
