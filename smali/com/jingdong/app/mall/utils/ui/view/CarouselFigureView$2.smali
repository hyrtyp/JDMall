.class Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView$2;
.super Ljava/lang/Object;
.source "CarouselFigureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->init(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/entity/HomeFloorModel;Landroid/view/ViewGroup;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->pager:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;)Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->createCursor(I)V

    .line 123
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;

    #calls: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->autoChangeViewPagerPosition()V
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->access$2(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;)V

    .line 124
    return-void
.end method
