.class public Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "AmShakeDialogNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DELAY_TIME:J = 0x258L

.field private static final SHAKE_ENTER:I = 0x1

.field private static final SHAKE_EXIT:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field public static instance:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

.field public static isOnResume:Z

.field public static isReceiveCouponed:Z


# instance fields
.field private clickTime:J

.field imageViewShake_title:Landroid/widget/ImageView;

.field private mAchieveProgressView:Landroid/view/View;

.field private mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private mShakeResult:Lcom/jingdong/app/mall/amHelper/AmShakeResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    const-class v0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->instance:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    .line 41
    sput-boolean v1, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->isOnResume:Z

    .line 46
    sput-boolean v1, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->isReceiveCouponed:Z

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->clickTime:J

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mAchieveProgressView:Landroid/view/View;

    return-object v0
.end method

.method private initCustomView()V
    .locals 1

    .prologue
    .line 182
    const v0, 0x7f0c0654

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v0, 0x7f0c064a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->imageViewShake_title:Landroid/widget/ImageView;

    .line 188
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->showProduct()V

    .line 190
    return-void
.end method

.method private loadHeader(Ljava/lang/String;)V
    .locals 2
    .parameter "mHeaderTitle"

    .prologue
    .line 90
    const-string v0, "\u805a\u80fd\u6709\u529f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->imageViewShake_title:Landroid/widget/ImageView;

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v0, "I WANT YOU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->imageViewShake_title:Landroid/widget/ImageView;

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 94
    :cond_1
    const-string v0, "\u606d\u559c\u4f60"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->imageViewShake_title:Landroid/widget/ImageView;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 96
    :cond_2
    const-string v0, "\u7ee7\u7eed\u52aa\u529b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->imageViewShake_title:Landroid/widget/ImageView;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->imageViewShake_title:Landroid/widget/ImageView;

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private loadProductImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 4
    .parameter "imageView"
    .parameter "imageUrl"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x1388

    .line 232
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 236
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 237
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 238
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPriority(I)V

    .line 239
    invoke-virtual {v0, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 241
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 242
    new-instance v1, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$1;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 281
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method

.method private showPopupAnim()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 290
    invoke-static {}, Lcom/jingdong/common/utils/SDKUtils;->isSDKVersionMoreThan16()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const v0, 0x7f040004

    const v1, 0x7f040005

    invoke-static {p0, v0, v1}, Lcom/jingdong/common/utils/ActivityUtils;->setOverridePendingTransition(Landroid/app/Activity;II)V

    .line 293
    :cond_0
    return-void
.end method

.method private showProduct()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 197
    sput-boolean v4, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->isReceiveCouponed:Z

    .line 199
    const v2, 0x7f0c0669

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 201
    .local v0, am_TextViewMsg:Landroid/widget/TextView;
    const v2, 0x7f0c0666

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 202
    .local v1, productImageView:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mShakeResult:Lcom/jingdong/app/mall/amHelper/AmShakeResult;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mShakeResult:Lcom/jingdong/app/mall/amHelper/AmShakeResult;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    invoke-static {}, Lcom/jingdong/app/mall/amHelper/AmHelper;->getInstance()Lcom/jingdong/app/mall/amHelper/AmHelper;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/jingdong/app/mall/amHelper/AmHelper;->startShakeSound(I)V

    .line 204
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mShakeResult:Lcom/jingdong/app/mall/amHelper/AmShakeResult;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->loadHeader(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mShakeResult:Lcom/jingdong/app/mall/amHelper/AmShakeResult;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->loadProductImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mShakeResult:Lcom/jingdong/app/mall/amHelper/AmShakeResult;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/amHelper/AmShakeResult;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-static {}, Lcom/jingdong/app/mall/amHelper/AmHelper;->getInstance()Lcom/jingdong/app/mall/amHelper/AmHelper;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/amHelper/AmHelper;->startShakeSound(I)V

    .line 211
    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->imageViewShake_title:Landroid/widget/ImageView;

    const v3, 0x7f020008

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    const v2, 0x7f020007

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    const v2, 0x7f07055d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public destroyAllData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mShakeResult:Lcom/jingdong/app/mall/amHelper/AmShakeResult;

    .line 222
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->imageViewShake_title:Landroid/widget/ImageView;

    .line 223
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mAchieveProgressView:Landroid/view/View;

    .line 224
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->finish()V

    .line 151
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->showPopupAnim()V

    .line 152
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->clickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->clickTime:J

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 169
    :pswitch_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "JDAnnualMeeting"

    const-string v2, "resultCloseTap"

    invoke-static {v2}, Lcom/jingdong/app/mall/amHelper/AmHelper;->getShakeParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/ShakeUtils;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 170
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->finish()V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x7f0c0654
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iput-object p0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 58
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 59
    .local v1, shakeBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 61
    :try_start_0
    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/app/mall/amHelper/AmShakeResult;

    iput-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->mShakeResult:Lcom/jingdong/app/mall/amHelper/AmShakeResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->showPopupAnim()V

    .line 74
    const v2, 0x7f030104

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->setContentView(I)V

    .line 75
    invoke-direct {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->initCustomView()V

    .line 76
    sput-object p0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->instance:Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    .line 78
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 79
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 80
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 81
    return-void

    .line 62
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onDestroy()V

    .line 110
    invoke-virtual {p0}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->finish()V

    .line 111
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeIsStop:Z

    .line 113
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->hasPause:Z

    .line 121
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onPause()V

    .line 122
    invoke-static {}, Lcom/jingdong/common/utils/ShakeUtils;->shakeRunnableStop()V

    .line 123
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 131
    sput-boolean v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->hasPause:Z

    .line 133
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 134
    invoke-static {}, Lcom/jingdong/common/utils/ShakeUtils;->shakeRunnableStart()V

    .line 135
    sput-boolean v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeIsStop:Z

    .line 136
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onStop()V

    .line 144
    return-void
.end method

.method public setAchieveProgressVisible(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 296
    new-instance v0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$2;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew$2;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;I)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->post(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method
