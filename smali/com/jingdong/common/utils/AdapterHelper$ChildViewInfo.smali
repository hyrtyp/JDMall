.class Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;
.super Ljava/lang/Object;
.source "AdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/AdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChildViewInfo"
.end annotation


# instance fields
.field private childCount:Ljava/lang/Integer;

.field private childCountWithOutHeaderViews:Ljava/lang/Integer;

.field private firstVisiblePosition:Ljava/lang/Integer;

.field private firstVisiblePositionWithOutHeaderViews:Ljava/lang/Integer;

.field private headerViewsCount:Ljava/lang/Integer;

.field private visibleHeaderViewsCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/Adapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<Landroid/widget/Adapter;>;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->firstVisiblePosition:Ljava/lang/Integer;

    .line 117
    iput-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->childCount:Ljava/lang/Integer;

    .line 119
    iput-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->headerViewsCount:Ljava/lang/Integer;

    .line 121
    iput-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->firstVisiblePositionWithOutHeaderViews:Ljava/lang/Integer;

    .line 122
    iput-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->childCountWithOutHeaderViews:Ljava/lang/Integer;

    .line 123
    iput-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->visibleHeaderViewsCount:Ljava/lang/Integer;

    .line 126
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 127
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->firstVisiblePosition:Ljava/lang/Integer;

    .line 128
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->childCount:Ljava/lang/Integer;

    .line 129
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_1

    .line 130
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->headerViewsCount:Ljava/lang/Integer;

    .line 132
    iget-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->firstVisiblePosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->headerViewsCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->firstVisiblePositionWithOutHeaderViews:Ljava/lang/Integer;

    .line 133
    iget-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->firstVisiblePositionWithOutHeaderViews:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->firstVisiblePositionWithOutHeaderViews:Ljava/lang/Integer;

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->headerViewsCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->firstVisiblePosition:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->visibleHeaderViewsCount:Ljava/lang/Integer;

    .line 138
    iget-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->visibleHeaderViewsCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->childCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->visibleHeaderViewsCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->visibleHeaderViewsCount:Ljava/lang/Integer;

    .line 140
    iget-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->childCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->visibleHeaderViewsCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->childCountWithOutHeaderViews:Ljava/lang/Integer;

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 142
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->visibleHeaderViewsCount:Ljava/lang/Integer;

    .line 143
    iget-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->childCount:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->childCountWithOutHeaderViews:Ljava/lang/Integer;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->firstVisiblePositionWithOutHeaderViews:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->firstVisiblePosition:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->childCountWithOutHeaderViews:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->childCount:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->visibleHeaderViewsCount:Ljava/lang/Integer;

    return-object v0
.end method
