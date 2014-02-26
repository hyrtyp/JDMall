.class public Lcom/jingdong/app/mall/home/NewHomeActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "NewHomeActivity.java"

# interfaces
.implements Lcom/jingdong/common/login/LoginUserBase$LoginListener;
.implements Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;
.implements Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;,
        Lcom/jingdong/app/mall/home/NewHomeActivity$OnExpandableListener;
    }
.end annotation


# static fields
.field public static final KEY_IS_FROM_HOME:Ljava/lang/String; = "isFromHome"

.field public static final LOTTERY:Ljava/lang/String; = "lottery"

.field public static final PHONE_CHONGZHI:Ljava/lang/String; = "chongzhi"

.field public static final TUAN_SHOPPING:Ljava/lang/String; = "tuan"

.field private static final VOICE_RECOGNITION_REQUEST_CODE:I = 0x4d2

.field public static currentTime:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private acEditView:Landroid/widget/AutoCompleteTextView;

.field private dialogBuilder:Landroid/app/AlertDialog$Builder;

.field private floorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private homeContent:Landroid/widget/LinearLayout;

.field private final homeIconHeight:I

.field private homeLayout:Landroid/view/View;

.field private iconView:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

.field private listDialog:Landroid/app/AlertDialog;

.field private listener:Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;

.field private loadingFail:Landroid/view/View;

.field private mActionImage:Landroid/view/View;

.field private mActionText:Landroid/widget/TextView;

.field private mInLoading:Z

.field private mProgress:Landroid/view/View;

.field private mPullLayout:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;

.field private mRotateDownAnimation:Landroid/view/animation/Animation;

.field private mRotateUpAnimation:Landroid/view/animation/Animation;

.field private mTimeText:Landroid/widget/TextView;

.field private modelGroupUtil:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

.field private pullRefreshHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field private quicklyBarPopup:Landroid/widget/PopupWindow;

.field private scrollView:Landroid/widget/ScrollView;

