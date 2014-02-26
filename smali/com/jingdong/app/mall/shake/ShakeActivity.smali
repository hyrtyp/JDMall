.class public Lcom/jingdong/app/mall/shake/ShakeActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "ShakeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shake/ShakeActivity$OnShakeCallback;,
        Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;,
        Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeRunnable;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:J = 0x7d0L

.field public static final HEIGHT:F = 1136.0f

.field public static final SHAKE_DELAY_TIME:I = 0x7d0

.field public static final SHAKE_DELAY_TIME_CAN_SHAKE:I = 0x834

.field public static final SHAKE_DIALOG_CLOSE:I = 0x1

.field public static final SHAKE_POPULARITY_KEYE:Ljava/lang/String; = "popularity_key"

.field public static final SHAKE_POPULARITY_VALUE:Z = true

.field public static final SHAKE_SINGER_TYPE:Ljava/lang/String; = "singer"

.field private static final SHAKE_SOUND_MAX:I = 0x4

.field private static final SHAKE_SOUND_TYPE_AGAIN:I = 0x2

.field private static final SHAKE_SOUND_TYPE_NOTHING:I = 0x3

.field private static final SHAKE_SOUND_TYPE_SHAKEING:I = 0x0

.field private static final SHAKE_SOUND_TYPE_SOMETHING:I = 0x1

.field public static final SHAKE_TYPE:Ljava/lang/String; = "shake_type"

.field private static final TAG:Ljava/lang/String; = null

.field public static final WIDTH:F = 640.0f

.field public static hasPause:Z

.field public static mShakeIsStop:Z


# instance fields
.field private animEnable:Z

.field private clickTime:J

.field private isCanClickButton:Z

.field public isHintUser:Z

.field private isPopularityQuerying:Z

.field public isShowDialog:Z

.field private mCurrentShakeTimes:Ljava/lang/String;

.field private mHandAnimation:Landroid/view/animation/Animation;

.field private mHandImageView:Landroid/widget/ImageView;

.field mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsCanShake:Z

.field private mJLOGEvent:Ljava/lang/String;

.field private mJLOGKey:Ljava/lang/String;

.field private mJLOGValue:Ljava/lang/String;

.field private mLoopImage:Landroid/widget/ImageView;

.field private mMaxIntShakeTime:I

.field private mMaxShakeTime:Ljava/lang/String;

.field private mPopularityImageView:Landroid/widget/ImageView;

.field private mProgressView:Landroid/view/View;

.field private mShakeActivityIsDestry:Z

.field private mShakeBDInfo:Lcom/jingdong/common/entity/ShakeBDInfo;

.field private mShakeBack:Landroid/widget/Button;

.field private mShakeBottomShake:Landroid/widget/ImageView;

.field private mShakeBottomShakeFirst:Landroid/widget/ImageView;

.field private mShakeDataIsQuerying:Z

.field private mShakeHomeBg:Landroid/widget/RelativeLayout;

.field private mShakeHomeUploadBg:Landroid/widget/RelativeLayout;

.field private mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

.field private mShakeProgressBar:Landroid/widget/ProgressBar;

.field private mShakeResult:Lcom/jingdong/common/entity/ShakeResult;

.field private mShakeShare:Landroid/widget/Button;

.field private mShakeTimeSuccess:Z

.field private mShakeTimes:I

.field private mShakeTimesTextView:Landroid/widget/TextView;

.field private mShakeType:Ljava/lang/String;

.field private mStandardDateFromSD:Ljava/lang/String;

.field private mVibrator:Landroid/os/Vibrator;

.field final runnableServiceStart:Ljava/lang/Runnable;

.field final runnableServiceStop:Ljava/lang/Runnable;

.field final runnableShowAffirmDialog:Ljava/lang/Runnable;

.field private shakeHandler:Landroid/os/Handler;

.field private shakeMoreTimesDialog:Z

.field private shakeRunnable:Ljava/lang/Runnable;

.field private sndPool:Landroid/media/SoundPool;

.field private soundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private standardDate:Ljava/lang/String;

