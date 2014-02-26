.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$4;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->setProductList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

.field private final synthetic val$layoutParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$4;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$4;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 348
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$4;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mProductListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$7(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 349
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$4;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mProductListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$7(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 350
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 351
    .local v0, childHeight:I
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$4;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mProductListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$7(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    .line 352
    .local v1, dividerHeight:I
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$4;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    add-int v4, v0, v1

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$4;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mProductlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/2addr v4, v5

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 353
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$4;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mProductListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$7(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    .line 356
    .end local v0           #childHeight:I
    .end local v1           #dividerHeight:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return-void
.end method
