.class public Lcom/jingdong/app/mall/WebActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "WebActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/WebActivity$BindGiftcard;,
        Lcom/jingdong/app/mall/WebActivity$ModifyPwd;,
        Lcom/jingdong/app/mall/WebActivity$PlayGame;,
        Lcom/jingdong/app/mall/WebActivity$RefreshCache;,
        Lcom/jingdong/app/mall/WebActivity$StartCamera;
    }
.end annotation


# static fields
.field public static final IS_USE_CACHE:Ljava/lang/String; = "isUseCache"

.field public static final IS_USE_RIGHT_BUTTON:Ljava/lang/String; = "isUseRightButton"

.field public static final JD_GET_HTML_CODE_OBJ:Ljava/lang/String; = "jd_android_obj"

.field public static final KEY_FROM:Ljava/lang/String; = "from"

.field private static final LOGIN_PATH:Ljava/lang/String; = "/user/login.action"

.field private static final SDK_2_1:I = 0x7


# instance fields
.field private final TAG:Ljava/lang/String;

.field public back:Landroid/widget/ImageView;

.field private bindGiftcard:Lcom/jingdong/app/mall/WebActivity$BindGiftcard;

.field private bottomMenuLayout:Landroid/widget/RelativeLayout;

.field private closeButton:Landroid/widget/Button;

.field public fresh:Landroid/widget/ImageView;

.field private hideProgressAnimation:Landroid/view/animation/AlphaAnimation;

.field private imageViewBg:Landroid/widget/ImageView;

.field private isFromGame:Z

.field private isFromNF:Z

.field private isFromPopularity:Z

.field private jdGame:Lcom/jingdong/app/mall/WebActivity$PlayGame;

.field private loadingBar:Landroid/widget/ProgressBar;

.field private loginFlag:Z

.field private loginStateSynchro:Z

.field private modifyPwd:Lcom/jingdong/app/mall/WebActivity$ModifyPwd;

.field public next:Landroid/widget/ImageView;

.field private oldUrl:Ljava/lang/String;

.field private perWidth:F

.field private photoUri:Landroid/net/Uri;

.field private progressImage:Landroid/widget/ImageView;

.field private progressImageNormalLayout:Landroid/widget/RelativeLayout;

.field private refreshCache:Lcom/jingdong/app/mall/WebActivity$RefreshCache;

.field private titleLayout:Landroid/widget/RelativeLayout;

.field private titleRelativeLayout:Landroid/widget/RelativeLayout;

