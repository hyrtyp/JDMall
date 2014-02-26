.class public abstract Lcom/jingdong/common/utils/NewNextPageLoader;
.super Lcom/jingdong/common/utils/NextPageLoader;
.source "NewNextPageLoader.java"


# instance fields
.field private totalPageCount:I


# direct methods
.method public constructor <init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .parameter "myActivity"
    .parameter "adapterView"
    .parameter "loadingView"
    .parameter "functionId"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/common/utils/NewNextPageLoader;->totalPageCount:I

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .parameter "myActivity"
    .parameter "adapterView"
    .parameter "loadingView"
    .parameter "functionId"
    .parameter "params"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/common/utils/NewNextPageLoader;->totalPageCount:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .parameter "myActivity"
    .parameter "adapterView"
    .parameter "loadingView"
    .parameter "functionId"
    .parameter "params"
    .parameter "noData"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p6}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/common/utils/NewNextPageLoader;->totalPageCount:I

    .line 32
    return-void
.end method


# virtual methods
.method public getTotalPageCount()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/jingdong/common/utils/NewNextPageLoader;->totalPageCount:I

    return v0
.end method

.method protected judgeIsLastPage(Ljava/util/ArrayList;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/jingdong/common/utils/NewNextPageLoader;->pageSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/jingdong/common/utils/NewNextPageLoader;->isPaging:Z

    if-nez v0, :cond_2

    .line 46
    :cond_0
    iget v0, p0, Lcom/jingdong/common/utils/NewNextPageLoader;->totalPageCount:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/common/utils/NewNextPageLoader;->pageNum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/jingdong/common/utils/NewNextPageLoader;->totalPageCount:I

    if-ne v0, v1, :cond_2

    .line 47
    :cond_1
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTotalPageCount(I)V
    .locals 0
    .parameter "totalPageCount"

    .prologue
    .line 39
    iput p1, p0, Lcom/jingdong/common/utils/NewNextPageLoader;->totalPageCount:I

    .line 40
    return-void
.end method
