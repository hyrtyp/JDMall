.class public Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "MyOrderPostPayConfirm.java"


# static fields
.field public static final INTENT_EXTRA_ORDER_ID:Ljava/lang/String; = "orderId"


# instance fields
.field private PaymentIndex:I

.field private bankName:Landroid/widget/TextView;

.field private cityCodeArray:[Ljava/lang/String;

.field private cityIndex:I

.field private intent:Landroid/content/Intent;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mMonth:I

.field private mYear:I

.field private orderId:Ljava/lang/String;

.field private payCity:Landroid/widget/TextView;

.field private payCityBtn:Landroid/widget/ImageButton;

.field private payDate:Landroid/widget/TextView;

.field private payMethod:Landroid/widget/TextView;

.field private payMethodBtn:Landroid/widget/ImageButton;

.field private payMethodIndex:I

.field private payMoney:Landroid/widget/TextView;

.field private payOrderId:Landroid/widget/TextView;

.field private payRemark:Landroid/widget/TextView;

.field private selectPayment:Landroid/widget/TextView;

.field private selectPaymentBtn:Landroid/widget/ImageButton;

.field private selectPaymentCodyArray:[Ljava/lang/String;

.field private submitBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 40
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 54
    iput v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->cityIndex:I

    .line 55
    iput v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->PaymentIndex:I

    .line 56
    iput v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payMethodIndex:I

    .line 61
    new-instance v0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mYear:I

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mMonth:I

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput p1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->cityIndex:I

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payCity:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->cityCodeArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->PaymentIndex:I

    return v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->PaymentIndex:I

    return-void
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->selectPayment:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->selectPaymentCodyArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payMethodIndex:I

    return v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payMethodIndex:I

    return-void
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payMethod:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput p1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mDay:I

    return-void
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->submitBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->showDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->updateDisplay()V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->submit()V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mYear:I

    return v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mMonth:I

    return v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)I
    .locals 1
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mDay:I

    return v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)I
    .locals 1
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->cityIndex:I

    return v0
.end method

.method private check()Z
    .locals 4

    .prologue
    const v3, 0x7f0702ca

    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 206
    iget v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->cityIndex:I

    if-ne v1, v2, :cond_0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f0702b2

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->showDialog(Ljava/lang/String;)V

    .line 226
    :goto_0
    return v0

    .line 210
    :cond_0
    iget v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->PaymentIndex:I

    if-ne v1, v2, :cond_1

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f0702b4

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->showDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_1
    iget v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payMethodIndex:I

    if-ne v1, v2, :cond_2

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f0702bb

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->showDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payOrderId:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payOrderId:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0702b8

    invoke-static {v2, v3}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 222
    :cond_3
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payMoney:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 223
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payMoney:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0702b9

    invoke-static {v2, v3}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 226
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private initView()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 95
    const v7, 0x7f0c039d

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->submitBtn:Landroid/widget/Button;

    .line 96
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->submitBtn:Landroid/widget/Button;

    new-instance v8, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$2;

    invoke-direct {v8, p0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$2;-><init>(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v7, 0x7f0c0392

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payCity:Landroid/widget/TextView;

    .line 105
    const v7, 0x7f0c0394

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->selectPayment:Landroid/widget/TextView;

    .line 106
    const v7, 0x7f0c0396

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payDate:Landroid/widget/TextView;

    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 108
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mYear:I

    .line 109
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mMonth:I

    .line 110
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mDay:I

    .line 111
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payDate:Landroid/widget/TextView;

    new-instance v8, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$3;

    invoke-direct {v8, p0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$3;-><init>(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v7, 0x7f0c0397

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payOrderId:Landroid/widget/TextView;

    .line 121
    const v7, 0x7f0c0398

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payMethod:Landroid/widget/TextView;

    .line 122
    const v7, 0x7f0c039a

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->bankName:Landroid/widget/TextView;

    .line 123
    const v7, 0x7f0c039b

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payMoney:Landroid/widget/TextView;

    .line 124
    const v7, 0x7f0c039c

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payRemark:Landroid/widget/TextView;

    .line 126
    const v7, 0x7f0c0393

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payCityBtn:Landroid/widget/ImageButton;

    .line 127
    const v7, 0x7f0c0395

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->selectPaymentBtn:Landroid/widget/ImageButton;

    .line 128
    const v7, 0x7f0c0399

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payMethodBtn:Landroid/widget/ImageButton;

    .line 129
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, cityItems:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->cityCodeArray:[Ljava/lang/String;

    .line 131
    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$4;

    invoke-direct {v2, p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$4;-><init>(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;[Ljava/lang/String;)V

    .line 151
    .local v2, cityListener:Landroid/view/View$OnClickListener;
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payCity:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payCity:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 153
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payCityBtn:Landroid/widget/ImageButton;

    invoke-virtual {v7, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->selectPaymentCodyArray:[Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, selectPaymentItems:[Ljava/lang/String;
    new-instance v6, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;

    invoke-direct {v6, p0, v5}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$5;-><init>(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;[Ljava/lang/String;)V

    .line 176
    .local v6, selectPaymentListener:Landroid/view/View$OnClickListener;
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->selectPayment:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->selectPayment:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 178
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->selectPaymentBtn:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, paymethodItems:[Ljava/lang/String;
    new-instance v4, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6;

    invoke-direct {v4, p0, v3}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$6;-><init>(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;[Ljava/lang/String;)V

    .line 200
    .local v4, paymethodListener:Landroid/view/View$OnClickListener;
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payMethod:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payMethod:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 202
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payMethodBtn:Landroid/widget/ImageButton;

    invoke-virtual {v7, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-void
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "messageBody"

    .prologue
    .line 306
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 307
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f07029e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 308
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 309
    const v1, 0x7f07037c

    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$8;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$8;-><init>(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 315
    new-instance v1, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$9;

    invoke-direct {v1, p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$9;-><init>(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->post(Ljava/lang/Runnable;)V

    .line 323
    return-void
.end method

.method private submit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 230
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->check()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->submitBtn:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 234
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->submitBtn:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setPressed(Z)V

    .line 235
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 237
    .local v2, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "paymoney"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payMoney:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v3, "selectpayment"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->selectPayment:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v3, "orderId"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->orderId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string v3, "bankname"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->bankName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string v3, "paydate"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payDate:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v3, "paymethod"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payMethod:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v3, "payorderid"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payOrderId:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v3, "payremark"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payRemark:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string v3, "paycity"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payCity:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v3, "payment"

    const-string v4, "102"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_1
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 251
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "confirmSubmitInfo"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 255
    new-instance v3, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;-><init>(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)V

    .line 253
    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 301
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 302
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto/16 :goto_0

    .line 247
    .end local v1           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private updateDisplay()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->payDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    iget v2, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v1, 0x7f0300a2

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->setContentView(I)V

    .line 82
    const v1, 0x7f0c007e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    .local v0, mTitle:Landroid/widget/TextView;
    const v1, 0x7f0702af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    invoke-virtual {p0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->intent:Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->intent:Landroid/content/Intent;

    const-string v2, "orderId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->orderId:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->initView()V

    .line 87
    return-void
.end method
