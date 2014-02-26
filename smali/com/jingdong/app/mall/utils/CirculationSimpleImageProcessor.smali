.class public Lcom/jingdong/app/mall/utils/CirculationSimpleImageProcessor;
.super Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;
.source "CirculationSimpleImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/utils/CirculationSimpleImageProcessor$CirculationUIRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected provideUIRunnable(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)Lcom/jingdong/common/utils/adapter/UIRunnable;
    .locals 1
    .parameter "subViewHolder"
    .parameter "imageState"

    .prologue
    .line 19
    new-instance v0, Lcom/jingdong/app/mall/utils/CirculationSimpleImageProcessor$CirculationUIRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/jingdong/app/mall/utils/CirculationSimpleImageProcessor$CirculationUIRunnable;-><init>(Lcom/jingdong/app/mall/utils/CirculationSimpleImageProcessor;Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)V

    return-object v0
.end method