.field private final switcherHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/app/mall/home/NewHomeActivity;->currentTime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 89
    const-class v0, Lcom/jingdong/app/mall/home/NewHomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->TAG:Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v0

    mul-int/lit16 v0, v0, 0x177

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->switcherHeight:I

    .line 113
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0xb9

    div-int/lit16 v0, v0, 0x500

    iput v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->homeIconHeight:I

    .line 128
    iput-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->homeLayout:Landroid/view/View;

    .line 133
    new-instance v0, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;

    invoke-direct {v0, p0, v1}, Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;-><init>(Lcom/jingdong/app/mall/home/NewHomeActivity;Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->listener:Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->floorMap:Ljava/util/HashMap;

    .line 165
    new-instance v0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    invoke-direct {v0}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->modelGroupUtil:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    .line 807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mInLoading:Z

    .line 86
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/home/NewHomeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 632
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/home/NewHomeActivity;->gotoSearch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/home/NewHomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->dismissQuicklyBarPopup()V

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/home/NewHomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->gotoSearch()V

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/home/NewHomeActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->quicklyBarPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/home/NewHomeActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->listDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/home/NewHomeActivity;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/home/NewHomeActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->listDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/home/NewHomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->initData()V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/home/NewHomeActivity;)Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->modelGroupUtil:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/home/NewHomeActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->loadingFail:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/home/NewHomeActivity;Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 317
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/home/NewHomeActivity;->refreshFloorView(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/home/NewHomeActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->homeContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/home/NewHomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 835
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->dataLoaded()V

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/home/NewHomeActivity;Ljava/lang/String;Landroid/view/View;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 435
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/home/NewHomeActivity;->paiSwitch(Ljava/lang/String;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/home/NewHomeActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->homeLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/home/NewHomeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/home/NewHomeActivity;->searchSubmit(Ljava/lang/String;)V

    return-void
.end method

.method private autoComplete()V
    .locals 3

    .prologue
    .line 610
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->acEditView:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/home/NewHomeActivity;->resolveAutoComplete(Landroid/widget/AutoCompleteTextView;)V

    .line 612
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->homeLayout:Landroid/view/View;

    const v2, 0x7f0c00a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 613
    .local v0, mSearchButton:Landroid/widget/ImageView;
    new-instance v1, Lcom/jingdong/app/mall/home/NewHomeActivity$7;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/home/NewHomeActivity$7;-><init>(Lcom/jingdong/app/mall/home/NewHomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    return-void
.end method

.method private dataLoaded()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 839
    iget-boolean v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mInLoading:Z

    if-eqz v0, :cond_0

    .line 840
    iput-boolean v6, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mInLoading:Z

    .line 841
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mPullLayout:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;

    invoke-virtual {v0, v6}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->setEnableStopInActionView(Z)V

    .line 842
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mPullLayout:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->hideActionView()V

    .line 843
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mActionImage:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mPullLayout:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->isPullOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mActionText:Landroid/widget/TextView;

    const v1, 0x7f070497

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 848
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mActionImage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 849
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mActionImage:Landroid/view/View;

    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mRotateUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 854
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mTimeText:Landroid/widget/TextView;

    const v1, 0x7f070499

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lcom/jingdong/common/utils/FormatUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    :cond_0
    return-void

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mActionText:Landroid/widget/TextView;

    const v1, 0x7f070496

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private dismissQuicklyBarPopup()V
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->quicklyBarPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->quicklyBarPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->quicklyBarPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 785
    :cond_0
    return-void
.end method

.method private gotoSearch()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 629
    invoke-direct {p0, v0, v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->gotoSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    return-void
.end method

.method private gotoSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 634
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/jingdong/app/mall/more/SearchActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 635
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 636
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    :cond_0
    const-string v3, "isFromHome"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 640
    iget-object v3, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->acEditView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, hotword:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->acEditView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, keyword:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 643
    const-string v3, "hotword"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 646
    const-string v3, "keyword"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    :cond_2
    const/16 v3, 0x110

    invoke-virtual {p0, v1, v3}, Lcom/jingdong/app/mall/home/NewHomeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    .end local v0           #hotword:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #keyword:Ljava/lang/String;
    :goto_0
    return-void

    .line 649
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->makePullRefreshHttpGroup()V

    .line 256
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->modelGroupUtil:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->setInterval(I)V

    .line 258
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->modelGroupUtil:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    const-string v2, "indexManager"

    const-string v3, ""

    new-instance v4, Lcom/jingdong/app/mall/home/NewHomeActivity$1;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/home/NewHomeActivity$1;-><init>(Lcom/jingdong/app/mall/home/NewHomeActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->addUseCache(Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;Ljava/lang/String;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V

    .line 308
    return-void
.end method

.method private initPullRefreshView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 229
    const v0, 0x7f04000b

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mRotateUpAnimation:Landroid/view/animation/Animation;

    .line 230
    const v0, 0x7f04000a

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mRotateDownAnimation:Landroid/view/animation/Animation;

    .line 232
    iput-boolean v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mInLoading:Z

    .line 234
    const v0, 0x7f0c0280

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mPullLayout:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;

    .line 235
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mPullLayout:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;

    invoke-virtual {v0, p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->setOnActionPullListener(Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullListener;)V

    .line 236
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mPullLayout:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;

    invoke-virtual {v0, p0}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->setOnPullStateChangeListener(Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout$OnPullStateListener;)V

    .line 237
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mPullLayout:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->setEnableStopInActionView(Z)V

    .line 238
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mProgress:Landroid/view/View;

    .line 239
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mProgress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mActionImage:Landroid/view/View;

    .line 241
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mActionImage:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    const v0, 0x7f0c05d7

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mActionText:Landroid/widget/TextView;

    .line 243
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mActionText:Landroid/widget/TextView;

    const v1, 0x7f070498

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 244
    const v0, 0x7f0c05d8

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mTimeText:Landroid/widget/TextView;

    .line 247
    return-void
.end method

.method private initQuicklyBar()V
    .locals 5

    .prologue
    .line 467
    iget-object v2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->quicklyBarPopup:Landroid/widget/PopupWindow;

    if-nez v2, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->quicklyBarPopup:Landroid/widget/PopupWindow;

    .line 470
    :cond_0
    const v2, 0x7f030028

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 471
    .local v0, searchBar:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 472
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "paiswitch"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, value:Ljava/lang/String;
    const v2, 0x7f0c011d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/home/NewHomeActivity;->paiSwitch(Ljava/lang/String;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 478
    invoke-static {}, Lcom/jingdong/common/utils/GlobalInitialization;->getGlobalInitializationInstance()Lcom/jingdong/common/utils/GlobalInitialization;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/home/NewHomeActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/jingdong/app/mall/home/NewHomeActivity$3;-><init>(Lcom/jingdong/app/mall/home/NewHomeActivity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/GlobalInitialization;->addConfigLoadedListener(Lcom/jingdong/common/utils/GlobalInitialization$ConfigLoadedListener;)V

    .line 490
    :cond_1
    const v2, 0x7f0c011c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->listener:Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    const v2, 0x7f0c011f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->listener:Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->homeLayout:Landroid/view/View;

    const v3, 0x7f0c00a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->listener:Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iget-object v2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->quicklyBarPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 495
    .end local v1           #value:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private initSearchComponent()V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->autoComplete()V

    .line 430
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->homeLayout:Landroid/view/View;

    const v1, 0x7f0c00a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->acEditView:Landroid/widget/AutoCompleteTextView;

    .line 209
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->homeLayout:Landroid/view/View;

    const v1, 0x7f0c03fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->scrollView:Landroid/widget/ScrollView;

    .line 211
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 213
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->homeLayout:Landroid/view/View;

    const v1, 0x7f0c0284

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->homeContent:Landroid/widget/LinearLayout;

    .line 215
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->homeLayout:Landroid/view/View;

    const v1, 0x7f0c0286

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->loadingFail:Landroid/view/View;

    .line 217
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->initPullRefreshView()V

    .line 219
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->initSearchComponent()V

    .line 221
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->initQuicklyBar()V

    .line 222
    return-void
.end method

.method private makePullRefreshHttpGroup()V
    .locals 2

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->pullRefreshHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 814
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->pullRefreshHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    new-instance v1, Lcom/jingdong/app/mall/home/NewHomeActivity$10;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/home/NewHomeActivity$10;-><init>(Lcom/jingdong/app/mall/home/NewHomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup;->setOnGroupCompleteListener(Lcom/jingdong/common/utils/HttpGroup$OnGroupCompleteListener;)V

    .line 830
    return-void
.end method

.method private paiSwitch(Ljava/lang/String;Landroid/view/View;)Z
    .locals 2
    .parameter "value"
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 436
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    :goto_0
    return v0

    .line 438
    :cond_0
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->listener:Lcom/jingdong/app/mall/home/NewHomeActivity$ClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 441
    :cond_2
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private pullRefreshData()V
    .locals 1

    .prologue
    .line 905
    new-instance v0, Lcom/jingdong/app/mall/home/NewHomeActivity$11;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/home/NewHomeActivity$11;-><init>(Lcom/jingdong/app/mall/home/NewHomeActivity;)V

    .line 910
    invoke-virtual {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity$11;->start()V

    .line 911
    return-void
.end method

.method private declared-synchronized refreshFloorView(Ljava/util/ArrayList;Z)V
    .locals 12
    .parameter
    .parameter "isCache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/HomeFloorModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeFloorModel;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->dataLoaded()V

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->homeContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 325
    const/4 v11, 0x0

    .line 327
    .local v11, view:Landroid/view/View;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lt v8, v1, :cond_2

    .line 406
    monitor-exit p0

    return-void

    .line 329
    :cond_2
    :try_start_1
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/HomeFloorModel;

    .line 330
    .local v4, model:Lcom/jingdong/common/entity/HomeFloorModel;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/HomeFloorModel;->getFunctionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/jingdong/common/entity/HomeFloorModel;->getParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jingdong/common/utils/Md5Encrypt;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 331
    .local v9, md5:Ljava/lang/String;
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->floorMap:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #view:Landroid/view/View;
    check-cast v11, Landroid/view/View;

    .line 333
    .restart local v11       #view:Landroid/view/View;
    const-string v1, "201"

    invoke-virtual {v4}, Lcom/jingdong/common/entity/HomeFloorModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 334
    if-eqz v11, :cond_3

    instance-of v1, v11, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;

    if-nez v1, :cond_4

    .line 335
    :cond_3
    new-instance v11, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;

    .end local v11           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;-><init>(Landroid/content/Context;)V

    .line 337
    .restart local v11       #view:Landroid/view/View;
    :cond_4
    move-object v0, v11

    check-cast v0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;

    move-object v1, v0

    iget-object v3, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->pullRefreshHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    iget-object v5, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->scrollView:Landroid/widget/ScrollView;

    iget v6, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->switcherHeight:I

    move-object v2, p0

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureView;->init(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/entity/HomeFloorModel;Landroid/view/ViewGroup;IZ)V

    .line 392
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->floorMap:Ljava/util/HashMap;

    invoke-virtual {v1, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v8, v1, :cond_6

    .line 395
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 396
    .local v10, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v10, :cond_6

    instance-of v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_6

    .line 397
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v10           #params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x0

    iput v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 401
    :cond_6
    if-eqz v11, :cond_7

    .line 402
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->homeContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 327
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 339
    :cond_8
    const-string v1, "101"

    invoke-virtual {v4}, Lcom/jingdong/common/entity/HomeFloorModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 340
    if-eqz v11, :cond_9

    instance-of v1, v11, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    if-nez v1, :cond_a

    .line 341
    :cond_9
    new-instance v11, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    .end local v11           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;-><init>(Landroid/content/Context;)V

    .line 343
    .restart local v11       #view:Landroid/view/View;
    :cond_a
    move-object v0, v11

    check-cast v0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    move-object v1, v0

    iput-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->iconView:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    .line 344
    move-object v0, v11

    check-cast v0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    move-object v2, v0

    iget-object v5, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->pullRefreshHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    iget v6, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->homeIconHeight:I

    move-object v3, p0

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->init(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/HomeFloorModel;Lcom/jingdong/common/utils/HttpGroup;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 319
    .end local v4           #model:Lcom/jingdong/common/entity/HomeFloorModel;
    .end local v8           #i:I
    .end local v9           #md5:Ljava/lang/String;
    .end local v11           #view:Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 346
    .restart local v4       #model:Lcom/jingdong/common/entity/HomeFloorModel;
    .restart local v8       #i:I
    .restart local v9       #md5:Ljava/lang/String;
    .restart local v11       #view:Landroid/view/View;
    :cond_b
    :try_start_2
    const-string v1, "301"

    invoke-virtual {v4}, Lcom/jingdong/common/entity/HomeFloorModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 348
    if-eqz v11, :cond_c

    instance-of v1, v11, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    if-nez v1, :cond_d

    .line 349
    :cond_c
    new-instance v11, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    .end local v11           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;-><init>(Landroid/content/Context;)V

    .line 352
    .restart local v11       #view:Landroid/view/View;
    :cond_d
    if-nez p2, :cond_5

    .line 353
    move-object v0, v11

    check-cast v0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    move-object v1, v0

    iget-object v2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->pullRefreshHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v1, p0, v4, v2}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->init(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/HomeFloorModel;Lcom/jingdong/common/utils/HttpGroup;)V

    goto :goto_1

    .line 356
    :cond_e
    const-string v1, "401"

    invoke-virtual {v4}, Lcom/jingdong/common/entity/HomeFloorModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 358
    if-eqz v11, :cond_f

    instance-of v1, v11, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView1;

    if-nez v1, :cond_10

    .line 359
    :cond_f
    new-instance v11, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView1;

    .end local v11           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView1;-><init>(Landroid/content/Context;)V

    .line 361
    .restart local v11       #view:Landroid/view/View;
    :cond_10
    move-object v0, v11

    check-cast v0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView1;

    move-object v1, v0

    iget-object v2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->pullRefreshHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v1, p0, v4, v2, p2}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView1;->init(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/HomeFloorModel;Lcom/jingdong/common/utils/HttpGroup;Z)V

    goto/16 :goto_1

    .line 363
    :cond_11
    const-string v1, "402"

    invoke-virtual {v4}, Lcom/jingdong/common/entity/HomeFloorModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 365
    if-eqz v11, :cond_12

    instance-of v1, v11, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;

    if-nez v1, :cond_13

    .line 366
    :cond_12
    new-instance v11, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;

    .end local v11           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;-><init>(Landroid/content/Context;)V

    .line 368
    .restart local v11       #view:Landroid/view/View;
    :cond_13
    move-object v0, v11

    check-cast v0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;

    move-object v1, v0

    iget-object v2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->pullRefreshHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v1, p0, v4, v2, p2}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView2;->init(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/HomeFloorModel;Lcom/jingdong/common/utils/HttpGroup;Z)V

    goto/16 :goto_1

    .line 370
    :cond_14
    const-string v1, "403"

    invoke-virtual {v4}, Lcom/jingdong/common/entity/HomeFloorModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 372
    if-eqz v11, :cond_15

    instance-of v1, v11, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;

    if-nez v1, :cond_16

    .line 373
    :cond_15
    new-instance v11, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;

    .end local v11           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;-><init>(Landroid/content/Context;)V

    .line 375
    .restart local v11       #view:Landroid/view/View;
    :cond_16
    move-object v0, v11

    check-cast v0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;

    move-object v1, v0

    iget-object v2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->pullRefreshHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v1, p0, v4, v2, p2}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView3;->init(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/HomeFloorModel;Lcom/jingdong/common/utils/HttpGroup;Z)V

    goto/16 :goto_1

    .line 377
    :cond_17
    const-string v1, "404"

    invoke-virtual {v4}, Lcom/jingdong/common/entity/HomeFloorModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 379
    if-eqz v11, :cond_18

    instance-of v1, v11, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;

    if-nez v1, :cond_19

    .line 380
    :cond_18
    new-instance v11, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;

    .end local v11           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;-><init>(Landroid/content/Context;)V

    .line 382
    .restart local v11       #view:Landroid/view/View;
    :cond_19
    move-object v0, v11

    check-cast v0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;

    move-object v1, v0

    iget-object v2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->pullRefreshHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v1, p0, v4, v2, p2}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView4;->init(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/HomeFloorModel;Lcom/jingdong/common/utils/HttpGroup;Z)V

    goto/16 :goto_1

    .line 384
    :cond_1a
    const-string v1, "405"

    invoke-virtual {v4}, Lcom/jingdong/common/entity/HomeFloorModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 386
    if-eqz v11, :cond_1b

    instance-of v1, v11, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;

    if-nez v1, :cond_1c

    .line 387
    :cond_1b
    new-instance v11, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;

    .end local v11           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;-><init>(Landroid/content/Context;)V

    .line 389
    .restart local v11       #view:Landroid/view/View;
    :cond_1c
    move-object v0, v11

    check-cast v0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;

    move-object v1, v0

    iget-object v2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->pullRefreshHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v1, p0, v4, v2, p2}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeView5;->init(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/HomeFloorModel;Lcom/jingdong/common/utils/HttpGroup;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private resolveAutoComplete(Landroid/widget/AutoCompleteTextView;)V
    .locals 1
    .parameter "autoCompleteTextView"

    .prologue
    .line 576
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 578
    new-instance v0, Lcom/jingdong/app/mall/home/NewHomeActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/home/NewHomeActivity$5;-><init>(Lcom/jingdong/app/mall/home/NewHomeActivity;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 591
    new-instance v0, Lcom/jingdong/app/mall/home/NewHomeActivity$6;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/home/NewHomeActivity$6;-><init>(Lcom/jingdong/app/mall/home/NewHomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 603
    return-void
.end method

.method private searchSubmit(Ljava/lang/String;)V
    .locals 1
    .parameter "keyWord"

    .prologue
    .line 545
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->searchSubmit(Ljava/lang/String;Z)V

    .line 546
    return-void
.end method

.method private searchSubmit(Ljava/lang/String;Z)V
    .locals 6
    .parameter "keyWord"
    .parameter "isHotkeyword"

    .prologue
    .line 552
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 569
    :goto_0
    return-void

    .line 556
    :cond_0
    invoke-static {p1}, Lcom/jingdong/common/database/table/SearchHistoryTable;->saveSearchHistory(Ljava/lang/String;)V

    .line 559
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 560
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->acEditView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 561
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/jingdong/app/mall/more/SearchActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 562
    .local v2, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 563
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "keyWord"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v3, "searchway"

    const-string v4, "text"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v3, "isFromHome"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 566
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 567
    const-string v4, "source"

    new-instance v5, Lcom/jingdong/common/entity/SourceEntity;

    if-eqz p2, :cond_1

    const-string v3, "hotKeyword"

    :goto_1
    invoke-direct {v5, v3, p1}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 568
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/home/NewHomeActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0

    .line 567
    :cond_1
    const-string v3, "search"

    goto :goto_1
.end method


# virtual methods
.method public checkCameraHardware(Landroid/content/Context;)Z
    .locals 1
    .parameter "applicationContext"

    .prologue
    .line 715
    invoke-static {}, Lcom/jingdong/common/utils/SDKUtils;->isSDKVersionMoreThan21()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    invoke-static {p1}, Lcom/jingdong/common/ui/CameraUtils;->checkCameraHardware(Landroid/content/Context;)Z

    move-result v0

    .line 718
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 4

    .prologue
    .line 451
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v2

    mul-int/lit16 v2, v2, 0x8c

    div-int/lit16 v0, v2, 0x500

    .line 452
    .local v0, height:I
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 453
    .local v1, popup:Landroid/widget/PopupWindow;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 454
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 456
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x33c1c0b4

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 458
    const v2, 0x7f080035

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 459
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 460
    return-object v1
.end method

.method public loginCompletedNotify()V
    .locals 1

    .prologue
    .line 417
    new-instance v0, Lcom/jingdong/app/mall/home/NewHomeActivity$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/home/NewHomeActivity$2;-><init>(Lcom/jingdong/app/mall/home/NewHomeActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->post(Ljava/lang/Runnable;)V

    .line 423
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, -0x1

    .line 726
    const/16 v7, 0x110

    if-ne v7, p1, :cond_2

    .line 727
    if-ne v8, p2, :cond_2

    .line 728
    const-string v7, "type"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 729
    .local v6, type:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "BarcodeActivity.class"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 730
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/home/NewHomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 779
    .end local v6           #type:Ljava/lang/String;
    :goto_0
    return-void

    .line 732
    .restart local v6       #type:Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 733
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 734
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 735
    const-string v7, "isHotkeyword"

    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 736
    .local v3, isHotkeyword:Z
    const-string v7, "sortKey"

    const/4 v8, 0x5

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 737
    const-string v8, "source"

    new-instance v9, Lcom/jingdong/common/entity/SourceEntity;

    if-eqz v3, :cond_1

    const-string v7, "hotKeyword"

    :goto_1
    const-string v10, "keyWord"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v7, v10}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 738
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/home/NewHomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 737
    :cond_1
    const-string v7, "search"

    goto :goto_1

    .line 743
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isHotkeyword:Z
    .end local v6           #type:Ljava/lang/String;
    :cond_2
    const/16 v7, 0x4d2

    if-ne p1, v7, :cond_3

    if-ne p2, v8, :cond_3

    .line 745
    const-string v7, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 746
    .local v5, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 747
    .local v4, items:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v1, v7, :cond_4

    .line 750
    iget-object v7, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0701b9

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 751
    iget-object v7, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/jingdong/app/mall/home/NewHomeActivity$8;

    invoke-direct {v8, p0, v4}, Lcom/jingdong/app/mall/home/NewHomeActivity$8;-><init>(Lcom/jingdong/app/mall/home/NewHomeActivity;[Ljava/lang/String;)V

    invoke-virtual {v7, v4, v8}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 770
    new-instance v7, Lcom/jingdong/app/mall/home/NewHomeActivity$9;

    invoke-direct {v7, p0}, Lcom/jingdong/app/mall/home/NewHomeActivity$9;-><init>(Lcom/jingdong/app/mall/home/NewHomeActivity;)V

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/home/NewHomeActivity;->post(Ljava/lang/Runnable;)V

    .line 778
    .end local v1           #i:I
    .end local v4           #items:[Ljava/lang/String;
    .end local v5           #matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/MyActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 748
    .restart local v1       #i:I
    .restart local v4       #items:[Ljava/lang/String;
    .restart local v5       #matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v4, v1

    .line 747
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    const v1, 0x7f0300aa

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->homeLayout:Landroid/view/View;

    .line 180
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->homeLayout:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/home/NewHomeActivity;->setContentView(Landroid/view/View;)V

    .line 182
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->initView()V

    .line 184
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->initData()V

    .line 186
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "moduleId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 188
    .local v0, moduleId:I
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v1

    invoke-virtual {v1, p0, p0, v0}, Lcom/jingdong/app/mall/utils/LoginUser;->homeAutoLogin(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/login/LoginUserBase$LoginListener;I)V

    .line 192
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-gt v1, v2, :cond_0

    .line 194
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->setPlugOn(Z)V

    .line 197
    :cond_0
    invoke-static {}, Lcom/jingdong/common/plug/MergeSwitcher;->isPlugOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-static {}, Lcom/jingdong/app/mall/plug/PlugManager;->getInstance()Lcom/jingdong/app/mall/plug/PlugManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/jingdong/app/mall/plug/PlugManager;->startPlugService(Lcom/jingdong/app/mall/utils/MyActivity;)V

    .line 201
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 541
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onDestroy()V

    .line 542
    return-void
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 898
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 704
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 705
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/MyApplication;->getMainFrameActivity()Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v0

    .line 706
    .local v0, activity:Lcom/jingdong/app/mall/MainFrameActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/MainFrameActivity;->removeGuideView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 707
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->exitControl()V

    .line 708
    const/4 v1, 0x1

    .line 711
    .end local v0           #activity:Lcom/jingdong/app/mall/MainFrameActivity;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jingdong/app/mall/utils/MyActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPullIn()V
    .locals 2

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mInLoading:Z

    if-nez v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mActionText:Landroid/widget/TextView;

    const v1, 0x7f070496

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 871
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mActionImage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 872
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mActionImage:Landroid/view/View;

    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mRotateDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 874
    :cond_0
    return-void
.end method

.method public onPullOut()V
    .locals 2

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mInLoading:Z

    if-nez v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mActionText:Landroid/widget/TextView;

    const v1, 0x7f070497

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 862
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mActionImage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 863
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mActionImage:Landroid/view/View;

    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mRotateUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 865
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 502
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 503
    sget-boolean v1, Lcom/jingdong/app/mall/amHelper/AmHelper;->isGoPersonel:Z

    if-eqz v1, :cond_0

    .line 504
    sput-boolean v2, Lcom/jingdong/app/mall/amHelper/AmHelper;->isGoPersonel:Z

    .line 505
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 506
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.360buy:singleInstanceFlag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 507
    const-string v1, "com.360buy:navigationFlag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 508
    const-string v1, "com.360buy:navigationId"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    const-string v1, "com.360buy:useHistoryFlag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 510
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 537
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 514
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->getRequestedOrientation()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 515
    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/home/NewHomeActivity;->setRequestedOrientation(I)V

    .line 522
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->acEditView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 524
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->iconView:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    if-eqz v1, :cond_2

    .line 525
    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->iconView:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->resetPopView()V

    .line 528
    :cond_2
    new-instance v1, Lcom/jingdong/app/mall/home/NewHomeActivity$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/home/NewHomeActivity$4;-><init>(Lcom/jingdong/app/mall/home/NewHomeActivity;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/home/NewHomeActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 893
    return-void
.end method

.method public onSnapToTop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 878
    iget-boolean v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mInLoading:Z

    if-nez v0, :cond_0

    .line 879
    iput-boolean v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mInLoading:Z

    .line 880
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mPullLayout:Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/PullRefreshLayout;->setEnableStopInActionView(Z)V

    .line 881
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mActionImage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 882
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mActionImage:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 883
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mProgress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity;->mActionText:Landroid/widget/TextView;

    const v1, 0x7f070498

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 886
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->pullRefreshData()V

    .line 888
    :cond_0
    return-void
.end method
