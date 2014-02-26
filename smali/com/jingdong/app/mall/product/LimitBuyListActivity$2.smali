.class Lcom/jingdong/app/mall/product/LimitBuyListActivity$2;
.super Ljava/lang/Object;
.source "LimitBuyListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/LimitBuyListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/LimitBuyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$2;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$2;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    #setter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity;->curSelection:I
    invoke-static {v0, p2}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->access$2(Lcom/jingdong/app/mall/product/LimitBuyListActivity;I)V

    .line 110
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 105
    return-void
.end method
