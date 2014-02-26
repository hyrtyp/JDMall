.class public Lcom/jingdong/app/mall/shopping/CameraActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "CameraActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shopping/CameraActivity$HomeReceiver;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_CATEGORIES_SELECTION:I = 0x65

.field private static final SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final ivIds:[I


# instance fields
.field private final COLOR_SHOPPING_TIMEOUT:I

.field private final MOBILE:Ljava/lang/String;

.field private final UPDATE_BUTION:I

.field private final UPDATE_BUTION_DELAYED:I

.field private final UPDATE_PRODUCT_PIC:I

.field private final UPDATE_PRODUCT_PIC_DELAYED:I

.field private final WAKELOCK_RELEASE:I

.field private final WAKELOCK_TIMEOUT:I

.field private final WIFI:Ljava/lang/String;

.field private filterIntent:Landroid/content/IntentFilter;

.field private hasFinished:Z

.field private host:Ljava/lang/String;

.field private isGuided:Z

.field private iv:[Landroid/widget/ImageView;

.field private mAccel:Landroid/hardware/Sensor;

.field private mAutoFocusBlock:Ljava/lang/Object;

.field private mAutoFocusTime:J

.field private mBanner:Landroid/view/View;

.field private mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBlock:Z

.field mCameraView:Lcom/jingdong/app/mall/shopping/CameraView;

.field private mCategories:Ljava/lang/String;

.field private mColorClose:Landroid/widget/ImageView;

.field private mColorProductModel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/JDColorProductModel;",
            ">;"
        }
    .end annotation
.end field

.field private mColorShoppingList:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field private mPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShowIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowViewDownLayout:Landroid/widget/LinearLayout;

.field private mShowViewLayout:Landroid/widget/LinearLayout;

.field private mShowViewUpLayout:Landroid/widget/LinearLayout;

.field private mSleepTime:I

.field private mThreadBlock:Z

.field private mTitle:Landroid/widget/TextView;

.field private mTitleMenuBtn:Landroid/widget/Button;

.field private mViewFinder:Landroid/widget/ImageView;

.field private mViewfinderLayout:Landroid/widget/LinearLayout;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private networkConnectFailedNotifyUser:Z

.field onClickListener:Landroid/view/View$OnClickListener;

.field private productCount:Ljava/lang/String;

.field private receiverHome:Lcom/jingdong/app/mall/shopping/CameraActivity$HomeReceiver;

.field private showViewHeight:I

.field private viewfinderHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/jingdong/app/mall/shopping/CameraActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->TAG:Ljava/lang/String;

    .line 69
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->ivIds:[I

    .line 75
    return-void

    .line 69
    nop

    :array_0
    .array-data 0x4
        0x82t 0x1t 0xct 0x7ft
        0x83t 0x1t 0xct 0x7ft
        0x84t 0x1t 0xct 0x7ft
        0x86t 0x1t 0xct 0x7ft
        0x87t 0x1t 0xct 0x7ft
        0x88t 0x1t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 64
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 71
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->iv:[Landroid/widget/ImageView;

    .line 73
    iput v7, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mIndex:I

    .line 76
    iput-boolean v7, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mBlock:Z

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mBitmaps:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mShowIds:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mColorProductModel:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 84
    const-string v0, "3"

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->productCount:Ljava/lang/String;

    .line 85
    const-string v0, "paiHost"

    invoke-static {v0}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->host:Ljava/lang/String;

    .line 95
    const-string v0, "WIFI"

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->WIFI:Ljava/lang/String;

    .line 96
    const-string v0, "MOBILE"

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->MOBILE:Ljava/lang/String;

    .line 100
    const v0, 0x2bf20

    iput v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->WAKELOCK_TIMEOUT:I

    .line 101
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->UPDATE_BUTION_DELAYED:I

    .line 102
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->UPDATE_PRODUCT_PIC_DELAYED:I

    .line 103
    iput v7, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->UPDATE_PRODUCT_PIC:I

    .line 104
    const/16 v0, 0xa

    iput v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->WAKELOCK_RELEASE:I

    .line 105
    const/16 v0, 0xb

    iput v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->UPDATE_BUTION:I

    .line 108
    iput v8, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mLastX:F

    .line 109
    iput v8, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mLastY:F

    .line 110
    iput v8, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mLastZ:F

    .line 112
    iput v7, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mSleepTime:I

    .line 113
    iput-wide v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mAutoFocusTime:J

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mAutoFocusBlock:Ljava/lang/Object;

    .line 115
    iput-boolean v7, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mThreadBlock:Z

    .line 117
    iput-boolean v7, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->hasFinished:Z

    .line 118
    const/16 v0, 0x1388

    iput v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->COLOR_SHOPPING_TIMEOUT:I

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->networkConnectFailedNotifyUser:Z

    .line 122
    new-instance v0, Lcom/jingdong/app/mall/shopping/CameraActivity$HomeReceiver;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/CameraActivity$HomeReceiver;-><init>(Lcom/jingdong/app/mall/shopping/CameraActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->receiverHome:Lcom/jingdong/app/mall/shopping/CameraActivity$HomeReceiver;

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->filterIntent:Landroid/content/IntentFilter;

    .line 129
    new-instance v0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/CameraActivity$1;-><init>(Lcom/jingdong/app/mall/shopping/CameraActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mHandler:Landroid/os/Handler;

    .line 713
    new-instance v0, Lcom/jingdong/app/mall/shopping/CameraActivity$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/CameraActivity$2;-><init>(Lcom/jingdong/app/mall/shopping/CameraActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->onClickListener:Landroid/view/View$OnClickListener;

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/CameraActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mBanner:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/CameraActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mBlock:Z

    return v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/shopping/CameraActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mColorShoppingList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/shopping/CameraActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mColorShoppingList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/shopping/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->showError()V

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/shopping/CameraActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/CameraActivity;->loadProductPicture(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mBitmaps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mColorProductModel:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/shopping/CameraActivity;)[Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->iv:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/shopping/CameraActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mIndex:I

    return v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mShowIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/shopping/CameraActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mIndex:I

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/CameraActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mBlock:Z

    return-void
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/shopping/CameraActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/shopping/CameraActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mViewFinder:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$22(Lcom/jingdong/app/mall/shopping/CameraActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mColorClose:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/jingdong/app/mall/shopping/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->wakeLockRelease()V

    return-void
.end method

.method static synthetic access$24(Lcom/jingdong/app/mall/shopping/CameraActivity;Lcom/jingdong/common/entity/JDColorProductModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/CameraActivity;->doClick(Lcom/jingdong/common/entity/JDColorProductModel;)V

    return-void
.end method

.method static synthetic access$25(Lcom/jingdong/app/mall/shopping/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->inteView()V

    return-void
.end method

.method static synthetic access$26(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mAutoFocusBlock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$27(Lcom/jingdong/app/mall/shopping/CameraActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->hasFinished:Z

    return v0
.end method

.method static synthetic access$28(Lcom/jingdong/app/mall/shopping/CameraActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mAutoFocusTime:J

    return-void
.end method

.method static synthetic access$29(Lcom/jingdong/app/mall/shopping/CameraActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mThreadBlock:Z

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->productCount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->getNetType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCategories:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/shopping/CameraActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->networkConnectFailedNotifyUser:Z

    return v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/shopping/CameraActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->networkConnectFailedNotifyUser:Z

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method private categoryFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "inStr"

    .prologue
    .line 805
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 806
    const-string p1, "0:0"

    .line 820
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 808
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    .line 809
    .local v1, isContainAll:Z
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 810
    .local v2, strs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_2

    .line 817
    :goto_2
    if-eqz v1, :cond_0

    .line 818
    const-string p1, "0:0"

    goto :goto_0

    .line 811
    :cond_2
    const-string v3, "0:0"

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 812
    const/4 v1, 0x1

    .line 813
    goto :goto_2

    .line 810
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private doClick(Lcom/jingdong/common/entity/JDColorProductModel;)V
    .locals 6
    .parameter "productModel"

    .prologue
    .line 619
    if-nez p1, :cond_0

    .line 630
    :goto_0
    return-void

    .line 624
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 625
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 626
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "productModel"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 627
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 628
    const-string v2, "source"

    new-instance v3, Lcom/jingdong/common/entity/SourceEntity;

    const-string v4, "color_shopping"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 629
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 474
    const v0, 0x7f0c017f

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mBanner:Landroid/view/View;

    .line 475
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mTitle:Landroid/widget/TextView;

    .line 476
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0704d5

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    const v0, 0x7f0c071d

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mTitleMenuBtn:Landroid/widget/Button;

    .line 478
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mTitleMenuBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 479
    const v0, 0x7f0c017e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mShowViewLayout:Landroid/widget/LinearLayout;

    .line 480
    const v0, 0x7f0c017c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mViewfinderLayout:Landroid/widget/LinearLayout;

    .line 481
    const v0, 0x7f0c017a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/shopping/CameraView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCameraView:Lcom/jingdong/app/mall/shopping/CameraView;

    .line 482
    const v0, 0x7f0c0181

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mShowViewUpLayout:Landroid/widget/LinearLayout;

    .line 483
    const v0, 0x7f0c0185

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mShowViewDownLayout:Landroid/widget/LinearLayout;

    .line 485
    return-void
.end method

.method private getNetType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 656
    const-string v2, ""

    .line 657
    .local v2, otherNet:Ljava/lang/String;
    const/4 v1, 0x0

    .line 659
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :goto_0
    if-nez v1, :cond_1

    .line 672
    .end local v2           #otherNet:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v2

    .line 666
    .restart local v2       #otherNet:Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/jingdong/common/utils/NetUtils;->getSummaryType(Landroid/net/ConnectivityManager;)I

    move-result v3

    .line 667
    .local v3, type:I
    const/4 v4, 0x2

    if-ne v4, v3, :cond_2

    .line 668
    const-string v2, "MOBILE"

    goto :goto_1

    .line 669
    :cond_2
    const/4 v4, 0x1

    if-ne v4, v3, :cond_0

    .line 670
    const-string v2, "WIFI"

    goto :goto_1

    .line 660
    .end local v3           #type:I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private inteView()V
    .locals 23

    .prologue
    .line 488
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v20

    const v21, 0x7f070001

    invoke-virtual/range {v20 .. v21}, Lcom/jingdong/app/mall/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, APP_NAME:Ljava/lang/String;
    new-instance v7, Lcom/jingdong/common/ui/ExceptionDrawable;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v3}, Lcom/jingdong/common/ui/ExceptionDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 490
    .local v7, defaultDrawable:Lcom/jingdong/common/ui/ExceptionDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mTitleMenuBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    new-instance v21, Lcom/jingdong/app/mall/shopping/CameraActivity$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/CameraActivity$6;-><init>(Lcom/jingdong/app/mall/shopping/CameraActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->getStatusHeight()I

    move-result v17

    .line 502
    .local v17, statusBarHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b006d

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 503
    .local v5, bottomBar:I
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v8

    .line 504
    .local v8, disPlayHeight:I
    sub-int v20, v8, v17

    sub-int v9, v20, v5

    .line 505
    .local v9, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b006f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 506
    .local v4, bannerHeight:I
    div-int/lit8 v13, v9, 0x2

    .line 507
    .local v13, productLayoutHeight:I
    add-int v20, v4, v13

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jingdong/app/mall/shopping/CameraActivity;->showViewHeight:I

    .line 508
    div-int/lit8 v20, v9, 0x2

    sub-int v6, v20, v4

    .line 517
    .local v6, cameraViewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mShowViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 518
    .local v15, showViewParams:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->showViewHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mShowViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mShowViewUpLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 522
    .local v16, showViewUpParams:Landroid/view/ViewGroup$LayoutParams;
    div-int/lit8 v20, v13, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mShowViewUpLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mShowViewDownLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 526
    .local v14, showViewDownParams:Landroid/view/ViewGroup$LayoutParams;
    div-int/lit8 v20, v13, 0x2

    move/from16 v0, v20

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mShowViewDownLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b006c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jingdong/app/mall/shopping/CameraActivity;->viewfinderHeight:I

    .line 533
    new-instance v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/CameraActivity;->mViewFinder:Landroid/widget/ImageView;

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mViewFinder:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f020148

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 535
    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 536
    .local v18, viewFinderLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->viewfinderHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 537
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->viewfinderHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mViewFinder:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mViewFinder:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v19

    .line 541
    .local v19, vto:Landroid/view/ViewTreeObserver;
    new-instance v20, Lcom/jingdong/app/mall/shopping/CameraActivity$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/jingdong/app/mall/shopping/CameraActivity$7;-><init>(Lcom/jingdong/app/mall/shopping/CameraActivity;I)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mViewfinderLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 551
    .local v12, params:Landroid/view/ViewGroup$LayoutParams;
    iput v6, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mViewfinderLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mViewfinderLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x11

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mViewfinderLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mViewFinder:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCameraView:Lcom/jingdong/app/mall/shopping/CameraView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/jingdong/app/mall/shopping/CameraView;->setHandle(Landroid/os/Handler;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCameraView:Lcom/jingdong/app/mall/shopping/CameraView;

    move-object/from16 v20, v0

    const/16 v21, 0x1e

    invoke-virtual/range {v20 .. v21}, Lcom/jingdong/app/mall/shopping/CameraView;->setFocusWidth(I)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCameraView:Lcom/jingdong/app/mall/shopping/CameraView;

    move-object/from16 v20, v0

    const/16 v21, 0x1e

    invoke-virtual/range {v20 .. v21}, Lcom/jingdong/app/mall/shopping/CameraView;->setFocusHeight(I)V

    .line 559
    const v20, 0x7f0c017d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/CameraActivity;->mColorClose:Landroid/widget/ImageView;

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mColorClose:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/jingdong/app/mall/shopping/CameraActivity$8;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/CameraActivity$8;-><init>(Lcom/jingdong/app/mall/shopping/CameraActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->iv:[Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v10, v0, :cond_0

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mBanner:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0c0180

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 577
    .local v11, obtainColor:Landroid/widget/Button;
    new-instance v20, Lcom/jingdong/app/mall/shopping/CameraActivity$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/jingdong/app/mall/shopping/CameraActivity$9;-><init>(Lcom/jingdong/app/mall/shopping/CameraActivity;Landroid/widget/Button;)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    return-void

    .line 571
    .end local v11           #obtainColor:Landroid/widget/Button;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->iv:[Landroid/widget/ImageView;

    move-object/from16 v21, v0

    sget-object v20, Lcom/jingdong/app/mall/shopping/CameraActivity;->ivIds:[I

    aget v20, v20, v10

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    aput-object v20, v21, v10

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->iv:[Landroid/widget/ImageView;

    move-object/from16 v20, v0

    aget-object v20, v20, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->onClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->iv:[Landroid/widget/ImageView;

    move-object/from16 v20, v0

    aget-object v20, v20, v10

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 570
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method private loadProductPicture(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/JDColorProductModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDColorProductModel;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 239
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 304
    return-void

    .line 240
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/JDColorProductModel;

    .line 241
    .local v0, colorProductModel:Lcom/jingdong/common/entity/JDColorProductModel;
    invoke-virtual {v0}, Lcom/jingdong/common/entity/JDColorProductModel;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, imageUrl:Ljava/lang/String;
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mShowIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/JDColorProductModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_1
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcom/jingdong/app/mall/shopping/CameraActivity$3;

    invoke-direct {v5, p0, v3, v0}, Lcom/jingdong/app/mall/shopping/CameraActivity$3;-><init>(Lcom/jingdong/app/mall/shopping/CameraActivity;Ljava/lang/String;Lcom/jingdong/common/entity/JDColorProductModel;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private releaseCamera()V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCameraView:Lcom/jingdong/app/mall/shopping/CameraView;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCameraView:Lcom/jingdong/app/mall/shopping/CameraView;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/CameraView;->releaseCamera()V

    .line 638
    :cond_0
    return-void
.end method

.method private showError()V
    .locals 0

    .prologue
    .line 616
    return-void
.end method

.method private startCamera()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCameraView:Lcom/jingdong/app/mall/shopping/CameraView;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCameraView:Lcom/jingdong/app/mall/shopping/CameraView;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/CameraView;->startPreview()V

    .line 647
    :cond_0
    return-void
.end method

.method private stopCamera()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCameraView:Lcom/jingdong/app/mall/shopping/CameraView;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCameraView:Lcom/jingdong/app/mall/shopping/CameraView;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/CameraView;->stopPreview()V

    .line 653
    :cond_0
    return-void
.end method

.method private wakeLockRelease()V
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 762
    :cond_0
    return-void
.end method


# virtual methods
.method public getStatusHeight()I
    .locals 7

    .prologue
    .line 682
    const/4 v5, 0x0

    .line 683
    .local v5, statusHeight:I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 684
    .local v3, localRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 685
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 686
    if-nez v5, :cond_0

    .line 689
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 690
    .local v1, localClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 691
    .local v2, localObject:Ljava/lang/Object;
    const-string v6, "status_bar_height"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 692
    .local v4, status:I
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_6

    move-result v5

    .line 709
    .end local v1           #localClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #localObject:Ljava/lang/Object;
    .end local v4           #status:I
    :cond_0
    :goto_0
    return v5

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 695
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 696
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 697
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 698
    .local v0, e:Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 699
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_3
    move-exception v0

    .line 700
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 701
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v0

    .line 702
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 703
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v0

    .line 704
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 705
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_6
    move-exception v0

    .line 706
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method public final isScreenLocked()Z
    .locals 2

    .prologue
    .line 726
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 727
    .local v0, mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 767
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 459
    const/16 v1, 0x65

    if-ne v1, p1, :cond_0

    .line 460
    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    .line 462
    if-eqz p3, :cond_1

    .line 463
    const-string v1, "color_buy_selected_categories"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, resultStr:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->categoryFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCategories:Ljava/lang/String;

    .line 471
    .end local v0           #resultStr:Ljava/lang/String;
    :cond_0
    return-void

    .line 465
    :cond_1
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "color_buy_selected_categories"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #resultStr:Ljava/lang/String;
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 307
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 308
    const v2, 0x7f03003d

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/CameraActivity;->setContentView(I)V

    .line 309
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->findView()V

    .line 310
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mSleepTime:I

    .line 312
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "color_buy_selected_categories"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCategories:Ljava/lang/String;

    .line 313
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCategories:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/shopping/CameraActivity;->categoryFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCategories:Ljava/lang/String;

    .line 317
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 318
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mAccel:Landroid/hardware/Sensor;

    .line 320
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->activityIsGuided(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->isGuided:Z

    .line 321
    iget-boolean v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->isGuided:Z

    if-nez v2, :cond_0

    .line 322
    const v2, 0x7f02013b

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/CameraActivity;->setGuideResId(I)V

    .line 323
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 324
    .local v1, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/CameraActivity;->addGuideImage(Landroid/view/ViewGroup;)V

    .line 333
    .end local v1           #viewGroup:Landroid/view/ViewGroup;
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->receiverHome:Lcom/jingdong/app/mall/shopping/CameraActivity$HomeReceiver;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->filterIntent:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 337
    new-instance v2, Lcom/jingdong/app/mall/shopping/CameraActivity$4;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/CameraActivity$4;-><init>(Lcom/jingdong/app/mall/shopping/CameraActivity;)V

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/CameraActivity;->post(Ljava/lang/Runnable;)V

    .line 345
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/jingdong/app/mall/shopping/CameraActivity$5;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/CameraActivity$5;-><init>(Lcom/jingdong/app/mall/shopping/CameraActivity;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 370
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 371
    const-string v2, "CameraActivity"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 375
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->releaseCamera()V

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->hasFinished:Z

    .line 442
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->putSelectedCatsStr(Ljava/lang/String;)V

    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mAutoFocusBlock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :try_start_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mAutoFocusBlock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 444
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    :goto_0
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onDestroy()V

    .line 453
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->receiverHome:Lcom/jingdong/app/mall/shopping/CameraActivity$HomeReceiver;

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 454
    return-void

    .line 444
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 447
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 416
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onPause()V

    .line 418
    :try_start_0
    const-string v2, "sleep_setting_time"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jingdong/app/mall/utils/CommonUtil;->getIntFromPreference(Ljava/lang/String;I)I

    move-result v1

    .line 419
    .local v1, settingTime:I
    if-lez v1, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 421
    .local v0, save:Z
    if-eqz v0, :cond_0

    .line 422
    const-string v2, "sleep_setting_time"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jingdong/app/mall/utils/CommonUtil;->putIntToPreference(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v0           #save:Z
    .end local v1           #settingTime:I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mViewFinder:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mColorClose:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 431
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mViewFinder:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mColorClose:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    :cond_1
    return-void

    .line 425
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 382
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onRestart()V

    .line 383
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 398
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 400
    :try_start_0
    const-string v1, "sleep_setting_time"

    iget v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mSleepTime:I

    invoke-static {v1, v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->putIntToPreference(Ljava/lang/String;I)Z

    move-result v0

    .line 401
    .local v0, save:Z
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const v3, 0x2bf20

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .end local v0           #save:Z
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 410
    return-void

    .line 404
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 772
    .local v3, time:J
    iget-boolean v8, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mThreadBlock:Z

    if-nez v8, :cond_0

    iget-wide v8, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mAutoFocusTime:J

    sub-long v8, v3, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x0

    aget v5, v8, v9

    .line 777
    .local v5, x:F
    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x1

    aget v6, v8, v9

    .line 778
    .local v6, y:F
    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x2

    aget v7, v8, v9

    .line 780
    .local v7, z:F
    iget v8, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mLastX:F

    sub-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 781
    .local v0, deltaX:F
    iget v8, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mLastY:F

    sub-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 782
    .local v1, deltaY:F
    iget v8, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mLastZ:F

    sub-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 784
    .local v2, deltaZ:F
    float-to-double v8, v0

    const-wide v10, 0x3fe999999999999aL

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_2

    float-to-double v8, v1

    const-wide v10, 0x3fe999999999999aL

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_2

    float-to-double v8, v2

    const-wide v10, 0x3fe999999999999aL

    cmpl-double v8, v8, v10

    if-lez v8, :cond_3

    .line 786
    :cond_2
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mAutoFocusBlock:Ljava/lang/Object;

    monitor-enter v9

    .line 788
    :try_start_0
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mAutoFocusBlock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :goto_1
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 795
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mThreadBlock:Z

    .line 798
    :cond_3
    iput v5, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mLastX:F

    .line 799
    iput v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mLastY:F

    .line 800
    iput v7, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mLastZ:F

    goto :goto_0

    .line 786
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 789
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 390
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onStart()V

    .line 391
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 731
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onWindowFocusChanged(Z)V

    .line 733
    if-nez p1, :cond_0

    .line 734
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->isScreenLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/color/BlankActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 736
    .local v0, cameraIntent:Landroid/content/Intent;
    const-string v1, "com.360buy:navigationDisplayFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 737
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 738
    new-instance v1, Lcom/jingdong/app/mall/shopping/CameraActivity$10;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/CameraActivity$10;-><init>(Lcom/jingdong/app/mall/shopping/CameraActivity;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/CameraActivity;->post(Ljava/lang/Runnable;)V

    .line 755
    .end local v0           #cameraIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 748
    :cond_0
    if-eqz p1, :cond_1

    .line 749
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->startCamera()V

    .line 750
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mAccel:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 752
    :cond_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->stopCamera()V

    .line 753
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method
