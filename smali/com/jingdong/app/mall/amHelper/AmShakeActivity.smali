.class public Lcom/jingdong/app/mall/amHelper/AmShakeActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "AmShakeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/amHelper/AmShakeActivity$OnShakeCallback;,
        Lcom/jingdong/app/mall/amHelper/AmShakeActivity$ShakeOnClickListener;,
        Lcom/jingdong/app/mall/amHelper/AmShakeActivity$ShakeRunnable;
    }
.end annotation


# static fields
.field public static final HEIGHT:F = 1280.0f

.field public static final SHAKE_DIALOG_CLOSE:I = 0x1

.field private static final SHAKE_SOUND_MAX:I = 0x3

.field private static final SHAKE_SOUND_TYPE_AGAIN:I = 0x2

.field private static final SHAKE_SOUND_TYPE_SHAKEING:I = 0x0

.field private static final SHAKE_SOUND_TYPE_SOMETHING:I = 0x1

.field private static final TAG:Ljava/lang/String; = null

.field public static final WIDTH:F = 720.0f

.field public static hasPause:Z

.field public static mShakeIsStop:Z


# instance fields
.field private animEnable:Z

.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private count:I

.field private filterIndex:I

.field public isBackUpKeyDown:Z

.field public isHintUser:Z

.field public isShowDialog:Z

.field private mAmShakeHomeBg:Landroid/widget/RelativeLayout;

.field private mHandAnimation:Landroid/view/animation/Animation;

.field private mHandImageView:Landroid/widget/ImageView;

.field mHandler:Landroid/os/Handler;

.field private mIsCanShake:Z

.field private mLoadingLayout:Landroid/widget/RelativeLayout;

.field private mLoadingView:Landroid/widget/ImageView;

.field private mLoopImage:Landroid/widget/ImageView;

.field private mShakeActivityIsDestry:Z

.field private mShakeBack:Landroid/widget/Button;

.field mShakeBottomShake:Landroid/widget/ImageView;

.field mShakeBottomShakeFirst:Landroid/widget/ImageView;

.field private mShakeDataIsQuerying:Z

.field private mShakeListener:Lcom/jingdong/app/mall/amHelper/AmShakeListener;

.field private mShakeProgressBar:Landroid/widget/ProgressBar;

.field private mShakeResult:Lcom/jingdong/app/mall/amHelper/AmShakeResult;

.field private mVibrator:Landroid/os/Vibrator;

.field private random:Ljava/util/Random;

.field final runnableServiceStart:Ljava/lang/Runnable;

.field final runnableServiceStop:Ljava/lang/Runnable;

.field final runnableShowAffirmDialog:Ljava/lang/Runnable;

.field private final shakeHandler:Landroid/os/Handler;

.field private final shakeRunnable:Ljava/lang/Runnable;

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    const-class v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->TAG:Ljava/lang/String;

    .line 93
    sput-boolean v1, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeIsStop:Z

    .line 545
    sput-boolean v1, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->hasPause:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/amHelper/AmShakeListener;

    .line 86
    iput-boolean v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->isHintUser:Z

    .line 87
    iput-boolean v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->isBackUpKeyDown:Z

    .line 90
    iput-boolean v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeActivityIsDestry:Z

    .line 92
    iput-boolean v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeDataIsQuerying:Z

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mIsCanShake:Z

    .line 441
    new-instance v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$1;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mHandler:Landroid/os/Handler;

    .line 453
    iput-boolean v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->animEnable:Z

    .line 761
    new-instance v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$2;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->shakeHandler:Landroid/os/Handler;

    .line 786
    new-instance v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$3;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$3;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->shakeRunnable:Ljava/lang/Runnable;

    .line 807
    new-instance v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$4;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$4;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->runnableServiceStart:Ljava/lang/Runnable;

    .line 817
    new-instance v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$5;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$5;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->runnableServiceStop:Ljava/lang/Runnable;

    .line 827
    new-instance v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$6;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$6;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->runnableShowAffirmDialog:Ljava/lang/Runnable;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mHandAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mHandImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeDataIsQuerying:Z

    return v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->closeShakeDialog()V

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 908
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->hideLoadingView()V

    return-void
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 728
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->delayStartShakeListener(I)V

    return-void
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;Lcom/jingdong/app/mall/amHelper/AmShakeResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeResult:Lcom/jingdong/app/mall/amHelper/AmShakeResult;

    return-void
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)Lcom/jingdong/app/mall/amHelper/AmShakeResult;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeResult:Lcom/jingdong/app/mall/amHelper/AmShakeResult;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 761
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->shakeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 786
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->shakeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->animEnable:Z

    return v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->showShakeResult()V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->cancelVibrator()V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->startShakeListener()V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeDataIsQuerying:Z

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 638
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->stopShakeListener()V

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->showAffirmToast()V

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mIsCanShake:Z

    return v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mIsCanShake:Z

    return-void
