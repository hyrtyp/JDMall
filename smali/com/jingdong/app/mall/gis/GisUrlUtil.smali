.class public Lcom/jingdong/app/mall/gis/GisUrlUtil;
.super Ljava/lang/Object;
.source "GisUrlUtil.java"


# static fields
.field public static final GIS_GET_CK_TO_PSZ_URL:Ljava/lang/String; = "getcktopsztracks"

.field public static final GIS_GET_DRIVER_PATH_URL:Ljava/lang/String; = "getdriverpath"

.field public static final GIS_GET_ORDERS_URL:Ljava/lang/String; = "getOrders"

.field public static final GIS_GET_ORDER_TRACE_URL:Ljava/lang/String; = "getordertracks"

.field public static final GIS_GET_STATE_TMIE_URL:Ljava/lang/String; = "getOrderstate"

.field public static final GIS_ORDERS_WANGCHENG_URL:Ljava/lang/String; = "orderwancheng"


# instance fields
.field public ckTozhandianLine:Ljava/lang/String;

.field public ckTozhangdianDriverLine:Ljava/lang/String;

.field private final defaultEffectHandle:Lcom/jingdong/common/utils/DefaultEffectHandle;

.field public lastStartTime:Ljava/lang/String;

.field private mMapLoadProgress:Landroid/widget/ProgressBar;

.field private mapButton:Landroid/widget/Button;

.field private mapVersion:Landroid/widget/RelativeLayout;

.field private myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private orderId:Ljava/lang/String;

.field private orderTraceInitFlag:Z

.field private radioGroup:Landroid/widget/LinearLayout;

.field private textButton:Landroid/widget/Button;

.field private textVersion:Landroid/widget/ScrollView;

.field private uKey:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;

.field public zhandianToCustomerDriverLine:Ljava/lang/String;

.field public zhandianToCustomerLine:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "myActivity"
    .parameter "orderId"
    .parameter "ukey"

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v1, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->orderTraceInitFlag:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->mMapLoadProgress:Landroid/widget/ProgressBar;

    .line 80
    iput-object p2, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->orderId:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->uKey:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 84
    new-instance v0, Lcom/jingdong/common/utils/DefaultEffectHandle;

    invoke-direct {v0, p1}, Lcom/jingdong/common/utils/DefaultEffectHandle;-><init>(Lcom/jingdong/common/frame/IMyActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->defaultEffectHandle:Lcom/jingdong/common/utils/DefaultEffectHandle;

    .line 86
    invoke-direct {p0}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->findView()V

    .line 87
    invoke-direct {p0}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->initWebView()V

    .line 88
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->radioGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    invoke-direct {p0}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->initEvent()V

    .line 91
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->mapButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Landroid/widget/ScrollView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->textVersion:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->mapVersion:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->textButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->orderTraceInitFlag:Z

    return v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/gis/GisUrlUtil;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->orderTraceInitFlag:Z

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/gis/GisUrlUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->show()V

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Lcom/jingdong/common/utils/DefaultEffectHandle;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->defaultEffectHandle:Lcom/jingdong/common/utils/DefaultEffectHandle;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->mMapLoadProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const v1, 0x7f0c03ac

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->textVersion:Landroid/widget/ScrollView;

    .line 120
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const v1, 0x7f0c0407

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->mapVersion:Landroid/widget/RelativeLayout;

    .line 121
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const v1, 0x7f0c0404

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->radioGroup:Landroid/widget/LinearLayout;

    .line 122
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const v1, 0x7f0c0408

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->webView:Landroid/webkit/WebView;

    .line 123
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->radioGroup:Landroid/widget/LinearLayout;

    const v1, 0x7f0c0405

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->textButton:Landroid/widget/Button;

    .line 124
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->radioGroup:Landroid/widget/LinearLayout;

    const v1, 0x7f0c0406

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->mapButton:Landroid/widget/Button;

    .line 125
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->textButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 126
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const v1, 0x7f0c0409

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->mMapLoadProgress:Landroid/widget/ProgressBar;

    .line 127
    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/jingdong/app/mall/gis/GisUrlUtil$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/gis/GisUrlUtil$1;-><init>(Lcom/jingdong/app/mall/gis/GisUrlUtil;)V

    .line 114
    .local v0, onClickListener:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->mapButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v1, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->textButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method private initWebView()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/jingdong/app/mall/gis/GisUrlUtil$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/gis/GisUrlUtil$2;-><init>(Lcom/jingdong/app/mall/gis/GisUrlUtil;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 263
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 264
    return-void
.end method

.method private show()V
    .locals 5

    .prologue
    .line 273
    iget-object v3, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->mMapLoadProgress:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 275
    new-instance v0, Lcom/jingdong/app/mall/gis/GisUrlUtil$3;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/gis/GisUrlUtil$3;-><init>(Lcom/jingdong/app/mall/gis/GisUrlUtil;)V

    .line 287
    .local v0, dListener:Landroid/webkit/DownloadListener;
    iget-object v3, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 289
    new-instance v2, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v2}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 290
    .local v2, params:Lcom/jingdong/common/utils/URLParamMap;
    const-string v3, "ukey"

    iget-object v4, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->uKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 291
    const-string v3, "orderId"

    iget-object v4, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil;->orderId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    new-instance v1, Lcom/jingdong/app/mall/gis/GisUrlUtil$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/gis/GisUrlUtil$4;-><init>(Lcom/jingdong/app/mall/gis/GisUrlUtil;)V

    .line 303
    .local v1, listener:Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;
    const-string v3, "ordermap"

    invoke-static {v3, v2, v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    .line 305
    return-void
.end method
