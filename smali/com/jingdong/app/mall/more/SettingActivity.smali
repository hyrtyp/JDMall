.class public Lcom/jingdong/app/mall/more/SettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingActivity"


# instance fields
.field private clearImageClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private endHour:I

.field private endTime:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

.field handler:Landroid/os/Handler;

.field private isCanShow:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private modal:Landroid/view/ViewGroup;

.field private msgAutoUpdateSwitch:Landroid/preference/CheckBoxPreference;

.field private msgCategoryFilterOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private msgUnPushTimeChoiceClick:Landroid/preference/Preference$OnPreferenceClickListener;

.field private preferenceMsgCategory:Landroid/preference/PreferenceCategory;

.field private pushMessageCategoryFilter:Landroid/preference/Preference;

.field private rootFrameLayout:Landroid/view/ViewGroup;

.field private settings:Landroid/content/SharedPreferences;

.field private startHour:I

.field private startTime:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

.field private unPushTimeContentView:Landroid/view/View;

.field private unPushTimeDialog:Lcom/jingdong/app/mall/utils/ui/DialogController;

.field private unPushTimePreference:Landroid/preference/Preference;

.field private updateLocation:Landroid/preference/PreferenceScreen;

.field private updateLocationListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->isCanShow:Z

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->handler:Landroid/os/Handler;

    .line 93
    new-instance v0, Lcom/jingdong/app/mall/more/SettingActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/more/SettingActivity$1;-><init>(Lcom/jingdong/app/mall/more/SettingActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->clearImageClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 125
    new-instance v0, Lcom/jingdong/app/mall/more/SettingActivity$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/more/SettingActivity$2;-><init>(Lcom/jingdong/app/mall/more/SettingActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->updateLocationListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 257
    new-instance v0, Lcom/jingdong/app/mall/more/SettingActivity$3;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/more/SettingActivity$3;-><init>(Lcom/jingdong/app/mall/more/SettingActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->msgCategoryFilterOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 291
    new-instance v0, Lcom/jingdong/app/mall/more/SettingActivity$4;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/more/SettingActivity$4;-><init>(Lcom/jingdong/app/mall/more/SettingActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->msgUnPushTimeChoiceClick:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/SettingActivity;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->updateLocation:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/more/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->showLoadingDialog()V

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/more/SettingActivity;)Landroid/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/more/SettingActivity;Lcom/jingdong/app/mall/utils/ui/DialogController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimeDialog:Lcom/jingdong/app/mall/utils/ui/DialogController;

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/more/SettingActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimeContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/more/SettingActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput p1, p0, Lcom/jingdong/app/mall/more/SettingActivity;->startHour:I

    return-void
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/more/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 89
    iget v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->startHour:I

    return v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/more/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 90
    iget v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->endHour:I

    return v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/more/SettingActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput p1, p0, Lcom/jingdong/app/mall/more/SettingActivity;->endHour:I

    return-void
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/more/SettingActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->modal:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/more/SettingActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->rootFrameLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/more/SettingActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 506
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/more/SettingActivity;->setProvinceIDToSharedPreferences(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/more/SettingActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/more/SettingActivity;->setProvinceNameToSharedPreferences(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/more/SettingActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->settings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/more/SettingActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->isCanShow:Z

    return v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/more/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->removeLoadingDialog()V

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/more/SettingActivity;)Lcom/jingdong/app/mall/utils/ui/DialogController;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimeDialog:Lcom/jingdong/app/mall/utils/ui/DialogController;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/more/SettingActivity;)Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->startTime:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/more/SettingActivity;)Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->endTime:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    return-object v0
.end method

.method private addPreference()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->preferenceMsgCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity;->pushMessageCategoryFilter:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 570
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->preferenceMsgCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 571
    return-void
.end method

.method private getModal()Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 512
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 514
    .local v1, m:Landroid/view/ViewGroup;
    new-instance v2, Lcom/jingdong/app/mall/more/SettingActivity$7;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/more/SettingActivity$7;-><init>(Lcom/jingdong/app/mall/more/SettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 520
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x100

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 521
    .local v0, colorDrawable:Landroid/graphics/drawable/ColorDrawable;
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 522
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 523
    return-object v1
.end method

.method private initUnPushTimePreference()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x17

    const/4 v8, 0x0

    const/16 v7, 0x18

    .line 412
    iget-object v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->settings:Landroid/content/SharedPreferences;

    const v5, 0x7f0703bd

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->startHour:I

    .line 413
    iget-object v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->settings:Landroid/content/SharedPreferences;

    const v5, 0x7f0703be

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->endHour:I

    .line 415
    iget v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->startHour:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->endHour:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->startHour:I

    if-ge v4, v7, :cond_0

    iget v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->endHour:I

    if-ge v4, v7, :cond_0

    .line 416
    iget-object v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimePreference:Landroid/preference/Preference;

    iget v5, p0, Lcom/jingdong/app/mall/more/SettingActivity;->startHour:I

    iget v6, p0, Lcom/jingdong/app/mall/more/SettingActivity;->endHour:I

    invoke-static {v5, v6}, Lcom/jingdong/app/mall/utils/TimeUtils;->getUnPushTimeSummary(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 419
    :cond_0
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/more/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 420
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030123

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimeContentView:Landroid/view/View;

    .line 422
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 423
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 425
    .local v2, hour:I
    iget-object v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimeContentView:Landroid/view/View;

    const v5, 0x7f0c0720

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    iput-object v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->startTime:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    .line 426
    iget-object v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->startTime:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    new-instance v5, Lcom/jingdong/app/mall/utils/ui/wheelview/NumericWheelAdapter;

    const-string v6, "%02d"

    invoke-direct {v5, v8, v9, v6}, Lcom/jingdong/app/mall/utils/ui/wheelview/NumericWheelAdapter;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->setAdapter(Lcom/jingdong/app/mall/utils/ui/wheelview/WheelAdapter;)V

    .line 427
    iget-object v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->startTime:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    invoke-virtual {v4, v10}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->setCyclic(Z)V

    .line 428
    iget v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->startHour:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->startHour:I

    if-ge v4, v7, :cond_1

    .line 429
    iget-object v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->startTime:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    iget v5, p0, Lcom/jingdong/app/mall/more/SettingActivity;->startHour:I

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->setCurrentItem(I)V

    .line 435
    :goto_0
    iget-object v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimeContentView:Landroid/view/View;

    const v5, 0x7f0c0722

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    iput-object v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->endTime:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    .line 436
    iget-object v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->endTime:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    new-instance v5, Lcom/jingdong/app/mall/utils/ui/wheelview/NumericWheelAdapter;

    const-string v6, "%02d"

    invoke-direct {v5, v8, v9, v6}, Lcom/jingdong/app/mall/utils/ui/wheelview/NumericWheelAdapter;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->setAdapter(Lcom/jingdong/app/mall/utils/ui/wheelview/WheelAdapter;)V

    .line 437
    iget-object v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->endTime:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    invoke-virtual {v4, v10}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->setCyclic(Z)V

    .line 438
    iget v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->endHour:I

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->endHour:I

    if-ge v4, v7, :cond_2

    .line 439
    iget-object v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->endTime:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    iget v5, p0, Lcom/jingdong/app/mall/more/SettingActivity;->endHour:I

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->setCurrentItem(I)V

    .line 445
    :goto_1
    iget-object v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimeContentView:Landroid/view/View;

    const v5, 0x7f0c0721

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 446
    .local v1, dividerView:Landroid/view/View;
    new-instance v4, Lcom/jingdong/app/mall/utils/ui/DividerDrawable;

    invoke-direct {v4, v8}, Lcom/jingdong/app/mall/utils/ui/DividerDrawable;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 447
    return-void

    .line 431
    .end local v1           #dividerView:Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->startTime:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    invoke-virtual {v4, v2}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->setCurrentItem(I)V

    .line 432
    iput v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->startHour:I

    goto :goto_0

    .line 441
    :cond_2
    iget-object v4, p0, Lcom/jingdong/app/mall/more/SettingActivity;->endTime:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    invoke-virtual {v4, v2}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->setCurrentItem(I)V

    .line 442
    iput v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->endHour:I

    goto :goto_1
.end method

.method private removeLoadingDialog()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->modal:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->modal:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->rootFrameLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->rootFrameLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity;->modal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 288
    :cond_1
    return-void
.end method

.method private removePreference()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->preferenceMsgCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity;->pushMessageCategoryFilter:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 575
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->preferenceMsgCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 577
    return-void
.end method

.method private setProvinceIDToSharedPreferences(Ljava/lang/String;)V
    .locals 2
    .parameter "provinceID"

    .prologue
    .line 507
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "provinceID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 508
    return-void
.end method

.method private setProvinceNameToSharedPreferences(Ljava/lang/String;)V
    .locals 2
    .parameter "provinceName"

    .prologue
    .line 503
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "provinceName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 504
    return-void
.end method

.method private showLoadingDialog()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v2, -0x2

    .line 267
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity;->rootFrameLayout:Landroid/view/ViewGroup;

    .line 268
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->getModal()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity;->modal:Landroid/view/ViewGroup;

    .line 269
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->removeLoadingDialog()V

    .line 270
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 271
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 273
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 275
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity;->modal:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity;->rootFrameLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->modal:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity;->rootFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 279
    return-void
.end method

.method private updateFreQuencySummary()V
    .locals 0

    .prologue
    .line 495
    return-void
.end method


# virtual methods
.method public getParams()Ljava/util/Map;
    .locals 1
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
    .line 450
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParamsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 455
    .local v0, maps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 456
    const-string v1, ""

    .line 458
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 335
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const-string v3, "jdAndroidClient"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 336
    const v2, 0x7f050008

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/more/SettingActivity;->addPreferencesFromResource(I)V

    .line 337
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 340
    .local v1, preferences:Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 342
    const v2, 0x7f0703ad

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->preferenceMsgCategory:Landroid/preference/PreferenceCategory;

    .line 345
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->settings:Landroid/content/SharedPreferences;

    .line 346
    const v2, 0x7f0703ae

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->msgAutoUpdateSwitch:Landroid/preference/CheckBoxPreference;

    .line 348
    const v2, 0x7f0703b1

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->pushMessageCategoryFilter:Landroid/preference/Preference;

    .line 350
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->pushMessageCategoryFilter:Landroid/preference/Preference;

    const v3, 0x7f0703b5

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 357
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->pushMessageCategoryFilter:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity;->msgCategoryFilterOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 360
    const v2, 0x7f0703ab

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 361
    .local v0, clearImagePre:Landroid/preference/PreferenceScreen;
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->clearImageClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 369
    const v2, 0x7f07042c

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->updateLocation:Landroid/preference/PreferenceScreen;

    .line 370
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->updateLocation:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity;->updateLocationListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 372
    const v2, 0x7f0703ba

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimePreference:Landroid/preference/Preference;

    .line 373
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity;->msgUnPushTimeChoiceClick:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 375
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->initUnPushTimePreference()V

    .line 377
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->startTime:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    new-instance v3, Lcom/jingdong/app/mall/more/SettingActivity$5;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/more/SettingActivity$5;-><init>(Lcom/jingdong/app/mall/more/SettingActivity;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->addChangingListener(Lcom/jingdong/app/mall/utils/ui/wheelview/OnWheelChangedListener;)V

    .line 388
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->endTime:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    new-instance v3, Lcom/jingdong/app/mall/more/SettingActivity$6;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/more/SettingActivity$6;-><init>(Lcom/jingdong/app/mall/more/SettingActivity;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->addChangingListener(Lcom/jingdong/app/mall/utils/ui/wheelview/OnWheelChangedListener;)V

    .line 400
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->msgAutoUpdateSwitch:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->msgAutoUpdateSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 403
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->addPreference()V

    .line 409
    :cond_0
    :goto_1
    return-void

    .line 353
    .end local v0           #clearImagePre:Landroid/preference/PreferenceScreen;
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->pushMessageCategoryFilter:Landroid/preference/Preference;

    const v3, 0x7f0703b4

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 354
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity;->pushMessageCategoryFilter:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 405
    .restart local v0       #clearImagePre:Landroid/preference/PreferenceScreen;
    :cond_2
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->removePreference()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 561
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->isCanShow:Z

    .line 566
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 529
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 533
    invoke-static {}, Lcom/jingdong/common/lbs/LocManager;->getInstance()Lcom/jingdong/common/lbs/LocManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/lbs/LocManager;->removeUpdateLocation()V

    .line 534
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jingdong/app/mall/more/SettingActivity$8;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/more/SettingActivity$8;-><init>(Lcom/jingdong/app/mall/more/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 544
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->isCanShow:Z

    .line 465
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->updateFreQuencySummary()V

    .line 466
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 468
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->getParamsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 473
    const v0, 0x7f0703ae

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->msgAutoUpdateSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    invoke-static {}, Lcom/jingdong/common/utils/MessageUtil;->getMsgMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    invoke-static {}, Lcom/jingdong/common/utils/MessageUtil;->openMsgService()V

    .line 483
    :goto_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->addPreference()V

    .line 491
    :cond_0
    :goto_1
    return-void

    .line 481
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/AlarmUtils;->alarmPushMsgTask(Landroid/content/Context;J)V

    goto :goto_0

    .line 485
    :cond_2
    invoke-static {}, Lcom/jingdong/common/utils/MessageUtil;->closeMsgService()V

    .line 486
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->removePreference()V

    goto :goto_1

    .line 488
    :cond_3
    const v0, 0x7f0703b7

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->updateFreQuencySummary()V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 549
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->isCanShow:Z

    .line 554
    invoke-static {}, Lcom/jingdong/common/lbs/LocManager;->getInstance()Lcom/jingdong/common/lbs/LocManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/lbs/LocManager;->removeUpdateLocation()V

    .line 555
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/SettingActivity;->removeLoadingDialog()V

    .line 556
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity;->updateLocation:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 557
    return-void
.end method
