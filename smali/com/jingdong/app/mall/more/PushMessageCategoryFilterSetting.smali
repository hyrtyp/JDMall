.class public Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;
.super Landroid/preference/PreferenceActivity;
.source "PushMessageCategoryFilterSetting.java"


# static fields
.field public static final CLOSE_CATEGORY:Ljava/lang/String; = "\u5df2\u53d6\u6d88\u63a5\u6536  "

.field public static final OPEN_CATEGORY:Ljava/lang/String; = "\u5df2\u542f\u7528\u63a5\u6536  "


# instance fields
.field private categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/MessageCategory;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private modal:Landroid/view/ViewGroup;

.field private pushMessageCategoryFilterCategory:Landroid/preference/PreferenceCategory;

.field private rootFrameLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->handler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->removeLoadingDialog()V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->refreshPushMsgCategoryError()V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->categories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->categories:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->refreshPushMsgCategory()V

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->showLoadingDialog()V

    return-void
.end method

.method private generatorCheckBoxPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "key"
    .parameter "title"
    .parameter "summaryOn"
    .parameter "summaryOff"

    .prologue
    .line 207
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 208
    .local v0, temp:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v0, p3}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {v0, p4}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 212
    return-object v0
.end method

.method private getModal()Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 237
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 239
    .local v1, m:Landroid/view/ViewGroup;
    new-instance v2, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$3;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$3;-><init>(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x100

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 246
    .local v0, colorDrawable:Landroid/graphics/drawable/ColorDrawable;
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 247
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    return-object v1
.end method

.method private initCategory()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->showLoadingDialog()V

    .line 57
    new-instance v0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$1;-><init>(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)V

    invoke-static {v0}, Lcom/jingdong/common/utils/PushMessageUtils;->getAllUserCategory(Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V

    .line 90
    return-void
.end method

.method private initPushMsgCategory()V
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->pushMessageCategoryFilterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 97
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, preference:Landroid/preference/Preference;
    const v1, 0x7f07018e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 99
    const v1, 0x7f070225

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 100
    iget-object v1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->pushMessageCategoryFilterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 101
    return-void
.end method

.method private refreshPushMsgCategory()V
    .locals 8

    .prologue
    .line 118
    iget-object v2, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->pushMessageCategoryFilterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 120
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->categories:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 204
    :cond_0
    return-void

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->categories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/MessageCategory;

    .line 125
    .local v1, category:Lcom/jingdong/common/entity/MessageCategory;
    invoke-virtual {v1}, Lcom/jingdong/common/entity/MessageCategory;->getTypeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jingdong/common/entity/MessageCategory;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5df2\u542f\u7528\u63a5\u6536  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/jingdong/common/entity/MessageCategory;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5df2\u53d6\u6d88\u63a5\u6536  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/jingdong/common/entity/MessageCategory;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->generatorCheckBoxPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    .line 126
    .local v0, boxPreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Lcom/jingdong/common/entity/MessageCategory;->hasSubcribed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 129
    :cond_2
    new-instance v3, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;-><init>(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;Landroid/preference/CheckBoxPreference;Lcom/jingdong/common/entity/MessageCategory;)V

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    iget-object v3, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->pushMessageCategoryFilterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private refreshPushMsgCategoryError()V
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->pushMessageCategoryFilterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 110
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, preference:Landroid/preference/Preference;
    const v1, 0x7f070226

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 112
    const v1, 0x7f070228

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 113
    iget-object v1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->pushMessageCategoryFilterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 114
    return-void
.end method

.method private removeLoadingDialog()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->modal:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->rootFrameLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->modal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 233
    return-void
.end method

.method private showLoadingDialog()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v2, -0x2

    .line 216
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->rootFrameLayout:Landroid/view/ViewGroup;

    .line 217
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->getModal()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->modal:Landroid/view/ViewGroup;

    .line 218
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->removeLoadingDialog()V

    .line 219
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->mProgressBar:Landroid/widget/ProgressBar;

    .line 220
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 222
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 224
    iget-object v1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->modal:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->rootFrameLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->modal:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object v1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->rootFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 228
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->addPreferencesFromResource(I)V

    .line 49
    const v0, 0x7f0703b2

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->pushMessageCategoryFilterCategory:Landroid/preference/PreferenceCategory;

    .line 51
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->initPushMsgCategory()V

    .line 52
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->initCategory()V

    .line 53
    return-void
.end method
