.class public Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "NewFillOrderActivity.java"


# static fields
.field public static final ADD_ADDR_CODE:I = 0x2

.field public static final EXTRA_NEW_CURRENT_ORDER:Ljava/lang/String; = "ExtraNewCurrentOrder"

.field public static final INTENT_EXTRA_SELECTED_CART:Ljava/lang/String; = "selectedCartResponseInfo"

.field public static final MODIFY_ADDR_CODE:I = 0x1

.field public static final MODIFY_INVOINCE_CODE:I = 0x4

.field public static final MODIFY_PAYMENT_CODE:I = 0x3

.field public static final MODIFY_YOU_HUI_CODE:I = 0x5

.field public static final TAG:Ljava/lang/String;

.field public static cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;


# instance fields
.field private final RMB:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private defrayEtArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private defray_passwork_input_layout:Landroid/widget/LinearLayout;

.field private inputmethodArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/app/mall/ime/JDInputMethod;",
            ">;"
        }
    .end annotation
.end field

.field private isCouponsGiftCompleted:Z

.field private mButtonSubmit:Landroid/widget/Button;

.field private mCheckboxBalance:Landroid/widget/CheckBox;

.field private mCheckboxJdbean:Landroid/widget/CheckBox;

.field private mController:Lcom/jingdong/common/controller/NewFillOrderController;

.field private mEditTextMarkContent:Landroid/widget/EditText;

.field private mLayoutBalance:Landroid/widget/LinearLayout;

.field private mLayoutCalcInfo:Landroid/widget/LinearLayout;

.field private mLayoutCashDeliverPayInfo:Landroid/widget/RelativeLayout;

.field private mLayoutDefaryPassword:Landroid/widget/LinearLayout;

.field private mLayoutInvoiceEmpty:Landroid/widget/RelativeLayout;

.field private mLayoutInvoiceInfo:Landroid/widget/RelativeLayout;

.field private mLayoutJdbean:Landroid/widget/LinearLayout;

.field private mLayoutMark:Landroid/widget/RelativeLayout;

.field private mLayoutPaymentEmpty:Landroid/widget/RelativeLayout;

.field private mLayoutPaymentInfo:Landroid/widget/RelativeLayout;

.field private mLayoutPaymentPostInfo:Landroid/widget/RelativeLayout;

.field private mLayoutProductInventory:Landroid/widget/RelativeLayout;

.field private mLayoutReceiverEmpty:Landroid/widget/RelativeLayout;

.field private mLayoutReceiverInfo:Landroid/widget/RelativeLayout;

.field private mLayoutSelfInfo:Landroid/widget/RelativeLayout;

.field private mLayoutSettleContent:Landroid/widget/LinearLayout;

.field private mLayoutShipmentInfo:Landroid/widget/RelativeLayout;

.field private mLayoutSubmit:Landroid/widget/RelativeLayout;

.field private mLayoutYouhuiContent:Landroid/widget/RelativeLayout;

.field private mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

.field private mNewFillOrderListener:Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;

.field private mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTextViewBalance:Landroid/widget/TextView;

.field private mTextViewCashDeliveryPayTypeContent:Landroid/widget/TextView;

.field private mTextViewFinalPriceTv:Landroid/widget/TextView;

.field private mTextViewInvoiceContentNoBookDetail:Landroid/widget/TextView;

.field private mTextViewInvoiceContentWithBookDetail:Landroid/widget/TextView;

.field private mTextViewInvoiceTitle:Landroid/widget/TextView;

.field private mTextViewInvoiceTypeContent:Landroid/widget/TextView;

.field private mTextViewInvoincHeadTitleContent:Landroid/widget/TextView;

.field private mTextViewJdbean:Landroid/widget/TextView;

.field private mTextViewPaymentPostCustomerIdContent:Landroid/widget/TextView;

.field private mTextViewPaymentPostPayeeContnet:Landroid/widget/TextView;

.field private mTextViewPaymentTitle:Landroid/widget/TextView;

.field private mTextViewPaymentTypeContent:Landroid/widget/TextView;

.field private mTextViewPriceDifferentRemind:Landroid/widget/TextView;

.field private mTextViewReceiverAddressContent:Landroid/widget/TextView;

.field private mTextViewReceiverMobileContent:Landroid/widget/TextView;

.field private mTextViewReceiverNameContent:Landroid/widget/TextView;

.field private mTextViewReceiverTitle:Landroid/widget/TextView;

.field private mTextViewReturnCart:Landroid/widget/TextView;

