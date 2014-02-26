.class public Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "CompleteOrderActivity.java"


# instance fields
.field private allowOnlinePay:Ljava/lang/Boolean;

.field private amount:Ljava/lang/String;

.field private isEasyBuy:Z

.field private isNoRegisterOrder:Z

.field mCompleted:Landroid/widget/Button;

.field mNoRegisterTipsTv:Landroid/widget/TextView;

.field mOrderNo:Landroid/widget/TextView;

.field mPayMoney:Landroid/widget/TextView;

.field mPayMsg:Landroid/widget/TextView;

.field mPayWay:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;

.field private message:Ljava/lang/String;

.field private noRegisterOrderMobileNumber:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private way:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->isNoRegisterOrder:Z

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->isOnlinePay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->isShowPay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->doOnlinePay()V

    return-void
.end method

.method private doOnlinePay()V
    .locals 2

    .prologue
    .line 207
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->orderId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/pay/PayUtils;->doPay(Landroid/app/Activity;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method private handleClickEvent()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->mCompleted:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity$1;-><init>(Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    return-void
.end method

.method private initComponent()V
    .locals 6

    .prologue
    .line 145
    const v0, 0x7f0c019f

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->mOrderNo:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0c01a1

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->mPayMoney:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0c01a3

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->mPayWay:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0c01a6

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->mPayMsg:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->mTitle:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0c01a4

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->mNoRegisterTipsTv:Landroid/widget/TextView;

    .line 152
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->isNoRegisterOrder:Z

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->mNoRegisterTipsTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u60a8\u7684\u624b\u673a\u53f7"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->noRegisterOrderMobileNumber:Ljava/lang/String;

    .line 154
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->noRegisterOrderMobileNumber:Ljava/lang/String;

    const/4 v4, 0x5

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "***"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u6ce8\u518c\u4e3a\u4eac\u4e1c\u8d26\u53f7\uff0c\u77ed\u4fe1\u5bc6\u7801\u5373\u4e3a\u60a8\u7684\u767b\u5f55\u5bc6\u7801"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->mNoRegisterTipsTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    :cond_0
    const v0, 0x7f0c01a8

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->mCompleted:Landroid/widget/Button;

    .line 159
    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->mCompleted:Landroid/widget/Button;

    const v1, 0x7f0702c3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 161
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0702c4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f070311

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 122
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 124
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "order_way"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->way:Ljava/lang/String;

    .line 125
    const-string v2, "order_no"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->orderId:Ljava/lang/String;

    .line 126
    const-string v2, "order_money"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->amount:Ljava/lang/String;

    .line 127
    const-string v2, "order_msg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->message:Ljava/lang/String;

    .line 128
    const-string v2, "isNoRegisterOrder"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->isNoRegisterOrder:Z

    .line 129
    iget-boolean v2, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->isNoRegisterOrder:Z

    if-nez v2, :cond_0

    .line 130
    const-string v2, "MobileNumber"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->noRegisterOrderMobileNumber:Ljava/lang/String;

    .line 132
    :cond_0
    const-string v2, "is_Easy_Buy"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->isEasyBuy:Z

    .line 134
    const-string v2, "allowOnlinePay"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    const-string v2, "allowOnlinePay"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->allowOnlinePay:Ljava/lang/Boolean;

    .line 138
    :cond_1
    iget-boolean v2, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->isEasyBuy:Z

    if-nez v2, :cond_2

    .line 140
    invoke-static {p0}, Lcom/jingdong/app/mall/shopping/ShoppingController;->syncCartNoResponse(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 142
    :cond_2
    return-void
.end method

.method private isOnlinePay()Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->allowOnlinePay:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 181
    const-string v0, "\u5728\u7ebf\u652f\u4ed8"

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->way:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 183
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->allowOnlinePay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private isShowPay()Z
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->amount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->amount:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v0, paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "orderId"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->orderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->noShowAgain()V

    .line 86
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->initData()V

    .line 87
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->initComponent()V

    .line 89
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->orderId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->mOrderNo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->amount:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->mPayMoney:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->amount:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->way:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->mPayWay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->way:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->message:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->mPayMsg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_3
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->isOnlinePay()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->isShowPay()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->mCompleted:Landroid/widget/Button;

    const v1, 0x7f0701d3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 107
    :cond_4
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/common/constant/Constants;->skusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 108
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->handleClickEvent()V

    .line 109
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 249
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 250
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->backToHomePage(Landroid/content/Context;)V

    .line 251
    const/4 v0, 0x1

    .line 253
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jingdong/app/mall/utils/MyActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
