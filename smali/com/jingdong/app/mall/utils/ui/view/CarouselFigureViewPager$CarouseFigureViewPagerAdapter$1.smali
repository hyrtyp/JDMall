.class Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "CarouselFigureViewPager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;

.field private final synthetic val$commercial:Lcom/jingdong/common/entity/Commercial;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;Lcom/jingdong/common/entity/Commercial;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter$1;->val$commercial:Lcom/jingdong/common/entity/Commercial;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 250
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/CommonUtil;->isCanClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;->access$0(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;)Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter$1;->val$commercial:Lcom/jingdong/common/entity/Commercial;

    #calls: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->doStartActivity(Lcom/jingdong/common/entity/Commercial;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$1(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;Lcom/jingdong/common/entity/Commercial;)V

    goto :goto_0
.end method
