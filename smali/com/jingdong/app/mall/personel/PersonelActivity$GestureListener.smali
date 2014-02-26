.class Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PersonelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1576
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    .line 1579
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->mScrollY:I
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$24(Lcom/jingdong/app/mall/personel/PersonelActivity;I)V

    .line 1580
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->onScrolling:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$25(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V

    .line 1581
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->canMove:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$26(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V

    .line 1585
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1594
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1600
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1607
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->onScrolling:Z
    invoke-static {v4, v7}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$25(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V

    .line 1608
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->mScrollY:I
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$27(Lcom/jingdong/app/mall/personel/PersonelActivity;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p4

    float-to-int v5, v5

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->mScrollY:I
    invoke-static {v4, v5}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$24(Lcom/jingdong/app/mall/personel/PersonelActivity;I)V

    .line 1609
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v2, v4

    .line 1610
    .local v2, y1:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v3, v4

    .line 1611
    .local v3, y2:I
    sub-int v4, v3, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1615
    .local v1, offsetY:I
    sub-int v4, v3, v2

    if-lez v4, :cond_4

    .line 1616
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->upOrDown:Z
    invoke-static {v4, v6}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$28(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V

    .line 1620
    :goto_0
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->orderDrawer:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$29(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1621
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->orderDrawer:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$29(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1623
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->isDrawerOpen:Z
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$30(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->upOrDown:Z
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$31(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->isDrawerOpen:Z
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$30(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->upOrDown:Z
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$31(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1624
    :cond_2
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->canMove:Z
    invoke-static {v4, v7}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$26(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V

    .line 1628
    :goto_1
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->orderDrawer:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$29(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1629
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->canMove:Z
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$32(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-gt v1, v8, :cond_6

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->upOrDown:Z
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$31(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1630
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1634
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->orderDrawer:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$29(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1635
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->orderDrawer:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$29(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->postInvalidate()V

    .line 1639
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v4

    return v4

    .line 1618
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->upOrDown:Z
    invoke-static {v4, v7}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$28(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V

    goto :goto_0

    .line 1626
    :cond_5
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->canMove:Z
    invoke-static {v4, v6}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$26(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V

    goto :goto_1

    .line 1631
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->canMove:Z
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$32(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-gt v1, v8, :cond_3

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->upOrDown:Z
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$31(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1632
    rsub-int/lit8 v4, v1, 0x64

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1645
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1649
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->isDrawerOpen:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$30(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1653
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->orderDrawer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$29(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1654
    new-instance v0, Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    new-array v1, v4, [Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1655
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->isDrawerOpen:Z
    invoke-static {v0, v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$33(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V

    .line 1664
    :goto_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1660
    :cond_0
    new-instance v0, Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    new-array v1, v4, [Ljava/lang/Integer;

    const/16 v2, -0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1661
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->orderDrawer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$29(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1662
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$GestureListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->isDrawerOpen:Z
    invoke-static {v0, v3}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$33(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V

    goto :goto_0
.end method