.field private switchValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    const-class v0, Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/shake/ShakeActivity;->TAG:Ljava/lang/String;

    .line 120
    sput-boolean v1, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeIsStop:Z

    .line 137
    sput-boolean v1, Lcom/jingdong/app/mall/shake/ShakeActivity;->hasPause:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->soundPoolMap:Ljava/util/HashMap;

    .line 77
    iput v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->switchValue:I

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mStandardDateFromSD:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mCurrentShakeTimes:Ljava/lang/String;

    .line 111
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isHintUser:Z

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGEvent:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGKey:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGValue:Ljava/lang/String;

    .line 116
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->shakeMoreTimesDialog:Z

    .line 117
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeActivityIsDestry:Z

    .line 119
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeDataIsQuerying:Z

    .line 122
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimeSuccess:Z

    .line 123
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mIsCanShake:Z

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeType:Ljava/lang/String;

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->clickTime:J

    .line 135
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isPopularityQuerying:Z

    .line 136
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isCanClickButton:Z

    .line 803
    new-instance v0, Lcom/jingdong/app/mall/shake/ShakeActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shake/ShakeActivity$1;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mHandler:Landroid/os/Handler;

    .line 814
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->animEnable:Z

    .line 1447
    new-instance v0, Lcom/jingdong/app/mall/shake/ShakeActivity$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shake/ShakeActivity$2;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->shakeHandler:Landroid/os/Handler;

    .line 1498
    new-instance v0, Lcom/jingdong/app/mall/shake/ShakeActivity$3;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shake/ShakeActivity$3;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->shakeRunnable:Ljava/lang/Runnable;

    .line 1532
    new-instance v0, Lcom/jingdong/app/mall/shake/ShakeActivity$4;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shake/ShakeActivity$4;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->runnableServiceStart:Ljava/lang/Runnable;

    .line 1542
    new-instance v0, Lcom/jingdong/app/mall/shake/ShakeActivity$5;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shake/ShakeActivity$5;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->runnableServiceStop:Ljava/lang/Runnable;

    .line 1552
    new-instance v0, Lcom/jingdong/app/mall/shake/ShakeActivity$6;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shake/ShakeActivity$6;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->runnableShowAffirmDialog:Ljava/lang/Runnable;

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mHandAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mHandImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/shake/ShakeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeDataIsQuerying:Z

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/shake/ShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1034
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->stopShakeListener()V

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/shake/ShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1116
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->showAffirmToast()V

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/shake/ShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1427
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->avoidMoreTimeClick()V

    return-void
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/shake/ShakeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeDataIsQuerying:Z

    return v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/shake/ShakeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isCanClickButton:Z

    return v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/shake/ShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1435
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->avoidMoreTimeClicked()V

    return-void
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->optionsHomeShare()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGEvent:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGValue:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shake/ShakeActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 77
    iget v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->switchValue:I

    return v0
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGEvent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/shake/ShakeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isPopularityQuerying:Z

    return v0
.end method

