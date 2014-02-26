.class Lcom/jingdong/app/mall/personel/MyOrderListActivity$MySimpleImageProcessor;
.super Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;
.source "MyOrderListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/MyOrderListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MySimpleImageProcessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/personel/MyOrderListActivity$MySimpleImageProcessor$MyUIRunnable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MySimpleImageProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MySimpleImageProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected provideUIRunnable(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)Lcom/jingdong/common/utils/adapter/UIRunnable;
    .locals 1
    .parameter "subViewHolder"
    .parameter "imageState"

    .prologue
    .line 640
    new-instance v0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MySimpleImageProcessor$MyUIRunnable;

    invoke-direct {v0, p1, p2}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MySimpleImageProcessor$MyUIRunnable;-><init>(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)V

    return-object v0
.end method
