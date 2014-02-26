.class public Lcom/jingdong/app/mall/product/BuyAskListActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "BuyAskListActivity.java"


# instance fields
.field private buyAskList:Landroid/widget/ListView;

.field private functionId:Ljava/lang/String;

.field private loadingLayout:Landroid/widget/LinearLayout;

.field private name:Ljava/lang/String;

.field private params:Lorg/json/JSONObject;

.field private subName:Ljava/lang/String;

.field private tetleText:Landroid/widget/TextView;

.field private titleButton:Landroid/widget/Button;

.field private typeChooseDialog:Landroid/app/AlertDialog;

.field private wareId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 54
    const-string v0, "consultation"

    iput-object v0, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->functionId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/BuyAskListActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->titleButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/product/BuyAskListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->wareId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/product/BuyAskListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->name:Ljava/lang/String;

    return-object v0
.end method

.method private handleButtonClick()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->titleButton:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/product/BuyAskListActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/BuyAskListActivity$2;-><init>(Lcom/jingdong/app/mall/product/BuyAskListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    return-void
.end method

.method private showBuyAskList(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8
    .parameter "functionId"
    .parameter "params"

    .prologue
    .line 116
    new-instance v0, Lcom/jingdong/app/mall/product/BuyAskListActivity$1;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->buyAskList:Landroid/widget/ListView;

    .line 117
    iget-object v4, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0701ed

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/BuyAskListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    .line 116
    invoke-direct/range {v0 .. v7}, Lcom/jingdong/app/mall/product/BuyAskListActivity$1;-><init>(Lcom/jingdong/app/mall/product/BuyAskListActivity;Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 185
    .local v0, nextPageLoader:Lcom/jingdong/common/utils/NextPageLoader;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne(Z)V

    .line 186
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v2, 0x7f030032

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/BuyAskListActivity;->setContentView(I)V

    .line 63
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->params:Lorg/json/JSONObject;

    .line 65
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/BuyAskListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 66
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->wareId:Ljava/lang/String;

    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->params:Lorg/json/JSONObject;

    const-string v3, "wareId"

    iget-object v4, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->wareId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->name:Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->name:Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->subName:Ljava/lang/String;

    .line 84
    :goto_1
    const v2, 0x7f0c007e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/BuyAskListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->tetleText:Landroid/widget/TextView;

    .line 85
    iget-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->tetleText:Landroid/widget/TextView;

    const v3, 0x7f070298

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->subName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/jingdong/app/mall/product/BuyAskListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v2, 0x7f0c071c

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/BuyAskListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->titleButton:Landroid/widget/Button;

    .line 88
    iget-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->titleButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    iget-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->titleButton:Landroid/widget/Button;

    const v3, 0x7f07036f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 91
    const v2, 0x7f0c0145

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/BuyAskListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->buyAskList:Landroid/widget/ListView;

    .line 96
    const v2, 0x7f030087

    const/4 v3, 0x0

    .line 95
    invoke-static {v2, v3}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    .line 97
    iget-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 99
    iget-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->functionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->params:Lorg/json/JSONObject;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/product/BuyAskListActivity;->showBuyAskList(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 100
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/BuyAskListActivity;->handleButtonClick()V

    .line 101
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 82
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity;->subName:Ljava/lang/String;

    goto :goto_1
.end method
