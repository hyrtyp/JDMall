.class Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;
.super Ljava/lang/Object;
.source "CarouselFigureViewPager.java"

# interfaces
.implements Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->doStartActivity(Lcom/jingdong/common/entity/Commercial;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

.field private final synthetic val$commercial:Lcom/jingdong/common/entity/Commercial;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;Lcom/jingdong/common/entity/Commercial;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;->val$commercial:Lcom/jingdong/common/entity/Commercial;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;)Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;
    .locals 1
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    return-object v0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$2(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;->val$commercial:Lcom/jingdong/common/entity/Commercial;

    invoke-direct {v1, p0, p1, v2}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$3;Ljava/lang/String;Lcom/jingdong/common/entity/Commercial;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method
