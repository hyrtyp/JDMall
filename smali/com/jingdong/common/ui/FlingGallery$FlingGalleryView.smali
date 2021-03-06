.class Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;
.super Ljava/lang/Object;
.source "FlingGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/ui/FlingGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingGalleryView"
.end annotation


# instance fields
.field private mExternalView:Landroid/view/View;

.field private mInternalLayout:Landroid/widget/LinearLayout;

.field private mInvalidLayout:Landroid/widget/FrameLayout;

.field private mParentLayout:Landroid/widget/FrameLayout;

.field private mViewNumber:I

.field final synthetic this$0:Lcom/jingdong/common/ui/FlingGallery;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/ui/FlingGallery;ILandroid/widget/FrameLayout;)V
    .locals 3
    .parameter
    .parameter "viewNumber"
    .parameter "parentLayout"

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 325
    iput-object p1, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mInvalidLayout:Landroid/widget/FrameLayout;

    .line 322
    iput-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    .line 323
    iput-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    .line 326
    iput p2, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mViewNumber:I

    .line 327
    iput-object p3, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mParentLayout:Landroid/widget/FrameLayout;

    .line 330
    new-instance v0, Landroid/widget/FrameLayout;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/jingdong/common/ui/FlingGallery;->access$0(Lcom/jingdong/common/ui/FlingGallery;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mInvalidLayout:Landroid/widget/FrameLayout;

    .line 331
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mInvalidLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    new-instance v0, Landroid/widget/LinearLayout;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/jingdong/common/ui/FlingGallery;->access$0(Lcom/jingdong/common/ui/FlingGallery;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    .line 335
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 338
    return-void
.end method


# virtual methods
.method public getCurrentOffset()I
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v0

    return v0
.end method

.method public recycleView(I)V
    .locals 4
    .parameter "newPosition"

    .prologue
    const/4 v3, -0x1

    .line 341
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mAdapter:Landroid/widget/Adapter;
    invoke-static {v0}, Lcom/jingdong/common/ui/FlingGallery;->access$1(Lcom/jingdong/common/ui/FlingGallery;)Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    invoke-virtual {v0}, Lcom/jingdong/common/ui/FlingGallery;->getFirstPosition()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    invoke-virtual {v0}, Lcom/jingdong/common/ui/FlingGallery;->getLastPosition()I

    move-result v0

    if-gt p1, v0, :cond_3

    .line 347
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    #getter for: Lcom/jingdong/common/ui/FlingGallery;->mAdapter:Landroid/widget/Adapter;
    invoke-static {v0}, Lcom/jingdong/common/ui/FlingGallery;->access$1(Lcom/jingdong/common/ui/FlingGallery;)Landroid/widget/Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    iget-object v2, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    invoke-interface {v0, p1, v1, v2}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    .line 353
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    :cond_2
    return-void

    .line 349
    :cond_3
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mInvalidLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mExternalView:Landroid/view/View;

    goto :goto_0
.end method

.method public requestFocus()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 370
    return-void
.end method

.method public setOffset(III)V
    .locals 3
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "relativeViewNumber"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mInternalLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->this$0:Lcom/jingdong/common/ui/FlingGallery;

    iget v2, p0, Lcom/jingdong/common/ui/FlingGallery$FlingGalleryView;->mViewNumber:I

    #calls: Lcom/jingdong/common/ui/FlingGallery;->getViewOffset(II)I
    invoke-static {v1, v2, p3}, Lcom/jingdong/common/ui/FlingGallery;->access$2(Lcom/jingdong/common/ui/FlingGallery;II)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 361
    return-void
.end method
