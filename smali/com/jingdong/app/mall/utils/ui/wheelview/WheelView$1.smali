.class Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    .line 869
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v0, 0x1

    .line 871
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->isScrollingPerformed:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->access$0(Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 872
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->access$1(Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 873
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    #calls: Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->clearMessages()V
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->access$2(Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;)V

    .line 876
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x0

    .line 888
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->currentItem:I
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->access$5(Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;)I

    move-result v2

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    #calls: Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->getItemHeight()I
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->access$6(Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;)I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->scrollingOffset:I
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->access$7(Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;)I

    move-result v3

    add-int/2addr v2, v3

    #setter for: Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->lastScrollY:I
    invoke-static {v0, v2}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->access$8(Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;I)V

    .line 889
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    iget-boolean v0, v0, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->isCyclic:Z

    if-eqz v0, :cond_0

    const v8, 0x7fffffff

    .line 891
    .local v8, maxY:I
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    iget-boolean v0, v0, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->isCyclic:Z

    if-eqz v0, :cond_1

    neg-int v7, v8

    .line 892
    .local v7, minY:I
    :goto_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->access$1(Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->lastScrollY:I
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->access$10(Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;)I

    move-result v2

    neg-float v3, p4

    float-to-int v3, v3

    div-int/lit8 v4, v3, 0x2

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 894
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    #calls: Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->setNextMessage(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->access$11(Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;I)V

    .line 895
    const/4 v0, 0x1

    return v0

    .line 889
    .end local v7           #minY:I
    .end local v8           #maxY:I
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->adapter:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->access$9(Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;)Lcom/jingdong/app/mall/utils/ui/wheelview/WheelAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v0

    .line 890
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    #calls: Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->getItemHeight()I
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->access$6(Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;)I

    move-result v2

    mul-int v8, v0, v2

    goto :goto_0

    .restart local v8       #maxY:I
    :cond_1
    move v7, v1

    .line 891
    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 881
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    #calls: Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->startScrolling()V
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->access$3(Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;)V

    .line 882
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    neg-float v1, p4

    float-to-int v1, v1

    #calls: Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->doScroll(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->access$4(Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;I)V

    .line 883
    const/4 v0, 0x1

    return v0
.end method
