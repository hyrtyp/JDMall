.class public Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ImageViewpageChangeListener;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageViewpageChangeListener"
.end annotation


# instance fields
.field isFirst:Z

.field oldView:Landroid/view/View;

.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 2127
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ImageViewpageChangeListener;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ImageViewpageChangeListener;->oldView:Landroid/view/View;

    .line 2129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ImageViewpageChangeListener;->isFirst:Z

    return-void
.end method

.method private setCurIdentification(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 2148
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ImageViewpageChangeListener;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->imageCount:I
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$4(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ImageViewpageChangeListener;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->currentIndex:I
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$5(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 2154
    :cond_0
    :goto_0
    return-void

    .line 2152
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ImageViewpageChangeListener;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->updateCurrentImage(I)V
    invoke-static {v0, p1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$6(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;I)V

    .line 2153
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ImageViewpageChangeListener;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #setter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->currentIndex:I
    invoke-static {v0, p1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;I)V

    goto :goto_0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2145
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2141
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2136
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$ImageViewpageChangeListener;->setCurIdentification(I)V

    .line 2137
    return-void
.end method