.field private titleView:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 71
    const-string v0, "WebActivity"

    iput-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->TAG:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Lcom/jingdong/app/mall/WebActivity;->loginFlag:Z

    .line 90
    iput-boolean v2, p0, Lcom/jingdong/app/mall/WebActivity;->loginStateSynchro:Z

    .line 96
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jingdong/app/mall/WebActivity;->perWidth:F

    .line 102
    new-instance v0, Lcom/jingdong/app/mall/WebActivity$RefreshCache;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/WebActivity$RefreshCache;-><init>(Lcom/jingdong/app/mall/WebActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->refreshCache:Lcom/jingdong/app/mall/WebActivity$RefreshCache;

    .line 104
    new-instance v0, Lcom/jingdong/app/mall/WebActivity$BindGiftcard;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/WebActivity$BindGiftcard;-><init>(Lcom/jingdong/app/mall/WebActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->bindGiftcard:Lcom/jingdong/app/mall/WebActivity$BindGiftcard;

    .line 105
    new-instance v0, Lcom/jingdong/app/mall/WebActivity$ModifyPwd;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/WebActivity$ModifyPwd;-><init>(Lcom/jingdong/app/mall/WebActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->modifyPwd:Lcom/jingdong/app/mall/WebActivity$ModifyPwd;

    .line 106
    new-instance v0, Lcom/jingdong/app/mall/WebActivity$PlayGame;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/WebActivity$PlayGame;-><init>(Lcom/jingdong/app/mall/WebActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->jdGame:Lcom/jingdong/app/mall/WebActivity$PlayGame;

    .line 112
    iput-boolean v2, p0, Lcom/jingdong/app/mall/WebActivity;->isFromNF:Z

    .line 113
    iput-boolean v2, p0, Lcom/jingdong/app/mall/WebActivity;->isFromGame:Z

    .line 114
    iput-boolean v2, p0, Lcom/jingdong/app/mall/WebActivity;->isFromPopularity:Z

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/WebActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/WebActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/jingdong/app/mall/WebActivity;->loginFlag:Z

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/WebActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/jingdong/app/mall/WebActivity;->loginStateSynchro:Z

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/WebActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/WebActivity;->loginCallback(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/WebActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->oldUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/WebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/jingdong/app/mall/WebActivity;->initMenuView()V

    return-void
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/WebActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/WebActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->progressImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/WebActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->titleRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/WebActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->progressImageNormalLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/WebActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->loadingBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/WebActivity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/WebActivity;->loginStateSynchro(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/WebActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/WebActivity;->loginStateSynchro(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/WebActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/jingdong/app/mall/WebActivity;->isFromNF:Z

    return v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/WebActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/WebActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/jingdong/app/mall/WebActivity;->oldUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/WebActivity;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/WebActivity;->getUrlMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/WebActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/jingdong/app/mall/WebActivity;->loginFlag:Z

    return v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/WebActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/jingdong/app/mall/WebActivity;->loginStateSynchro:Z

    return v0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 129
    const v0, 0x7f0c071c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->closeButton:Landroid/widget/Button;

    .line 130
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->titleView:Landroid/widget/TextView;

    .line 131
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->progressImage:Landroid/widget/ImageView;

    .line 132
    const v0, 0x7f0c012a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->titleRelativeLayout:Landroid/widget/RelativeLayout;

    .line 133
    const v0, 0x7f0c0128

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->progressImageNormalLayout:Landroid/widget/RelativeLayout;

    .line 134
    const v0, 0x7f0c012c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->back:Landroid/widget/ImageView;

    .line 135
    const v0, 0x7f0c012d

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->next:Landroid/widget/ImageView;

    .line 136
    const v0, 0x7f0c012e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->fresh:Landroid/widget/ImageView;

    .line 137
    const v0, 0x7f0c0127

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->titleLayout:Landroid/widget/RelativeLayout;

    .line 138
    const v0, 0x7f0c012b

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->bottomMenuLayout:Landroid/widget/RelativeLayout;

    .line 139
    return-void
.end method

.method private getHideProgressAnimation()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 693
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->hideProgressAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3dcccccd

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->hideProgressAnimation:Landroid/view/animation/AlphaAnimation;

    .line 695
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->hideProgressAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 696
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->hideProgressAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/jingdong/app/mall/WebActivity$11;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/WebActivity$11;-><init>(Lcom/jingdong/app/mall/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->hideProgressAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method private getUrlMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 572
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    return-object v0
.end method

.method private hideLoadingBar()V
    .locals 1

    .prologue
    .line 814
    new-instance v0, Lcom/jingdong/app/mall/WebActivity$13;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/WebActivity$13;-><init>(Lcom/jingdong/app/mall/WebActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/WebActivity;->post(Ljava/lang/Runnable;)V

    .line 823
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/jingdong/app/mall/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->url:Ljava/lang/String;

    .line 181
    return-void
.end method

.method private initMenuView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->back:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->next:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 154
    :goto_1
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->back:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->next:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1
.end method

.method private loginCallback(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 190
    new-instance v0, Lcom/jingdong/app/mall/WebActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/WebActivity$4;-><init>(Lcom/jingdong/app/mall/WebActivity;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/WebActivity;->addResumeListener(Lcom/jingdong/common/frame/IResumeListener;)V

    .line 216
    return-void
.end method

.method private loginStateSynchro(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 219
    const-string v0, "login"

    invoke-direct {p0, p1, v0}, Lcom/jingdong/app/mall/WebActivity;->loginStateSynchro(Landroid/net/Uri;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method private loginStateSynchro(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 229
    new-instance v0, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v0}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 230
    .local v0, urlParameters:Lcom/jingdong/common/utils/URLParamMap;
    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/URLParamMap;->put(Landroid/net/Uri;)V

    .line 231
    new-instance v1, Lcom/jingdong/app/mall/WebActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/WebActivity$5;-><init>(Lcom/jingdong/app/mall/WebActivity;)V

    invoke-static {p2, v0, v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    .line 242
    return-void
.end method

.method private optionTitleBg()V
    .locals 2

    .prologue
    .line 826
    iget-boolean v0, p0, Lcom/jingdong/app/mall/WebActivity;->isFromPopularity:Z

    if-eqz v0, :cond_0

    .line 827
    const v0, 0x7f0c05d6

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->imageViewBg:Landroid/widget/ImageView;

    .line 828
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->imageViewBg:Landroid/widget/ImageView;

    const v1, 0x7f0202dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 830
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->closeButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->closeButton:Landroid/widget/Button;

    const v1, 0x7f0202de

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 834
    :cond_0
    return-void
.end method

.method private setScreenOrientation()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 754
    invoke-virtual {p0}, Lcom/jingdong/app/mall/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, orientation:Ljava/lang/String;
    const-string v1, "screen_land"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/app/mall/WebActivity;->getRequestedOrientation()I

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/WebActivity;->setRequestedOrientation(I)V

    .line 757
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity;->titleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 758
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity;->bottomMenuLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 760
    :cond_0
    return-void
.end method

.method private setlistener()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->back:Landroid/widget/ImageView;

    new-instance v1, Lcom/jingdong/app/mall/WebActivity$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/WebActivity$1;-><init>(Lcom/jingdong/app/mall/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->next:Landroid/widget/ImageView;

    new-instance v1, Lcom/jingdong/app/mall/WebActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/WebActivity$2;-><init>(Lcom/jingdong/app/mall/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->fresh:Landroid/widget/ImageView;

    new-instance v1, Lcom/jingdong/app/mall/WebActivity$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/WebActivity$3;-><init>(Lcom/jingdong/app/mall/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    return-void
.end method

.method private showLoadingBar()V
    .locals 1

    .prologue
    .line 802
    new-instance v0, Lcom/jingdong/app/mall/WebActivity$12;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/WebActivity$12;-><init>(Lcom/jingdong/app/mall/WebActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/WebActivity;->post(Ljava/lang/Runnable;)V

    .line 811
    return-void
.end method


# virtual methods
.method protected hideImageProgress()V
    .locals 2

    .prologue
    .line 670
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/WebActivity;->setImageProgress(I)V

    .line 671
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->progressImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/jingdong/app/mall/WebActivity;->getHideProgressAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 672
    invoke-direct {p0}, Lcom/jingdong/app/mall/WebActivity;->hideLoadingBar()V

    .line 673
    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    .line 599
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/MyActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 606
    const/16 v1, 0x44c

    if-ne v1, p1, :cond_1

    .line 608
    if-ne p2, v2, :cond_0

    .line 610
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-static {p0, p3, v1}, Lcom/jingdong/common/utils/ReadContactsUtil;->handleContacts(Landroid/content/Context;Landroid/content/Intent;Landroid/webkit/WebView;)V

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    const/16 v1, 0x4d2

    if-ne v1, p1, :cond_2

    .line 614
    if-ne v2, p2, :cond_0

    .line 616
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-static {p0, p3, v1}, Lcom/jingdong/common/utils/VoiceUtil;->handleVoiceResult(Lcom/jingdong/common/frame/IMyActivity;Landroid/content/Intent;Landroid/webkit/WebView;)V

    goto :goto_0

    .line 619
    :cond_2
    const/16 v1, 0x4d3

    if-ne v1, p1, :cond_3

    .line 621
    if-ne v2, p2, :cond_0

    .line 623
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-static {p0, p3, v1}, Lcom/jingdong/app/mall/utils/BarcodeUtil;->handleBarcodeResult(Landroid/content/Context;Landroid/content/Intent;Landroid/webkit/WebView;)V

    goto :goto_0

    .line 628
    :cond_3
    if-ne p2, v2, :cond_0

    .line 632
    const/4 v0, 0x0

    .line 634
    .local v0, discussImage:Lcom/jingdong/common/entity/DiscussImage;
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 635
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/WebActivity;->photoUri:Landroid/net/Uri;

    .line 640
    :goto_1
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity;->photoUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 646
    packed-switch p1, :pswitch_data_0

    .line 658
    :goto_2
    if-eqz v0, :cond_0

    .line 662
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-static {v1, p0, v0}, Lcom/jingdong/app/mall/personel/PhotoUtils;->submitPhoto(Landroid/webkit/WebView;Lcom/jingdong/app/mall/WebActivity;Lcom/jingdong/common/entity/DiscussImage;)V

    goto :goto_0

    .line 637
    :cond_4
    invoke-static {}, Lcom/jingdong/app/mall/personel/PhotoUtils;->getPhotoUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/WebActivity;->photoUri:Landroid/net/Uri;

    goto :goto_1

    .line 648
    :pswitch_0
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity;->photoUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/jingdong/common/entity/DiscussImage;->createDiscussImage(Landroid/content/Context;Landroid/net/Uri;)Lcom/jingdong/common/entity/DiscussImage;

    move-result-object v0

    .line 649
    goto :goto_2

    .line 652
    :pswitch_1
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity;->photoUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/jingdong/common/entity/DiscussImage;->createDiscussImage(Landroid/content/Context;Landroid/net/Uri;)Lcom/jingdong/common/entity/DiscussImage;

    move-result-object v0

    .line 653
    goto :goto_2

    .line 646
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v12, -0x2

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 247
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 249
    const v7, 0x7f03002a

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/WebActivity;->setContentView(I)V

    .line 251
    invoke-direct {p0}, Lcom/jingdong/app/mall/WebActivity;->findView()V

    .line 252
    invoke-direct {p0}, Lcom/jingdong/app/mall/WebActivity;->initData()V

    .line 254
    invoke-virtual {p0}, Lcom/jingdong/app/mall/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 256
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "isFromNF"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/jingdong/app/mall/WebActivity;->isFromNF:Z

    .line 257
    const-string v7, "isFromGame"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/jingdong/app/mall/WebActivity;->isFromGame:Z

    .line 258
    const-string v7, "popularity_key"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/jingdong/app/mall/WebActivity;->isFromPopularity:Z

    .line 260
    invoke-direct {p0}, Lcom/jingdong/app/mall/WebActivity;->optionTitleBg()V

    .line 262
    invoke-direct {p0}, Lcom/jingdong/app/mall/WebActivity;->setScreenOrientation()V

    .line 264
    if-eqz v1, :cond_0

    const-string v7, "isUseRightButton"

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 266
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->closeButton:Landroid/widget/Button;

    const v8, 0x7f0703ce

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 267
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->closeButton:Landroid/widget/Button;

    new-instance v8, Lcom/jingdong/app/mall/WebActivity$6;

    invoke-direct {v8, p0}, Lcom/jingdong/app/mall/WebActivity$6;-><init>(Lcom/jingdong/app/mall/WebActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->closeButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 280
    :cond_0
    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    .line 283
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    const/high16 v8, 0x200

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 285
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 286
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v7, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 288
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/jingdong/app/mall/WebActivity;->refreshCache:Lcom/jingdong/app/mall/WebActivity$RefreshCache;

    const-string v9, "jd_android_obj"

    invoke-virtual {v7, v8, v9}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    new-instance v8, Lcom/jingdong/app/mall/WebActivity$StartCamera;

    invoke-direct {v8, p0}, Lcom/jingdong/app/mall/WebActivity$StartCamera;-><init>(Lcom/jingdong/app/mall/WebActivity;)V

    const-string v9, "JDClient"

    invoke-virtual {v7, v8, v9}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/jingdong/app/mall/WebActivity;->bindGiftcard:Lcom/jingdong/app/mall/WebActivity$BindGiftcard;

    const-string v9, "bindGiftcard"

    invoke-virtual {v7, v8, v9}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/jingdong/app/mall/WebActivity;->modifyPwd:Lcom/jingdong/app/mall/WebActivity$ModifyPwd;

    const-string v9, "modifyPwd"

    invoke-virtual {v7, v8, v9}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/jingdong/app/mall/WebActivity;->jdGame:Lcom/jingdong/app/mall/WebActivity$PlayGame;

    const-string v9, "playGame"

    invoke-virtual {v7, v8, v9}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    move-object v6, p0

    .line 294
    .local v6, webActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    new-instance v8, Lcom/jingdong/app/mall/web/WebJavaScript;

    invoke-direct {v8, v6}, Lcom/jingdong/app/mall/web/WebJavaScript;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;)V

    const-string v9, "JdAndroid"

    invoke-virtual {v7, v8, v9}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->requestFocus()Z

    .line 298
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 300
    invoke-static {}, Lcom/jingdong/common/utils/SDKUtils;->isSDKVersionMoreThan20()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 301
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-static {v7}, Lcom/jingdong/common/ui/WebUtils;->setNoCache(Landroid/webkit/WebView;)V

    .line 303
    :cond_1
    if-eqz v1, :cond_2

    const-string v7, "isUseCache"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 304
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 312
    :goto_0
    new-instance v7, Lcom/jingdong/app/mall/WebActivity$7;

    invoke-direct {v7, p0}, Lcom/jingdong/app/mall/WebActivity$7;-><init>(Lcom/jingdong/app/mall/WebActivity;)V

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/WebActivity;->post(Ljava/lang/Runnable;)V

    .line 325
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    new-instance v8, Lcom/jingdong/app/mall/WebActivity$8;

    invoke-direct {v8, p0}, Lcom/jingdong/app/mall/WebActivity$8;-><init>(Lcom/jingdong/app/mall/WebActivity;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 501
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 502
    .local v4, sdk:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x5

    if-lt v7, v8, :cond_3

    .line 504
    new-instance v5, Lcom/jingdong/common/utils/WebSettingsUtils;

    invoke-direct {v5}, Lcom/jingdong/common/utils/WebSettingsUtils;-><init>()V

    .line 505
    .local v5, utils:Lcom/jingdong/common/utils/WebSettingsUtils;
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/jingdong/common/utils/WebSettingsUtils;->setGeolocationEnabled(Landroid/webkit/WebSettings;)V

    .line 507
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    new-instance v8, Lcom/jingdong/app/mall/WebActivity$9;

    invoke-direct {v8, p0}, Lcom/jingdong/app/mall/WebActivity$9;-><init>(Lcom/jingdong/app/mall/WebActivity;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 552
    .end local v5           #utils:Lcom/jingdong/common/utils/WebSettingsUtils;
    :goto_1
    const v7, 0x7f0c0129

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 554
    .local v0, group:Landroid/view/ViewGroup;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 555
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v7, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 558
    new-instance v7, Landroid/widget/ProgressBar;

    invoke-direct {v7, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->loadingBar:Landroid/widget/ProgressBar;

    .line 559
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 560
    .local v2, loadingParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v2, v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 561
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->loadingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->loadingBar:Landroid/widget/ProgressBar;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 563
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->loadingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 565
    invoke-direct {p0}, Lcom/jingdong/app/mall/WebActivity;->initMenuView()V

    .line 566
    invoke-direct {p0}, Lcom/jingdong/app/mall/WebActivity;->setlistener()V

    .line 568
    return-void

    .line 306
    .end local v0           #group:Landroid/view/ViewGroup;
    .end local v2           #loadingParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #sdk:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_0

    .line 529
    .restart local v4       #sdk:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    new-instance v8, Lcom/jingdong/app/mall/WebActivity$10;

    invoke-direct {v8, p0}, Lcom/jingdong/app/mall/WebActivity$10;-><init>(Lcom/jingdong/app/mall/WebActivity;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_1
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 1020
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1021
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/CommonUtil;->toBrowser(Landroid/net/Uri;)V

    .line 1022
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 721
    if-ne p1, v2, :cond_0

    iget-boolean v1, p0, Lcom/jingdong/app/mall/WebActivity;->isFromGame:Z

    if-eqz v1, :cond_0

    .line 725
    invoke-virtual {p0}, Lcom/jingdong/app/mall/WebActivity;->finish()V

    .line 735
    :goto_0
    return v0

    .line 727
    :cond_0
    if-ne p1, v2, :cond_1

    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 730
    :cond_1
    if-ne p1, v2, :cond_2

    iget-boolean v1, p0, Lcom/jingdong/app/mall/WebActivity;->isFromNF:Z

    if-eqz v1, :cond_2

    .line 731
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {v1, p0, v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->goToMainFrameActivity(Landroid/content/Context;Ljava/lang/Class;)Lcom/jingdong/common/frame/IMainActivity;

    .line 732
    invoke-virtual {p0}, Lcom/jingdong/app/mall/WebActivity;->finish()V

    goto :goto_0

    .line 735
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/jingdong/app/mall/utils/MyActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 578
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 579
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 580
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 584
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onStop()V

    .line 585
    invoke-static {}, Landroid/webkit/WebView;->disablePlatformNotifications()V

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:musicStop()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    return-void

    .line 590
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 751
    return-void
.end method

.method public setImageProgress(I)V
    .locals 5
    .parameter "progress"

    .prologue
    .line 740
    iget v1, p0, Lcom/jingdong/app/mall/WebActivity;->perWidth:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 741
    .local v0, width:I
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity;->progressImage:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0075

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity;->titleRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 743
    iget-object v1, p0, Lcom/jingdong/app/mall/WebActivity;->titleRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/jingdong/app/mall/WebActivity;->progressImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 744
    return-void
.end method

.method protected showImagePregress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 680
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->titleRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->progressImageNormalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->progressImage:Landroid/widget/ImageView;

    const v1, 0x7f02042a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 683
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->progressImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 684
    invoke-direct {p0}, Lcom/jingdong/app/mall/WebActivity;->showLoadingBar()V

    .line 685
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1030
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1031
    :catch_0
    move-exception v0

    goto :goto_0
.end method