.field private mTextViewSelectPayOnline:Landroid/widget/TextView;

.field private mTextViewSelfAddressContent:Landroid/widget/TextView;

.field private mTextViewSelfNameContent:Landroid/widget/TextView;

.field private mTextViewShipmentPhoneConfirm:Landroid/widget/TextView;

.field private mTextViewShipmentPhoneConfirmContent:Landroid/widget/TextView;

.field private mTextViewShipmentShipmentBit:Landroid/widget/TextView;

.field private mTextViewShipmentShipmentBitContent:Landroid/widget/TextView;

.field private mTextViewShipmentShiptime:Landroid/widget/TextView;

.field private mTextViewShipmentShiptimeContent:Landroid/widget/TextView;

.field private mTextViewShipmentTypeContent:Landroid/widget/TextView;

.field private mTextViewTitle:Landroid/widget/TextView;

.field private mTextViewYouhuiContent:Landroid/widget/TextView;

.field private mTextViewYouhuiTitle:Landroid/widget/TextView;

.field private payPasswordBtn:Landroid/widget/TextView;

.field private payPasswordView:Landroid/widget/TextView;

.field private pay_password_open_find_layout:Landroid/widget/LinearLayout;

.field private priceDifferentTips:Ljava/lang/String;

.field private final settelCommonParms:Landroid/widget/LinearLayout$LayoutParams;

.field private final settelValueParms:Landroid/widget/LinearLayout$LayoutParams;

