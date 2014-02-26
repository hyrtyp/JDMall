.class abstract Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;
.super Lcom/jingdong/common/utils/NextPageLoader$BaseListener;
.source "NextPageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/NextPageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "OnScrollLastListener"
.end annotation


# instance fields
.field private firstVisibleItem:I

.field final synthetic this$0:Lcom/jingdong/common/utils/NextPageLoader;

.field private totalItemCount:I

.field private visibleItemCount:I


# direct methods
.method private constructor <init>(Lcom/jingdong/common/utils/NextPageLoader;)V
    .locals 1
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jingdong/common/utils/NextPageLoader$BaseListener;-><init>(Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/common/utils/NextPageLoader$BaseListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 678
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;-><init>(Lcom/jingdong/common/utils/NextPageLoader;)V

    return-void
.end method


# virtual methods
.method public checkLast()V
    .locals 2

    .prologue
    .line 710
    iget v0, p0, Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;->firstVisibleItem:I

    iget v1, p0, Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;->visibleItemCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;->totalItemCount:I

    if-ne v0, v1, :cond_0

    .line 711
    invoke-virtual {p0}, Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;->onScrollLast()V

    .line 713
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 686
    iput p2, p0, Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;->firstVisibleItem:I

    .line 687
    iput p3, p0, Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;->visibleItemCount:I

    .line 688
    iput p4, p0, Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;->totalItemCount:I

    .line 689
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v0, p2}, Lcom/jingdong/common/utils/NextPageLoader;->setSelection(I)V

    .line 690
    invoke-super {p0, p1, p2, p3, p4}, Lcom/jingdong/common/utils/NextPageLoader$BaseListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 691
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
    .line 695
    packed-switch p2, :pswitch_data_0

    .line 706
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/jingdong/common/utils/NextPageLoader$BaseListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 707
    return-void

    .line 699
    :pswitch_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;->onScrollFling()V

    goto :goto_0

    .line 702
    :pswitch_2
    invoke-virtual {p0}, Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;->onScrollIdle()V

    goto :goto_0

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
