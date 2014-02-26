.class Lcom/jingdong/common/utils/adapter/UIRunnable$ViewLongClickForNoImage;
.super Ljava/lang/Object;
.source "UIRunnable.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/adapter/UIRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewLongClickForNoImage"
.end annotation


# instance fields
.field private bitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

.field private imageProcessor:Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;

.field private subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)V
    .locals 1
    .parameter "subViewHolder"
    .parameter "bitmapDigest"

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/jingdong/common/utils/adapter/UIRunnable$ViewLongClickForNoImage;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    .line 200
    iput-object p2, p0, Lcom/jingdong/common/utils/adapter/UIRunnable$ViewLongClickForNoImage;->bitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    .line 201
    invoke-virtual {p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->getAdapter()Lcom/jingdong/common/utils/SimpleBeanAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->getViewBinder()Lcom/jingdong/common/utils/SubViewBinder;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/utils/SimpleSubViewBinder;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/SimpleSubViewBinder;->getSimpleImageProcessor()Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/adapter/UIRunnable$ViewLongClickForNoImage;->imageProcessor:Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;

    .line 202
    return-void
.end method

.method private gc()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/jingdong/common/utils/adapter/UIRunnable$ViewLongClickForNoImage;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    .line 222
    iput-object v0, p0, Lcom/jingdong/common/utils/adapter/UIRunnable$ViewLongClickForNoImage;->bitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    .line 223
    iput-object v0, p0, Lcom/jingdong/common/utils/adapter/UIRunnable$ViewLongClickForNoImage;->imageProcessor:Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;

    .line 224
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 211
    iget-object v0, p0, Lcom/jingdong/common/utils/adapter/UIRunnable$ViewLongClickForNoImage;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/jingdong/common/utils/adapter/UIRunnable$ViewLongClickForNoImage;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    const-string v1, "manualGetImage"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;->putMoreParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/jingdong/common/utils/adapter/UIRunnable$ViewLongClickForNoImage;->imageProcessor:Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;

    iget-object v1, p0, Lcom/jingdong/common/utils/adapter/UIRunnable$ViewLongClickForNoImage;->subViewHolder:Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;

    iget-object v2, p0, Lcom/jingdong/common/utils/adapter/UIRunnable$ViewLongClickForNoImage;->bitmapDigest:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-static {v2}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getImageState(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;->show(Lcom/jingdong/common/utils/SimpleBeanAdapter$SubViewHolder;Lcom/jingdong/common/utils/cache/GlobalImageCache$ImageState;)V

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/common/utils/adapter/UIRunnable$ViewLongClickForNoImage;->gc()V

    .line 217
    return v3
.end method
