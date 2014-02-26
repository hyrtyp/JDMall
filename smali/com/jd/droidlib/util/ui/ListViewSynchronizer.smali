.class public Lcom/jd/droidlib/util/ui/ListViewSynchronizer;
.super Ljava/lang/Object;
.source "ListViewSynchronizer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private dispatched:Z

.field private final leftListView:Landroid/widget/ListView;

.field private leftViewsHeights:[I

.field private final rightListView:Landroid/widget/ListView;

.field private rightViewsHeights:[I


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Landroid/widget/ListView;)V
    .locals 1
    .parameter "first"
    .parameter "second"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->dispatched:Z

    .line 36
    iput-object p1, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->leftListView:Landroid/widget/ListView;

    .line 37
    iput-object p2, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->rightListView:Landroid/widget/ListView;

    .line 38
    return-void
.end method


# virtual methods
.method public desynchronize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->leftListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    iget-object v0, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->rightListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    iget-object v0, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->leftListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 62
    iget-object v0, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->rightListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 63
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 8
    .parameter "listView"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v7, 0x0

    .line 92
    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 93
    iget-object v4, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->leftListView:Landroid/widget/ListView;

    if-ne p1, v4, :cond_3

    .line 94
    iget-object v4, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->leftViewsHeights:[I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    .line 95
    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 94
    aput v6, v4, v5

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, h:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->rightListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, hi:I
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->leftListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 107
    sub-int v4, v0, v1

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    add-int v3, v4, v5

    .line 108
    .local v3, top:I
    iget-object v4, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->rightListView:Landroid/widget/ListView;

    .line 109
    iget-object v5, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->rightListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    .line 108
    invoke-virtual {v4, v5, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 130
    .end local v0           #h:I
    .end local v1           #hi:I
    .end local v2           #i:I
    .end local v3           #top:I
    :cond_0
    :goto_2
    return-void

    .line 99
    .restart local v0       #h:I
    .restart local v2       #i:I
    :cond_1
    iget-object v4, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->rightViewsHeights:[I

    aget v4, v4, v2

    add-int/2addr v0, v4

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .restart local v1       #hi:I
    :cond_2
    iget-object v4, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->leftViewsHeights:[I

    aget v4, v4, v2

    add-int/2addr v1, v4

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 110
    .end local v0           #h:I
    .end local v1           #hi:I
    .end local v2           #i:I
    :cond_3
    iget-object v4, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->rightListView:Landroid/widget/ListView;

    if-ne p1, v4, :cond_0

    .line 111
    iget-object v4, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->rightViewsHeights:[I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    .line 112
    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 111
    aput v6, v4, v5

    .line 114
    const/4 v0, 0x0

    .line 115
    .restart local v0       #h:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    iget-object v4, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->leftListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    if-lt v2, v4, :cond_4

    .line 119
    const/4 v1, 0x0

    .line 120
    .restart local v1       #hi:I
    const/4 v2, 0x0

    :goto_4
    iget-object v4, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->rightListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    if-lt v2, v4, :cond_5

    .line 124
    sub-int v4, v0, v1

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    add-int v3, v4, v5

    .line 125
    .restart local v3       #top:I
    iget-object v4, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->leftListView:Landroid/widget/ListView;

    .line 126
    iget-object v5, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->leftListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    .line 125
    invoke-virtual {v4, v5, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_2

    .line 116
    .end local v1           #hi:I
    .end local v3           #top:I
    :cond_4
    iget-object v4, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->leftViewsHeights:[I

    aget v4, v4, v2

    add-int/2addr v0, v4

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 121
    .restart local v1       #hi:I
    :cond_5
    iget-object v4, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->rightViewsHeights:[I

    aget v4, v4, v2

    add-int/2addr v1, v4

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 135
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->leftListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->dispatched:Z

    if-nez v0, :cond_1

    .line 71
    iput-boolean v2, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->dispatched:Z

    .line 72
    iget-object v0, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->rightListView:Landroid/widget/ListView;

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 77
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->dispatched:Z

    .line 78
    return v1

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->rightListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->dispatched:Z

    if-nez v0, :cond_0

    .line 74
    iput-boolean v2, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->dispatched:Z

    .line 75
    iget-object v0, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->leftListView:Landroid/widget/ListView;

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public synchronize()V
    .locals 4

    .prologue
    .line 41
    iget-object v2, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->leftListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 42
    .local v0, leftAdapter:Landroid/widget/ListAdapter;
    iget-object v2, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->rightListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 43
    .local v1, rightAdapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 44
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "List adapters must be set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->leftViewsHeights:[I

    .line 47
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->rightViewsHeights:[I

    .line 49
    iget-object v2, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->leftListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    iget-object v2, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->rightListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    iget-object v2, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->leftListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    iget-object v2, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->rightListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 54
    iget-object v2, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->leftListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 55
    iget-object v2, p0, Lcom/jd/droidlib/util/ui/ListViewSynchronizer;->rightListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 56
    return-void
.end method
