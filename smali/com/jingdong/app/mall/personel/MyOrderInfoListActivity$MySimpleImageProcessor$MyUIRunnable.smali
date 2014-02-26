.class Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MySimpleImageProcessor$MyUIRunnable;
.super Lcom/jingdong/common/utils/adapter/UIRunnable;
.source "MyOrderInfoListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MySimpleImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyUIRunnable"
.end annotation


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)V
    .locals 0
    .parameter "subViewHolder"
    .parameter "imageState"

    .prologue
    .line 566
    invoke-direct {p0, p1, p2}, Lcom/jingdong/common/utils/adapter/UIRunnable;-><init>(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)V

    .line 567
    return-void
.end method


# virtual methods
.method protected getItemView()Landroid/view/View;
    .locals 4

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MySimpleImageProcessor$MyUIRunnable;->getSubViewHolder()Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    move-result-object v0

    .line 572
    .local v0, holder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;
    invoke-virtual {v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getAdapter()Lcom/jingdong/common/utils/SimpleBeanAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 573
    .local v1, item:Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getSubData()Ljava/lang/Object;

    move-result-object v2

    check-cast v1, Lcom/jingdong/common/entity/Product;

    .end local v1           #item:Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    invoke-super {p0}, Lcom/jingdong/common/utils/adapter/UIRunnable;->getItemView()Landroid/view/View;

    move-result-object v2

    .line 582
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
