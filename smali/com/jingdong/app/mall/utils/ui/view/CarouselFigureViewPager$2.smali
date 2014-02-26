.class Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$2;
.super Ljava/lang/Object;
.source "CarouselFigureViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->refreshAdapter(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

.field private final synthetic val$commercialsList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$2;->val$commercialsList:Ljava/util/ArrayList;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$2;->val$commercialsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->getAdapter(Ljava/util/ArrayList;)Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->adapter:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$4(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;)V

    .line 178
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->adapter:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$5(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$CarouseFigureViewPagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 183
    return-void
.end method
