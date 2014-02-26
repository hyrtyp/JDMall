.class Lcom/jingdong/common/utils/TouchImageView$MyGesListener;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Lcom/jingdong/common/utils/TouchImageView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGesListener"
.end annotation


# instance fields
.field private mNoUp:Z

.field final synthetic this$0:Lcom/jingdong/common/utils/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/jingdong/common/utils/TouchImageView;)V
    .locals 1
    .parameter

    .prologue
    .line 767
    iput-object p1, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->mNoUp:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/utils/TouchImageView;Lcom/jingdong/common/utils/TouchImageView$MyGesListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 767
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;-><init>(Lcom/jingdong/common/utils/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 782
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 824
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/TouchImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 825
    return-void
.end method

.method public onFling(FF)Z
    .locals 10
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x8000

    const/4 v9, 0x1

    .line 806
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    #getter for: Lcom/jingdong/common/utils/TouchImageView;->isScaling:Z
    invoke-static {v0}, Lcom/jingdong/common/utils/TouchImageView;->access$4(Lcom/jingdong/common/utils/TouchImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    :cond_0
    :goto_0
    return v9

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    #getter for: Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;
    invoke-static {v0}, Lcom/jingdong/common/utils/TouchImageView;->access$5(Lcom/jingdong/common/utils/TouchImageView;)Lcom/jingdong/common/utils/TouchImageView$Img;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    #getter for: Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;
    invoke-static {v0}, Lcom/jingdong/common/utils/TouchImageView;->access$5(Lcom/jingdong/common/utils/TouchImageView;)Lcom/jingdong/common/utils/TouchImageView$Img;

    move-result-object v0

    #calls: Lcom/jingdong/common/utils/TouchImageView$Img;->computeFling()Z
    invoke-static {v0}, Lcom/jingdong/common/utils/TouchImageView$Img;->access$1(Lcom/jingdong/common/utils/TouchImageView$Img;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    #getter for: Lcom/jingdong/common/utils/TouchImageView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/jingdong/common/utils/TouchImageView;->access$7(Lcom/jingdong/common/utils/TouchImageView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 815
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    #getter for: Lcom/jingdong/common/utils/TouchImageView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/jingdong/common/utils/TouchImageView;->access$7(Lcom/jingdong/common/utils/TouchImageView;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    #getter for: Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;
    invoke-static {v1}, Lcom/jingdong/common/utils/TouchImageView;->access$5(Lcom/jingdong/common/utils/TouchImageView;)Lcom/jingdong/common/utils/TouchImageView$Img;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/utils/TouchImageView$Img;->getCenterX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    #getter for: Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;
    invoke-static {v2}, Lcom/jingdong/common/utils/TouchImageView;->access$5(Lcom/jingdong/common/utils/TouchImageView;)Lcom/jingdong/common/utils/TouchImageView$Img;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/utils/TouchImageView$Img;->getCenterY()F

    move-result v2

    float-to-int v2, v2

    float-to-int v3, p1

    div-int/lit8 v3, v3, 0x2

    float-to-int v4, p2

    div-int/lit8 v4, v4, 0x2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 816
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    #setter for: Lcom/jingdong/common/utils/TouchImageView;->isFling:Z
    invoke-static {v0, v9}, Lcom/jingdong/common/utils/TouchImageView;->access$8(Lcom/jingdong/common/utils/TouchImageView;Z)V

    .line 817
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onScroll(FFFF)Z
    .locals 7
    .parameter "dx"
    .parameter "dy"
    .parameter "totalX"
    .parameter "totalY"

    .prologue
    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    .line 787
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    #getter for: Lcom/jingdong/common/utils/TouchImageView;->isScaling:Z
    invoke-static {v1}, Lcom/jingdong/common/utils/TouchImageView;->access$4(Lcom/jingdong/common/utils/TouchImageView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 801
    :cond_0
    :goto_0
    return v5

    .line 790
    :cond_1
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    #getter for: Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;
    invoke-static {v1}, Lcom/jingdong/common/utils/TouchImageView;->access$5(Lcom/jingdong/common/utils/TouchImageView;)Lcom/jingdong/common/utils/TouchImageView$Img;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 793
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    #getter for: Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;
    invoke-static {v1}, Lcom/jingdong/common/utils/TouchImageView;->access$5(Lcom/jingdong/common/utils/TouchImageView;)Lcom/jingdong/common/utils/TouchImageView$Img;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    #getter for: Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;
    invoke-static {v2}, Lcom/jingdong/common/utils/TouchImageView;->access$5(Lcom/jingdong/common/utils/TouchImageView;)Lcom/jingdong/common/utils/TouchImageView$Img;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/utils/TouchImageView$Img;->getCenterX()F

    move-result v2

    neg-float v3, p1

    add-float/2addr v3, v6

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    #getter for: Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;
    invoke-static {v3}, Lcom/jingdong/common/utils/TouchImageView;->access$5(Lcom/jingdong/common/utils/TouchImageView;)Lcom/jingdong/common/utils/TouchImageView$Img;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/utils/TouchImageView$Img;->getCenterY()F

    move-result v3

    neg-float v4, p2

    add-float/2addr v4, v6

    add-float/2addr v3, v4

    #calls: Lcom/jingdong/common/utils/TouchImageView$Img;->setPos(FF)Z
    invoke-static {v1, v2, v3}, Lcom/jingdong/common/utils/TouchImageView$Img;->access$0(Lcom/jingdong/common/utils/TouchImageView$Img;FF)Z

    move-result v0

    .line 794
    .local v0, needInvalidate:Z
    if-eqz v0, :cond_2

    .line 795
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 797
    :cond_2
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    iget-object v2, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    #getter for: Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;
    invoke-static {v2}, Lcom/jingdong/common/utils/TouchImageView;->access$5(Lcom/jingdong/common/utils/TouchImageView;)Lcom/jingdong/common/utils/TouchImageView$Img;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/utils/TouchImageView$Img;->getDisplayWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    #getter for: Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;
    invoke-static {v3}, Lcom/jingdong/common/utils/TouchImageView;->access$5(Lcom/jingdong/common/utils/TouchImageView;)Lcom/jingdong/common/utils/TouchImageView$Img;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/utils/TouchImageView$Img;->getDisplayHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    #calls: Lcom/jingdong/common/utils/TouchImageView;->scaleTo(FFF)V
    invoke-static {v1, v2, v3, v4}, Lcom/jingdong/common/utils/TouchImageView;->access$6(Lcom/jingdong/common/utils/TouchImageView;FFF)V

    .line 798
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/TouchImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public onSingleTapUp(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    .line 773
    iput-boolean v1, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->mNoUp:Z

    .line 774
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    iget-object v0, v0, Lcom/jingdong/common/utils/TouchImageView;->mControllListener:Lcom/jingdong/common/utils/TouchImageView$ControllListener;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    iget-object v0, v0, Lcom/jingdong/common/utils/TouchImageView;->mControllListener:Lcom/jingdong/common/utils/TouchImageView$ControllListener;

    invoke-interface {v0}, Lcom/jingdong/common/utils/TouchImageView$ControllListener;->onSingleTapUp()V

    .line 777
    :cond_0
    return v1
.end method

.method public onUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 829
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/TouchImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 830
    iget-boolean v1, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->mNoUp:Z

    if-eqz v1, :cond_1

    .line 831
    iput-boolean v2, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->mNoUp:Z

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    #getter for: Lcom/jingdong/common/utils/TouchImageView;->img:Lcom/jingdong/common/utils/TouchImageView$Img;
    invoke-static {v1}, Lcom/jingdong/common/utils/TouchImageView;->access$5(Lcom/jingdong/common/utils/TouchImageView;)Lcom/jingdong/common/utils/TouchImageView$Img;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    #calls: Lcom/jingdong/common/utils/TouchImageView;->endDrag()Z
    invoke-static {v1}, Lcom/jingdong/common/utils/TouchImageView;->access$9(Lcom/jingdong/common/utils/TouchImageView;)Z

    move-result v0

    .line 838
    .local v0, needInvalidate:Z
    if-eqz v0, :cond_0

    .line 839
    iget-object v1, p0, Lcom/jingdong/common/utils/TouchImageView$MyGesListener;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method
