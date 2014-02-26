.class Lcom/jingdong/common/utils/TouchImageView$GesDetector;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GesDetector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/TouchImageView$GesDetector$DownDetector;,
        Lcom/jingdong/common/utils/TouchImageView$GesDetector$MyGesListener;
    }
.end annotation


# instance fields
.field private final mDownDetector:Lcom/jingdong/common/utils/TouchImageView$GesDetector$DownDetector;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mListener:Lcom/jingdong/common/utils/TouchImageView$Listener;

.field final synthetic this$0:Lcom/jingdong/common/utils/TouchImageView;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/TouchImageView;Landroid/content/Context;Lcom/jingdong/common/utils/TouchImageView$Listener;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 922
    iput-object p1, p0, Lcom/jingdong/common/utils/TouchImageView$GesDetector;->this$0:Lcom/jingdong/common/utils/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 923
    iput-object p3, p0, Lcom/jingdong/common/utils/TouchImageView$GesDetector;->mListener:Lcom/jingdong/common/utils/TouchImageView$Listener;

    .line 924
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/jingdong/common/utils/TouchImageView$GesDetector$MyGesListener;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/common/utils/TouchImageView$GesDetector$MyGesListener;-><init>(Lcom/jingdong/common/utils/TouchImageView$GesDetector;Lcom/jingdong/common/utils/TouchImageView$GesDetector$MyGesListener;)V

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$GesDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 925
    new-instance v0, Lcom/jingdong/common/utils/TouchImageView$GesDetector$DownDetector;

    invoke-direct {v0, p0, v2}, Lcom/jingdong/common/utils/TouchImageView$GesDetector$DownDetector;-><init>(Lcom/jingdong/common/utils/TouchImageView$GesDetector;Lcom/jingdong/common/utils/TouchImageView$GesDetector$DownDetector;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$GesDetector;->mDownDetector:Lcom/jingdong/common/utils/TouchImageView$GesDetector$DownDetector;

    .line 926
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/TouchImageView$GesDetector;)Lcom/jingdong/common/utils/TouchImageView$Listener;
    .locals 1
    .parameter

    .prologue
    .line 920
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$GesDetector;->mListener:Lcom/jingdong/common/utils/TouchImageView$Listener;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 929
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$GesDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 930
    iget-object v0, p0, Lcom/jingdong/common/utils/TouchImageView$GesDetector;->mDownDetector:Lcom/jingdong/common/utils/TouchImageView$GesDetector$DownDetector;

    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/TouchImageView$GesDetector$DownDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 931
    return-void
.end method
