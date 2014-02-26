.class public Lcom/jd/lottery/lib/activity/MainActivity;
.super Lcom/jd/lottery/lib/activity/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REFRESH_SEC_COUNT:I = 0x1e


# instance fields
.field private awardBoard:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
        click = true
    .end annotation
.end field

.field private itemClickable:Z

.field private loadingErrorLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private loadingLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
        click = true
    .end annotation
.end field

.field private lotteryEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jd/lottery/lib/model/LotteryEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;

.field private mCanRefresh:Z

.field private mGridView:Lcom/jd/lottery/lib/ui/widget/FullSizeGridView;

.field private mHandler:Landroid/os/Handler;

.field private mIssueManager:Lcom/jd/lottery/lib/data/LotteryIssueManager;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectDependency;
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;

.field private mSecCount:I

.field main_scrollView:Landroid/widget/ScrollView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
    .end annotation
.end field

.field private myLottery:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
        click = true
    .end annotation
.end field

.field private final refreshResultReceiver:Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;

.field private reloadView:Landroid/widget/TextView;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectView;
        click = true
    .end annotation
.end field

.field private runnable:Ljava/lang/Runnable;

.field private title:Lcom/jd/lottery/lib/ui/widget/StuanTitle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/jd/lottery/lib/activity/BaseActivity;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->itemClickable:Z

    .line 130
    new-instance v0, Lcom/jd/lottery/lib/activity/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/jd/lottery/lib/activity/MainActivity$1;-><init>(Lcom/jd/lottery/lib/activity/MainActivity;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->runnable:Ljava/lang/Runnable;

    .line 357
    new-instance v0, Lcom/jd/lottery/lib/activity/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/jd/lottery/lib/activity/MainActivity$2;-><init>(Lcom/jd/lottery/lib/activity/MainActivity;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->refreshResultReceiver:Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;

    .line 412
    const/4 v0, 0x0

    iput v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mSecCount:I

    .line 415
    new-instance v0, Lcom/jd/lottery/lib/activity/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/jd/lottery/lib/activity/MainActivity$3;-><init>(Lcom/jd/lottery/lib/activity/MainActivity;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mRunnable:Ljava/lang/Runnable;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/activity/MainActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mCanRefresh:Z

    return-void
.end method

.method static synthetic access$1(Lcom/jd/lottery/lib/activity/MainActivity;)Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jd/lottery/lib/activity/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/jd/lottery/lib/activity/MainActivity;->init()V

    return-void
.end method

.method static synthetic access$11(Lcom/jd/lottery/lib/activity/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->itemClickable:Z

    return v0
.end method

.method static synthetic access$12(Lcom/jd/lottery/lib/activity/MainActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/jd/lottery/lib/activity/MainActivity;->itemClickable:Z

    return-void
.end method

.method static synthetic access$13(Lcom/jd/lottery/lib/activity/MainActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/jd/lottery/lib/activity/MainActivity;->handleClick(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/jd/lottery/lib/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->loadingErrorLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jd/lottery/lib/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->loadingLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jd/lottery/lib/activity/MainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 412
    iget v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mSecCount:I

    return v0
.end method

.method static synthetic access$5(Lcom/jd/lottery/lib/activity/MainActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 412
    iput p1, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mSecCount:I

    return-void
.end method

.method static synthetic access$6(Lcom/jd/lottery/lib/activity/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mCanRefresh:Z

    return v0
.end method

.method static synthetic access$7(Lcom/jd/lottery/lib/activity/MainActivity;)Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;
    .locals 1
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->refreshResultReceiver:Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jd/lottery/lib/activity/MainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 411
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jd/lottery/lib/activity/MainActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private addEntry()V
    .locals 3

    .prologue
    .line 326
    const-string v1, "Adding an Entry."

    invoke-static {v1}, Lcom/jd/droidlib/util/L;->i(Ljava/lang/Object;)V

    .line 327
    new-instance v0, Lcom/jd/lottery/lib/model/MainPageEntity;

    invoke-direct {v0}, Lcom/jd/lottery/lib/model/MainPageEntity;-><init>()V

    .line 328
    .local v0, entry:Lcom/jd/lottery/lib/model/MainPageEntity;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Entry #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;

    invoke-virtual {v2}, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jd/lottery/lib/model/MainPageEntity;->name:Ljava/lang/String;

    .line 330
    return-void
.end method

.method private declared-synchronized handleClick(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/jd/lottery/lib/utils/Util;->getHostDeviceInfo()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, device:Ljava/lang/String;
    sget-object v5, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-virtual {v5}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->ordinal()I

    move-result v5

    if-eq p1, v5, :cond_0

    .line 178
    sget-object v5, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-virtual {v5}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->ordinal()I

    move-result v5

    if-ne p1, v5, :cond_1

    .line 180
    :cond_0
    invoke-static {}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->values()[Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v5

    aget-object v5, v5, p1

    .line 179
    invoke-static {p0, v5}, Lcom/jd/lottery/lib/activity/LotteryActivity;->getIntent(Landroid/content/Context;Lcom/jd/lottery/lib/data/Constants$LotteryType;)Landroid/content/Intent;

    move-result-object v2

    .line 181
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/jd/lottery/lib/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    monitor-exit p0

    return-void

    .line 185
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/MainActivity;->loadingLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    const-string v4, "http://caipiao.m.jd.com/pick/pick?pickType="

    .line 189
    .local v4, url:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->values()[Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v6

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 191
    move-object v1, v4

    .line 193
    .local v1, finalUrl:Ljava/lang/String;
    const-string v5, "lottery"

    invoke-static {}, Lcom/jd/lottery/lib/data/UserManager;->getInstance()Lcom/jd/lottery/lib/data/UserManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jd/lottery/lib/data/UserManager;->getCookie()Ljava/lang/String;

    move-result-object v6

    .line 194
    new-instance v7, Lcom/jd/lottery/lib/activity/MainActivity$6;

    invoke-direct {v7, p0, v1}, Lcom/jd/lottery/lib/activity/MainActivity$6;-><init>(Lcom/jd/lottery/lib/activity/MainActivity;Ljava/lang/String;)V

    .line 192
    invoke-static {p0, v0, v5, v6, v7}, Lcom/jd/lottery/lib/service/DataIntentService;->getLotteryTokenIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v3

    .line 214
    .local v3, it:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/jd/lottery/lib/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    .end local v0           #device:Ljava/lang/String;
    .end local v1           #finalUrl:Ljava/lang/String;
    .end local v3           #it:Landroid/content/Intent;
    .end local v4           #url:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private init()V
    .locals 5

    .prologue
    .line 337
    const-string v1, "@@@@@@@@@@@%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "init"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/MainActivity;->refreshResultReceiver:Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;

    .line 340
    invoke-static {p0, v1}, Lcom/jd/lottery/lib/service/DataIntentService;->getAllLotteryIntent(Landroid/content/Context;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v0

    .line 344
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 355
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 221
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 230
    invoke-static {}, Lcom/jd/lottery/lib/data/UserManager;->getInstance()Lcom/jd/lottery/lib/data/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jd/lottery/lib/data/UserManager;->getCommonParams()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, paramsString:Ljava/lang/String;
    const-string v0, "http://caipiao.m.jd.com/my/list"

    .line 233
    .local v0, finalUrl:Ljava/lang/String;
    const-string v3, "lottery"

    invoke-static {}, Lcom/jd/lottery/lib/data/UserManager;->getInstance()Lcom/jd/lottery/lib/data/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jd/lottery/lib/data/UserManager;->getCookie()Ljava/lang/String;

    move-result-object v4

    .line 234
    new-instance v5, Lcom/jd/lottery/lib/activity/MainActivity$7;

    invoke-direct {v5, p0}, Lcom/jd/lottery/lib/activity/MainActivity$7;-><init>(Lcom/jd/lottery/lib/activity/MainActivity;)V

    .line 232
    invoke-static {p0, v2, v3, v4, v5}, Lcom/jd/lottery/lib/service/DataIntentService;->getLotteryTokenIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v1

    .line 253
    .local v1, it:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/jd/lottery/lib/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 255
    .end local v0           #finalUrl:Ljava/lang/String;
    .end local v1           #it:Landroid/content/Intent;
    .end local v2           #paramsString:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 259
    invoke-static {}, Lcom/jd/lottery/lib/utils/Util;->getHostDeviceInfo()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, device:Ljava/lang/String;
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/MainActivity;->myLottery:Landroid/widget/TextView;

    if-ne p1, v4, :cond_2

    .line 261
    invoke-static {}, Lcom/jd/lottery/lib/data/LoginManager;->getInstance()Lcom/jd/lottery/lib/data/LoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jd/lottery/lib/data/LoginManager;->hasLogin()Z

    move-result v4

    if-nez v4, :cond_1

    .line 262
    invoke-static {}, Lcom/jd/lottery/lib/data/LoginManager;->getInstance()Lcom/jd/lottery/lib/data/LoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jd/lottery/lib/data/LoginManager;->loginIntent()Landroid/content/Intent;

    move-result-object v2

    .line 263
    .local v2, intent:Landroid/content/Intent;
    const/16 v4, 0x38f

    invoke-virtual {p0, v2, v4}, Lcom/jd/lottery/lib/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 323
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/MainActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    const-string v1, "http://caipiao.m.jd.com/my/list"

    .line 268
    .local v1, finalUrl:Ljava/lang/String;
    const-string v4, "lottery"

    invoke-static {}, Lcom/jd/lottery/lib/data/UserManager;->getInstance()Lcom/jd/lottery/lib/data/UserManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jd/lottery/lib/data/UserManager;->getCookie()Ljava/lang/String;

    move-result-object v5

    .line 269
    new-instance v6, Lcom/jd/lottery/lib/activity/MainActivity$8;

    invoke-direct {v6, p0}, Lcom/jd/lottery/lib/activity/MainActivity$8;-><init>(Lcom/jd/lottery/lib/activity/MainActivity;)V

    .line 267
    invoke-static {p0, v0, v4, v5, v6}, Lcom/jd/lottery/lib/service/DataIntentService;->getLotteryTokenIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v3

    .line 289
    .local v3, it:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/jd/lottery/lib/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 291
    .end local v1           #finalUrl:Ljava/lang/String;
    .end local v3           #it:Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/MainActivity;->awardBoard:Landroid/widget/TextView;

    if-ne p1, v4, :cond_3

    .line 292
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/MainActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    const-string v1, "http://caipiao.m.jd.com/notice?v=1&tab=0"

    .line 295
    .restart local v1       #finalUrl:Ljava/lang/String;
    const-string v4, "lottery"

    invoke-static {}, Lcom/jd/lottery/lib/data/UserManager;->getInstance()Lcom/jd/lottery/lib/data/UserManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jd/lottery/lib/data/UserManager;->getCookie()Ljava/lang/String;

    move-result-object v5

    .line 296
    new-instance v6, Lcom/jd/lottery/lib/activity/MainActivity$9;

    invoke-direct {v6, p0}, Lcom/jd/lottery/lib/activity/MainActivity$9;-><init>(Lcom/jd/lottery/lib/activity/MainActivity;)V

    .line 294
    invoke-static {p0, v0, v4, v5, v6}, Lcom/jd/lottery/lib/service/DataIntentService;->getLotteryTokenIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v3

    .line 316
    .restart local v3       #it:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/jd/lottery/lib/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 317
    .end local v1           #finalUrl:Ljava/lang/String;
    .end local v3           #it:Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/MainActivity;->reloadView:Landroid/widget/TextView;

    if-ne p1, v4, :cond_0

    .line 320
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/MainActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    invoke-direct {p0}, Lcom/jd/lottery/lib/activity/MainActivity;->init()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/jd/lottery/lib/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mHandler:Landroid/os/Handler;

    .line 96
    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/MainActivity;->setAdapter()V

    .line 98
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->title:Lcom/jd/lottery/lib/ui/widget/StuanTitle;

    new-instance v1, Lcom/jd/lottery/lib/activity/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/activity/MainActivity$4;-><init>(Lcom/jd/lottery/lib/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/StuanTitle;->setOnTitleClickListener(Lcom/jd/lottery/lib/ui/widget/StuanTitle$TitleClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mGridView:Lcom/jd/lottery/lib/ui/widget/FullSizeGridView;

    new-instance v1, Lcom/jd/lottery/lib/activity/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/jd/lottery/lib/activity/MainActivity$5;-><init>(Lcom/jd/lottery/lib/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/ui/widget/FullSizeGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 128
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->loadingLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 401
    invoke-super {p0}, Lcom/jd/lottery/lib/activity/BaseActivity;->onPause()V

    .line 402
    return-void
.end method

.method public onPreInject()V
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/jd/lottery/lib/R$layout;->activity_lottery_home:I

    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/activity/MainActivity;->setContentView(I)V

    .line 84
    sget v0, Lcom/jd/lottery/lib/R$id;->grid:I

    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/ui/widget/FullSizeGridView;

    iput-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mGridView:Lcom/jd/lottery/lib/ui/widget/FullSizeGridView;

    .line 85
    sget v0, Lcom/jd/lottery/lib/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/ui/widget/StuanTitle;

    iput-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->title:Lcom/jd/lottery/lib/ui/widget/StuanTitle;

    .line 87
    invoke-direct {p0}, Lcom/jd/lottery/lib/activity/MainActivity;->init()V

    .line 88
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    :cond_0
    invoke-super {p0}, Lcom/jd/lottery/lib/activity/BaseActivity;->onResume()V

    .line 409
    return-void
.end method

.method public setAdapter()V
    .locals 6

    .prologue
    .line 139
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mIssueManager:Lcom/jd/lottery/lib/data/LotteryIssueManager;

    invoke-virtual {v4}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->selectCurr()Lcom/jd/droidlib/persist/sql/stmt/Select;

    move-result-object v3

    .line 140
    .local v3, select:Lcom/jd/droidlib/persist/sql/stmt/Select;,"Lcom/jd/droidlib/persist/sql/stmt/Select<Lcom/jd/lottery/lib/model/LotteryEntity;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "@@@@@@@@@@@@@@"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/jd/droidlib/persist/sql/stmt/Select;->count()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 142
    new-instance v2, Lcom/jd/droidlib/persist/sql/EntityManager;

    const-class v4, Lcom/jd/lottery/lib/model/LotteryEntity;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/jd/droidlib/persist/sql/EntityManager;-><init>(Ljava/lang/Class;Landroid/content/Context;)V

    .line 143
    .local v2, entityManager:Lcom/jd/droidlib/persist/sql/EntityManager;,"Lcom/jd/droidlib/persist/sql/EntityManager<Lcom/jd/lottery/lib/model/LotteryEntity;>;"
    invoke-virtual {v3}, Lcom/jd/droidlib/persist/sql/stmt/Select;->execute()Landroid/database/Cursor;

    move-result-object v1

    .line 145
    .local v1, cursor:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/MainActivity;->lotteryEntities:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 146
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/jd/lottery/lib/activity/MainActivity;->lotteryEntities:Ljava/util/ArrayList;

    .line 151
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 154
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 155
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_0
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/MainActivity;->lotteryEntities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 160
    new-instance v0, Lcom/jd/lottery/lib/model/LotteryEntity;

    invoke-direct {v0}, Lcom/jd/lottery/lib/model/LotteryEntity;-><init>()V

    .line 161
    .local v0, addLotteryEntity:Lcom/jd/lottery/lib/model/LotteryEntity;
    const/4 v4, 0x7

    iput v4, v0, Lcom/jd/lottery/lib/model/LotteryEntity;->lotteryIndex:I

    .line 162
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/MainActivity;->lotteryEntities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v0           #addLotteryEntity:Lcom/jd/lottery/lib/model/LotteryEntity;
    :cond_1
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;

    if-nez v4, :cond_4

    .line 167
    new-instance v4, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;

    iget-object v5, p0, Lcom/jd/lottery/lib/activity/MainActivity;->lotteryEntities:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5}, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;

    .line 168
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/MainActivity;->main_scrollView:Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/jd/lottery/lib/activity/MainActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 169
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mGridView:Lcom/jd/lottery/lib/ui/widget/FullSizeGridView;

    iget-object v5, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;

    invoke-virtual {v4, v5}, Lcom/jd/lottery/lib/ui/widget/FullSizeGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    :goto_1
    return-void

    .line 148
    :cond_2
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/MainActivity;->lotteryEntities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 152
    :cond_3
    iget-object v5, p0, Lcom/jd/lottery/lib/activity/MainActivity;->lotteryEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/jd/droidlib/persist/sql/EntityManager;->readRow(Landroid/database/Cursor;)Lcom/jd/droidlib/model/Entity;

    move-result-object v4

    check-cast v4, Lcom/jd/lottery/lib/model/LotteryEntity;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_4
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/MainActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;

    invoke-virtual {v4}, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