.method static synthetic access$22(Lcom/jingdong/app/mall/shake/ShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1360
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->forwardPopularityList()V

    return-void
.end method

.method static synthetic access$23(Lcom/jingdong/app/mall/shake/ShakeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mIsCanShake:Z

    return v0
.end method

.method static synthetic access$24(Lcom/jingdong/app/mall/shake/ShakeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mIsCanShake:Z

    return-void
.end method

.method static synthetic access$25(Lcom/jingdong/app/mall/shake/ShakeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimeSuccess:Z

    return v0
.end method

.method static synthetic access$26(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1055
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeSound(I)V

    return-void
.end method

.method static synthetic access$27(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mCurrentShakeTimes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 553
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->loadShakeTimes(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$29(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->standardDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 956
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->showShakeResult(I)V

    return-void
.end method

.method static synthetic access$30(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mStandardDateFromSD:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$31(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mCurrentShakeTimes:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$32(Lcom/jingdong/app/mall/shake/ShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1207
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->showShakeToast()V

    return-void
.end method

.method static synthetic access$33(Lcom/jingdong/app/mall/shake/ShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1192
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->closeShakeDialog()V

    return-void
.end method

.method static synthetic access$34(Lcom/jingdong/app/mall/shake/ShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1132
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->showNoShakeTimesToast()V

    return-void
.end method

.method static synthetic access$35(Lcom/jingdong/app/mall/shake/ShakeActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 93
    iget v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mMaxIntShakeTime:I

    return v0
.end method

.method static synthetic access$36(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$37(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$38(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$39(Lcom/jingdong/app/mall/shake/ShakeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 1214
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->shakeDialogIsShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/shake/ShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1043
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->cancelVibrator()V

    return-void
.end method

.method static synthetic access$40(Lcom/jingdong/app/mall/shake/ShakeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->shakeMoreTimesDialog:Z

    return v0
.end method

.method static synthetic access$41(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1306
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->showCustomDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$42(Lcom/jingdong/app/mall/shake/ShakeActivity;Lcom/jingdong/common/entity/ShakeResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeResult:Lcom/jingdong/common/entity/ShakeResult;

    return-void
.end method

.method static synthetic access$43(Lcom/jingdong/app/mall/shake/ShakeActivity;)Lcom/jingdong/common/entity/ShakeResult;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeResult:Lcom/jingdong/common/entity/ShakeResult;

    return-object v0
.end method

.method static synthetic access$44(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->obtainFunctionId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$45(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->switchValue:I

    return-void
.end method

.method static synthetic access$46(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->shakeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$47(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->shakeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$48(Lcom/jingdong/app/mall/shake/ShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->showError()V

    return-void
.end method

.method static synthetic access$49(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->optionsViewVisible(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/shake/ShakeActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 85
    iget v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimes:I

    return v0
.end method

.method static synthetic access$50(Lcom/jingdong/app/mall/shake/ShakeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimeSuccess:Z

    return-void
.end method

.method static synthetic access$51(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mMaxShakeTime:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$52(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->standardDate:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$53(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mMaxShakeTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$54(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mMaxIntShakeTime:I

    return-void
.end method

.method static synthetic access$55(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimesTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$56(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->soundPoolMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$57(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/media/SoundPool;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->sndPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$58(Lcom/jingdong/app/mall/shake/ShakeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->animEnable:Z

    return v0
.end method

.method static synthetic access$59(Lcom/jingdong/app/mall/shake/ShakeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->shakeMoreTimesDialog:Z

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimes:I

    return-void
.end method

.method static synthetic access$60(Lcom/jingdong/app/mall/shake/ShakeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isPopularityQuerying:Z

    return-void
.end method

.method static synthetic access$61(Lcom/jingdong/app/mall/shake/ShakeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isCanClickButton:Z

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mStandardDateFromSD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 639
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->updateShakeTimes(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/shake/ShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1017
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeListener()V

    return-void
.end method

.method private avoidMoreTimeClick()V
    .locals 4

    .prologue
    .line 1428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->clickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->clickTime:J

    .line 1433
    :cond_0
    return-void
.end method

.method private avoidMoreTimeClicked()V
    .locals 2

    .prologue
    .line 1436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isCanClickButton:Z

    .line 1437
    new-instance v0, Lcom/jingdong/app/mall/shake/ShakeActivity$20;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shake/ShakeActivity$20;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    .line 1443
    const/16 v1, 0xbb8

    .line 1437
    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->post(Ljava/lang/Runnable;I)V

    .line 1444
    return-void
.end method

.method private cancelVibrator()V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 1047
    :cond_0
    return-void
.end method

.method private clearAnim()V
    .locals 2

    .prologue
    .line 861
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->animEnable:Z

    .line 862
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mHandImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 863
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->isSingerShake()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mLoopImage:Landroid/widget/ImageView;

    const v1, 0x7f0202ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 869
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mLoopImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 870
    return-void

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mLoopImage:Landroid/widget/ImageView;

    const v1, 0x7f0202cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private closeShakeDialog()V
    .locals 1

    .prologue
    .line 1196
    sget-object v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->instance:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    if-eqz v0, :cond_0

    .line 1197
    sget-object v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->instance:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->destroyAllData()V

    .line 1198
    sget-object v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->instance:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->finish()V

    .line 1199
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->instance:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    .line 1200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isShowDialog:Z

    .line 1202
    :cond_0
    return-void
.end method

.method private delayCancelVibrator(I)V
    .locals 1
    .parameter "delay"

    .prologue
    .line 1169
    new-instance v0, Lcom/jingdong/app/mall/shake/ShakeActivity$17;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shake/ShakeActivity$17;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    invoke-virtual {p0, v0, p1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->post(Ljava/lang/Runnable;I)V

    .line 1176
    return-void
.end method

.method private delayStartShakeListener(I)V
    .locals 1
    .parameter "delay"

    .prologue
    .line 1150
    sget-boolean v0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeIsStop:Z

    if-eqz v0, :cond_0

    .line 1161
    :goto_0
    return-void

    .line 1154
    :cond_0
    new-instance v0, Lcom/jingdong/app/mall/shake/ShakeActivity$16;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shake/ShakeActivity$16;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    invoke-virtual {p0, v0, p1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->post(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method private destroyAllData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1223
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeResult:Lcom/jingdong/common/entity/ShakeResult;

    .line 1224
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeShare:Landroid/widget/Button;

    .line 1225
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeProgressBar:Landroid/widget/ProgressBar;

    .line 1226
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mStandardDateFromSD:Ljava/lang/String;

    .line 1227
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mCurrentShakeTimes:Ljava/lang/String;

    .line 1228
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mMaxShakeTime:Ljava/lang/String;

    .line 1229
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->standardDate:Ljava/lang/String;

    .line 1230
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mProgressView:Landroid/view/View;

    .line 1231
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBDInfo:Lcom/jingdong/common/entity/ShakeBDInfo;

    .line 1232
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mPopularityImageView:Landroid/widget/ImageView;

    .line 1233
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBottomShakeFirst:Landroid/widget/ImageView;

    .line 1234
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBottomShake:Landroid/widget/ImageView;

    .line 1235
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

    .line 1236
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mVibrator:Landroid/os/Vibrator;

    .line 1237
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->sndPool:Landroid/media/SoundPool;

    .line 1238
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->soundPoolMap:Ljava/util/HashMap;

    .line 1239
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBDInfo:Lcom/jingdong/common/entity/ShakeBDInfo;

    .line 1240
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeHomeBg:Landroid/widget/RelativeLayout;

    .line 1241
    return-void
.end method

.method private forwardPopularityList()V
    .locals 5

    .prologue
    .line 1364
    const-string v0, "action"

    .line 1365
    .local v0, action:Ljava/lang/String;
    const-string v3, ""

    .line 1367
    .local v3, toUrl:Ljava/lang/String;
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isPopularityQuerying:Z

    .line 1369
    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBDInfo:Lcom/jingdong/common/entity/ShakeBDInfo;

    if-eqz v4, :cond_0

    .line 1370
    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBDInfo:Lcom/jingdong/common/entity/ShakeBDInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/ShakeBDInfo;->getData()Lcom/jingdong/common/entity/ShakeData;

    move-result-object v1

    .line 1371
    .local v1, data:Lcom/jingdong/common/entity/ShakeData;
    if-eqz v1, :cond_0

    .line 1372
    invoke-virtual {v1}, Lcom/jingdong/common/entity/ShakeData;->getRankUrl()Ljava/lang/String;

    move-result-object v3

    .line 1376
    .end local v1           #data:Lcom/jingdong/common/entity/ShakeData;
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1377
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isPopularityQuerying:Z

    .line 1402
    :goto_0
    return-void

    .line 1381
    :cond_2
    new-instance v2, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v2}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 1382
    .local v2, params:Lcom/jingdong/common/utils/URLParamMap;
    const-string v4, "to"

    invoke-virtual {v2, v4, v3}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1383
    new-instance v4, Lcom/jingdong/app/mall/shake/ShakeActivity$19;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/shake/ShakeActivity$19;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    invoke-static {v0, v2, v4}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    goto :goto_0
.end method

.method private initAllViews()V
    .locals 7

    .prologue
    const/high16 v6, 0x448e

    const/high16 v5, 0x4420

    const/4 v4, 0x0

    .line 332
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mVibrator:Landroid/os/Vibrator;

    .line 334
    const v2, 0x7f0c0641

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimesTextView:Landroid/widget/TextView;

    .line 336
    const v2, 0x7f0c0642

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeProgressBar:Landroid/widget/ProgressBar;

    .line 337
    const v2, 0x7f0c063a

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBack:Landroid/widget/Button;

    .line 338
    const v2, 0x7f0c063b

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeShare:Landroid/widget/Button;

    .line 340
    const v2, 0x7f0c063e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mLoopImage:Landroid/widget/ImageView;

    .line 341
    const v2, 0x7f0c063d

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mHandImageView:Landroid/widget/ImageView;

    .line 343
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBack:Landroid/widget/Button;

    new-instance v3, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;

    invoke-direct {v3, p0, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeShare:Landroid/widget/Button;

    new-instance v3, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;

    invoke-direct {v3, p0, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    const v2, 0x7f0c0643

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mProgressView:Landroid/view/View;

    .line 347
    const v2, 0x7f0c0639

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeHomeBg:Landroid/widget/RelativeLayout;

    .line 348
    const v2, 0x7f0c0638

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeHomeUploadBg:Landroid/widget/RelativeLayout;

    .line 349
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->isSingerShake()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->isShowPopularity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    const v2, 0x7f0c0649

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mPopularityImageView:Landroid/widget/ImageView;

    .line 352
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mPopularityImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;

    invoke-direct {v3, p0, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mPopularityImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    :cond_0
    const v2, 0x7f0c0647

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBottomShake:Landroid/widget/ImageView;

    .line 357
    const v2, 0x7f0c0646

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBottomShakeFirst:Landroid/widget/ImageView;

    .line 359
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v5, v6}, Lcom/jingdong/common/utils/ImageUtil;->scaleDrawable(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 360
    .local v1, animIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v5, v6}, Lcom/jingdong/common/utils/ImageUtil;->scaleDrawable(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 361
    .local v0, animBG:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBottomShake:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBottomShakeFirst:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 364
    .end local v0           #animBG:Landroid/graphics/drawable/Drawable;
    .end local v1           #animIcon:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private initToast()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1179
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030109

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1180
    .local v1, toastRoot:Landroid/view/View;
    const v3, 0x7f0c067f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1181
    .local v0, message:Landroid/widget/TextView;
    const-string v3, "My Toast"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1183
    sget-object v3, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->instance:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    if-eqz v3, :cond_0

    .line 1184
    new-instance v2, Landroid/widget/Toast;

    sget-object v3, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->instance:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-direct {v2, v3}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1185
    .local v2, toastStart:Landroid/widget/Toast;
    const/16 v3, 0x11

    invoke-virtual {v2, v3, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 1186
    invoke-virtual {v2, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 1187
    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1188
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1190
    .end local v2           #toastStart:Landroid/widget/Toast;
    :cond_0
    return-void
.end method

.method private isShowPopularity()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1413
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->isSingerShake()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBDInfo:Lcom/jingdong/common/entity/ShakeBDInfo;

    if-eqz v3, :cond_0

    .line 1414
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBDInfo:Lcom/jingdong/common/entity/ShakeBDInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/ShakeBDInfo;->getData()Lcom/jingdong/common/entity/ShakeData;

    move-result-object v0

    .line 1415
    .local v0, data:Lcom/jingdong/common/entity/ShakeData;
    if-eqz v0, :cond_0

    .line 1416
    invoke-virtual {v0}, Lcom/jingdong/common/entity/ShakeData;->getIsRank()I

    move-result v1

    .line 1417
    .local v1, isRank:I
    if-ne v2, v1, :cond_1

    .line 1424
    .end local v0           #data:Lcom/jingdong/common/entity/ShakeData;
    .end local v1           #isRank:I
    :cond_0
    :goto_0
    return v2

    .line 1420
    .restart local v0       #data:Lcom/jingdong/common/entity/ShakeData;
    .restart local v1       #isRank:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSingerShake()Z
    .locals 2

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeType:Ljava/lang/String;

    const-string v1, "singer"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    const/4 v0, 0x1

    .line 1409
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadShakeTimes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "standardDateFromSD"
    .parameter "currentShakeTimes"

    .prologue
    .line 557
    const-string v0, "shakeTimes"

    .line 559
    .local v0, functionId:Ljava/lang/String;
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 560
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 561
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 562
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 563
    new-instance v2, Lcom/jingdong/app/mall/shake/ShakeActivity$11;

    invoke-direct {v2, p0, p1, p2}, Lcom/jingdong/app/mall/shake/ShakeActivity$11;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 629
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 630
    return-void
.end method

.method private loadSound()V
    .locals 4

    .prologue
    .line 723
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->sndPool:Landroid/media/SoundPool;

    .line 724
    new-instance v0, Lcom/jingdong/app/mall/shake/ShakeActivity$13;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shake/ShakeActivity$13;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    .line 738
    invoke-virtual {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity$13;->start()V

    .line 739
    return-void
.end method

.method private obtainFunctionId(Ljava/lang/String;)I
    .locals 2
    .parameter "shakeType"

    .prologue
    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, functionId:I
    const-string v1, "sku"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    const/4 v0, 0x1

    .line 437
    :cond_0
    :goto_0
    return v0

    .line 421
    :cond_1
    const-string v1, "special_sku"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 422
    const/4 v0, 0x2

    .line 423
    goto :goto_0

    :cond_2
    const-string v1, "coupon"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 424
    const/4 v0, 0x3

    .line 425
    goto :goto_0

    :cond_3
    const-string v1, "bean"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 426
    const/4 v0, 0x4

    .line 427
    goto :goto_0

    :cond_4
    const-string v1, "nothing"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 428
    const/4 v0, 0x5

    .line 429
    goto :goto_0

    :cond_5
    const-string v1, "more"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 430
    const/4 v0, 0x6

    .line 431
    goto :goto_0

    :cond_6
    const-string v1, "special_prize"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 432
    const/16 v0, 0x8

    .line 433
    goto :goto_0

    :cond_7
    const-string v1, "hot_sku"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private optionHomeBg(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "orginalBitmap"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBDInfo:Lcom/jingdong/common/entity/ShakeBDInfo;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBDInfo:Lcom/jingdong/common/entity/ShakeBDInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/ShakeBDInfo;->getData()Lcom/jingdong/common/entity/ShakeData;

    move-result-object v6

    .line 295
    .local v6, shakeData:Lcom/jingdong/common/entity/ShakeData;
    if-eqz v6, :cond_0

    .line 296
    invoke-virtual {v6}, Lcom/jingdong/common/entity/ShakeData;->getBkgUrl()Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, imageUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeHomeBg:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeHomeUploadBg:Landroid/widget/RelativeLayout;

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/jingdong/app/mall/shake/ShakeController;->loadHomeBackground(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 300
    .end local v4           #imageUrl:Ljava/lang/String;
    .end local v6           #shakeData:Lcom/jingdong/common/entity/ShakeData;
    :cond_0
    return-void
.end method

.method private optionsHomeShare()Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBDInfo:Lcom/jingdong/common/entity/ShakeBDInfo;

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBDInfo:Lcom/jingdong/common/entity/ShakeBDInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ShakeBDInfo;->getData()Lcom/jingdong/common/entity/ShakeData;

    move-result-object v0

    .line 305
    .local v0, shakeData:Lcom/jingdong/common/entity/ShakeData;
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Lcom/jingdong/common/entity/ShakeData;->getShareIndexAnd()Ljava/lang/String;

    move-result-object v1

    .line 309
    .end local v0           #shakeData:Lcom/jingdong/common/entity/ShakeData;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private optionsViewVisible(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 367
    new-instance v0, Lcom/jingdong/app/mall/shake/ShakeActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/shake/ShakeActivity$8;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->post(Ljava/lang/Runnable;)V

    .line 376
    return-void
.end method

.method private querryShakeData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 444
    iput-boolean v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeDataIsQuerying:Z

    .line 445
    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->setShakeProgressVisible(I)V

    .line 447
    const-string v0, "shake"

    .line 449
    .local v0, functionId:Ljava/lang/String;
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 450
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 452
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->shakeDialogIsShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 458
    :goto_0
    new-instance v2, Lcom/jingdong/app/mall/shake/ShakeActivity$10;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shake/ShakeActivity$10;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 550
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 551
    return-void

    .line 455
    :cond_0
    invoke-virtual {v1, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    goto :goto_0
.end method

.method private shakeDialogIsShowing()Z
    .locals 1

    .prologue
    .line 1215
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isShowDialog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->instance:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    if-eqz v0, :cond_0

    .line 1216
    const/4 v0, 0x1

    .line 1218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAffirmToast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1120
    sget-object v1, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->instance:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isHintUser:Z

    if-nez v1, :cond_1

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isHintUser:Z

    .line 1124
    sget-object v1, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->instance:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    const v2, 0x7f07054a

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1125
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1126
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1129
    const/16 v1, 0x7d0

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->delayStartShakeListener(I)V

    goto :goto_0
.end method

.method private showCustomDialog(Ljava/lang/String;)V
    .locals 4
    .parameter "comment"

    .prologue
    .line 1310
    sget-object v2, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->instance:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    if-nez v2, :cond_0

    .line 1350
    :goto_0
    return-void

    .line 1313
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->instance:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1314
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1315
    const v2, 0x7f07052d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1316
    new-instance v1, Lcom/jingdong/app/mall/shake/ShakeActivity$18;

    invoke-direct {v1, p0, v0}, Lcom/jingdong/app/mall/shake/ShakeActivity$18;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;Landroid/app/AlertDialog;)V

    .line 1338
    .local v1, listener:Landroid/content/DialogInterface$OnClickListener;
    const/4 v2, -0x1

    .line 1339
    const v3, 0x7f07014d

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1338
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1343
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1344
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->shakeMoreTimesDialog:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1345
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private showError()V
    .locals 0

    .prologue
    .line 637
    return-void
.end method

.method private showNoShakeTimesToast()V
    .locals 1

    .prologue
    .line 1136
    new-instance v0, Lcom/jingdong/app/mall/shake/ShakeActivity$15;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shake/ShakeActivity$15;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->post(Ljava/lang/Runnable;)V

    .line 1146
    const/16 v0, 0x7d0

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->delayStartShakeListener(I)V

    .line 1147
    return-void
.end method

.method private showShakeResult(I)V
    .locals 4
    .parameter "shakeValue"

    .prologue
    const/4 v3, 0x1

    .line 961
    packed-switch p1, :pswitch_data_0

    .line 994
    :goto_0
    :pswitch_0
    iget v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimes:I

    if-lez v1, :cond_0

    .line 996
    iget-boolean v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeActivityIsDestry:Z

    if-eqz v1, :cond_1

    .line 997
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeActivityIsDestry:Z

    .line 1012
    :cond_0
    :goto_1
    return-void

    .line 964
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeSound(I)V

    goto :goto_0

    .line 967
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeSound(I)V

    goto :goto_0

    .line 970
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeSound(I)V

    goto :goto_0

    .line 973
    :pswitch_4
    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeSound(I)V

    goto :goto_0

    .line 976
    :pswitch_5
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeSound(I)V

    goto :goto_0

    .line 980
    :pswitch_6
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeSound(I)V

    goto :goto_0

    .line 984
    :pswitch_7
    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeSound(I)V

    goto :goto_0

    .line 1001
    :cond_1
    iget-boolean v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isShowDialog:Z

    if-nez v1, :cond_0

    .line 1002
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1003
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1004
    const-string v1, "result"

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeResult:Lcom/jingdong/common/entity/ShakeResult;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1005
    const-string v1, "shake_type"

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->runnableServiceStart:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->runnableServiceStop:Ljava/lang/Runnable;

    invoke-static {p0, v1, v2}, Lcom/jingdong/common/utils/ShakeUtils;->shakeCallback(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1008
    invoke-virtual {p0, v0, v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 1009
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isShowDialog:Z

    goto :goto_1

    .line 961
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method private showShakeToast()V
    .locals 2

    .prologue
    .line 1208
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isHintUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isShowDialog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->instance:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    if-eqz v0, :cond_0

    .line 1209
    sget-object v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->instance:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->runnableShowAffirmDialog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1212
    :cond_0
    return-void
.end method

.method private startAnim()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 817
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->isSingerShake()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 819
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mLoopImage:Landroid/widget/ImageView;

    const v3, 0x7f0202f1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 852
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mLoopImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 853
    .local v0, loopAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 854
    return-void

    .line 821
    .end local v0           #loopAnimation:Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mHandAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_1

    .line 822
    const v2, 0x7f04000e

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mHandAnimation:Landroid/view/animation/Animation;

    .line 823
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mHandAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 824
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mHandAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 825
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mHandAnimation:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 826
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mHandAnimation:Landroid/view/animation/Animation;

    new-instance v3, Lcom/jingdong/app/mall/shake/ShakeActivity$14;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/shake/ShakeActivity$14;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 846
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 847
    .local v1, message:Landroid/os/Message;
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 849
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mLoopImage:Landroid/widget/ImageView;

    const v3, 0x7f0202e5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private declared-synchronized startShakeListener()V
    .locals 1

    .prologue
    .line 1022
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/jingdong/app/mall/shake/ShakeActivity;->hasPause:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1029
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1026
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shake/ShakeListener;->isShakeListenerStart()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shake/ShakeListener;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1022
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startShakeSound(I)V
    .locals 7
    .parameter "soundType"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f00

    .line 1060
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->sndPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->soundPoolMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->soundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->sndPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->soundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1063
    :cond_0
    return-void
.end method

.method private declared-synchronized stopShakeListener()V
    .locals 1

    .prologue
    .line 1038
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shake/ShakeListener;->isShakeListenerStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shake/ShakeListener;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    :cond_0
    monitor-exit p0

    return-void

    .line 1038
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateShakeTimes(Ljava/lang/String;)V
    .locals 9
    .parameter "shakeTimes"

    .prologue
    .line 644
    :try_start_0
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09009e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 645
    .local v0, colorSpanRed:Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070532

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, label:Ljava/lang/CharSequence;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 648
    .local v3, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    const/16 v4, 0x8

    .line 649
    .local v4, start:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, v4, v5

    .line 651
    .local v1, end:I
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const/high16 v6, 0x3f80

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v6, 0x21

    invoke-virtual {v3, v5, v4, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 652
    const/16 v5, 0x21

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 653
    new-instance v5, Lcom/jingdong/app/mall/shake/ShakeActivity$12;

    invoke-direct {v5, p0, v3}, Lcom/jingdong/app/mall/shake/ShakeActivity$12;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/shake/ShakeActivity;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    .end local v0           #colorSpanRed:Landroid/text/style/ForegroundColorSpan;
    .end local v1           #end:I
    .end local v2           #label:Ljava/lang/CharSequence;
    .end local v3           #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    .end local v4           #start:I
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 325
    sput-object v0, Lcom/jingdong/common/utils/ShakeUtils;->mShakeRunnableStart:Ljava/lang/Runnable;

    .line 326
    sput-object v0, Lcom/jingdong/common/utils/ShakeUtils;->mShakeRunnableStop:Ljava/lang/Runnable;

    .line 328
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->finish()V

    .line 329
    return-void
.end method

.method public getShakeParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 315
    .local v0, paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGEvent:Ljava/lang/String;

    const-string v2, "share_sns"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    const-string v1, "from"

    const-string v2, "shake_shake"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :goto_0
    return-object v0

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final isScreenLocked()Z
    .locals 2

    .prologue
    .line 717
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 718
    .local v0, mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 672
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/MyActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 677
    if-nez p2, :cond_0

    .line 678
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isShowDialog:Z

    .line 679
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isHintUser:Z

    .line 680
    sput-boolean v1, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeIsStop:Z

    .line 681
    iget v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimes:I

    if-eqz v0, :cond_0

    .line 682
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->delayStartShakeListener(I)V

    .line 685
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 141
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    const/4 v0, 0x0

    .line 144
    .local v0, bgBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 145
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "shake_type"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/ShakeBDInfo;

    iput-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBDInfo:Lcom/jingdong/common/entity/ShakeBDInfo;

    .line 148
    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBDInfo:Lcom/jingdong/common/entity/ShakeBDInfo;

    if-eqz v4, :cond_0

    .line 149
    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBDInfo:Lcom/jingdong/common/entity/ShakeBDInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/ShakeBDInfo;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeType:Ljava/lang/String;

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->isSingerShake()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 153
    const v2, 0x7f030101

    .line 157
    .local v2, layoutID:I
    :goto_0
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->setContentView(I)V

    .line 159
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->initAllViews()V

    .line 161
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->loadSound()V

    .line 163
    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBottomShake:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeBottomShakeFirst:Landroid/widget/ImageView;

    invoke-static {p0, v4, v5}, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils;->startBottomAnim(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    .line 165
    invoke-static {}, Lcom/jingdong/common/utils/ShakeUtils;->loadShakeTimesFromSD()[Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, shake:[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    .line 167
    aget-object v4, v3, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mStandardDateFromSD:Ljava/lang/String;

    .line 168
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mCurrentShakeTimes:Ljava/lang/String;

    .line 171
    :cond_1
    invoke-direct {p0, v6}, Lcom/jingdong/app/mall/shake/ShakeActivity;->optionsViewVisible(I)V

    .line 173
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->isSingerShake()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 174
    const v4, 0x7f0202d5

    invoke-static {p0, v4}, Lcom/jingdong/common/utils/JDImageUtils;->getBitmapWithJpg(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 180
    :goto_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeHomeBg:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_2

    .line 181
    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeHomeBg:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :cond_2
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->optionHomeBg(Landroid/graphics/Bitmap;)V

    .line 186
    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mStandardDateFromSD:Ljava/lang/String;

    iget-object v5, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mCurrentShakeTimes:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/jingdong/app/mall/shake/ShakeActivity;->loadShakeTimes(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v4, Lcom/jingdong/app/mall/shake/ShakeListener;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/shake/ShakeListener;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

    .line 189
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeListener()V

    .line 191
    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

    new-instance v5, Lcom/jingdong/app/mall/shake/ShakeActivity$7;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/shake/ShakeActivity$7;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/shake/ShakeListener;->setOnShakeListener(Lcom/jingdong/app/mall/shake/ShakeListener$OnShakeListener;)V

    .line 290
    return-void

    .line 155
    .end local v2           #layoutID:I
    .end local v3           #shake:[Ljava/lang/String;
    :cond_3
    const v2, 0x7f0300ff

    .restart local v2       #layoutID:I
    goto :goto_0

    .line 176
    .restart local v3       #shake:[Ljava/lang/String;
    :cond_4
    const v4, 0x7f0202b5

    invoke-static {p0, v4}, Lcom/jingdong/common/utils/JDImageUtils;->getBitmapWithJpg(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 933
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onDestroy()V

    .line 934
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeActivityIsDestry:Z

    .line 935
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->stopShakeListener()V

    .line 936
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->closeShakeDialog()V

    .line 937
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shake/ShakeListener;->destroy()V

    .line 938
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->destroyAllData()V

    .line 940
    const v0, 0x7f03010a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->setContentView(I)V

    .line 941
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1584
    packed-switch p1, :pswitch_data_0

    .line 1588
    invoke-super {p0, p1, p2}, Lcom/jingdong/app/mall/utils/MyActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1586
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1584
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 910
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/app/mall/shake/ShakeActivity;->hasPause:Z

    .line 912
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onPause()V

    .line 913
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->stopShakeListener()V

    .line 914
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->cancelVibrator()V

    .line 915
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->clearAnim()V

    .line 917
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 897
    sput-boolean v0, Lcom/jingdong/app/mall/shake/ShakeActivity;->hasPause:Z

    .line 898
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 899
    sput-boolean v0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeIsStop:Z

    .line 900
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startAnim()V

    .line 901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->animEnable:Z

    .line 902
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeListener()V

    .line 903
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 887
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onStart()V

    .line 888
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 924
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onStop()V

    .line 925
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->clearAnim()V

    .line 926
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    const/16 v1, 0x7d0

    .line 694
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onWindowFocusChanged(Z)V

    .line 695
    if-nez p1, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->isScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeIsStop:Z

    .line 701
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->stopShakeListener()V

    .line 702
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->delayCancelVibrator(I)V

    .line 713
    :goto_0
    return-void

    .line 706
    :cond_0
    if-eqz p1, :cond_1

    .line 707
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeListener()V

    .line 708
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeIsStop:Z

    goto :goto_0

    .line 710
    :cond_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->stopShakeListener()V

    .line 711
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->delayCancelVibrator(I)V

    goto :goto_0
.end method

.method public saveStringToCache(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .parameter "content"

    .prologue
    .line 749
    const/4 v2, 0x0

    .line 750
    .local v2, result:Z
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/jingdong/common/utils/FileService;->getDirectory(I)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    .line 751
    .local v0, directory:Lcom/jingdong/common/utils/FileService$Directory;
    if-eqz v0, :cond_0

    .line 756
    :try_start_0
    const-string v3, "shake_cache.txt"

    invoke-static {v0, v3, p1}, Lcom/jingdong/common/utils/FileService;->saveToSDCard(Lcom/jingdong/common/utils/FileService$Directory;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 757
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 762
    :goto_0
    return-object v3

    .line 758
    :catch_0
    move-exception v1

    .line 759
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 762
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method public setShakeProgressVisible(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 379
    new-instance v0, Lcom/jingdong/app/mall/shake/ShakeActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/shake/ShakeActivity$9;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->post(Ljava/lang/Runnable;)V

    .line 397
    return-void
.end method

.method protected startToShake()V
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->isHintUser:Z

    if-nez v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startVibrato()V

    .line 411
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeSound(I)V

    .line 413
    invoke-direct {p0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->querryShakeData()V

    .line 415
    :cond_0
    return-void
.end method

.method public startVibrato()V
    .locals 3

    .prologue
    .line 876
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 879
    :cond_0
    return-void

    .line 877
    nop

    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
