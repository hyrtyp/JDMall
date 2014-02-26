.class public Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "MyCouponAndGiftCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;,
        Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;
    }
.end annotation


# static fields
.field public static final COUPON_CARD:Ljava/lang/String; = "coupon"

.field private static final COUPON_PAGE:I = 0x0

.field public static final GIFT_CARD:Ljava/lang/String; = "giftCard"

.field private static final GIFT_PAGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CouponAndGiftDialog"

.field public static isBindGiftCardBack:Z


# instance fields
.field private bindBtn:Landroid/widget/Button;

.field private cardType:Ljava/lang/String;

.field private couponContentView:Landroid/view/View;

.field private couponEmpty:Landroid/widget/TextView;

.field private couponListView:Landroid/widget/ListView;

.field private couponPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

.field private currentLoadType:I

.field private giftCardListView:Landroid/widget/ListView;

.field private giftPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

.field private giftcardContentView:Landroid/view/View;

.field private isCurrentGiftCard:Z

.field private isFirstToGiftCard:Z

.field private lastToken:J

.field private loadingView:Landroid/widget/LinearLayout;

.field private tabHost:Landroid/widget/LinearLayout;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->isCurrentGiftCard:Z

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->lastToken:J

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->isFirstToGiftCard:Z

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->loadingView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->giftCardListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->couponEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->lastToken:J

    return-wide v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 165
    const v0, 0x7f030087

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->loadingView:Landroid/widget/LinearLayout;

    .line 166
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->loadingView:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 167
    return-void
.end method

.method private initUI(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 144
    packed-switch p1, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 146
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->titleView:Landroid/widget/TextView;

    const v1, 0x7f070338

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const v0, 0x7f03009d

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->tabHost:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->giftcardContentView:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->giftcardContentView:Landroid/view/View;

    const v1, 0x7f0c036b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/ui/JDListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->giftCardListView:Landroid/widget/ListView;

    .line 149
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->giftcardContentView:Landroid/view/View;

    const v1, 0x7f0c036a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->bindBtn:Landroid/widget/Button;

    .line 150
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->setEvent()V

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->titleView:Landroid/widget/TextView;

    const v1, 0x7f070336

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const v0, 0x7f03009b

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->tabHost:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->couponContentView:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->couponContentView:Landroid/view/View;

    const v1, 0x7f0c0359

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->couponListView:Landroid/widget/ListView;

    .line 156
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->couponContentView:Landroid/view/View;

    const v1, 0x7f0c035a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->couponEmpty:Landroid/widget/TextView;

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setEvent()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->bindBtn:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$1;-><init>(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method private showNextPageLoader(IJ)V
    .locals 6
    .parameter "type"
    .parameter "token"

    .prologue
    .line 126
    packed-switch p1, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 129
    :pswitch_0
    new-instance v0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->giftCardListView:Landroid/widget/ListView;

    move-object v1, p0

    move-object v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;-><init>(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AbsListView;J)V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->giftPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    .line 130
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->giftPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne()V

    goto :goto_0

    .line 134
    :pswitch_1
    new-instance v0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->couponListView:Landroid/widget/ListView;

    move-object v1, p0

    move-object v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;-><init>(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AbsListView;J)V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->couponPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    .line 135
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->couponPageLoader:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/NextPageLoader;->showPageOne()V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->cardType:Ljava/lang/String;

    .line 67
    const-string v0, "giftCard"

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->cardType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->currentLoadType:I

    .line 73
    :cond_0
    :goto_0
    sput-boolean v2, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->isBindGiftCardBack:Z

    .line 74
    const v0, 0x7f0c01c1

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->tabHost:Landroid/widget/LinearLayout;

    .line 76
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->titleView:Landroid/widget/TextView;

    .line 79
    iget v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->currentLoadType:I

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->initUI(I)V

    .line 81
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->init()V

    .line 82
    iput-boolean v2, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->isCurrentGiftCard:Z

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->lastToken:J

    .line 85
    iget v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->currentLoadType:I

    iget-wide v1, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->lastToken:J

    invoke-direct {p0, v0, v1, v2}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->showNextPageLoader(IJ)V

    .line 86
    return-void

    .line 69
    :cond_1
    const-string v0, "coupon"

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->cardType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iput v2, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->currentLoadType:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 95
    iget-boolean v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->isCurrentGiftCard:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->isBindGiftCardBack:Z

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->isBindGiftCardBack:Z

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->lastToken:J

    .line 99
    iget v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->currentLoadType:I

    iget-wide v1, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->lastToken:J

    invoke-direct {p0, v0, v1, v2}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->showNextPageLoader(IJ)V

    .line 101
    :cond_0
    return-void
.end method
