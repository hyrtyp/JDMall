.class abstract Lcom/jingdong/common/utils/HistoryNextPageLoader$OnScrollLastListener;
.super Ljava/lang/Object;
.source "HistoryNextPageLoader.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/HistoryNextPageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "OnScrollLastListener"
.end annotation


# instance fields
.field private firstVisibleItem:I

.field final synthetic this$0:Lcom/jingdong/common/utils/HistoryNextPageLoader;

.field private totalItemCount:I

.field private visibleItemCount:I


# direct methods
.method private constructor <init>(Lcom/jingdong/common/utils/HistoryNextPageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$OnScrollLastListener;->this$0:Lcom/jingdong/common/utils/HistoryNextPageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/utils/HistoryNextPageLoader;Lcom/jingdong/common/utils/HistoryNextPageLoader$OnScrollLastListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/HistoryNextPageLoader$OnScrollLastListener;-><init>(Lcom/jingdong/common/utils/HistoryNextPageLoader;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 375
    iput p2, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$OnScrollLastListener;->firstVisibleItem:I

    .line 376
    iput p3, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$OnScrollLastListener;->visibleItemCount:I

    .line 377
    iput p4, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$OnScrollLastListener;->totalItemCount:I

    .line 378
    return-void
.end method

.method public abstract onScrollLast()V
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 382
    if-nez p2, :cond_0

    .line 383
    iget v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$OnScrollLastListener;->firstVisibleItem:I

    iget v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$OnScrollLastListener;->visibleItemCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$OnScrollLastListener;->totalItemCount:I

    if-ne v0, v1, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HistoryNextPageLoader$OnScrollLastListener;->onScrollLast()V

    .line 387
    :cond_0
    return-void
.end method
