.class Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$3;
.super Ljava/lang/Object;
.source "DiscussDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;

.field private final synthetic val$adapter:Landroid/widget/ListAdapter;

.field private final synthetic val$replyList:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;Landroid/widget/ListView;Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$3;->this$1:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$3;->val$replyList:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$3;->val$adapter:Landroid/widget/ListAdapter;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 225
    iget-object v0, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$3;->this$1:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->access$0(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;)Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity;->detailHeadContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->access$7(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 226
    iget-object v0, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$3;->val$replyList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$3;->this$1:Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->this$0:Lcom/jingdong/app/mall/product/DiscussDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;->access$0(Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;)Lcom/jingdong/app/mall/product/DiscussDetailActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/DiscussDetailActivity;->detailHeadContainer:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->access$7(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 227
    iget-object v0, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$3;->val$replyList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1$3;->val$adapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    return-void
.end method
