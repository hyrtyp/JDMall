.class Lcom/jingdong/app/mall/category/CategoryActivity$5;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryActivity;->setEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$5;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/category/CategoryActivity$5;)Lcom/jingdong/app/mall/category/CategoryActivity;
    .locals 1
    .parameter

    .prologue
    .line 354
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$5;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    return-object v0
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .parameter "listView"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$5;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #setter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListFirstVisibleItem:I
    invoke-static {v0, p2}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$35(Lcom/jingdong/app/mall/category/CategoryActivity;I)V

    .line 364
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$5;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListSelectedItemPosition:I
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$33(Lcom/jingdong/app/mall/category/CategoryActivity;)I

    move-result v0

    if-gt p2, v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$5;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListSelectedItemPosition:I
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$33(Lcom/jingdong/app/mall/category/CategoryActivity;)I

    move-result v0

    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 366
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$5;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->computeMainListSelectedItemCenterY()V
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$36(Lcom/jingdong/app/mall/category/CategoryActivity;)V

    .line 367
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$5;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    new-instance v1, Lcom/jingdong/app/mall/category/CategoryActivity$5$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryActivity$5$1;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->post(Ljava/lang/Runnable;)V

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$5;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListSelectedItemY:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$26(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$5;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListSelectedItemY:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$37(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/Integer;)V

    .line 379
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$5;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    new-instance v1, Lcom/jingdong/app/mall/category/CategoryActivity$5$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryActivity$5$2;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 358
    return-void
.end method
