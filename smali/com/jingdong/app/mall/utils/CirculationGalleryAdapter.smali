.class public Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;
.super Lcom/jingdong/app/mall/plug/PlugSimpleAdapter;
.source "CirculationGalleryAdapter.java"


# instance fields
.field private beanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V
    .locals 3
    .parameter "myActivity"
    .parameter
    .parameter "itemId"
    .parameter "from"
    .parameter "to"
    .parameter "isNeedLifeCircleCallBack"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/app/mall/utils/MyActivity;",
            "Ljava/util/List",
            "<*>;I[",
            "Ljava/lang/String;",
            "[IZ)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, beanList:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-direct/range {p0 .. p6}, Lcom/jingdong/app/mall/plug/PlugSimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V

    .line 21
    new-instance v1, Lcom/jingdong/common/utils/SimpleSubViewBinder;

    new-instance v2, Lcom/jingdong/app/mall/utils/CirculationSimpleImageProcessor;

    invoke-direct {v2}, Lcom/jingdong/app/mall/utils/CirculationSimpleImageProcessor;-><init>()V

    invoke-direct {v1, v2}, Lcom/jingdong/common/utils/SimpleSubViewBinder;-><init>(Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->setViewBinder(Lcom/jingdong/common/utils/SubViewBinder;)V

    .line 22
    iput-object p2, p0, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->beanList:Ljava/util/List;

    .line 23
    sget-object v1, Lcom/jingdong/app/mall/R$styleable;->gallery_bg:[I

    invoke-virtual {p1, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 24
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    return-void
.end method


# virtual methods
.method public getActualCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->beanList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->beanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->getActualCount()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->getActualCount()I

    move-result v0

    .line 32
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->beanList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->beanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->beanList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->toActualPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->toActualPosition(I)I

    move-result v0

    invoke-super {p0, v0, p2, p3}, Lcom/jingdong/app/mall/plug/PlugSimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/widget/Gallery;)V
    .locals 2
    .parameter "gallery"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->getCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 70
    .local v0, mediant:I
    invoke-virtual {p1, v0}, Landroid/widget/Gallery;->setSelection(I)V

    .line 71
    return-void
.end method

.method public toActualPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->getActualCount()I

    move-result v0

    rem-int v0, p1, v0

    return v0
.end method
