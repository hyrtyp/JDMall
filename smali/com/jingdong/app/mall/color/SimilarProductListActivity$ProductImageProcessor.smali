.class Lcom/jingdong/app/mall/color/SimilarProductListActivity$ProductImageProcessor;
.super Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;
.source "SimilarProductListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/color/SimilarProductListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProductImageProcessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/color/SimilarProductListActivity$ProductImageProcessor$MyUIRunnable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/color/SimilarProductListActivity$ProductImageProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/jingdong/app/mall/color/SimilarProductListActivity$ProductImageProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected provideUIRunnable(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)Lcom/jingdong/common/utils/adapter/UIRunnable;
    .locals 1
    .parameter "subViewHolder"
    .parameter "imageState"

    .prologue
    .line 592
    new-instance v0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$ProductImageProcessor$MyUIRunnable;

    invoke-direct {v0, p1, p2}, Lcom/jingdong/app/mall/color/SimilarProductListActivity$ProductImageProcessor$MyUIRunnable;-><init>(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)V

    return-object v0
.end method
