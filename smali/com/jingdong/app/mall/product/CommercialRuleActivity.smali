.class public Lcom/jingdong/app/mall/product/CommercialRuleActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "CommercialRuleActivity.java"


# instance fields
.field private commercial:Lcom/jingdong/common/entity/Commercial;

.field private detail:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/CommercialRuleActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommercialRuleActivity;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/product/CommercialRuleActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommercialRuleActivity;->detail:Ljava/lang/String;

    return-object v0
.end method

.method private showCommercialRule()V
    .locals 4

    .prologue
    .line 46
    const v3, 0x7f0c02cf

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/CommercialRuleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, jdnewsDetailTime:Landroid/widget/TextView;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    const v3, 0x7f0c02ce

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/CommercialRuleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 50
    .local v2, jdnewsDetailTitle:Landroid/widget/TextView;
    const v3, 0x7f0c02d1

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/CommercialRuleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    .local v0, jdnewsDetailContent:Landroid/widget/TextView;
    new-instance v3, Lcom/jingdong/app/mall/product/CommercialRuleActivity$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/jingdong/app/mall/product/CommercialRuleActivity$1;-><init>(Lcom/jingdong/app/mall/product/CommercialRuleActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/CommercialRuleActivity;->post(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v2, 0x7f03007f

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/CommercialRuleActivity;->setContentView(I)V

    .line 33
    const v2, 0x7f0c007e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/CommercialRuleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 34
    .local v1, jdNewsText:Landroid/widget/TextView;
    const v2, 0x7f070343

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 36
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/CommercialRuleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 38
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/product/CommercialRuleActivity;->title:Ljava/lang/String;

    .line 39
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "detail"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/product/CommercialRuleActivity;->detail:Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/CommercialRuleActivity;->showCommercialRule()V

    .line 42
    return-void
.end method
