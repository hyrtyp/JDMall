.class public Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ProductDetailPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ProductDetailNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProductDetailPagerAdapter"
.end annotation


# instance fields
.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/Image;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

.field private viewArray:[Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2065
    .local p2, imageList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Image;>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ProductDetailPagerAdapter;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 2066
    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ProductDetailPagerAdapter;->imageList:Ljava/util/List;

    .line 2068
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ProductDetailPagerAdapter;->viewArray:[Landroid/view/View;

    .line 2069
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2115
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ProductDetailPagerAdapter;->viewArray:[Landroid/view/View;

    array-length v0, v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 2119
    const/4 v0, -0x2

    return v0
.end method

.method public declared-synchronized instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .parameter "container"
    .parameter "position"

    .prologue
    .line 2090
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ProductDetailPagerAdapter;->viewArray:[Landroid/view/View;

    aget-object v0, v1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2092
    .local v0, item:Landroid/view/View;
    if-nez v0, :cond_1

    .line 2094
    const v1, 0x7f0300d7

    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2096
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ProductDetailPagerAdapter;->imageList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ProductDetailPagerAdapter;->imageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2097
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ProductDetailPagerAdapter;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ProductDetailPagerAdapter;->imageList:Ljava/util/List;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->loadProductPicture(Ljava/util/List;ILandroid/view/View;)V
    invoke-static {v1, v2, p2, v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$3(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Ljava/util/List;ILandroid/view/View;)V

    .line 2100
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ProductDetailPagerAdapter;->viewArray:[Landroid/view/View;

    aput-object v0, v1, p2

    .line 2101
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2108
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 2090
    .end local v0           #item:Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2102
    .restart local v0       #item:Landroid/view/View;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2073
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
