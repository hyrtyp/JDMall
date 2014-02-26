.class abstract Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;
.super Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$BaseListener;
.source "NextPageLoader4ProductList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "OnScrollLastListener"
.end annotation


# instance fields
.field private firstVisibleItem:I

.field final synthetic this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

.field private totalItemCount:I

.field private visibleItemCount:I


# direct methods
.method private constructor <init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V
    .locals 1
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$BaseListener;-><init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$BaseListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 780
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;-><init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V

    return-void
.end method


# virtual methods
.method public checkLast()V
    .locals 2

    .prologue
    .line 813
    iget v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;->firstVisibleItem:I

    iget v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;->visibleItemCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;->totalItemCount:I

    if-ne v0, v1, :cond_0

    .line 814
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;->onScrollLast()V

    .line 816
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 788
    iput p2, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;->firstVisibleItem:I

    .line 789
    iput p3, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;->visibleItemCount:I

    .line 790
    iput p4, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;->totalItemCount:I

    .line 791
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    invoke-virtual {v0, p2}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->setSelection(I)V

    .line 792
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    div-int/lit8 v1, p3, 0x2

    add-int/2addr v1, p2

    #setter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->mCurrPos:I
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$2(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;I)V

    .line 793
    invoke-super {p0, p1, p2, p3, p4}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$BaseListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 794
    return-void
.end method

.method public abstract onScrollFling()V
.end method

.method public abstract onScrollIdle()V
.end method

.method public abstract onScrollLast()V
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 798
    packed-switch p2, :pswitch_data_0

    .line 809
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$BaseListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 810
    return-void

    .line 802
    :pswitch_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;->onScrollFling()V

    goto :goto_0

    .line 805
    :pswitch_2
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;->onScrollIdle()V

    goto :goto_0

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
