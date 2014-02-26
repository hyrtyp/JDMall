.class public Lcom/jingdong/app/mall/product/DiscussDetailActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "DiscussDetailActivity.java"


# instance fields
.field private commentDetailContent:Landroid/widget/TextView;

.field private commentDetailTitle:Landroid/widget/TextView;

.field private creationTime:Landroid/widget/TextView;

.field private detailHeadContainer:Landroid/widget/RelativeLayout;

.field private id:Ljava/lang/String;

.field private jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;

.field private params:Lorg/json/JSONObject;

.field private productImageGallery:Landroid/widget/Gallery;

.field private title:Landroid/widget/TextView;

.field private userId:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/DiscussDetailActivity;Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->commentDetailTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->userId:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->creationTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->commentDetailContent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)Landroid/widget/Gallery;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->productImageGallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->detailHeadContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private showOrderCommentDetail()V
    .locals 4

    .prologue
    .line 106
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->params:Lorg/json/JSONObject;

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->params:Lorg/json/JSONObject;

    const-string v2, "commentId"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 115
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "commentDetail"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->params:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 118
    new-instance v1, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/DiscussDetailActivity$1;-><init>(Lcom/jingdong/app/mall/product/DiscussDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 262
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 264
    return-void

    .line 109
    .end local v0           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v1, 0x7f030049

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->id:Ljava/lang/String;

    .line 75
    const v1, 0x7f0c007e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->title:Landroid/widget/TextView;

    .line 76
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->title:Landroid/widget/TextView;

    const v2, 0x7f07036e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 78
    const v1, 0x7f03004a

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->detailHeadContainer:Landroid/widget/RelativeLayout;

    .line 80
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->detailHeadContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f0c01ca

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->commentDetailTitle:Landroid/widget/TextView;

    .line 81
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->detailHeadContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f0c01cc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->userId:Landroid/widget/TextView;

    .line 82
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->detailHeadContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f0c01cd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->creationTime:Landroid/widget/TextView;

    .line 83
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->detailHeadContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f0c01d0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->commentDetailContent:Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->detailHeadContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f0c01cf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    iput-object v1, p0, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->productImageGallery:Landroid/widget/Gallery;

    .line 89
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/DiscussDetailActivity;->showOrderCommentDetail()V

    .line 91
    return-void
.end method
