.class public Lcom/jingdong/app/mall/product/PriceReportSuccessActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "PriceReportSuccessActivity.java"


# instance fields
.field private backButton:Landroid/widget/Button;

.field private productId:Ljava/lang/Long;

.field private sucessView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v3, 0x7f0300d1

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/PriceReportSuccessActivity;->setContentView(I)V

    .line 23
    const v3, 0x7f0c007e

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/PriceReportSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 24
    .local v2, topTitle:Landroid/widget/TextView;
    const v3, 0x7f070456

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 25
    const v3, 0x7f0c0514

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/PriceReportSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jingdong/app/mall/product/PriceReportSuccessActivity;->sucessView:Landroid/widget/TextView;

    .line 26
    const v3, 0x7f0c0515

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/PriceReportSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/jingdong/app/mall/product/PriceReportSuccessActivity;->backButton:Landroid/widget/Button;

    .line 28
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/PriceReportSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 29
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/product/PriceReportSuccessActivity;->productId:Ljava/lang/Long;

    .line 30
    const-string v3, "failedReason"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, message:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    const-string v1, ""

    .line 34
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/product/PriceReportSuccessActivity;->sucessView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v3, p0, Lcom/jingdong/app/mall/product/PriceReportSuccessActivity;->backButton:Landroid/widget/Button;

    new-instance v4, Lcom/jingdong/app/mall/product/PriceReportSuccessActivity$1;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/product/PriceReportSuccessActivity$1;-><init>(Lcom/jingdong/app/mall/product/PriceReportSuccessActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method
