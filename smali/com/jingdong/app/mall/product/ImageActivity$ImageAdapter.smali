.class public Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ImageActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/ImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageAdapter"
.end annotation


# instance fields
.field mActivity:Lcom/jingdong/app/mall/product/ImageActivity;

.field mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/Image;",
            ">;"
        }
    .end annotation
.end field

.field mPageIndexTS:Landroid/widget/TextSwitcher;

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/view/ViewPager;Ljava/util/List;)V
    .locals 1
    .parameter "activity"
    .parameter "pager"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Landroid/support/v4/view/ViewPager;",
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p3, images:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Image;>;"
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 207
    check-cast p1, Lcom/jingdong/app/mall/product/ImageActivity;

    .end local p1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;->mActivity:Lcom/jingdong/app/mall/product/ImageActivity;

    .line 208
    iput-object p3, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;->mImages:Ljava/util/List;

    .line 210
    iput-object p2, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 211
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 212
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 213
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;->mImages:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter "position"

    .prologue
    .line 222
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;->mImages:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;->mImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/Image;

    :goto_0
    invoke-static {p1, v1}, Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;->newInstance(ILcom/jingdong/common/entity/Image;)Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;

    move-result-object v0

    .line 223
    .local v0, fragment:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    return-object v0

    .line 222
    .end local v0           #fragment:Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 239
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 228
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;->mPageIndexTS:Landroid/widget/TextSwitcher;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;->mPageIndexTS:Landroid/widget/TextSwitcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;->mActivity:Lcom/jingdong/app/mall/product/ImageActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ImageActivity;->checkSaveState()V

    .line 235
    return-void
.end method

.method public setPageIndexTS(Landroid/widget/TextSwitcher;)V
    .locals 0
    .parameter "pageIndexTS"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;->mPageIndexTS:Landroid/widget/TextSwitcher;

    .line 243
    return-void
.end method