.end method

.method private cancelVibrator()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 651
    :cond_0
    return-void
.end method

.method private clearAnim()V
    .locals 2

    .prologue
    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->animEnable:Z

    .line 502
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mHandImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 503
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mLoopImage:Landroid/widget/ImageView;

    const v1, 0x7f0202cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 504
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mLoopImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 505
    return-void
.end method

.method private closeShakeDialog()V
    .locals 1

    .prologue
    .line 679
    sget-object v0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->instance:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    if-eqz v0, :cond_0

    .line 680
    sget-object v0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->instance:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->destroyAllData()V

    .line 681
    sget-object v0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->instance:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->finish()V

    .line 682
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->instance:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    .line 684
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->isShowDialog:Z

    .line 686
    :cond_0
    return-void
.end method

.method private delayCancelVibrator(I)V
    .locals 1
    .parameter "delay"

    .prologue
    .line 752
    new-instance v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$16;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$16;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    invoke-virtual {p0, v0, p1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->post(Ljava/lang/Runnable;I)V

    .line 759
    return-void
.end method

.method private delayStartShakeListener(I)V
    .locals 1
    .parameter "delay"

    .prologue
    .line 733
    new-instance v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$15;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$15;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    invoke-virtual {p0, v0, p1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->post(Ljava/lang/Runnable;I)V

    .line 743
    return-void
.end method

.method private destroyAllData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 914
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/amHelper/AmShakeListener;

    .line 915
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mVibrator:Landroid/os/Vibrator;

    .line 917
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mLoopImage:Landroid/widget/ImageView;

    .line 918
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mHandImageView:Landroid/widget/ImageView;

    .line 919
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mHandAnimation:Landroid/view/animation/Animation;

    .line 920
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeBack:Landroid/widget/Button;

    .line 921
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeResult:Lcom/jingdong/app/mall/amHelper/AmShakeResult;

    .line 922
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeProgressBar:Landroid/widget/ProgressBar;

    .line 923
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeBottomShake:Landroid/widget/ImageView;

    .line 924
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeBottomShakeFirst:Landroid/widget/ImageView;

    .line 925
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mAmShakeHomeBg:Landroid/widget/RelativeLayout;

    .line 926
    return-void
.end method

.method private hideLoadingView()V
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mLoadingLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 910
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 911
    return-void
.end method

.method private initAllViews()V
    .locals 6

    .prologue
    const/high16 v5, 0x44a0

    const/high16 v4, 0x4434

    .line 199
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mVibrator:Landroid/os/Vibrator;

    .line 200
    const v2, 0x7f0c0647

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeBottomShake:Landroid/widget/ImageView;

    .line 201
    const v2, 0x7f0c0646

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeBottomShakeFirst:Landroid/widget/ImageView;

    .line 202
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/jingdong/common/utils/ImageUtil;->scaleDrawable(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 203
    .local v1, animIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/jingdong/common/utils/ImageUtil;->scaleDrawable(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 204
    .local v0, animBG:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeBottomShake:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeBottomShakeFirst:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    const v2, 0x7f0c0642

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeProgressBar:Landroid/widget/ProgressBar;

    .line 208
    const v2, 0x7f0c063a

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeBack:Landroid/widget/Button;

    .line 210
    const v2, 0x7f0c063e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mLoopImage:Landroid/widget/ImageView;

    .line 211
    const v2, 0x7f0c063d

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mHandImageView:Landroid/widget/ImageView;

    .line 213
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeBack:Landroid/widget/Button;

    new-instance v3, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$ShakeOnClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$ShakeOnClickListener;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;Lcom/jingdong/app/mall/amHelper/AmShakeActivity$ShakeOnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v2, 0x7f0c0644

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mAmShakeHomeBg:Landroid/widget/RelativeLayout;

    .line 216
    const v2, 0x7f0c0071

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mLoadingView:Landroid/widget/ImageView;

    .line 217
    const v2, 0x7f0c0643

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mLoadingLayout:Landroid/widget/RelativeLayout;

    .line 219
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mLoadingView:Landroid/widget/ImageView;

    const v3, 0x7f02000e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mLoadingView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 222
    return-void
.end method

.method private optionsViewVisible(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 225
    new-instance v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$8;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;I)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->post(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method private querryShakeData()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 257
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeDataIsQuerying:Z

    .line 260
    const-string v1, "shakeAnnual"

    .line 262
    .local v1, functionId:Ljava/lang/String;
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 263
    .local v2, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 265
    invoke-static {}, Lcom/jingdong/common/utils/NetUtils;->getNetworkType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setConnectTimeout(I)V

    .line 267
    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setAttempts(I)V

    .line 268
    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 270
    :cond_0
    const-string v3, "tk"

    iget-object v4, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->token:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    new-instance v3, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 336
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->showLoadingView()V

    .line 337
    iget-object v3, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->random:Ljava/util/Random;

    const/16 v4, 0x7d0

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 342
    .local v0, delayMillis:I
    new-instance v3, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$10;

    invoke-direct {v3, p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$10;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)V

    invoke-virtual {p0, v3, v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->post(Ljava/lang/Runnable;I)V

    .line 350
    return-void
.end method

.method private showAffirmToast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 663
    sget-object v1, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->instance:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->isHintUser:Z

    if-nez v1, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    iput-boolean v3, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->isHintUser:Z

    .line 667
    sget-object v1, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->instance:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    const v2, 0x7f07054a

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 668
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 669
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 672
    const/16 v1, 0x7d0

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->delayStartShakeListener(I)V

    goto :goto_0
.end method

.method private showCustomDialog(Ljava/lang/String;)V
    .locals 4
    .parameter "comment"

    .prologue
    .line 693
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 694
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 695
    const v2, 0x7f07052d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 696
    new-instance v1, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$14;

    invoke-direct {v1, p0, v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$14;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;Landroid/app/AlertDialog;)V

    .line 714
    .local v1, listener:Landroid/content/DialogInterface$OnClickListener;
    const/4 v2, -0x1

    .line 715
    const v3, 0x7f07014d

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 714
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 719
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private showLoadingView()V
    .locals 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mLoadingLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 905
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 906
    return-void
.end method

.method private showShakeResult()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 598
    iget-boolean v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->isBackUpKeyDown:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeResult:Lcom/jingdong/app/mall/amHelper/AmShakeResult;

    if-nez v1, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget-boolean v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->isShowDialog:Z

    if-nez v1, :cond_0

    .line 603
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 604
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "0"

    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeResult:Lcom/jingdong/app/mall/amHelper/AmShakeResult;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 606
    iget-boolean v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeActivityIsDestry:Z

    if-eqz v1, :cond_2

    .line 607
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeActivityIsDestry:Z

    goto :goto_0

    .line 611
    :cond_2
    const-string v1, "result"

    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeResult:Lcom/jingdong/app/mall/amHelper/AmShakeResult;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 613
    :cond_3
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->runnableServiceStart:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->runnableServiceStop:Ljava/lang/Runnable;

    invoke-static {p0, v1, v2}, Lcom/jingdong/common/utils/ShakeUtils;->shakeCallback(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 615
    invoke-virtual {p0, v0, v3}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 617
    iput-boolean v3, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->isShowDialog:Z

    goto :goto_0
.end method

.method private startAnim()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 457
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mHandAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_0

    .line 458
    const v2, 0x7f04000e

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mHandAnimation:Landroid/view/animation/Animation;

    .line 459
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mHandAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 460
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mHandAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 461
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mHandAnimation:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 462
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mHandAnimation:Landroid/view/animation/Animation;

    new-instance v3, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$12;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$12;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 486
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 487
    .local v1, message:Landroid/os/Message;
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 490
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mLoopImage:Landroid/widget/ImageView;

    const v3, 0x7f0202e5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 491
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mLoopImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 492
    .local v0, loopAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 493
    return-void
.end method

.method private declared-synchronized startShakeListener()V
    .locals 1

    .prologue
    .line 624
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->hasPause:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 636
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 633
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/amHelper/AmShakeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/amHelper/AmShakeListener;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->isShakeListenerStart()Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/amHelper/AmShakeListener;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopShakeListener()V
    .locals 1

    .prologue
    .line 642
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/amHelper/AmShakeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/amHelper/AmShakeListener;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->isShakeListenerStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/amHelper/AmShakeListener;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    :cond_0
    monitor-exit p0

    return-void

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 192
    sput-object v0, Lcom/jingdong/common/utils/ShakeUtils;->mShakeRunnableStart:Ljava/lang/Runnable;

    .line 193
    sput-object v0, Lcom/jingdong/common/utils/ShakeUtils;->mShakeRunnableStop:Ljava/lang/Runnable;

    .line 195
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->finish()V

    .line 196
    return-void
.end method

.method public final isScreenLocked()Z
    .locals 2

    .prologue
    .line 899
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 900
    .local v0, mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 377
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/MyActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 382
    if-nez p2, :cond_0

    .line 383
    iput-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->isShowDialog:Z

    .line 384
    iput-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->isHintUser:Z

    .line 385
    sput-boolean v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeIsStop:Z

    .line 386
    new-instance v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$11;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$11;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->post(Ljava/lang/Runnable;)V

    .line 394
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v1, 0x7f030100

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->setContentView(Landroid/view/View;)V

    .line 112
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->initAllViews()V

    .line 115
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeBottomShake:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeBottomShakeFirst:Landroid/widget/ImageView;

    invoke-static {p0, v1, v2}, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils;->startBottomAnim(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    .line 118
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->token:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->token:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    sget-object v1, Lcom/jingdong/app/mall/amHelper/AmHelper;->token:Ljava/lang/String;

    iput-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->token:Ljava/lang/String;

    .line 127
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mAmShakeHomeBg:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mAmShakeHomeBg:Landroid/widget/RelativeLayout;

    const v2, 0x7f020014

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_1
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->optionsViewVisible(I)V

    .line 139
    new-instance v1, Lcom/jingdong/app/mall/amHelper/AmShakeListener;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/amHelper/AmShakeListener;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/amHelper/AmShakeListener;

    .line 141
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/amHelper/AmShakeListener;

    new-instance v2, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->setOnShakeListener(Lcom/jingdong/app/mall/amHelper/AmShakeListener$OnShakeListener;)V

    .line 185
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 186
    .local v0, metric:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 187
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->random:Ljava/util/Random;

    .line 188
    return-void

    .line 130
    .end local v0           #metric:Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 572
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onDestroy()V

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeActivityIsDestry:Z

    .line 574
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->stopShakeListener()V

    .line 575
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->closeShakeDialog()V

    .line 576
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/amHelper/AmShakeListener;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->destroy()V

    .line 577
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->destroyAllData()V

    .line 578
    invoke-static {}, Lcom/jingdong/app/mall/amHelper/AmHelper;->getInstance()Lcom/jingdong/app/mall/amHelper/AmHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/amHelper/AmHelper;->destroyAllData()V

    .line 579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->isBackUpKeyDown:Z

    .line 580
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 859
    sparse-switch p1, :sswitch_data_0

    .line 868
    invoke-super {p0, p1, p2}, Lcom/jingdong/app/mall/utils/MyActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 863
    :sswitch_1
    iput-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->isBackUpKeyDown:Z

    .line 864
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->finish()V

    goto :goto_0

    .line 859
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->hasPause:Z

    .line 553
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onPause()V

    .line 554
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->stopShakeListener()V

    .line 555
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->clearAnim()V

    .line 556
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 529
    sput-boolean v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->hasPause:Z

    .line 530
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 532
    sput-boolean v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeIsStop:Z

    .line 533
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->startAnim()V

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->animEnable:Z

    .line 535
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->startShakeListener()V

    .line 537
    new-instance v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$13;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$13;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    .line 542
    const/16 v1, 0x1f4

    .line 537
    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->post(Ljava/lang/Runnable;I)V

    .line 543
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 521
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onStart()V

    .line 522
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 563
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onStop()V

    .line 564
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->clearAnim()V

    .line 565
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    const/16 v2, 0x7d0

    const/4 v1, 0x0

    .line 876
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onWindowFocusChanged(Z)V

    .line 877
    if-nez p1, :cond_0

    .line 878
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->isScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeIsStop:Z

    .line 883
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->stopShakeListener()V

    .line 884
    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->delayCancelVibrator(I)V

    .line 896
    :goto_0
    return-void

    .line 888
    :cond_0
    if-eqz p1, :cond_1

    .line 889
    sput-boolean v1, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeIsStop:Z

    .line 890
    sput-boolean v1, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->hasPause:Z

    .line 891
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->delayStartShakeListener(I)V

    goto :goto_0

    .line 893
    :cond_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->stopShakeListener()V

    .line 894
    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->delayCancelVibrator(I)V

    goto :goto_0
.end method

.method public saveStringToCache(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .parameter "content"

    .prologue
    .line 425
    const/4 v2, 0x0

    .line 426
    .local v2, result:Z
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/jingdong/common/utils/FileService;->getDirectory(I)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    .line 427
    .local v0, directory:Lcom/jingdong/common/utils/FileService$Directory;
    if-eqz v0, :cond_0

    .line 432
    :try_start_0
    const-string v3, "shake_cache.txt"

    invoke-static {v0, v3, p1}, Lcom/jingdong/common/utils/FileService;->saveToSDCard(Lcom/jingdong/common/utils/FileService$Directory;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 433
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 438
    :goto_0
    return-object v3

    .line 434
    :catch_0
    move-exception v1

    .line 435
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 438
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method protected startToShake()V
    .locals 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->isHintUser:Z

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->startVibrato()V

    .line 246
    invoke-static {}, Lcom/jingdong/app/mall/amHelper/AmHelper;->getInstance()Lcom/jingdong/app/mall/amHelper/AmHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/amHelper/AmHelper;->startShakeSound(I)V

    .line 248
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->querryShakeData()V

    .line 250
    :cond_0
    return-void
.end method

.method public startVibrato()V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 514
    :cond_0
    return-void

    .line 512
    nop

    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
