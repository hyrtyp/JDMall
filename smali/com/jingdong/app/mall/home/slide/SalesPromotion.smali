.class public Lcom/jingdong/app/mall/home/slide/SalesPromotion;
.super Ljava/lang/Object;
.source "SalesPromotion.java"


# instance fields
.field private errorLoadingBut:Landroid/widget/Button;

.field private errorView:Landroid/view/View;

.field private layout:Landroid/view/View;

.field private loadingViewPb:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v1, p0, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->layout:Landroid/view/View;

    .line 13
    iput-object v1, p0, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->loadingViewPb:Landroid/widget/ProgressBar;

    .line 17
    const v0, 0x7f0300f5

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->layout:Landroid/view/View;

    .line 18
    invoke-direct {p0}, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->init()V

    .line 19
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->layout:Landroid/view/View;

    const v1, 0x7f0c0168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->errorView:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->errorView:Landroid/view/View;

    const v1, 0x7f0c02ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->errorLoadingBut:Landroid/widget/Button;

    .line 28
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->layout:Landroid/view/View;

    const v1, 0x7f0c0616

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->loadingViewPb:Landroid/widget/ProgressBar;

    .line 29
    return-void
.end method


# virtual methods
.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->layout:Landroid/view/View;

    return-object v0
.end method

.method public getLoadingButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->errorLoadingBut:Landroid/widget/Button;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->loadingViewPb:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->errorView:Landroid/view/View;

    return-object v0
.end method
