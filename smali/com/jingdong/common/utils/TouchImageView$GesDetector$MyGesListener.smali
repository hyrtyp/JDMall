.class Lcom/jingdong/common/utils/TouchImageView$GesDetector$MyGesListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/TouchImageView$GesDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGesListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/utils/TouchImageView$GesDetector;


# direct methods
.method private constructor <init>(Lcom/jingdong/common/utils/TouchImageView$GesDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 933
    iput-object p1, p0, Lcom/jingdong/common/utils/TouchImageView$GesDetector$MyGesListener;->this$1:Lcom/jingdong/common/utils/TouchImageView$GesDetector;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/utils/TouchImageView$GesDetector;Lcom/jingdong/common/utils/TouchImageView$GesDetector$MyGesListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 933
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/TouchImageView$GesDetector$MyGesListener;-><init>(Lcom/jingdong/common/utils/TouchImageView$GesDetector;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 942
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$GesDetector$MyGesListener;->this$1:Lcom/jingdong/common/utils/TouchImageView$GesDetector;

    #getter for: Lcom/jingdong/common/utils/TouchImageView$GesDetector;->mListener:Lcom/jingdong/common/utils/TouchImageView$Listener;
    invoke-static {v0}, Lcom/jingdong/common/utils/TouchImageView$GesDetector;->access$0(Lcom/jingdong/common/utils/TouchImageView$GesDetector;)Lcom/jingdong/common/utils/TouchImageView$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/jingdong/common/utils/TouchImageView$Listener;->onDoubleTap(FF)Z

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
    .line 952
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$GesDetector$MyGesListener;->this$1:Lcom/jingdong/common/utils/TouchImageView$GesDetector;

    #getter for: Lcom/jingdong/common/utils/TouchImageView$GesDetector;->mListener:Lcom/jingdong/common/utils/TouchImageView$Listener;
    invoke-static {v0}, Lcom/jingdong/common/utils/TouchImageView$GesDetector;->access$0(Lcom/jingdong/common/utils/TouchImageView$GesDetector;)Lcom/jingdong/common/utils/TouchImageView$Listener;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/jingdong/common/utils/TouchImageView$Listener;->onFling(FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 947
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$GesDetector$MyGesListener;->this$1:Lcom/jingdong/common/utils/TouchImageView$GesDetector;

    #getter for: Lcom/jingdong/common/utils/TouchImageView$GesDetector;->mListener:Lcom/jingdong/common/utils/TouchImageView$Listener;
    invoke-static {v0}, Lcom/jingdong/common/utils/TouchImageView$GesDetector;->access$0(Lcom/jingdong/common/utils/TouchImageView$GesDetector;)Lcom/jingdong/common/utils/TouchImageView$Listener;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-interface {v0, p3, p4, v1, v2}, Lcom/jingdong/common/utils/TouchImageView$Listener;->onScroll(FFFF)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 937
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$GesDetector$MyGesListener;->this$1:Lcom/jingdong/common/utils/TouchImageView$GesDetector;

    #getter for: Lcom/jingdong/common/utils/TouchImageView$GesDetector;->mListener:Lcom/jingdong/common/utils/TouchImageView$Listener;
    invoke-static {v0}, Lcom/jingdong/common/utils/TouchImageView$GesDetector;->access$0(Lcom/jingdong/common/utils/TouchImageView$GesDetector;)Lcom/jingdong/common/utils/TouchImageView$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/jingdong/common/utils/TouchImageView$Listener;->onSingleTapUp(FF)Z

    move-result v0

    return v0
.end method
