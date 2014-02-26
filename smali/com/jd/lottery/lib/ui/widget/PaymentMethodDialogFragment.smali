.class public Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "PaymentMethodDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ActionClickListener;,
        Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;,
        Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final COUPON_IDS:Ljava/lang/String; = "coupon_ids"

.field private static final PAY_TYPE:Ljava/lang/String; = "pay_type"

.field private static final TERM:Ljava/lang/String; = "term"

.field private static final TOTAL_MONEY:Ljava/lang/String; = "total_money"


# instance fields
.field actionClickListener:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ActionClickListener;

.field private balanceTextView:Landroid/widget/TextView;

.field private balanceUnavailableTextView:Landroid/widget/TextView;

.field private beansTextView:Landroid/widget/TextView;

.field private beansUnavailableTextView:Landroid/widget/TextView;

.field private cancleTextView:Landroid/widget/TextView;

.field private checkedIndex:I

.field private couponAdapter:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

.field private couponIds:[Ljava/lang/String;

.field private couponList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private couponListView:Lcom/jd/lottery/lib/ui/widget/FullSizeListView;

.field private couponPairs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jd/lottery/lib/model/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/jd/lottery/lib/model/CouponInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private couponTextView:Landroid/widget/TextView;

.field private couponTitle:Landroid/widget/TextView;

.field private currentPayType:Lcom/jd/lottery/lib/data/Constants$PayType;

.field private handler:Landroid/os/Handler;

.field private okTextView:Landroid/widget/TextView;

.field private payTypes:[Lcom/jd/lottery/lib/data/Constants$PayType;

.field private radioButtons:[Landroid/widget/RadioButton;

.field private term:I

.field private totalMoney:D

.field private totalMoneyTextView:Landroid/widget/TextView;

.field private userBscEntity:Lcom/jd/lottery/lib/model/UserBscEntity;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->checkedIndex:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponPairs:Ljava/util/ArrayList;

    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jd/lottery/lib/data/Constants$PayType;

    const/4 v1, 0x0

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$PayType;->Balance:Lcom/jd/lottery/lib/data/Constants$PayType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$PayType;->PayOnline:Lcom/jd/lottery/lib/data/Constants$PayType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$PayType;->Beans:Lcom/jd/lottery/lib/data/Constants$PayType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$PayType;->Coupon:Lcom/jd/lottery/lib/data/Constants$PayType;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->payTypes:[Lcom/jd/lottery/lib/data/Constants$PayType;

    .line 72
    new-instance v0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$1;-><init>(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->handler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponAdapter:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponPairs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)D
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->totalMoney:D

    return-wide v0
.end method

.method static synthetic access$4(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->checkRadioButton(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)[Lcom/jd/lottery/lib/data/Constants$PayType;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->payTypes:[Lcom/jd/lottery/lib/data/Constants$PayType;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->checkedIndex:I

    return v0
.end method

.method static synthetic access$8(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;Lcom/jd/lottery/lib/model/UserBscEntity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->userBscEntity:Lcom/jd/lottery/lib/model/UserBscEntity;

    return-void
.end method

.method static synthetic access$9(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->updateViews()V

    return-void
.end method

.method private checkRadioButton(I)V
    .locals 8
    .parameter "k"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v2, 0x0

    .line 414
    iget v1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->checkedIndex:I

    if-ne p1, v1, :cond_0

    .line 441
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    array-length v4, v3

    move v1, v2

    :goto_1
    if-lt v1, v4, :cond_2

    .line 424
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v1, v1, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 427
    if-ne p1, v6, :cond_4

    .line 428
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponListView:Lcom/jd/lottery/lib/ui/widget/FullSizeListView;

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/ui/widget/FullSizeListView;->setVisibility(I)V

    .line 440
    :cond_1
    :goto_2
    iput p1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->checkedIndex:I

    goto :goto_0

    .line 418
    :cond_2
    aget-object v0, v3, v1

    .line 419
    .local v0, radioButton:Landroid/widget/RadioButton;
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 420
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 418
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 430
    .end local v0           #radioButton:Landroid/widget/RadioButton;
    :cond_4
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponListView:Lcom/jd/lottery/lib/ui/widget/FullSizeListView;

    invoke-virtual {v1, v7}, Lcom/jd/lottery/lib/ui/widget/FullSizeListView;->setVisibility(I)V

    .line 431
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 432
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    :cond_5
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponAdapter:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponAdapter:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->cleanAllSelect()V

    .line 436
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponAdapter:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method private checkRadioButton(Lcom/jd/lottery/lib/data/Constants$PayType;)V
    .locals 1
    .parameter "payType"

    .prologue
    .line 401
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$PayType;->Balance:Lcom/jd/lottery/lib/data/Constants$PayType;

    if-ne p1, v0, :cond_1

    .line 402
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->checkRadioButton(I)V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$PayType;->PayOnline:Lcom/jd/lottery/lib/data/Constants$PayType;

    if-ne p1, v0, :cond_2

    .line 404
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->checkRadioButton(I)V

    goto :goto_0

    .line 405
    :cond_2
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$PayType;->Beans:Lcom/jd/lottery/lib/data/Constants$PayType;

    if-ne p1, v0, :cond_3

    .line 406
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->checkRadioButton(I)V

    goto :goto_0

    .line 407
    :cond_3
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$PayType;->Coupon:Lcom/jd/lottery/lib/data/Constants$PayType;

    if-ne p1, v0, :cond_0

    .line 408
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->checkRadioButton(I)V

    goto :goto_0
.end method

.method public static newInstance(DLcom/jd/lottery/lib/data/Constants$PayType;Ljava/lang/String;I)Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;
    .locals 3
    .parameter "totalMoney"
    .parameter "payType"
    .parameter "couponIds"
    .parameter "term"

    .prologue
    .line 94
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    invoke-direct {v1}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;-><init>()V

    .line 96
    .local v1, ssqRandomListDialogFragment:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "total_money"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 98
    const-string v2, "pay_type"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 99
    const-string v2, "coupon_ids"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "term"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 104
    return-object v1
.end method

.method private updateViews()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 273
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->userBscEntity:Lcom/jd/lottery/lib/model/UserBscEntity;

    if-nez v5, :cond_3

    .line 275
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->balanceTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->balanceUnavailableTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 276
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v6

    if-eqz v5, :cond_0

    .line 277
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->balanceUnavailableTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->balanceUnavailableTextView:Landroid/widget/TextView;

    sget v7, Lcom/jd/lottery/lib/R$string;->dialog_payment_http_error:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 279
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v6

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 280
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->balanceTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 281
    sget v8, Lcom/jd/lottery/lib/R$color;->payment_title_unavailable:I

    .line 280
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    :cond_0
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->beansTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->beansUnavailableTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 286
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v12

    if-eqz v5, :cond_1

    .line 287
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->beansUnavailableTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->beansUnavailableTextView:Landroid/widget/TextView;

    sget v7, Lcom/jd/lottery/lib/R$string;->dialog_payment_http_error:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 289
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v12

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 290
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->beansTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 291
    sget v8, Lcom/jd/lottery/lib/R$color;->payment_title_unavailable:I

    .line 290
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    :cond_1
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponListView:Lcom/jd/lottery/lib/ui/widget/FullSizeListView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v13

    if-eqz v5, :cond_2

    .line 296
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/jd/lottery/lib/R$color;->payment_method_red:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTextView:Landroid/widget/TextView;

    sget v7, Lcom/jd/lottery/lib/R$string;->dialog_payment_http_error:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 299
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 300
    sget v8, Lcom/jd/lottery/lib/R$color;->payment_title_unavailable:I

    .line 299
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v13

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 397
    :cond_2
    :goto_0
    return-void

    .line 305
    :cond_3
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->balanceTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->balanceUnavailableTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 306
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v6

    if-eqz v5, :cond_4

    .line 307
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->balanceTextView:Landroid/widget/TextView;

    sget v7, Lcom/jd/lottery/lib/R$string;->dialog_payment_balance:I

    new-array v8, v11, [Ljava/lang/Object;

    .line 308
    iget-object v9, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->userBscEntity:Lcom/jd/lottery/lib/model/UserBscEntity;

    iget-wide v9, v9, Lcom/jd/lottery/lib/model/UserBscEntity;->balance:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v6

    .line 307
    invoke-virtual {p0, v7, v8}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-wide v7, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->totalMoney:D

    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->userBscEntity:Lcom/jd/lottery/lib/model/UserBscEntity;

    iget-wide v9, v5, Lcom/jd/lottery/lib/model/UserBscEntity;->balance:D

    cmpl-double v5, v7, v9

    if-lez v5, :cond_7

    .line 310
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->balanceUnavailableTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v6

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 312
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->balanceTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 313
    sget v8, Lcom/jd/lottery/lib/R$color;->payment_title_unavailable:I

    .line 312
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->beansTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->beansUnavailableTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 323
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v12

    if-eqz v5, :cond_5

    .line 324
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->beansTextView:Landroid/widget/TextView;

    sget v7, Lcom/jd/lottery/lib/R$string;->dialog_payment_points:I

    new-array v8, v11, [Ljava/lang/Object;

    .line 325
    iget-object v9, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->userBscEntity:Lcom/jd/lottery/lib/model/UserBscEntity;

    iget v9, v9, Lcom/jd/lottery/lib/model/UserBscEntity;->beans:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    .line 324
    invoke-virtual {p0, v7, v8}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-wide v7, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->totalMoney:D

    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->userBscEntity:Lcom/jd/lottery/lib/model/UserBscEntity;

    iget v5, v5, Lcom/jd/lottery/lib/model/UserBscEntity;->beans:I

    div-int/lit8 v5, v5, 0x64

    int-to-double v9, v5

    cmpl-double v5, v7, v9

    if-lez v5, :cond_8

    .line 327
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->beansUnavailableTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v12

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 329
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->beansTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 330
    sget v8, Lcom/jd/lottery/lib/R$color;->payment_title_unavailable:I

    .line 329
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 353
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponListView:Lcom/jd/lottery/lib/ui/widget/FullSizeListView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v13

    if-eqz v5, :cond_2

    .line 355
    iget v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->term:I

    if-ne v5, v11, :cond_2

    .line 356
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->userBscEntity:Lcom/jd/lottery/lib/model/UserBscEntity;

    iget-object v7, v5, Lcom/jd/lottery/lib/model/UserBscEntity;->coupon:[Lcom/jd/lottery/lib/model/CouponInfo;

    array-length v8, v7

    move v5, v6

    :goto_3
    if-lt v5, v8, :cond_9

    .line 362
    const-wide/16 v1, 0x0

    .line 363
    .local v1, couponTotalMoney:D
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponPairs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_a

    .line 367
    iget-wide v7, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->totalMoney:D

    cmpg-double v5, v7, v1

    if-gez v5, :cond_d

    .line 368
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponPairs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 369
    new-instance v5, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponPairs:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v7, v8}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;-><init>(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponAdapter:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    .line 370
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponListView:Lcom/jd/lottery/lib/ui/widget/FullSizeListView;

    iget-object v7, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponAdapter:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    invoke-virtual {v5, v7}, Lcom/jd/lottery/lib/ui/widget/FullSizeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 372
    const/4 v3, 0x0

    :goto_5
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponPairs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_b

    .line 377
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 378
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponListView:Lcom/jd/lottery/lib/ui/widget/FullSizeListView;

    invoke-virtual {v5, v6}, Lcom/jd/lottery/lib/ui/widget/FullSizeListView;->setVisibility(I)V

    .line 379
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 382
    :cond_6
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v13

    invoke-virtual {v5, v11}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 383
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponAdapter:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    invoke-virtual {v5}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 315
    .end local v1           #couponTotalMoney:D
    .end local v3           #i:I
    :cond_7
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->balanceUnavailableTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v6

    invoke-virtual {v5, v11}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 317
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->balanceTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 346
    :cond_8
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->beansUnavailableTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v12

    invoke-virtual {v5, v11}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 348
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->beansTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 356
    :cond_9
    aget-object v0, v7, v5

    .line 357
    .local v0, couponInfo:Lcom/jd/lottery/lib/model/CouponInfo;
    new-instance v4, Lcom/jd/lottery/lib/model/Pair;

    .line 358
    invoke-virtual {v0}, Lcom/jd/lottery/lib/model/CouponInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 357
    invoke-direct {v4, v9, v0}, Lcom/jd/lottery/lib/model/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 359
    .local v4, pair:Lcom/jd/lottery/lib/model/Pair;,"Lcom/jd/lottery/lib/model/Pair<Ljava/lang/String;Lcom/jd/lottery/lib/model/CouponInfo;>;"
    iget-object v9, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponPairs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 364
    .end local v0           #couponInfo:Lcom/jd/lottery/lib/model/CouponInfo;
    .end local v4           #pair:Lcom/jd/lottery/lib/model/Pair;,"Lcom/jd/lottery/lib/model/Pair<Ljava/lang/String;Lcom/jd/lottery/lib/model/CouponInfo;>;"
    .restart local v1       #couponTotalMoney:D
    .restart local v3       #i:I
    :cond_a
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponPairs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jd/lottery/lib/model/Pair;

    iget-object v5, v5, Lcom/jd/lottery/lib/model/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/jd/lottery/lib/model/CouponInfo;

    invoke-virtual {v5}, Lcom/jd/lottery/lib/model/CouponInfo;->getDiscount()D

    move-result-wide v7

    add-double/2addr v1, v7

    .line 363
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 373
    :cond_b
    iget-object v7, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponPairs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jd/lottery/lib/model/Pair;

    iget-object v5, v5, Lcom/jd/lottery/lib/model/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 374
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponAdapter:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    invoke-virtual {v5, v3}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->setSelected(I)V

    .line 372
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 386
    :cond_d
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/jd/lottery/lib/R$color;->payment_method_red:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 388
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTextView:Landroid/widget/TextView;

    sget v7, Lcom/jd/lottery/lib/R$string;->dialog_payment_coupon_unavailable:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 389
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 390
    sget v8, Lcom/jd/lottery/lib/R$color;->payment_title_unavailable:I

    .line 389
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 391
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v5, v5, v13

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setClickable(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "total_money"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->totalMoney:D

    .line 111
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pay_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/jd/lottery/lib/data/Constants$PayType;

    iput-object v2, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->currentPayType:Lcom/jd/lottery/lib/data/Constants$PayType;

    .line 112
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "term"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->term:I

    .line 114
    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->currentPayType:Lcom/jd/lottery/lib/data/Constants$PayType;

    sget-object v3, Lcom/jd/lottery/lib/data/Constants$PayType;->Coupon:Lcom/jd/lottery/lib/data/Constants$PayType;

    if-ne v2, v3, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "coupon_ids"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, couponString:Ljava/lang/String;
    invoke-static {v0}, Lcom/jd/lottery/lib/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponIds:[Ljava/lang/String;

    .line 118
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponIds:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 123
    .end local v0           #couponString:Ljava/lang/String;
    :cond_0
    return-void

    .line 118
    .restart local v0       #couponString:Ljava/lang/String;
    :cond_1
    aget-object v1, v3, v2

    .line 119
    .local v1, string:Ljava/lang/String;
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 132
    sget v3, Lcom/jd/lottery/lib/R$layout;->fragmentdialog_payment_method:I

    .line 131
    invoke-virtual {p1, v3, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 135
    .local v2, layout:Landroid/widget/LinearLayout;
    sget v3, Lcom/jd/lottery/lib/R$id;->fragment_payment_method_total_money:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 134
    iput-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->totalMoneyTextView:Landroid/widget/TextView;

    .line 136
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->totalMoneyTextView:Landroid/widget/TextView;

    .line 137
    sget v4, Lcom/jd/lottery/lib/R$string;->dialog_payment_total_moaney:I

    new-array v5, v9, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->totalMoney:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    .line 136
    invoke-virtual {p0, v4, v5}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    sget v3, Lcom/jd/lottery/lib/R$id;->fragment_payment_method_balance:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 139
    iput-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->balanceTextView:Landroid/widget/TextView;

    .line 141
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->balanceTextView:Landroid/widget/TextView;

    .line 142
    sget v4, Lcom/jd/lottery/lib/R$string;->dialog_payment_balance:I

    new-array v5, v9, [Ljava/lang/Object;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    sget v3, Lcom/jd/lottery/lib/R$id;->fragment_payment_method_balance_unavailable:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 143
    iput-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->balanceUnavailableTextView:Landroid/widget/TextView;

    .line 147
    sget v3, Lcom/jd/lottery/lib/R$id;->fragment_payment_method_points:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 146
    iput-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->beansTextView:Landroid/widget/TextView;

    .line 148
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->beansTextView:Landroid/widget/TextView;

    sget v4, Lcom/jd/lottery/lib/R$string;->dialog_payment_points:I

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    sget v3, Lcom/jd/lottery/lib/R$id;->fragment_payment_method_points_unavailable:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 149
    iput-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->beansUnavailableTextView:Landroid/widget/TextView;

    .line 153
    sget v3, Lcom/jd/lottery/lib/R$id;->fragment_payment_method_coupon:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 152
    iput-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTextView:Landroid/widget/TextView;

    .line 155
    sget v3, Lcom/jd/lottery/lib/R$id;->fragment_payment_method_coupon_title:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 154
    iput-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTitle:Landroid/widget/TextView;

    .line 158
    sget v3, Lcom/jd/lottery/lib/R$id;->fragment_payment_method_coupon_list:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/jd/lottery/lib/ui/widget/FullSizeListView;

    .line 157
    iput-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponListView:Lcom/jd/lottery/lib/ui/widget/FullSizeListView;

    .line 160
    new-array v3, v11, [Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    .line 161
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    .line 162
    sget v3, Lcom/jd/lottery/lib/R$id;->fragment_payment_method_balance_radiobtn:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 161
    aput-object v3, v4, v8

    .line 163
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    .line 164
    sget v3, Lcom/jd/lottery/lib/R$id;->fragment_payment_method_online_radiobtn:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 163
    aput-object v3, v4, v9

    .line 165
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    const/4 v5, 0x2

    .line 166
    sget v3, Lcom/jd/lottery/lib/R$id;->fragment_payment_method_points_radiobtn:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 165
    aput-object v3, v4, v5

    .line 167
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    .line 168
    sget v3, Lcom/jd/lottery/lib/R$id;->fragment_payment_method_coupon_radiobtn:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 167
    aput-object v3, v4, v10

    .line 170
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->currentPayType:Lcom/jd/lottery/lib/data/Constants$PayType;

    invoke-direct {p0, v3}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->checkRadioButton(Lcom/jd/lottery/lib/data/Constants$PayType;)V

    .line 172
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v11, :cond_1

    .line 186
    iget v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->term:I

    if-le v3, v9, :cond_0

    .line 187
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/jd/lottery/lib/R$color;->payment_method_red:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTextView:Landroid/widget/TextView;

    sget v4, Lcom/jd/lottery/lib/R$string;->dialog_payment_coupon_unsupport_zuihao:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v3, v3, v10

    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 191
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 192
    sget v5, Lcom/jd/lottery/lib/R$color;->payment_title_unavailable:I

    .line 191
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    :cond_0
    sget v3, Lcom/jd/lottery/lib/R$id;->fragment_alert_dialog_cancle:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 196
    iput-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->cancleTextView:Landroid/widget/TextView;

    .line 198
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->cancleTextView:Landroid/widget/TextView;

    new-instance v4, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$3;

    invoke-direct {v4, p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$3;-><init>(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    sget v3, Lcom/jd/lottery/lib/R$id;->fragment_alert_dialog_ok:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 205
    iput-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->okTextView:Landroid/widget/TextView;

    .line 207
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->okTextView:Landroid/widget/TextView;

    new-instance v4, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$4;

    invoke-direct {v4, p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$4;-><init>(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    return-object v2

    .line 173
    :cond_1
    move v1, v0

    .line 174
    .local v1, index:I
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v3, v3, v0

    .line 175
    new-instance v4, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$2;

    invoke-direct {v4, p0, v1}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$2;-><init>(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;I)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 256
    new-instance v2, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$5;

    invoke-direct {v2, p0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$5;-><init>(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)V

    .line 255
    invoke-static {v1, v2}, Lcom/jd/lottery/lib/service/DataIntentService;->getUserBscIntent(Landroid/content/Context;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 268
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 269
    return-void
.end method

.method public setOnActionClickListener(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ActionClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 444
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->actionClickListener:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ActionClickListener;

    .line 445
    return-void
.end method
