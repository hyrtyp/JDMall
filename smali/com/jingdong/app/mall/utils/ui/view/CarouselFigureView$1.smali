.class Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView$1;
.super Landroid/os/Handler;
.source "CarouselFigureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;

    .line 60
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 63
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->pager:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;
    invoke-static {v4}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;)Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->pager:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;
    invoke-static {v4}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;)Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    :try_start_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 74
    .local v2, tag:J
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->token:J
    invoke-static {v4}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->access$1(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 78
    iget v1, p1, Landroid/os/Message;->what:I

    .line 80
    .local v1, position:I
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->pager:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;
    invoke-static {v4}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;)Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 81
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->pager:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;
    invoke-static {v4}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;)Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 70
    .end local v1           #position:I
    .end local v2           #tag:J
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 83
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #position:I
    .restart local v2       #tag:J
    :cond_2
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->pager:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;
    invoke-static {v4}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;)Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method
