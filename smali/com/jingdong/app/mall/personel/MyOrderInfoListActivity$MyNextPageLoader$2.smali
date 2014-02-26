.class Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$2;
.super Lcom/jingdong/common/utils/SimpleSubViewBinder;
.source "MyOrderInfoListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$2;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    .line 422
    invoke-direct {p0, p2}, Lcom/jingdong/common/utils/SimpleSubViewBinder;-><init>(Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;)V

    return-void
.end method

.method private setGallery(Landroid/widget/Gallery;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "gallery"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Gallery;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, productDetailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 485
    invoke-virtual {p1}, Landroid/widget/Gallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 486
    .local v0, a:Lcom/jingdong/common/utils/MySimpleAdapter;
    if-nez v0, :cond_0

    .line 487
    new-instance v0, Lcom/jingdong/common/utils/MySimpleAdapter;

    .end local v0           #a:Lcom/jingdong/common/utils/MySimpleAdapter;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$2;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const v3, 0x7f0300ba

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "imageUrl"

    aput-object v5, v4, v8

    new-array v5, v7, [I

    const v6, 0x7f0c01d5

    aput v6, v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 488
    .restart local v0       #a:Lcom/jingdong/common/utils/MySimpleAdapter;
    new-instance v1, Lcom/jingdong/common/utils/SimpleSubViewBinder;

    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MySimpleImageProcessor;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MySimpleImageProcessor;-><init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MySimpleImageProcessor;)V

    invoke-direct {v1, v2}, Lcom/jingdong/common/utils/SimpleSubViewBinder;-><init>(Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->setViewBinder(Lcom/jingdong/common/utils/SubViewBinder;)V

    .line 492
    invoke-virtual {v0, p2}, Lcom/jingdong/common/utils/MySimpleAdapter;->addAllBean(Ljava/util/Collection;)V

    .line 493
    invoke-virtual {p1, v0}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 500
    :goto_0
    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 503
    invoke-virtual {p1, v7}, Landroid/widget/Gallery;->setSelection(I)V

    .line 505
    return-void

    .line 498
    :cond_0
    invoke-virtual {v0, p2}, Lcom/jingdong/common/utils/MySimpleAdapter;->replaceAllBean(Ljava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method protected subBind(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;)Z
    .locals 12
    .parameter "viewHolder"

    .prologue
    .line 427
    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getSubView()Landroid/view/View;

    move-result-object v9

    .line 428
    .local v9, subView:Landroid/view/View;
    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getSubData()Ljava/lang/Object;

    move-result-object v8

    .line 430
    .local v8, subData:Ljava/lang/Object;
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v10

    const v11, 0x7f0c0432

    if-eq v10, v11, :cond_0

    .line 431
    const/4 v10, 0x0

    .line 476
    :goto_0
    return v10

    .line 434
    :cond_0
    const v10, 0x7f0c0435

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 435
    .local v4, mOrderName:Landroid/widget/TextView;
    const v10, 0x7f0c0434

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 436
    .local v5, mProductImageView:Landroid/widget/ImageView;
    const v10, 0x7f0c0433

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Gallery;

    .line 438
    .local v3, mOrderImageGallery:Landroid/widget/Gallery;
    if-nez v8, :cond_1

    .line 439
    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    move-object v7, v8

    .line 441
    check-cast v7, Ljava/util/ArrayList;

    .line 443
    .local v7, productDetailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 444
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    .line 445
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 452
    invoke-direct {p0, v3, v7}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$2;->setGallery(Landroid/widget/Gallery;Ljava/util/ArrayList;)V

    .line 476
    :cond_2
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 454
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/Product;

    .line 456
    .local v6, product:Lcom/jingdong/common/entity/Product;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 458
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 460
    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, imageUrl:Ljava/lang/String;
    new-instance v10, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-direct {v10, v1}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getImageState(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    move-result-object v0

    .line 464
    .local v0, imageState:Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;
    new-instance v2, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    invoke-direct {v2, p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;-><init>(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;)V

    .line 465
    .local v2, imageViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;
    invoke-virtual {v5}, Landroid/widget/ImageView;->getId()I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setSubViewId(I)V

    .line 466
    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setSubData(Ljava/lang/Object;)V

    .line 467
    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->setSubView(Landroid/view/View;)V

    .line 472
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$2;->getSimpleImageProcessor()Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;

    move-result-object v10

    invoke-virtual {v10, v2, v0}, Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;->show(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)V

    goto :goto_1
.end method
