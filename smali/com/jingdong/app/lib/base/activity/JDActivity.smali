.class public Lcom/jingdong/app/lib/base/activity/JDActivity;
.super Landroid/app/Activity;
.source "JDActivity.java"


# instance fields
.field protected mLayout:Landroid/widget/FrameLayout;

.field private xml:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/lib/base/activity/JDActivity;->xml:Ljava/lang/String;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/lib/base/activity/JDActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/JDActivity;->xml:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/lib/base/activity/JDActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/jingdong/app/lib/base/activity/JDActivity;->showDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/lib/base/activity/JDActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/jingdong/app/lib/base/activity/JDActivity;->xml:Ljava/lang/String;

    return-void
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "xml"

    .prologue
    .line 129
    new-instance v0, Lcom/jingdong/app/lib/base/activity/JDActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/lib/base/activity/JDActivity$3;-><init>(Lcom/jingdong/app/lib/base/activity/JDActivity;Ljava/lang/String;)V

    .line 144
    .local v0, dialogController:Lcom/jingdong/app/lib/base/activity/DialogController;
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/jingdong/app/lib/base/activity/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    const-string v1, "\u652f\u4ed8\u5931\u8d25\uff0c\u662f\u5426\u91cd\u8bd5\uff1f"

    invoke-virtual {v0, v1}, Lcom/jingdong/app/lib/base/activity/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 146
    const-string v1, "\u662f"

    invoke-virtual {v0, v1}, Lcom/jingdong/app/lib/base/activity/DialogController;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 147
    const-string v1, "\u5426"

    invoke-virtual {v0, v1}, Lcom/jingdong/app/lib/base/activity/DialogController;->setNegativeButton(Ljava/lang/CharSequence;)V

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/lib/base/activity/DialogController;->setCanceledOnTouchOutside(Z)V

    .line 149
    invoke-virtual {v0, p0}, Lcom/jingdong/app/lib/base/activity/DialogController;->init(Landroid/content/Context;)V

    .line 150
    invoke-virtual {v0}, Lcom/jingdong/app/lib/base/activity/DialogController;->show()V

    .line 151
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    new-instance v1, Lcom/jingdong/app/lib/pay/web/PayWebView;

    invoke-direct {v1, p0}, Lcom/jingdong/app/lib/pay/web/PayWebView;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, webview:Lcom/jingdong/app/lib/pay/web/PayWebView;
    new-instance v2, Lcom/jingdong/app/lib/base/activity/JDActivity$2;

    invoke-direct {v2, p0}, Lcom/jingdong/app/lib/base/activity/JDActivity$2;-><init>(Lcom/jingdong/app/lib/base/activity/JDActivity;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/lib/pay/web/PayWebView;->setCallBack(Lcom/jingdong/app/lib/pay/web/PayWebViewCallBack;)V

    .line 121
    sget v2, Lcom/jd/lottery/lib/R$layout;->pay_main:I

    invoke-virtual {p0, v2}, Lcom/jingdong/app/lib/base/activity/JDActivity;->setContentView(I)V

    .line 122
    sget v2, Lcom/jd/lottery/lib/R$id;->pay_main:I

    invoke-virtual {p0, v2}, Lcom/jingdong/app/lib/base/activity/JDActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/jingdong/app/lib/base/activity/JDActivity;->mLayout:Landroid/widget/FrameLayout;

    .line 123
    iget-object v2, p0, Lcom/jingdong/app/lib/base/activity/JDActivity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 124
    invoke-virtual {p0}, Lcom/jingdong/app/lib/base/activity/JDActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, url:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/jingdong/app/lib/pay/web/PayWebView;->loadUrl(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 35
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/JDActivity;->xml:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/jingdong/app/lib/base/activity/JDActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/lib/base/activity/JDActivity$1;-><init>(Lcom/jingdong/app/lib/base/activity/JDActivity;)V

    invoke-static {v0}, Lcom/jingdong/app/lib/pay/PayUtils;->processPayResult(Lcom/jingdong/app/lib/pay/PayCallBack;)V

    .line 52
    :cond_0
    return-void
.end method
