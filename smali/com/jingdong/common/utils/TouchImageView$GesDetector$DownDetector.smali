.class Lcom/jingdong/common/utils/TouchImageView$GesDetector$DownDetector;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/TouchImageView$GesDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownDetector"
.end annotation


# instance fields
.field private isDown:Z

.field final synthetic this$1:Lcom/jingdong/common/utils/TouchImageView$GesDetector;


# direct methods
.method private constructor <init>(Lcom/jingdong/common/utils/TouchImageView$GesDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 956
    iput-object p1, p0, Lcom/jingdong/common/utils/TouchImageView$GesDetector$DownDetector;->this$1:Lcom/jingdong/common/utils/TouchImageView$GesDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/utils/TouchImageView$GesDetector;Lcom/jingdong/common/utils/TouchImageView$GesDetector$DownDetector;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 956
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/TouchImageView$GesDetector$DownDetector;-><init>(Lcom/jingdong/common/utils/TouchImageView$GesDetector;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "ev"

    .prologue
    .line 960
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 977
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 962
    :pswitch_1
    iget-boolean v0, p0, Lcom/jingdong/common/utils/TouchImageView$GesDetector$DownDetector;->isDown:Z

    if-nez v0, :cond_0

    .line 963
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/TouchImageView$GesDetector$DownDetector;->isDown:Z

    .line 964
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$GesDetector$DownDetector;->this$1:Lcom/jingdong/common/utils/TouchImageView$GesDetector;

    #getter for: Lcom/jingdong/common/utils/TouchImageView$GesDetector;->mListener:Lcom/jingdong/common/utils/TouchImageView$Listener;
    invoke-static {v0}, Lcom/jingdong/common/utils/TouchImageView$GesDetector;->access$0(Lcom/jingdong/common/utils/TouchImageView$GesDetector;)Lcom/jingdong/common/utils/TouchImageView$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/jingdong/common/utils/TouchImageView$Listener;->onDown(FF)V

    goto :goto_0

    .line 971
    :pswitch_2
    iget-boolean v0, p0, Lcom/jingdong/common/utils/TouchImageView$GesDetector$DownDetector;->isDown:Z

    if-eqz v0, :cond_0

    .line 972
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/common/utils/TouchImageView$GesDetector$DownDetector;->isDown:Z

    .line 973
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$GesDetector$DownDetector;->this$1:Lcom/jingdong/common/utils/TouchImageView$GesDetector;

    #getter for: Lcom/jingdong/common/utils/TouchImageView$GesDetector;->mListener:Lcom/jingdong/common/utils/TouchImageView$Listener;
    invoke-static {v0}, Lcom/jingdong/common/utils/TouchImageView$GesDetector;->access$0(Lcom/jingdong/common/utils/TouchImageView$GesDetector;)Lcom/jingdong/common/utils/TouchImageView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/jingdong/common/utils/TouchImageView$Listener;->onUp()V

    goto :goto_0

    .line 960
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
