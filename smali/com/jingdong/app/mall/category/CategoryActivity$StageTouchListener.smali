.class Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/category/CategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StageTouchListener"
.end annotation


# static fields
.field private static final SCROLL_STATE_DEFAULT:I = 0x0

.field private static final SCROLL_STATE_HORIZONTAL:I = 0x1

.field private static final SCROLL_STATE_NOT_HORIZONTAL:I = 0x2


# instance fields
.field private ScrollState:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1700
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1698
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->ScrollState:I

    .line 1701
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    .line 1702
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 1811
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    .line 1799
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->ScrollState:I

    if-ne v0, v1, :cond_0

    .line 1800
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mStageDrawable:Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$31(Lcom/jingdong/app/mall/category/CategoryActivity;)Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->horizontalScrollStop(F)V

    .line 1802
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->ScrollState:I

    .line 1803
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1792
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1761
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->ScrollState:I

    if-nez v0, :cond_0

    .line 1762
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mShowLevel:I
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$25(Lcom/jingdong/app/mall/category/CategoryActivity;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1763
    iput v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->ScrollState:I

    .line 1765
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #setter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mShowState:I
    invoke-static {v0, v2}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$27(Lcom/jingdong/app/mall/category/CategoryActivity;I)V

    .line 1767
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mShowLevel:I
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$25(Lcom/jingdong/app/mall/category/CategoryActivity;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1768
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mStageDrawable:Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$31(Lcom/jingdong/app/mall/category/CategoryActivity;)Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->init(I)V

    .line 1773
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->screenshotsAll()V
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$32(Lcom/jingdong/app/mall/category/CategoryActivity;)V

    .line 1780
    :cond_0
    :goto_1
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->ScrollState:I

    if-ne v0, v2, :cond_1

    .line 1781
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mStageDrawable:Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$31(Lcom/jingdong/app/mall/category/CategoryActivity;)Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;

    move-result-object v0

    neg-float v1, p3

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->horizontalScroll(F)V

    .line 1784
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1770
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mStageDrawable:Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$31(Lcom/jingdong/app/mall/category/CategoryActivity;)Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->init(I)V

    goto :goto_0

    .line 1776
    :cond_3
    iput v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->ScrollState:I

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1749
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 1741
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 1710
    iget v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->ScrollState:I

    .line 1712
    .local v1, tScrollState:I
    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1716
    iget v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->ScrollState:I

    if-eq v2, v3, :cond_1

    .line 1717
    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mContainerLayout:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$30(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1727
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1733
    :goto_1
    return v3

    .line 1718
    :cond_1
    if-nez v1, :cond_0

    iget v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->ScrollState:I

    if-ne v2, v3, :cond_0

    .line 1722
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1723
    .local v0, copyEvent:Landroid/view/MotionEvent;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1724
    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mContainerLayout:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$30(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1729
    .end local v0           #copyEvent:Landroid/view/MotionEvent;
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->onUp(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1727
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1818
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->ScrollState:I

    if-ne v0, v2, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mStageDrawable:Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$31(Lcom/jingdong/app/mall/category/CategoryActivity;)Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->horizontalScrollStop(F)V

    .line 1821
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;->ScrollState:I

    .line 1822
    return v2
.end method
