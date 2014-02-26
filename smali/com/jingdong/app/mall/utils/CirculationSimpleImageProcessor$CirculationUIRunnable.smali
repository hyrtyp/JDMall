.class Lcom/jingdong/app/mall/utils/CirculationSimpleImageProcessor$CirculationUIRunnable;
.super Lcom/jingdong/common/utils/adapter/UIRunnable;
.source "CirculationSimpleImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/utils/CirculationSimpleImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CirculationUIRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/CirculationSimpleImageProcessor;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/utils/CirculationSimpleImageProcessor;Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)V
    .locals 0
    .parameter
    .parameter "subViewHolder"
    .parameter "imageState"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/CirculationSimpleImageProcessor$CirculationUIRunnable;->this$0:Lcom/jingdong/app/mall/utils/CirculationSimpleImageProcessor;

    .line 25
    invoke-direct {p0, p2, p3}, Lcom/jingdong/common/utils/adapter/UIRunnable;-><init>(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected getItemView()Landroid/view/View;
    .locals 10

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/CirculationSimpleImageProcessor$CirculationUIRunnable;->getSubViewHolder()Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getAdapter()Lcom/jingdong/common/utils/SimpleBeanAdapter;

    move-result-object v1

    .line 33
    .local v1, adapter:Lcom/jingdong/common/utils/SimpleBeanAdapter;
    invoke-virtual {v1}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->getAdapterHelper()Lcom/jingdong/common/utils/AdapterHelper;

    move-result-object v2

    .line 34
    .local v2, adapterHelper:Lcom/jingdong/common/utils/AdapterHelper;
    invoke-virtual {v2}, Lcom/jingdong/common/utils/AdapterHelper;->getAdapterView()Landroid/widget/AdapterView;

    move-result-object v3

    .line 39
    .local v3, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<Landroid/widget/Adapter;>;"
    instance-of v8, v1, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;

    if-eqz v8, :cond_2

    move-object v0, v1

    .line 40
    check-cast v0, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;

    .line 47
    .local v0, a:Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;
    const/4 v5, 0x0

    .line 49
    .local v5, firstVisiblePosition:I
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->getActualCount()I

    move-result v8

    if-eqz v8, :cond_0

    .line 50
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v8

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->getActualCount()I

    move-result v9

    rem-int v5, v8, v9

    .line 56
    :cond_0
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v4

    .line 60
    .local v4, childCount:I
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/CirculationSimpleImageProcessor$CirculationUIRunnable;->getSubViewHolder()Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getPosition()I

    move-result v7

    .line 64
    .local v7, position:I
    if-ge v7, v5, :cond_1

    .line 65
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->getActualCount()I

    move-result v8

    add-int/2addr v7, v8

    .line 68
    :cond_1
    invoke-static {v5, v4, v7}, Lcom/jingdong/common/utils/AdapterHelper;->getItemViewIndex(III)Ljava/lang/Integer;

    move-result-object v6

    .line 72
    .local v6, index:Ljava/lang/Integer;
    if-eqz v6, :cond_2

    .line 73
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 77
    .end local v0           #a:Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;
    .end local v4           #childCount:I
    .end local v5           #firstVisiblePosition:I
    .end local v6           #index:Ljava/lang/Integer;
    .end local v7           #position:I
    :goto_0
    return-object v8

    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method
