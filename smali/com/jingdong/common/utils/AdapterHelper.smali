.class public Lcom/jingdong/common/utils/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;
    }
.end annotation


# instance fields
.field private adapterView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/Adapter;",
            ">;"
        }
    .end annotation
.end field

.field private httpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field private itemView_subViews_map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/AdapterHelper;->itemView_subViews_map:Ljava/util/Map;

    .line 20
    return-void
.end method

.method public static getItemViewIndex(III)Ljava/lang/Integer;
    .locals 3
    .parameter "firstVisiblePosition"
    .parameter "childCount"
    .parameter "position"

    .prologue
    .line 36
    sub-int v1, p2, p0

    .line 37
    .local v1, index:I
    move v0, p1

    .line 38
    .local v0, count:I
    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 41
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSubViews(Landroid/view/View;)Ljava/util/Map;
    .locals 1
    .parameter "itemView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jingdong/common/utils/AdapterHelper;->itemView_subViews_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public getAdapterView()Landroid/widget/AdapterView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/Adapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jingdong/common/utils/AdapterHelper;->adapterView:Landroid/widget/AdapterView;

    return-object v0
.end method

.method public getImageHttpGroup()Lcom/jingdong/common/utils/HttpGroup;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jingdong/common/utils/AdapterHelper;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    if-nez v0, :cond_0

    .line 109
    const/16 v0, 0x1388

    invoke-static {v0}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/AdapterHelper;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/AdapterHelper;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    return-object v0
.end method

.method public getItemView(IZ)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "withOutHeaderViews"

    .prologue
    .line 57
    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/jingdong/common/utils/AdapterHelper;->adapterView:Landroid/widget/AdapterView;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/HeaderViewListAdapter;

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    .line 59
    .local v0, b:Z
    :goto_0
    new-instance v2, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;

    iget-object v5, p0, Lcom/jingdong/common/utils/AdapterHelper;->adapterView:Landroid/widget/AdapterView;

    invoke-direct {v2, v5}, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;-><init>(Landroid/widget/AdapterView;)V

    .line 68
    .local v2, childViewInfo:Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;
    if-eqz v0, :cond_1

    #getter for: Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->firstVisiblePositionWithOutHeaderViews:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->access$0(Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 70
    .local v3, firstVisiblePosition:I
    if-eqz v0, :cond_2

    #getter for: Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->childCountWithOutHeaderViews:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->access$2(Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;)Ljava/lang/Integer;

    move-result-object v5

    :goto_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 73
    .local v1, childCount:I
    invoke-static {v3, v1, p1}, Lcom/jingdong/common/utils/AdapterHelper;->getItemViewIndex(III)Ljava/lang/Integer;

    move-result-object v4

    .line 74
    .local v4, index:Ljava/lang/Integer;
    if-eqz v4, :cond_4

    .line 75
    if-eqz v0, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    #getter for: Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->visibleHeaderViewsCount:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->access$4(Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 76
    iget-object v5, p0, Lcom/jingdong/common/utils/AdapterHelper;->adapterView:Landroid/widget/AdapterView;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 78
    :goto_4
    return-object v5

    .line 57
    .end local v0           #b:Z
    .end local v1           #childCount:I
    .end local v2           #childViewInfo:Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;
    .end local v3           #firstVisiblePosition:I
    .end local v4           #index:Ljava/lang/Integer;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    .restart local v0       #b:Z
    .restart local v2       #childViewInfo:Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;
    :cond_1
    #getter for: Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->firstVisiblePosition:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->access$1(Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    .line 71
    .restart local v3       #firstVisiblePosition:I
    :cond_2
    #getter for: Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->childCount:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;->access$3(Lcom/jingdong/common/utils/AdapterHelper$ChildViewInfo;)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    .line 75
    .restart local v1       #childCount:I
    .restart local v4       #index:Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_3

    .line 78
    :cond_4
    const/4 v5, 0x0

    goto :goto_4
.end method

.method public getSubView(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .parameter "itemView"
    .parameter "subViewId"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/AdapterHelper;->getSubViews(Landroid/view/View;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public putSubViews(Landroid/view/View;Ljava/util/Map;)V
    .locals 1
    .parameter "itemView"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, subViews:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/view/View;>;"
    iget-object v0, p0, Lcom/jingdong/common/utils/AdapterHelper;->itemView_subViews_map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public setAdapterView(Landroid/widget/AdapterView;)V
    .locals 0
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
    .line 104
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<Landroid/widget/Adapter;>;"
    iput-object p1, p0, Lcom/jingdong/common/utils/AdapterHelper;->adapterView:Landroid/widget/AdapterView;

    .line 105
    return-void
.end method
