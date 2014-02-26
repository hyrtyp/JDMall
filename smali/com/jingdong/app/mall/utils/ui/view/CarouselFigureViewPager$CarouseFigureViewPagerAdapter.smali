.class Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "CarouselFigureViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarouseFigureViewPagerAdapter"
.end annotation


# instance fields
.field private commercialsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Commercial;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Commercial;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, commercialsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 211
    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;->commercialsList:Ljava/util/ArrayList;

    .line 212
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;)Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 230
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 231
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;->commercialsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7
    .parameter "container"
    .parameter "position"

    .prologue
    .line 236
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;->commercialsList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Commercial;

    .line 238
    .local v0, commercial:Lcom/jingdong/common/entity/Commercial;
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 240
    .local v1, imageView:Landroid/widget/ImageView;
    new-instance v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v2}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    .line 242
    .local v2, params:Landroid/support/v4/view/ViewPager$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->imagePadding:I
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$0(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)I

    move-result v3

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->imagePadding:I
    invoke-static {v4}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$0(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)I

    move-result v4

    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->imagePadding:I
    invoke-static {v5}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$0(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)I

    move-result v5

    iget-object v6, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->imagePadding:I
    invoke-static {v6}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$0(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 244
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 246
    new-instance v3, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;Lcom/jingdong/common/entity/Commercial;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    if-eqz v0, :cond_0

    .line 259
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$2(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Commercial;->getHorizontalImg()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    invoke-static {v3, v1, v4, v5}, Lcom/jingdong/common/utils/JDImageUtils;->setViewImageWithPriority(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 262
    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 264
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 220
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Commercial;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, commercialsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;->commercialsList:Ljava/util/ArrayList;

    .line 216
    return-void
.end method