.field private final settlePadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->TAG:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 81
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 165
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->defray_passwork_input_layout:Landroid/widget/LinearLayout;

    .line 166
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->pay_password_open_find_layout:Landroid/widget/LinearLayout;

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->inputmethodArray:Ljava/util/ArrayList;

    .line 171
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->context:Landroid/content/Context;

    .line 184
    new-instance v1, Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-direct {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    .line 188
    new-instance v1, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewFillOrderListener:Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;

    .line 240
    const-string v1, "\u5143"

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->RMB:Ljava/lang/String;

    .line 241
    const/high16 v1, 0x40a0

    invoke-static {v1}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    iput v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->settlePadding:I

    .line 242
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->settelCommonParms:Landroid/widget/LinearLayout$LayoutParams;

    .line 243
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->settelValueParms:Landroid/widget/LinearLayout$LayoutParams;

    .line 245
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v0

    .line 246
    .local v0, displayWidth:I
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->settelCommonParms:Landroid/widget/LinearLayout$LayoutParams;

    div-int/lit8 v2, v0, 0x5

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 247
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->settelValueParms:Landroid/widget/LinearLayout$LayoutParams;

    div-int/lit8 v2, v0, 0xa

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 81
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showAllPage()V

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutJdbean:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mCheckboxJdbean:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewJdbean:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->isCouponsGiftCompleted:Z

    return v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutYouhuiContent:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 993
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->toPageEditYouHuiLipinActivity()V

    return-void
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1333
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->hideInputKey()V

    return-void
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->isCouponsGiftCompleted:Z

    return-void
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mButtonSubmit:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mEditTextMarkContent:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$22(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->submitOrder()V

    return-void
.end method

.method static synthetic access$23(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->defray_passwork_input_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$24(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->pay_password_open_find_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$25(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->payPasswordView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$26(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->payPasswordBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$27(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->inputmethodArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$28(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1244
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showExplainPayPasswordDialog(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$29(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutDefaryPassword:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1348
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showYouHuiView()V

    return-void
.end method

.method static synthetic access$30(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewYouhuiTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$31(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewYouhuiContent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1375
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->messageAfterSubmit()V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/controller/NewFillOrderController;
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mController:Lcom/jingdong/common/controller/NewFillOrderController;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewFillOrderListener:Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutBalance:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mCheckboxBalance:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewBalance:Landroid/widget/TextView;

    return-object v0
.end method

.method private appendPromistTime()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1535
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isVisibility()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1537
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget v2, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPromiseType(Ljava/lang/Integer;)V

    .line 1538
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseSendPay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPromiseSendPay(Ljava/lang/String;)V

    .line 1540
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget v1, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->localType:I

    const/16 v2, 0x137

    if-ne v1, v2, :cond_0

    .line 1541
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPromiseDate(Ljava/lang/String;)V

    .line 1542
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseTimeRange:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPromiseTimeRange(Ljava/lang/String;)V

    .line 1548
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isUploading:Z

    .line 1562
    :goto_1
    return-void

    .line 1544
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPromiseDate(Ljava/lang/String;)V

    .line 1545
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPromiseTimeRange(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1549
    :catch_0
    move-exception v0

    .line 1554
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isUploading:Z

    goto :goto_1

    .line 1557
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPromiseType(Ljava/lang/Integer;)V

    .line 1558
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPromiseSendPay(Ljava/lang/String;)V

    .line 1559
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPromiseDate(Ljava/lang/String;)V

    .line 1560
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPromiseTimeRange(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 324
    const v0, 0x7f0c01db

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 326
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewTitle:Landroid/widget/TextView;

    .line 327
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f070311

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 329
    const v0, 0x7f0c03bc

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewReceiverTitle:Landroid/widget/TextView;

    .line 330
    const v0, 0x7f0c03c1

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewReceiverNameContent:Landroid/widget/TextView;

    .line 331
    const v0, 0x7f0c03c4

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewReceiverMobileContent:Landroid/widget/TextView;

    .line 332
    const v0, 0x7f0c03c6

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewReceiverAddressContent:Landroid/widget/TextView;

    .line 334
    const v0, 0x7f0c03c7

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewPaymentTitle:Landroid/widget/TextView;

    .line 335
    const v0, 0x7f0c03cc

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewPaymentTypeContent:Landroid/widget/TextView;

    .line 336
    const v0, 0x7f0c03cf

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewSelfNameContent:Landroid/widget/TextView;

    .line 337
    const v0, 0x7f0c03d1

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewSelfAddressContent:Landroid/widget/TextView;

    .line 338
    const v0, 0x7f0c03d4

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentTypeContent:Landroid/widget/TextView;

    .line 339
    const v0, 0x7f0c03d5

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShiptime:Landroid/widget/TextView;

    .line 340
    const v0, 0x7f0c03d6

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShiptimeContent:Landroid/widget/TextView;

    .line 341
    const v0, 0x7f0c03d7

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShipmentBit:Landroid/widget/TextView;

    .line 342
    const v0, 0x7f0c03d8

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShipmentBitContent:Landroid/widget/TextView;

    .line 343
    const v0, 0x7f0c03d9

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentPhoneConfirm:Landroid/widget/TextView;

    .line 344
    const v0, 0x7f0c03da

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentPhoneConfirmContent:Landroid/widget/TextView;

    .line 345
    const v0, 0x7f0c03dd

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewCashDeliveryPayTypeContent:Landroid/widget/TextView;

    .line 346
    const v0, 0x7f0c03e2

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewPaymentPostCustomerIdContent:Landroid/widget/TextView;

    .line 347
    const v0, 0x7f0c03e4

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewPaymentPostPayeeContnet:Landroid/widget/TextView;

    .line 349
    const v0, 0x7f0c03e5

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewInvoiceTitle:Landroid/widget/TextView;

    .line 350
    const v0, 0x7f0c03e9

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewInvoiceTypeContent:Landroid/widget/TextView;

    .line 351
    const v0, 0x7f0c03eb

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewInvoincHeadTitleContent:Landroid/widget/TextView;

    .line 352
    const v0, 0x7f0c03ee

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewInvoiceContentWithBookDetail:Landroid/widget/TextView;

    .line 353
    const v0, 0x7f0c03f0

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewInvoiceContentNoBookDetail:Landroid/widget/TextView;

    .line 355
    const v0, 0x7f0c03f1

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewYouhuiTitle:Landroid/widget/TextView;

    .line 356
    const v0, 0x7f0c03f3

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewYouhuiContent:Landroid/widget/TextView;

    .line 358
    const v0, 0x7f0c03f5

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewBalance:Landroid/widget/TextView;

    .line 359
    const v0, 0x7f0c0219

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mCheckboxBalance:Landroid/widget/CheckBox;

    .line 360
    const v0, 0x7f0c03f6

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewJdbean:Landroid/widget/TextView;

    .line 361
    const v0, 0x7f0c021c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mCheckboxJdbean:Landroid/widget/CheckBox;

    .line 362
    const v0, 0x7f0c03f8

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mEditTextMarkContent:Landroid/widget/EditText;

    .line 363
    const v0, 0x7f0c0226

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewSelectPayOnline:Landroid/widget/TextView;

    .line 364
    const v0, 0x7f0c0232

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewFinalPriceTv:Landroid/widget/TextView;

    .line 365
    const v0, 0x7f0c03bb

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewPriceDifferentRemind:Landroid/widget/TextView;

    .line 366
    const v0, 0x7f0c03f9

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewReturnCart:Landroid/widget/TextView;

    .line 368
    const v0, 0x7f0c03bd

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutReceiverEmpty:Landroid/widget/RelativeLayout;

    .line 369
    const v0, 0x7f0c03bf

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutReceiverInfo:Landroid/widget/RelativeLayout;

    .line 370
    const v0, 0x7f0c03c8

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutPaymentEmpty:Landroid/widget/RelativeLayout;

    .line 371
    const v0, 0x7f0c03ca

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutPaymentInfo:Landroid/widget/RelativeLayout;

    .line 372
    const v0, 0x7f0c03de

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutPaymentPostInfo:Landroid/widget/RelativeLayout;

    .line 373
    const v0, 0x7f0c03e6

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutInvoiceEmpty:Landroid/widget/RelativeLayout;

    .line 374
    const v0, 0x7f0c03e7

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutInvoiceInfo:Landroid/widget/RelativeLayout;

    .line 375
    const v0, 0x7f0c03f2

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutYouhuiContent:Landroid/widget/RelativeLayout;

    .line 376
    const v0, 0x7f0c0218

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutBalance:Landroid/widget/LinearLayout;

    .line 377
    const v0, 0x7f0c021a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutJdbean:Landroid/widget/LinearLayout;

    .line 378
    const v0, 0x7f0c03f7

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutMark:Landroid/widget/RelativeLayout;

    .line 379
    const v0, 0x7f0c03fa

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutProductInventory:Landroid/widget/RelativeLayout;

    .line 380
    const v0, 0x7f0c03fc

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutCalcInfo:Landroid/widget/LinearLayout;

    .line 381
    const v0, 0x7f0c03db

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutCashDeliverPayInfo:Landroid/widget/RelativeLayout;

    .line 382
    const v0, 0x7f0c03d2

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutShipmentInfo:Landroid/widget/RelativeLayout;

    .line 383
    const v0, 0x7f0c03cd

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutSelfInfo:Landroid/widget/RelativeLayout;

    .line 384
    const v0, 0x7f0c01ed

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutSettleContent:Landroid/widget/LinearLayout;

    .line 385
    const v0, 0x7f0c0231

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutSubmit:Landroid/widget/RelativeLayout;

    .line 387
    const v0, 0x7f0c01ee

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mButtonSubmit:Landroid/widget/Button;

    .line 389
    const v0, 0x7f0c03fb

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutDefaryPassword:Landroid/widget/LinearLayout;

    .line 390
    const v0, 0x7f0c0221

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->defray_passwork_input_layout:Landroid/widget/LinearLayout;

    .line 391
    const v0, 0x7f0c0222

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->pay_password_open_find_layout:Landroid/widget/LinearLayout;

    .line 392
    const v0, 0x7f0c0223

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->payPasswordView:Landroid/widget/TextView;

    .line 393
    const v0, 0x7f0c0224

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->payPasswordBtn:Landroid/widget/TextView;

    .line 395
    return-void
.end method

.method private generatorSettleItem(Landroid/widget/LinearLayout$LayoutParams;Ljava/lang/String;I)Landroid/view/View;
    .locals 4
    .parameter "layoutParams"
    .parameter "lable"
    .parameter "gravity"

    .prologue
    .line 1319
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1320
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1321
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1323
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1324
    const v3, -0xbbbbbc

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1325
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 1326
    .local v1, paint:Landroid/text/TextPaint;
    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 1327
    .local v0, len:F
    iget v3, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 1328
    float-to-int v3, v0

    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1330
    :cond_0
    return-object v2
.end method

.method private handleClickEvent()V
    .locals 5

    .prologue
    .line 825
    new-instance v2, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$5;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$5;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    .line 836
    .local v2, clickListenerReceiver:Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutReceiverInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutReceiverEmpty:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 840
    new-instance v1, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$6;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$6;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    .line 864
    .local v1, clickListenerPayment:Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutPaymentInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 865
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutPaymentEmpty:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 868
    new-instance v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$7;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$7;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    .line 877
    .local v0, clickListenerInvoice:Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutInvoiceInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutInvoiceEmpty:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 881
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutYouhuiContent:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 902
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewReturnCart:Landroid/widget/TextView;

    new-instance v4, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$9;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$9;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 911
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutProductInventory:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$10;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$10;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 921
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mButtonSubmit:Landroid/widget/Button;

    new-instance v4, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 971
    return-void
.end method

.method private hideInputKey()V
    .locals 3

    .prologue
    .line 1334
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->inputmethodArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1342
    return-void

    .line 1336
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->inputmethodArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/ime/JDInputMethod;

    .line 1337
    .local v1, input:Lcom/jingdong/app/mall/ime/JDInputMethod;
    invoke-virtual {v1}, Lcom/jingdong/app/mall/ime/JDInputMethod;->isPopupwindowShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1339
    invoke-virtual {v1}, Lcom/jingdong/app/mall/ime/JDInputMethod;->dismissPopupwindow()V

    .line 1334
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hidePasswordEdit()V
    .locals 1

    .prologue
    .line 1228
    new-instance v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$14;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$14;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->post(Ljava/lang/Runnable;)V

    .line 1239
    return-void
.end method

.method private initSettleView(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "settleContent"
    .parameter "lable"
    .parameter "operator"
    .parameter "value"

    .prologue
    const/4 v5, 0x5

    .line 1292
    if-nez p2, :cond_0

    .line 1293
    const-string p2, ""

    .line 1295
    :cond_0
    if-nez p3, :cond_1

    .line 1296
    const-string p3, ""

    .line 1298
    :cond_1
    if-nez p4, :cond_2

    .line 1299
    const-string p4, ""

    .line 1302
    :cond_2
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1303
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1304
    iget v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->settlePadding:I

    iget v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->settlePadding:I

    iget v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->settlePadding:I

    iget v4, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->settlePadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1305
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->settelCommonParms:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v1, p2, v5}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->generatorSettleItem(Landroid/widget/LinearLayout$LayoutParams;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1306
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->settelCommonParms:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v1, p3, v5}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->generatorSettleItem(Landroid/widget/LinearLayout$LayoutParams;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1307
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->settelValueParms:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u5143"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v5}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->generatorSettleItem(Landroid/widget/LinearLayout$LayoutParams;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1308
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1309
    return-void
.end method

.method private messageAfterSubmit()V
    .locals 1

    .prologue
    .line 1376
    new-instance v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$17;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1525
    return-void
.end method

.method private showAllEmptyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 462
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewReceiverTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutReceiverInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutReceiverEmpty:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewPaymentTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutPaymentInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutPaymentEmpty:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewInvoiceTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutInvoiceInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutInvoiceEmpty:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 476
    return-void
.end method

.method private showAllPage()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    if-nez v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getChangeAreaMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->priceDifferentTips:Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 413
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showReceiverView()V

    .line 416
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showPaymentView()V

    .line 419
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showInvoiceView()V

    .line 427
    :goto_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showBalanceView()V

    .line 430
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showJdbeanView()V

    .line 433
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showMoneyInfoView()V

    .line 436
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showRemarkView()V

    .line 439
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showPayOnlineTips()V

    .line 442
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIsUsedVirtualPay()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 443
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showPasswordEdit()V

    .line 448
    :goto_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$2;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 422
    :cond_2
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showAllEmptyView()V

    goto :goto_1

    .line 445
    :cond_3
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->hidePasswordEdit()V

    goto :goto_2
.end method

.method private showBalanceView()V
    .locals 1

    .prologue
    .line 605
    new-instance v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->post(Ljava/lang/Runnable;)V

    .line 655
    return-void
.end method

.method private showExplainPayPasswordDialog(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "isOpen"

    .prologue
    .line 1246
    if-eqz p1, :cond_0

    .line 1248
    new-instance v1, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$15;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$15;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    .line 1266
    .local v1, controller:Lcom/jingdong/app/mall/utils/ui/DialogController;
    const v2, 0x7f070362

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1268
    .local v0, builder:Ljava/lang/StringBuilder;
    const v2, 0x7f070363

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1270
    const v2, 0x7f070366

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setNeutralButton(Ljava/lang/CharSequence;)V

    .line 1271
    invoke-virtual {v1, p0}, Lcom/jingdong/app/mall/utils/ui/DialogController;->init(Landroid/content/Context;)V

    .line 1272
    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->show()V

    .line 1276
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #controller:Lcom/jingdong/app/mall/utils/ui/DialogController;
    :cond_0
    return-void
.end method

.method private showInvoiceView()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 590
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewInvoiceTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutInvoiceInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutInvoiceEmpty:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewInvoiceTypeContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getInvoiceTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getInvoiceTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5355\u4f4d"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewInvoincHeadTitleContent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5355\u4f4d("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCompanyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewInvoiceContentWithBookDetail:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getInvoiceContentTypeBookName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewInvoiceContentNoBookDetail:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getInvoiceContentsTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewInvoincHeadTitleContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getInvoiceTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showJdbeanView()V
    .locals 1

    .prologue
    .line 661
    new-instance v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$4;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$4;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->post(Ljava/lang/Runnable;)V

    .line 714
    return-void
.end method

.method private showMoneyInfoView()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 737
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v7}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPriceItemList()Ljava/util/ArrayList;

    move-result-object v5

    .line 738
    .local v5, priceItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;>;"
    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutSettleContent:Landroid/widget/LinearLayout;

    if-nez v7, :cond_1

    .line 786
    :cond_0
    return-void

    .line 742
    :cond_1
    const-string v0, "\u5143"

    .line 745
    .local v0, RMB:Ljava/lang/String;
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutSettleContent:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 747
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 749
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;

    .line 750
    .local v4, priceItem:Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;
    if-nez v4, :cond_3

    .line 747
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 755
    :cond_3
    invoke-virtual {v4}, Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 756
    .local v2, lable:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 761
    invoke-virtual {v4}, Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 762
    .local v6, value:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 763
    const-string v6, ""

    .line 767
    :cond_4
    invoke-virtual {v4}, Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;->getOperator()Ljava/lang/String;

    move-result-object v3

    .line 768
    .local v3, operator:Ljava/lang/String;
    if-nez v3, :cond_5

    .line 769
    const-string v3, ""

    .line 772
    :cond_5
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutSettleContent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v2, v3, v6}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->initSettleView(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v7, "\u5546\u54c1\u91d1\u989d"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 776
    invoke-direct {p0, v6}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showPriceDifferentRemind(Ljava/lang/String;)V

    .line 777
    sput-object v6, Lcom/jingdong/common/constant/Constants;->dYTotalPrice:Ljava/lang/String;

    goto :goto_1

    .line 779
    :cond_6
    const-string v7, "\u5e94\u4ed8\u603b\u989d"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 780
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewFinalPriceTv:Landroid/widget/TextView;

    const v8, 0x7f0704ed

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {p0, v8, v9}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutSubmit:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 782
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v7, v6}, Lcom/jingdong/common/entity/NewCurrentOrder;->setTotalPrice(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showPasswordEdit()V
    .locals 1

    .prologue
    .line 1062
    new-instance v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->post(Ljava/lang/Runnable;)V

    .line 1218
    return-void
.end method

.method private showPayOnlineTips()V
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPayOnlineMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewSelectPayOnline:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPayOnlineMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewSelectPayOnline:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewSelectPayOnline:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPaymentView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 495
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewPaymentTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutPaymentInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 497
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutPaymentEmpty:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 499
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutPaymentPostInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 500
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutSelfInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 501
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutCashDeliverPayInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 503
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutShipmentInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 505
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewPaymentTypeContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPaymentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdPaymentType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 508
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutSelfInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 509
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutShipmentInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 510
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewSelfNameContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPickSiteName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewSelfAddressContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPickSiteAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    :goto_0
    :pswitch_0
    return-void

    .line 516
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentTypeContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getShipmentTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShipmentBit:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShipmentBitContent:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 521
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShiptime:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShiptimeContent:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getBigItemCodDateName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 524
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShipmentBit:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShipmentBitContent:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShipmentBitContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getBigItemCodDateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getShow411Text()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 532
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShiptime:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShiptimeContent:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShiptimeContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getShow411Text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIsCodInform()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 549
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentPhoneConfirm:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentPhoneConfirmContent:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIsCodInform()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0701a3

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, phoneConfirmContent:Ljava/lang/String;
    :goto_2
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentPhoneConfirmContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    .end local v0           #phoneConfirmContent:Ljava/lang/String;
    :goto_3
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdPaymentType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto/16 :goto_0

    .line 571
    :pswitch_2
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPaymentWayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 572
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutCashDeliverPayInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 536
    :cond_3
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getShow311Text()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 537
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShiptime:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 538
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShiptimeContent:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShiptimeContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getShow311Text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 541
    :cond_4
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCodTimeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 542
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShiptime:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShiptimeContent:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentShiptimeContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCodTimeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 552
    :cond_5
    const v1, 0x7f0701a4

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 555
    :cond_6
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentPhoneConfirm:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewShipmentPhoneConfirmContent:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 564
    :pswitch_3
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutPaymentPostInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 566
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewPaymentPostCustomerIdContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPostCustomerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewPaymentPostPayeeContnet:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPostPayee()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 574
    :cond_7
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutCashDeliverPayInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 575
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewCashDeliveryPayTypeContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPaymentWayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 559
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showPriceDifferentRemind(Ljava/lang/String;)V
    .locals 6
    .parameter "newValue"

    .prologue
    .line 795
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewPriceDifferentRemind:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->priceDifferentTips:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    sget-object v4, Lcom/jingdong/common/constant/Constants;->dYTotalPrice:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 800
    sget-object v4, Lcom/jingdong/common/constant/Constants;->dYTotalPrice:Ljava/lang/String;

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 803
    :try_start_0
    sget-object v4, Lcom/jingdong/common/constant/Constants;->dYTotalPrice:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 804
    .local v2, oldPrice:D
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 805
    .local v0, newPrice:D
    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    .line 806
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewPriceDifferentRemind:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 807
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewPriceDifferentRemind:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->priceDifferentTips:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 810
    .end local v0           #newPrice:D
    .end local v2           #oldPrice:D
    :catch_0
    move-exception v4

    .line 816
    :cond_2
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewPriceDifferentRemind:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showReceiverView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 482
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewReceiverTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutReceiverInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutReceiverEmpty:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewReceiverNameContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewReceiverMobileContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewReceiverAddressContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getWhere()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    return-void
.end method

.method private showRemarkView()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getNeedRemark()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutMark:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 724
    :goto_0
    return-void

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutMark:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mEditTextMarkContent:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showYouHuiView()V
    .locals 1

    .prologue
    .line 1349
    new-instance v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$16;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$16;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->post(Ljava/lang/Runnable;)V

    .line 1373
    return-void
.end method

.method private submitOrder()V
    .locals 2

    .prologue
    .line 975
    sget-object v0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->usid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 976
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    sget-object v1, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->usid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->setUsid(Ljava/lang/String;)V

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mController:Lcom/jingdong/common/controller/NewFillOrderController;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewFillOrderListener:Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/controller/NewFillOrderController;->submitOrder(Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;)V

    .line 991
    :goto_0
    return-void

    .line 978
    :cond_1
    const-string v0, "unionId"

    invoke-static {v0}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->unionId:Ljava/lang/String;

    .line 979
    const-string v0, "subunionId"

    invoke-static {v0}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->subunionId:Ljava/lang/String;

    .line 980
    sget-object v0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->unionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 981
    new-instance v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$12;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$12;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    invoke-static {v0}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->cps(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private toPageEditYouHuiLipinActivity()V
    .locals 3

    .prologue
    .line 994
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 995
    .local v0, t:Landroid/content/Intent;
    const-string v1, "bCard"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIsOpenPaymentPassword()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 996
    const-string v1, "bJingCoupon"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIsOpenPaymentPassword()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 997
    const-string v1, "bDongCoupon"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIsOpenPaymentPassword()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 998
    const-string v1, "bCardtip"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getOpenPasswordTip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    const-string v1, "bJingCoupontip"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getOpenPasswordTip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    const-string v1, "bDongCoupontip"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getOpenPasswordTip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1001
    const-string v1, "ExtraNewCurrentOrder"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1003
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1004
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 1009
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/MyActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1010
    packed-switch p2, :pswitch_data_0

    .line 1054
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1013
    :pswitch_1
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    sget-object v3, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/NewCurrentOrder;->parseOldModelForUserInfo(Lcom/jingdong/common/entity/UserInfo;)V

    .line 1015
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mController:Lcom/jingdong/common/controller/NewFillOrderController;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewFillOrderListener:Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;

    invoke-virtual {v2, v3}, Lcom/jingdong/common/controller/NewFillOrderController;->modifyReceiver(Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;)V

    .line 1017
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v2, :cond_0

    .line 1018
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 1024
    :pswitch_2
    const-string v2, "PromiseTime"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    .line 1026
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->appendPromistTime()V

    .line 1028
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2, p3}, Lcom/jingdong/common/entity/NewCurrentOrder;->parseOldModelForPaymentInfo(Landroid/content/Intent;)V

    .line 1031
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mController:Lcom/jingdong/common/controller/NewFillOrderController;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewFillOrderListener:Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;

    invoke-virtual {v2, v3}, Lcom/jingdong/common/controller/NewFillOrderController;->modifyPayment(Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;)V

    goto :goto_0

    .line 1036
    :pswitch_3
    const-string v2, "ExtraNewCurrentOrder"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/NewCurrentOrder;

    .line 1038
    .local v0, tmpNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2, v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->parseNewModelForInvoicePage(Lcom/jingdong/common/entity/NewCurrentOrder;)V

    .line 1040
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mController:Lcom/jingdong/common/controller/NewFillOrderController;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewFillOrderListener:Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;

    invoke-virtual {v2, v3}, Lcom/jingdong/common/controller/NewFillOrderController;->modifyInvoice(Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;)V

    goto :goto_0

    .line 1044
    .end local v0           #tmpNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    :pswitch_4
    const-string v2, "ExtraNewCurrentOrder"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/NewCurrentOrder;

    .line 1045
    .local v1, youhuiNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v2, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->parseNewModelForYouHuiLipinPage(Lcom/jingdong/common/entity/NewCurrentOrder;)V

    .line 1047
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showYouHuiView()V

    .line 1050
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mController:Lcom/jingdong/common/controller/NewFillOrderController;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewFillOrderListener:Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;

    invoke-virtual {v2, v3}, Lcom/jingdong/common/controller/NewFillOrderController;->syncFillOrder(Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;)V

    goto :goto_0

    .line 1010
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 254
    iput-object p0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->context:Landroid/content/Context;

    .line 256
    const v1, 0x7f0300a9

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->setContentView(I)V

    .line 258
    const-string v1, "0"

    sput-object v1, Lcom/jingdong/common/constant/Constants;->dYTotalPrice:Ljava/lang/String;

    .line 260
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViews()V

    .line 262
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->handleClickEvent()V

    .line 264
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 266
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "selectedCartResponseInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/cart/CartResponseInfo;

    sput-object v1, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    .line 268
    sget-object v1, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    sput-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    .line 272
    :cond_0
    :try_start_0
    new-instance v1, Lcom/jingdong/common/controller/NewFillOrderController;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    sget-object v3, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-direct {v1, v2, v3, v4}, Lcom/jingdong/common/controller/NewFillOrderController;-><init>(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/entity/cart/CartResponseInfo;Lcom/jingdong/common/entity/NewCurrentOrder;)V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mController:Lcom/jingdong/common/controller/NewFillOrderController;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mController:Lcom/jingdong/common/controller/NewFillOrderController;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewFillOrderListener:Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;

    invoke-virtual {v1, v2}, Lcom/jingdong/common/controller/NewFillOrderController;->syncFillOrder(Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;)V

    .line 282
    return-void

    .line 273
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 292
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 294
    const/4 v2, 0x0

    .line 295
    .local v2, isHideInputMethod:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->inputmethodArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 302
    if-eqz v2, :cond_2

    .line 303
    const/4 v3, 0x1

    .line 317
    .end local v0           #i:I
    .end local v2           #isHideInputMethod:Z
    :goto_1
    return v3

    .line 296
    .restart local v0       #i:I
    .restart local v2       #isHideInputMethod:Z
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->inputmethodArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/ime/JDInputMethod;

    .line 297
    .local v1, input:Lcom/jingdong/app/mall/ime/JDInputMethod;
    invoke-virtual {v1}, Lcom/jingdong/app/mall/ime/JDInputMethod;->isPopupwindowShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    invoke-virtual {v1}, Lcom/jingdong/app/mall/ime/JDInputMethod;->dismissPopupwindow()V

    .line 299
    const/4 v2, 0x1

    .line 295
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    .end local v1           #input:Lcom/jingdong/app/mall/ime/JDInputMethod;
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sput-object v3, Lcom/jingdong/common/constant/Constants;->dongSel:Lorg/json/JSONObject;

    .line 307
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    sput-object v3, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    .line 308
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    sput-object v3, Lcom/jingdong/common/constant/Constants;->liSelArray:Lorg/json/JSONArray;

    .line 309
    const-string v3, ""

    sput-object v3, Lcom/jingdong/common/constant/Constants;->nSelectDongQuanId:Ljava/lang/String;

    .line 310
    sput-object v5, Lcom/jingdong/common/constant/Constants;->nselectJingQuanIDs:Ljava/util/ArrayList;

    .line 311
    sput-object v5, Lcom/jingdong/common/constant/Constants;->nSelectLipinIDs:Ljava/util/ArrayList;

    .line 312
    sput-boolean v4, Lcom/jingdong/common/constant/Constants;->jSelected:Z

    .line 313
    sput-boolean v4, Lcom/jingdong/common/constant/Constants;->dSelected:Z

    .line 314
    sput-boolean v4, Lcom/jingdong/common/constant/Constants;->liSelected:Z

    .line 317
    .end local v0           #i:I
    .end local v2           #isHideInputMethod:Z
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/jingdong/app/mall/utils/MyActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1
.end method
