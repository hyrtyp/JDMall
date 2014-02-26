.class public Lcom/jingdong/app/mall/home/slide/JDImageSwitcher;
.super Landroid/widget/ImageSwitcher;
.source "JDImageSwitcher.java"


# instance fields
.field private mPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ImageSwitcher;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/JDImageSwitcher;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 40
    invoke-super {p0, p1}, Landroid/widget/ImageSwitcher;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getmPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/JDImageSwitcher;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/JDImageSwitcher;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 46
    invoke-super {p0, p1}, Landroid/widget/ImageSwitcher;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/JDImageSwitcher;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 52
    invoke-super {p0, p1}, Landroid/widget/ImageSwitcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setmPager(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .parameter "mPager"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/JDImageSwitcher;->mPager:Landroid/support/v4/view/ViewPager;

    .line 19
    return-void
.end method
