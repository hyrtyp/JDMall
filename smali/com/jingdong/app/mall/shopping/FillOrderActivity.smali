.class public Lcom/jingdong/app/mall/shopping/FillOrderActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "FillOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;,
        Lcom/jingdong/app/mall/shopping/FillOrderActivity$SendMobilePassword;,
        Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;
    }
.end annotation


# static fields
.field public static final ADD_ADDR_CODE:I = 0x2

.field public static final ADD_LINPIN:I = 0x11

.field public static final ADD_YOUHUI:I = 0x10

.field public static final CALC_ORDER:I = 0xd

.field public static final EASY_BUY_ADD_TEMP:I = 0x12

.field public static final EASY_BUY_MODIFY:I = 0x16

.field public static final EASY_BUY_PAYMENT_INFO:I = 0x14

.field public static final EASY_BUY_SUBMIT:I = 0x15

.field public static final EASY_BUY_SUBMIT_ORDER:I = 0x13

.field public static final GET_AREAS:I = 0xc

.field public static final GET_BALANCE:I = 0xf

.field public static final GET_BY_SELF_INFO:I = 0x5

.field public static final GET_CITYS:I = 0xb

.field public static final GET_INVOINCE_BOOK:I = 0x9

.field public static final GET_INVOINCE_GENERAL:I = 0xa

.field public static final GET_INVOINCE_TITLE:I = 0x8

.field public static final GET_INVOINCE_TYPES:I = 0x7

.field public static final GET_LAST_ORDER_INFO:I = 0x1

.field public static final GET_PAYMMENT_TYPE:I = 0x3

.field public static final GET_PEI_SONG_INFO:I = 0x4

.field public static final GET_POST_INFO:I = 0x6

.field public static final GET_PROVINCE:I = 0x2

.field public static final INTENT_EXTRA_SELECTED_CART:Ljava/lang/String; = "selectedCartResponseInfo"

.field public static final MODIFY_ADDR_CODE:I = 0x1

.field public static final MODIFY_INVOINCE_CODE:I = 0x4

.field public static final MODIFY_PAYMENT_CODE:I = 0x3

.field public static final MODIFY_YOU_HUI_CODE:I = 0x5

.field public static final SUBMIT_ORDER:I = 0xe

.field static bUseBalance:Z

.field static bUseJdbean:Z

.field public static cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

.field static currBalance:Lcom/jingdong/common/entity/UsedBalance;

.field static currJdbean:Lcom/jingdong/common/entity/UsedJdbean;

.field public static isChangeJingOrDongQuan:Z

.field static jbBody:Lorg/json/JSONObject;

.field static jbCartStr:Lorg/json/JSONObject;

.field static jbOrderStr:Lorg/json/JSONObject;

.field static jbSourceStr:Lorg/json/JSONObject;

.field private static jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

.field public static mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

.field public static mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

.field public static mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

.field public static mNewYouhuiQuan:Lcom/jingdong/common/entity/YouHuiQuan;

.field static sInfoType:Ljava/lang/String;


# instance fields
.field final RMB:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field bundle:Landroid/os/Bundle;

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

.field private defray_passwork_layout:Landroid/widget/LinearLayout;

.field easyBuySource:Lcom/jingdong/common/entity/SourceEntity;

.field getMobiblePasswordBut:Landroid/widget/Button;

.field getMobiblePasswordText:Landroid/widget/TextView;

.field handler:Landroid/os/Handler;

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

.field private invoinceInfoList:Landroid/widget/ListView;

.field isEasyBuy:Z

.field isMS:Z

.field private isNeedPasswordListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;

.field private isNeedRemark:Z

.field isNoRegisterOrder:Z

.field isUpdatePayment:Z

.field items:[Ljava/lang/String;

.field jbDongQuan:Lorg/json/JSONObject;

.field jbJingQuan:Lorg/json/JSONObject;

.field jbLipin:Lorg/json/JSONObject;

.field jbYunFeeList:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field jdIsPutPassword:Lcom/jingdong/common/utils/JSONObjectProxy;

.field private jdSecurity:Lcom/jingdong/common/entity/VirtualPayAvailable;

.field private loadvirtualPayAvailableLinstener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;

.field private lsPin:Ljava/lang/String;

.field mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

.field private mCheckboxBalance:Landroid/widget/CheckBox;

.field private mCheckboxJdbean:Landroid/widget/CheckBox;

.field private mFinalPriceTv:Landroid/widget/TextView;

.field private mLayoutBalance:Landroid/widget/LinearLayout;

.field private mLayoutJdbean:Landroid/widget/LinearLayout;

.field mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

.field mRemark:Landroid/widget/EditText;

.field private mRemarkLayout:Landroid/widget/RelativeLayout;

.field mSubmit:Landroid/widget/Button;

.field private mSubmitLayout:Landroid/view/View;

.field private mTempName:Landroid/widget/EditText;

.field private mTextViewBalance:Landroid/widget/TextView;

.field private mTextViewJdbean:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;

.field mobilePasswordEt:Landroid/widget/EditText;

.field myAdapter:Landroid/widget/SimpleAdapter;

.field newWay:Z

.field noBook:Z

.field noRegisterSubmitBut:Landroid/widget/Button;

.field onlyBook:Z

.field private orderLoginTipsLayout:Landroid/widget/FrameLayout;

.field private payPasswordBtn:Landroid/widget/TextView;

.field private payPasswordView:Landroid/widget/TextView;

.field private pay_password_open_find_layout:Landroid/widget/LinearLayout;

.field private paymentInfoList:Landroid/widget/ListView;

.field preferentialMessage:Ljava/lang/String;

.field private priceDifferentRemindTextView:Landroid/widget/TextView;

.field private priceDifferentTips:Ljava/lang/String;

.field private receiverInfoList:Landroid/widget/ListView;

.field sOrderNo:Ljava/lang/String;

.field sPayWay:Ljava/lang/String;

.field sRemark:Ljava/lang/String;

.field sTotalMoney:Ljava/lang/String;

.field private scrollView:Landroid/widget/ScrollView;

.field private selectPayOnline:Landroid/widget/TextView;

.field sendMobileEt:Landroid/widget/EditText;

.field sendtips:Landroid/widget/TextView;

.field final settelCommonParms:Landroid/widget/LinearLayout$LayoutParams;

.field final settelValueParms:Landroid/widget/LinearLayout$LayoutParams;

.field private settleContent:Landroid/view/ViewGroup;

.field final settlePadding:I

.field submit:Z

.field timerI:I

.field update_by_addr:Z

.field update_by_invoince:Z

.field update_by_payment:Z

.field use_Balance_Layout:Landroid/widget/RelativeLayout;

.field value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field verificationPass:Z

.field private viewGap6:Landroid/view/View;

.field vsp:Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;

.field private youhuiInfoList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 292
    sput-boolean v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseBalance:Z

    .line 296
    sput-boolean v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseJdbean:Z

    .line 418
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isChangeJingOrDongQuan:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 128
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 129
    const-string v1, "FillOrderActivity"

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->TAG:Ljava/lang/String;

    .line 135
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->use_Balance_Layout:Landroid/widget/RelativeLayout;

    .line 137
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->items:[Ljava/lang/String;

    .line 262
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->selectPayOnline:Landroid/widget/TextView;

    .line 267
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mSubmitLayout:Landroid/view/View;

    .line 268
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mFinalPriceTv:Landroid/widget/TextView;

    .line 280
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->submit:Z

    .line 301
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->onlyBook:Z

    .line 302
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->noBook:Z

    .line 303
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->newWay:Z

    .line 306
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_addr:Z

    .line 308
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_payment:Z

    .line 310
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_invoince:Z

    .line 312
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isMS:Z

    .line 320
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdIsPutPassword:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 322
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isUpdatePayment:Z

    .line 324
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defray_passwork_layout:Landroid/widget/LinearLayout;

    .line 325
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defray_passwork_input_layout:Landroid/widget/LinearLayout;

    .line 326
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->pay_password_open_find_layout:Landroid/widget/LinearLayout;

    .line 329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;

    .line 330
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->inputmethodArray:Ljava/util/ArrayList;

    .line 331
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->context:Landroid/content/Context;

    .line 336
    new-instance v1, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    invoke-direct {v1}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    .line 340
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNoRegisterOrder:Z

    .line 341
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->orderLoginTipsLayout:Landroid/widget/FrameLayout;

    .line 342
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->handler:Landroid/os/Handler;

    .line 343
    iput v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->timerI:I

    .line 345
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendMobileEt:Landroid/widget/EditText;

    .line 346
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getMobiblePasswordText:Landroid/widget/TextView;

    .line 347
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getMobiblePasswordBut:Landroid/widget/Button;

    .line 348
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendtips:Landroid/widget/TextView;

    .line 349
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mobilePasswordEt:Landroid/widget/EditText;

    .line 350
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->noRegisterSubmitBut:Landroid/widget/Button;

    .line 352
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->vsp:Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;

    .line 353
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->verificationPass:Z

    .line 360
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    .line 361
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->easyBuySource:Lcom/jingdong/common/entity/SourceEntity;

    .line 364
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNeedRemark:Z

    .line 365
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mRemarkLayout:Landroid/widget/RelativeLayout;

    .line 366
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->viewGap6:Landroid/view/View;

    .line 377
    const-string v1, "\u5143"

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->RMB:Ljava/lang/String;

    .line 379
    const/high16 v1, 0x40a0

    invoke-static {v1}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    iput v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->settlePadding:I

    .line 4137
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->settelCommonParms:Landroid/widget/LinearLayout$LayoutParams;

    .line 4138
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->settelValueParms:Landroid/widget/LinearLayout$LayoutParams;

    .line 4140
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v0

    .line 4142
    .local v0, displayWidth:I
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->settelCommonParms:Landroid/widget/LinearLayout$LayoutParams;

    div-int/lit8 v2, v0, 0x5

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 4144
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->settelValueParms:Landroid/widget/LinearLayout$LayoutParams;

    div-int/lit8 v2, v0, 0xa

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 6847
    new-instance v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$1;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->loadvirtualPayAvailableLinstener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;

    .line 6875
    new-instance v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$2;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNeedPasswordListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;

    .line 7181
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    .line 128
    return-void
.end method

.method private LoadSecurityEnable()V
    .locals 2

    .prologue
    .line 586
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 587
    .local v0, setting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "virtualPayAvailable"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 588
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 589
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 590
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->loadvirtualPayAvailableLinstener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 592
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 594
    return-void
.end method

.method private ShowMsg(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3748
    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$27;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$27;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->post(Ljava/lang/Runnable;)V

    .line 3758
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 5680
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->hidePasswordEdit()V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Lcom/jingdong/common/entity/VirtualPayAvailable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdSecurity:Lcom/jingdong/common/entity/VirtualPayAvailable;

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 5694
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->hideInputKey()V

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3053
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getRemark()V

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 1158
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 6402
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->calculateOrder()V

    return-void
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 6980
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->forwardLoginPage()V

    return-void
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->invoinceInfoList:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->invoinceInfoList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lcom/jingdong/common/entity/VirtualPayAvailable;
    .locals 1
    .parameter

    .prologue
    .line 319
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdSecurity:Lcom/jingdong/common/entity/VirtualPayAvailable;

    return-object v0
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->receiverInfoList:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 5513
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->showPasswordEdit()V

    return-void
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->receiverInfoList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1564
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->gotoEdidtOrListAddress()V

    return-void
.end method

.method static synthetic access$22(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1396
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setEmptyInvoinceInfoArea()V

    return-void
.end method

.method static synthetic access$23(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->priceDifferentRemindTextView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$24(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic access$25(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$26(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 355
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->lsPin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$27(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Lorg/json/JSONObject;Ljava/util/Map;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7156
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->handle311And411(Lorg/json/JSONObject;Ljava/util/Map;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$28(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Landroid/view/View;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2371
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->initPayView(Landroid/view/View;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$29(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3135
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$30(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3747
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->ShowMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$31(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->selectPayOnline:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$32(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 396
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mLayoutBalance:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$33(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 404
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mCheckboxBalance:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$34(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 400
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTextViewBalance:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$35(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 408
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mLayoutJdbean:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$36(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mCheckboxJdbean:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$37(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTextViewJdbean:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$38(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/Boolean;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7049
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isOnlinePay(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$39(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 7067
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->doOnlinePay()V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 6425
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->submitOrder()V

    return-void
.end method

.method static synthetic access$40(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 4028
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetCoupon()V

    return-void
.end method

.method static synthetic access$41(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1143
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->clearCart()V

    return-void
.end method

.method static synthetic access$42(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1578
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->gotoEdidtCurrentAndNewAddress()V

    return-void
.end method

.method static synthetic access$43(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->settleContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$44(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4158
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->initSettleView(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$45(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mFinalPriceTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$46(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mSubmitLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$47(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->priceDifferentRemindTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$48(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->priceDifferentTips:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$49(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNeedRemark:Z

    return v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 606
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->submitEasyBuyOrder(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$50(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mRemarkLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$51(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->viewGap6:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$52(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1514
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setEmptyReceiverInfoArea()V

    return-void
.end method

.method static synthetic access$53(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1916
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setEmptyPaymentInfoArea()V

    return-void
.end method

.method static synthetic access$54(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1824
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setReceiverInfoArea()V

    return-void
.end method

.method static synthetic access$55(Lcom/jingdong/app/mall/shopping/FillOrderActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2743
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getPaymentDetatilInformation(I)V

    return-void
.end method

.method static synthetic access$56(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defray_passwork_input_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$57(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->pay_password_open_find_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$58(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->payPasswordView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$59(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->payPasswordBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3184
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getOrderInfoFromSer(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$60(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->inputmethodArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$61(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6998
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->showExplainPayPasswordDialog(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$62(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defray_passwork_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$63(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6433
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->submitOrder(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTempName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 991
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->addEasyBuyTemp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1068
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->modifyEasyBuyTemp(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private declared-synchronized addEasyBuyTemp(Ljava/lang/String;)V
    .locals 7
    .parameter "tempName"

    .prologue
    .line 992
    monitor-enter p0

    :try_start_0
    const-string v3, "easyBuyAddOrderTemp"

    .line 993
    .local v3, sInfoType:Ljava/lang/String;
    const-string v1, "easyBuyAddOrderTemp"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 996
    .local v1, functionID:Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_1
    sput-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    .line 997
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    sput-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    .line 998
    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IdInvoiceContentTypeBook"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v5, "IdInvoiceContentTypeBook"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 999
    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v5, "IsPutBookInvoice"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1004
    :goto_0
    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v5, "OrderStr"

    sget-object v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1005
    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v5, "templateName"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1012
    :goto_1
    :try_start_2
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 1013
    .local v2, hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 1014
    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 1015
    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 1017
    new-instance v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity$11;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$11;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1055
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 1056
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1057
    monitor-exit p0

    return-void

    .line 1001
    .end local v2           #hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :cond_0
    :try_start_3
    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v5, "IsPutBookInvoice"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1007
    :catch_0
    move-exception v0

    .line 1009
    .local v0, e:Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 992
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #functionID:Ljava/lang/String;
    .end local v3           #sInfoType:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private appendPromistTime(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "body"

    .prologue
    .line 7081
    if-eqz p1, :cond_1

    .line 7082
    const-string v3, "OrderStr"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 7083
    .local v1, jb:Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 7087
    const-string v3, "promiseType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 7088
    const-string v3, "promiseSendPay"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 7089
    const-string v3, "promiseDate"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 7090
    const-string v3, "promiseTimeRange"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 7092
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isVisibility()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7095
    :try_start_0
    const-string v3, "promiseType"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget v4, v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseType:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7097
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseSendPay:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7098
    .local v2, object:Lorg/json/JSONObject;
    const-string v3, "promiseSendPay"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7100
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget v3, v3, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->localType:I

    const/16 v4, 0x137

    if-ne v3, v4, :cond_0

    .line 7102
    const-string v3, "promiseDate"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget-object v4, v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseDate:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7103
    const-string v3, "promiseTimeRange"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget-object v4, v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseTimeRange:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7107
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isUploading:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7132
    .end local v1           #jb:Lorg/json/JSONObject;
    .end local v2           #object:Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 7111
    .restart local v1       #jb:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 7113
    .local v0, e:Ljava/lang/Exception;
    if-eqz v1, :cond_2

    .line 7114
    const-string v3, "promiseType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 7115
    const-string v3, "promiseSendPay"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 7116
    const-string v3, "promiseDate"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 7117
    const-string v3, "promiseTimeRange"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 7120
    :cond_2
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isUploading:Z

    goto :goto_0
.end method

.method private declared-synchronized calculateOrder()V
    .locals 5

    .prologue
    .line 6404
    monitor-enter p0

    :try_start_0
    const-string v3, "yunfeeList"

    .line 6405
    .local v3, sInfoType:Ljava/lang/String;
    const-string v2, "calcOrder"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6406
    .local v2, functionID:Ljava/lang/String;
    const/4 v0, 0x0

    .line 6409
    .local v0, body:Lorg/json/JSONObject;
    :try_start_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 6414
    :goto_0
    if-nez v0, :cond_0

    .line 6415
    :try_start_2
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->comositeBody()V

    .line 6419
    :cond_0
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->appendPromistTime(Lorg/json/JSONObject;)V

    .line 6421
    const-string v4, "yunfeeList"

    invoke-direct {p0, v2, v0, v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6423
    monitor-exit p0

    return-void

    .line 6410
    :catch_0
    move-exception v1

    .line 6412
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 6404
    .end local v0           #body:Lorg/json/JSONObject;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #functionID:Ljava/lang/String;
    .end local v3           #sInfoType:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private checkHasIdTown()V
    .locals 0

    .prologue
    .line 3725
    return-void
.end method

.method private declared-synchronized clearCart()V
    .locals 2

    .prologue
    .line 1144
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    .line 1146
    .local v0, dbCart:Lcom/jingdong/common/utils/DBHelperUtil;
    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllCart()V

    .line 1147
    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllPacksCart()V

    .line 1148
    const/4 v1, 0x1

    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->hasNewTocart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    monitor-exit p0

    return-void

    .line 1144
    .end local v0           #dbCart:Lcom/jingdong/common/utils/DBHelperUtil;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private compositeDefaultOrderStr()V
    .locals 4

    .prologue
    .line 4571
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sput-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    .line 4573
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4574
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4577
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Name"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4582
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "InvoiceTitle"

    const-string v3, "\u4e2a\u4eba"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4586
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdInvoiceType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4588
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdInvoiceHeaderType"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4590
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IsUseBalance"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 4593
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdInvoiceContentTypeBook"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4598
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdInvoiceContentsType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4604
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdPaymentType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4614
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdShipmentType"

    const/16 v3, 0x46

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4633
    :cond_0
    :goto_0
    return-void

    .line 4629
    :catch_0
    move-exception v0

    .line 4631
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized compositeEasyBuyCartStr()V
    .locals 6

    .prologue
    .line 1198
    monitor-enter p0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sput-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    .line 1199
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1200
    .local v2, temp:Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    .local v1, sku:Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "Id"

    sget-wide v4, Lcom/jingdong/common/constant/Constants;->easyBuyProdId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1203
    const-string v3, "num"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1204
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1205
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v4, "TheSkus"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1206
    const/4 v1, 0x0

    .line 1207
    const/4 v2, 0x0

    .line 1213
    :goto_0
    monitor-exit p0

    return-void

    .line 1208
    :catch_0
    move-exception v0

    .line 1210
    .local v0, e:Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1198
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #sku:Lorg/json/JSONObject;
    .end local v2           #temp:Lorg/json/JSONArray;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private compositeOrderStr()V
    .locals 6

    .prologue
    .line 4779
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sput-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    .line 4781
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4782
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4783
    const-string v2, "Name"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4784
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "Name"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4786
    :cond_0
    const-string v2, "Mobile"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4787
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "Mobile"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4790
    :cond_1
    const-string v2, "Phone"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4791
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "Phone"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4794
    :cond_2
    const-string v2, "Zip"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4795
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "Zip"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4798
    :cond_3
    const-string v2, "IdProvince"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4799
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdProvince"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdProvince"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4802
    :cond_4
    const-string v2, "IdCity"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4803
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdCity"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdCity"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4806
    :cond_5
    const-string v2, "IdArea"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4807
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdArea"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdArea"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4810
    :cond_6
    const-string v2, "IdTown"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4811
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdTown"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdTown"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4814
    :cond_7
    const-string v2, "Where"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4815
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "Where"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Where"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4818
    :cond_8
    const-string v2, "Email"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4819
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "Email"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Email"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4822
    :cond_9
    const-string v2, "UserLevel"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4823
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "UserLevel"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "UserLevel"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4826
    :cond_a
    const-string v2, "CompanyName"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4827
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "CompanyName"

    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v5, "CompanyName"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4829
    :cond_b
    const-string v2, "InvoiceTitle"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4830
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "InvoiceTitle"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "InvoiceTitle"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4832
    :cond_c
    const-string v2, "IdInvoiceType"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4833
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdInvoiceType"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdInvoiceType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4835
    :cond_d
    const-string v2, "IdInvoiceHeaderType"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4836
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdInvoiceHeaderType"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdInvoiceHeaderType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4839
    :cond_e
    const-string v2, "IdInvoiceContentTypeBook"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4840
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdInvoiceContentTypeBook"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdInvoiceContentTypeBook"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4843
    :cond_f
    const-string v2, "IdCompanyBranch"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4844
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdCompanyBranch"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdCompanyBranch"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4847
    :cond_10
    const-string v2, "IdInvoiceContentsType"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4848
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdInvoiceContentsType"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdInvoiceContentsType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4850
    :cond_11
    const-string v2, "IsPutBookInvoice"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v3, "IsPutBookInvoice"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 4851
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v3, "IsPutBookInvoice"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 4852
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdInvoiceContentTypeBook"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4853
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IsPutBookInvoice"

    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v5, "IsPutBookInvoice"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4865
    :goto_0
    const-string v2, "IdPaymentType"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 4866
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdPaymentType"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4869
    :cond_12
    const-string v2, "PaymentWay"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4870
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "PaymentWay"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "PaymentWay"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4873
    :cond_13
    const-string v2, "IdShipmentType"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 4874
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdShipmentType"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdShipmentType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4876
    :cond_14
    const-string v2, "CODTime"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 4877
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "CODTime"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "CODTime"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4879
    :cond_15
    const-string v2, "CodDate"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4880
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "CodDate"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "CodDate"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4882
    :cond_16
    const-string v2, "ShipTime"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 4883
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "ShipTime"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "ShipTime"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4885
    :cond_17
    const-string v2, "ShipTime"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 4886
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "ShipTime"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "ShipTime"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4888
    :cond_18
    const-string v2, "IdPickSite"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4889
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdPickSite"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdPickSite"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4891
    :cond_19
    const-string v2, "IsCodInform"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 4892
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IsCodInform"

    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v5, "IsCodInform"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4896
    :goto_1
    const-string v2, "IsUseBalance"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 4897
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IsUseBalance"

    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v5, "IsUseBalance"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4902
    :goto_2
    const-string v2, "PromotionPrice"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4903
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "PromotionPrice"

    sget-wide v4, Lcom/jingdong/common/entity/LastOrderInfo;->dPromotionPrice:D

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4906
    :cond_1a
    const-string v2, "Price"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 4907
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "Price"

    sget-wide v4, Lcom/jingdong/common/entity/LastOrderInfo;->dPrice:D

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4910
    :cond_1b
    const-string v2, "IsUseJdBean"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4911
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v3, "IsUseJdBean"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseJdbean:Z

    .line 4912
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "isUseJdBean"

    sget-boolean v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseJdbean:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 4915
    :cond_1c
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v3, "usedJdBeanMap"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 4916
    new-instance v2, Lcom/jingdong/common/entity/UsedJdbean;

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/jingdong/common/entity/UsedJdbean;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    sput-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->currJdbean:Lcom/jingdong/common/entity/UsedJdbean;

    .line 4918
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "canUseJdBeanCount"

    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->currJdbean:Lcom/jingdong/common/entity/UsedJdbean;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UsedJdbean;->getCanUseJdBeanCount()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4919
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "totalJdBeanCount"

    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->currJdbean:Lcom/jingdong/common/entity/UsedJdbean;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UsedJdbean;->getTotalJdBeanCount()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5060
    :cond_1d
    :goto_3
    return-void

    .line 4855
    :cond_1e
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IsPutBookInvoice"

    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v5, "IsPutBookInvoice"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5056
    :catch_0
    move-exception v0

    .line 5058
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 4861
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1f
    :try_start_1
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdInvoiceContentTypeBook"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 4894
    :cond_20
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IsCodInform"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 4900
    :cond_21
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IsUseBalance"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 4923
    :cond_22
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "pin"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->lsPin:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4924
    const-string v2, "Name"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 4925
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "Name"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4927
    :cond_23
    const-string v2, "Mobile"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 4928
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "Mobile"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4931
    :cond_24
    const-string v2, "Phone"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 4932
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "Phone"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4935
    :cond_25
    const-string v2, "Zip"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 4936
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "Zip"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4939
    :cond_26
    const-string v2, "IdProvince"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 4940
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdProvince"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdProvince"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4943
    :cond_27
    const-string v2, "IdCity"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 4944
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdCity"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdCity"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4947
    :cond_28
    const-string v2, "IdArea"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 4948
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdArea"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdArea"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4951
    :cond_29
    const-string v2, "Where"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 4952
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "Where"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Where"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4955
    :cond_2a
    const-string v2, "Email"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 4956
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "Email"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Email"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4959
    :cond_2b
    const-string v2, "UserLevel"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 4960
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "UserLevel"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "UserLevel"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4963
    :cond_2c
    const-string v2, "CompanyName"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 4964
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "CompanyName"

    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v5, "CompanyName"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4966
    :cond_2d
    const-string v2, "InvoiceTitle"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 4967
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "InvoiceTitle"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "InvoiceTitle"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4969
    :cond_2e
    const-string v2, "IdInvoiceType"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 4970
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdInvoiceType"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdInvoiceType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4972
    :cond_2f
    const-string v2, "IdInvoiceHeaderType"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 4973
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdInvoiceHeaderType"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdInvoiceHeaderType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4976
    :cond_30
    const-string v2, "IdInvoiceContentTypeBook"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 4977
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdInvoiceContentTypeBook"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdInvoiceContentTypeBook"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4980
    :cond_31
    const-string v2, "IdCompanyBranch"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 4981
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdCompanyBranch"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdCompanyBranch"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4984
    :cond_32
    const-string v2, "IdInvoiceContentsType"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 4985
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdInvoiceContentsType"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdInvoiceContentsType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4987
    :cond_33
    const-string v2, "IsPutBookInvoice"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_3e

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v3, "IsPutBookInvoice"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 4988
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v3, "IsPutBookInvoice"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 4989
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdInvoiceContentTypeBook"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4990
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IsPutBookInvoice"

    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v5, "IsPutBookInvoice"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5002
    :goto_4
    const-string v2, "IdPaymentType"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 5003
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdPaymentType"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5006
    :cond_34
    const-string v2, "PaymentWay"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 5007
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "PaymentWay"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "PaymentWay"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5010
    :cond_35
    const-string v2, "IdShipmentType"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 5011
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdShipmentType"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdShipmentType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5014
    :cond_36
    const-string v2, "CODTime"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 5015
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v3, "SupCodTime"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    .line 5016
    .local v1, supcodTime:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v1, :cond_3f

    .line 5017
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "CODTime"

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    const-string v5, "Id"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5023
    .end local v1           #supcodTime:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_37
    :goto_5
    const-string v2, "CodDate"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 5024
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "CodDate"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "CodDate"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5026
    :cond_38
    const-string v2, "ShipTime"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 5027
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "ShipTime"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "ShipTime"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5029
    :cond_39
    const-string v2, "ShipTime"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 5030
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "ShipTime"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "ShipTime"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5032
    :cond_3a
    const-string v2, "IdPickSite"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 5033
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdPickSite"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "IdPickSite"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5035
    :cond_3b
    const-string v2, "IsCodInform"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 5036
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IsCodInform"

    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v5, "IsCodInform"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5040
    :goto_6
    const-string v2, "IsUseBalance"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 5041
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IsUseBalance"

    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v5, "IsUseBalance"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5046
    :goto_7
    const-string v2, "PromotionPrice"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 5047
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "PromotionPrice"

    sget-wide v4, Lcom/jingdong/common/entity/LastOrderInfo;->dPromotionPrice:D

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 5050
    :cond_3c
    const-string v2, "Price"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 5051
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "Price"

    sget-wide v4, Lcom/jingdong/common/entity/LastOrderInfo;->dPrice:D

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 4992
    :cond_3d
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IsPutBookInvoice"

    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v5, "IsPutBookInvoice"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 4998
    :cond_3e
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdInvoiceContentTypeBook"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 5019
    .restart local v1       #supcodTime:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_3f
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "CODTime"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "CODTime"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_5

    .line 5038
    .end local v1           #supcodTime:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_40
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IsCodInform"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_6

    .line 5044
    :cond_41
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IsUseBalance"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7
.end method

.method private compositeOrderStr(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 4
    .parameter "jbContainer"

    .prologue
    .line 4639
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sput-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    .line 4641
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 4642
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4643
    const-string v1, "Name"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4644
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Name"

    const-string v3, "Name"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4646
    :cond_0
    const-string v1, "Mobile"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4647
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Mobile"

    const-string v3, "Mobile"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4650
    :cond_1
    const-string v1, "Phone"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4651
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Phone"

    const-string v3, "Phone"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4654
    :cond_2
    const-string v1, "Zip"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4655
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Zip"

    const-string v3, "Zip"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4658
    :cond_3
    const-string v1, "IdProvince"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4659
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdProvince"

    const-string v3, "IdProvince"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4662
    :cond_4
    const-string v1, "IdCity"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4663
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdCity"

    const-string v3, "IdCity"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4666
    :cond_5
    const-string v1, "IdArea"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4667
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdArea"

    const-string v3, "IdArea"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4670
    :cond_6
    const-string v1, "Where"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4671
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Where"

    const-string v3, "Where"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4674
    :cond_7
    const-string v1, "Email"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4675
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Email"

    const-string v3, "Email"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4678
    :cond_8
    const-string v1, "UserLevel"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4679
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "UserLevel"

    const-string v3, "UserLevel"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4682
    :cond_9
    const-string v1, "CompanyName"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4683
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "CompanyName"

    const-string v3, "CompanyName"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4685
    :cond_a
    const-string v1, "InvoiceTitle"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4686
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "InvoiceTitle"

    const-string v3, "InvoiceTitle"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4688
    :cond_b
    const-string v1, "IdInvoiceType"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4689
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdInvoiceType"

    const-string v3, "IdInvoiceType"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4691
    :cond_c
    const-string v1, "IdInvoiceHeaderType"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4692
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdInvoiceHeaderType"

    const-string v3, "IdInvoiceHeaderType"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4695
    :cond_d
    const-string v1, "IdInvoiceContentTypeBook"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4696
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdInvoiceContentTypeBook"

    const-string v3, "IdInvoiceContentTypeBook"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4699
    :cond_e
    const-string v1, "IdCompanyBranch"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4700
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdCompanyBranch"

    const-string v3, "IdCompanyBranch"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4703
    :cond_f
    const-string v1, "IdInvoiceContentsType"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4704
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdInvoiceContentsType"

    const-string v3, "IdInvoiceContentsType"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4706
    :cond_10
    const-string v1, "IsPutBookInvoice"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "IsPutBookInvoice"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 4707
    const-string v1, "IsPutBookInvoice"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 4708
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdInvoiceContentTypeBook"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4709
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IsPutBookInvoice"

    const-string v3, "IsPutBookInvoice"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4721
    :goto_0
    const-string v1, "IdPaymentType"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4722
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdPaymentType"

    const-string v3, "IdPaymentType"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4725
    :cond_11
    const-string v1, "PaymentWay"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4726
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "PaymentWay"

    const-string v3, "PaymentWay"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4728
    :cond_12
    const-string v1, "IdShipmentType"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4729
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdShipmentType"

    const-string v3, "IdShipmentType"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4731
    :cond_13
    const-string v1, "CODTime"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 4732
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "CODTime"

    const-string v3, "CODTime"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4734
    :cond_14
    const-string v1, "CodDate"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4735
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "CodDate"

    const-string v3, "CodDate"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4737
    :cond_15
    const-string v1, "ShipTime"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4738
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "ShipTime"

    const-string v3, "ShipTime"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4740
    :cond_16
    const-string v1, "ShipTime"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 4741
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "ShipTime"

    const-string v3, "ShipTime"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4743
    :cond_17
    const-string v1, "IdPickSite"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4744
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdPickSite"

    const-string v3, "IdPickSite"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4747
    :cond_18
    const-string v1, "IsCodInform"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4748
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IsCodInform"

    const-string v3, "IsCodInform"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4752
    :goto_1
    const-string v1, "PromotionPrice"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4753
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "PromotionPrice"

    const-string v3, "PromotionPrice"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4756
    :cond_19
    const-string v1, "Price"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 4757
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Price"

    const-string v3, "Price"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4759
    :cond_1a
    const-string v1, "IsUseBalance"

    invoke-direct {p0, v1, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4760
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IsUseBalance"

    const-string v3, "IsUseBalance"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4773
    :cond_1b
    :goto_2
    return-void

    .line 4711
    :cond_1c
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IsPutBookInvoice"

    const-string v3, "IsPutBookInvoice"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4769
    :catch_0
    move-exception v0

    .line 4771
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 4717
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1d
    :try_start_1
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdInvoiceContentTypeBook"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 4750
    :cond_1e
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IsCodInform"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 4763
    :cond_1f
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IsUseBalance"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private createOrderInfoDetail(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V
    .locals 3
    .parameter "httpResponse"
    .parameter "type"

    .prologue
    .line 4311
    :try_start_0
    new-instance v2, Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    sput-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4318
    :goto_0
    return-void

    .line 4315
    :catch_0
    move-exception v0

    .line 4316
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private doOnlinePay()V
    .locals 1

    .prologue
    .line 7072
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sOrderNo:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jingdong/common/utils/pay/PayUtils;->doPay(Landroid/app/Activity;Ljava/lang/String;)V

    .line 7073
    return-void
.end method

.method private fininshAddEasyTemp()V
    .locals 1

    .prologue
    .line 3728
    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$26;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$26;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->post(Ljava/lang/Runnable;)V

    .line 3745
    return-void
.end method

.method private forwardLoginPage()V
    .locals 1

    .prologue
    .line 6981
    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$39;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$39;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->post(Ljava/lang/Runnable;)V

    .line 6993
    return-void
.end method

.method private generatorSettleItem(Landroid/widget/LinearLayout$LayoutParams;Ljava/lang/String;I)Landroid/view/View;
    .locals 4
    .parameter "layoutParams"
    .parameter "lable"
    .parameter "gravity"

    .prologue
    .line 4193
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 4195
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4196
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4197
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4198
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 4199
    const v3, -0xbbbbbc

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4201
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 4202
    .local v1, paint:Landroid/text/TextPaint;
    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 4204
    .local v0, len:F
    iget v3, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 4205
    float-to-int v3, v0

    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 4208
    :cond_0
    return-object v2
.end method

.method private getArea(I)V
    .locals 4
    .parameter "city_code"

    .prologue
    .line 6237
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6239
    .local v0, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "pin"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->lsPin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6240
    const-string v1, "action"

    const-string v2, "GetAreas"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6242
    const-string v1, "IdCity"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6244
    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v1, :cond_1

    .line 6245
    :cond_0
    const-string v1, "easyBuyOrderAddress"

    const-string v2, "GetAreas"

    invoke-direct {p0, v1, v0, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 6265
    :goto_0
    return-void

    .line 6249
    :cond_1
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v2, "TheSkus"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v2, "TheSkus"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6250
    const-string v1, "TheSkus"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v3, "TheSkus"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6252
    :cond_2
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v2, "ThePacks"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v2, "ThePacks"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6253
    const-string v1, "ThePacks"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v3, "ThePacks"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6255
    :cond_3
    const-string v1, "orderAddress"

    const-string v2, "GetAreas"

    invoke-direct {p0, v1, v0, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6258
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getBalance()V
    .locals 4

    .prologue
    .line 6745
    const-string v1, "usedBalance"

    .line 6749
    .local v1, functionID:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6754
    :goto_0
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v3, "usedBalanceMap"

    invoke-direct {p0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 6755
    return-void

    .line 6750
    :catch_0
    move-exception v0

    .line 6752
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getCartItemInfo()V
    .locals 8

    .prologue
    .line 1222
    iget-boolean v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-eqz v5, :cond_1

    .line 1223
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1224
    .local v2, sku:Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1225
    .local v4, tempSource:Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1226
    .local v3, temp:Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1228
    .local v1, jsonArrayTheSkusSource:Lorg/json/JSONArray;
    :try_start_0
    const-string v5, "Id"

    sget-wide v6, Lcom/jingdong/common/constant/Constants;->easyBuyProdId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1229
    const-string v5, "num"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1230
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1232
    const-string v5, "Id"

    sget-wide v6, Lcom/jingdong/common/constant/Constants;->easyBuyProdId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1233
    const-string v5, "source_type"

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->easyBuySource:Lcom/jingdong/common/entity/SourceEntity;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/SourceEntity;->getSourceType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1234
    const-string v5, "source_value"

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->easyBuySource:Lcom/jingdong/common/entity/SourceEntity;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/SourceEntity;->getSourceValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1235
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1237
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    sput-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    .line 1238
    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v6, "TheSkus"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1239
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    sput-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbSourceStr:Lorg/json/JSONObject;

    .line 1240
    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbSourceStr:Lorg/json/JSONObject;

    const-string v6, "TheSkus"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1388
    .end local v1           #jsonArrayTheSkusSource:Lorg/json/JSONArray;
    .end local v2           #sku:Lorg/json/JSONObject;
    .end local v3           #temp:Lorg/json/JSONArray;
    .end local v4           #tempSource:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 1241
    .restart local v1       #jsonArrayTheSkusSource:Lorg/json/JSONArray;
    .restart local v2       #sku:Lorg/json/JSONObject;
    .restart local v3       #temp:Lorg/json/JSONArray;
    .restart local v4       #tempSource:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1242
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1245
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #jsonArrayTheSkusSource:Lorg/json/JSONArray;
    .end local v2           #sku:Lorg/json/JSONObject;
    .end local v3           #temp:Lorg/json/JSONArray;
    .end local v4           #tempSource:Lorg/json/JSONObject;
    :cond_1
    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    if-eqz v5, :cond_0

    .line 1246
    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->toCheckedCartStr()Lorg/json/JSONObject;

    move-result-object v5

    sput-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    .line 1247
    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->toCheckedStatisticsStr()Lorg/json/JSONObject;

    move-result-object v5

    sput-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbSourceStr:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private getCity(I)V
    .locals 4
    .parameter "province_code"

    .prologue
    .line 6201
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6203
    .local v0, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "pin"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->lsPin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6204
    const-string v1, "action"

    const-string v2, "GetCitys"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6206
    const-string v1, "IdProvince"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6208
    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v1, :cond_1

    .line 6209
    :cond_0
    const-string v1, "easyBuyOrderAddress"

    const-string v2, "GetCitys"

    invoke-direct {p0, v1, v0, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 6229
    :goto_0
    return-void

    .line 6213
    :cond_1
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v2, "TheSkus"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v2, "TheSkus"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6214
    const-string v1, "TheSkus"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v3, "TheSkus"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6216
    :cond_2
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v2, "ThePacks"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v2, "ThePacks"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6217
    const-string v1, "ThePacks"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v3, "ThePacks"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6219
    :cond_3
    const-string v1, "orderAddress"

    const-string v2, "GetCitys"

    invoke-direct {p0, v1, v0, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6222
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getEasyBuyInfo()V
    .locals 6

    .prologue
    .line 572
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 574
    .local v1, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "pin"

    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getLoginUserInfo()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "pin"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :goto_0
    const-string v2, "lastOderInfo"

    .line 580
    .local v2, sInfoType:Ljava/lang/String;
    const-string v3, "easyBuyGetDefaultTemp"

    const-string v4, "lastOderInfo"

    invoke-direct {p0, v3, v1, v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 582
    return-void

    .line 575
    .end local v2           #sInfoType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 576
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getInvoiceContentsBook()V
    .locals 6

    .prologue
    .line 2855
    const/4 v1, 0x0

    .line 2856
    .local v1, functionID:Ljava/lang/String;
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-eqz v3, :cond_2

    .line 2857
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sput-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    .line 2859
    :try_start_0
    const-string v1, "invoiceContentsBook"

    .line 2860
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v4, "OrderStr"

    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2868
    :goto_0
    const-string v2, "invoiceContentsBook"

    .line 2869
    .local v2, sInfoType:Ljava/lang/String;
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    .line 2870
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;

    .line 2872
    :cond_1
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v4, "invoiceContentsBook"

    invoke-direct {p0, v1, v3, v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2873
    return-void

    .line 2861
    .end local v2           #sInfoType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2863
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 2866
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    const-string v1, "invoiceContentsBook"

    goto :goto_0
.end method

.method private getInvoiceContentsGeneral()V
    .locals 6

    .prologue
    .line 2877
    const/4 v1, 0x0

    .line 2878
    .local v1, functionID:Ljava/lang/String;
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-eqz v3, :cond_2

    .line 2879
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sput-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    .line 2881
    :try_start_0
    const-string v1, "easyBuyInvoiceContentsGeneral"

    .line 2882
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v4, "OrderStr"

    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2890
    :goto_0
    const-string v2, "invoiceContentsGeneral"

    .line 2892
    .local v2, sInfoType:Ljava/lang/String;
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    .line 2893
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;

    .line 2895
    :cond_1
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v4, "invoiceContentsGeneral"

    invoke-direct {p0, v1, v3, v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2896
    return-void

    .line 2883
    .end local v2           #sInfoType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2885
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 2888
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    const-string v1, "invoiceContentsGeneral"

    goto :goto_0
.end method

.method private getInvoiceHeaderTypes()V
    .locals 6

    .prologue
    .line 2833
    const/4 v1, 0x0

    .line 2834
    .local v1, functionID:Ljava/lang/String;
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-eqz v3, :cond_2

    .line 2835
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sput-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    .line 2837
    :try_start_0
    const-string v1, "easyBuyInvoiceHeaderTypes"

    .line 2838
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v4, "OrderStr"

    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2846
    :goto_0
    const-string v2, "invoiceHeaderTypeInfo"

    .line 2848
    .local v2, sInfoType:Ljava/lang/String;
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    .line 2849
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;

    .line 2851
    :cond_1
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v4, "invoiceHeaderTypeInfo"

    invoke-direct {p0, v1, v3, v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2852
    return-void

    .line 2839
    .end local v2           #sInfoType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2841
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 2844
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    const-string v1, "invoiceHeaderTypes"

    goto :goto_0
.end method

.method private declared-synchronized getInvoiceTypes()V
    .locals 6

    .prologue
    .line 2810
    monitor-enter p0

    const/4 v1, 0x0

    .line 2811
    .local v1, functionID:Ljava/lang/String;
    :try_start_0
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-eqz v3, :cond_2

    .line 2812
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sput-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2814
    :try_start_1
    const-string v1, "easyBuyInvoiceTypes"

    .line 2815
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v4, "OrderStr"

    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2824
    :goto_0
    :try_start_2
    const-string v2, "invoiceTypesInfo"

    .line 2826
    .local v2, sInfoType:Ljava/lang/String;
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    .line 2827
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;

    .line 2829
    :cond_1
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v4, "invoiceTypesInfo"

    invoke-direct {p0, v1, v3, v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2830
    monitor-exit p0

    return-void

    .line 2816
    .end local v2           #sInfoType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2818
    .local v0, e:Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2810
    .end local v0           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2821
    :cond_2
    :try_start_4
    const-string v1, "invoiceTypes"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private getLarstOrderInfo()V
    .locals 5

    .prologue
    .line 3032
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3034
    .local v1, params:Lorg/json/JSONObject;
    :try_start_0
    iget-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNoRegisterOrder:Z

    if-eqz v3, :cond_1

    .line 3035
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3036
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->finish()V

    .line 3051
    :goto_0
    return-void

    .line 3040
    :cond_0
    const-string v3, "pin"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->lsPin:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3041
    const-string v3, "CartStr"

    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3042
    const-string v3, "SupportJdBean"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3049
    :cond_1
    :goto_1
    const-string v2, "lastOderInfo"

    .line 3050
    .local v2, sInfoType:Ljava/lang/String;
    const-string v3, "lastOrder"

    const-string v4, "lastOderInfo"

    invoke-direct {p0, v3, v1, v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 3045
    .end local v2           #sInfoType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3047
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private getOrderInfoFromSer(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V
    .locals 28
    .parameter "httpResponse"
    .parameter "type"

    .prologue
    .line 3188
    const/16 v19, 0x0

    .line 3190
    .local v19, responseCode:I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v24

    const-string v25, "code"

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/utils/JSONObjectProxy;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 3194
    :goto_0
    const/16 v24, 0x3

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 3195
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->forwardLoginPage()V

    .line 3691
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 3191
    :catch_0
    move-exception v6

    .line 3192
    .local v6, e2:Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 3202
    .end local v6           #e2:Lorg/json/JSONException;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getType(Ljava/lang/String;)I

    move-result v24

    if-lez v24, :cond_0

    .line 3203
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getType(Ljava/lang/String;)I

    move-result v24

    packed-switch v24, :pswitch_data_0

    :pswitch_1
    goto :goto_1

    .line 3208
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    move/from16 v24, v0

    if-nez v24, :cond_2

    .line 3209
    invoke-direct/range {p0 .. p2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->createOrderInfoDetail(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V

    .line 3211
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->initPromiseTime()V

    .line 3225
    :goto_2
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->initLastOrderInfo(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 3227
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->checkHasIdTown()V

    .line 3229
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getProvices()V

    goto :goto_1

    .line 3214
    :cond_2
    new-instance v24, Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v25

    const-string v26, "orderTemplate"

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v25

    const-string v26, "Orders"

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v25

    const-string v26, "Info"

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    sput-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 3216
    :try_start_1
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v25, "templateName"

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v26

    const-string v27, "orderTemplate"

    invoke-virtual/range {v26 .. v27}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v26

    const-string v27, "Orders"

    invoke-virtual/range {v26 .. v27}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v26

    const-string v27, "Name"

    invoke-virtual/range {v26 .. v27}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 3217
    :catch_1
    move-exception v4

    .line 3218
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 3244
    .end local v4           #e:Lorg/json/JSONException;
    :pswitch_3
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v24

    const-string v25, "provinceInfo"

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v14

    .line 3245
    .local v14, jbProvinces:Lorg/json/JSONObject;
    sget-object v24, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 3246
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNoRegisterOrder:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    .line 3247
    const-string v24, "Areas"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "Id"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 3248
    .local v18, proid:I
    sget-object v24, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "IdProvince"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3251
    .end local v18           #proid:I
    :cond_3
    sget-object v24, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "IdProvince"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getCity(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 3254
    .end local v14           #jbProvinces:Lorg/json/JSONObject;
    :catch_2
    move-exception v5

    .line 3256
    .local v5, e1:Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 3262
    .end local v5           #e1:Lorg/json/JSONException;
    :pswitch_4
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v24

    const-string v25, "provinceInfo"

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v13

    .line 3264
    .local v13, jbCitys:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNoRegisterOrder:Z

    move/from16 v24, v0

    if-nez v24, :cond_4

    .line 3265
    const-string v24, "Areas"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "Id"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 3266
    .local v3, cityid:I
    sget-object v24, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "IdCity"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3269
    .end local v3           #cityid:I
    :cond_4
    sget-object v24, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "IdCity"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getArea(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 3270
    .end local v13           #jbCitys:Lorg/json/JSONObject;
    :catch_3
    move-exception v5

    .line 3272
    .restart local v5       #e1:Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 3277
    .end local v5           #e1:Lorg/json/JSONException;
    :pswitch_5
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v24

    const-string v25, "provinceInfo"

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v12

    .line 3278
    .local v12, jbAreas:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNoRegisterOrder:Z

    move/from16 v24, v0

    if-nez v24, :cond_5

    .line 3279
    sget-object v24, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "IdArea"

    const-string v26, "Areas"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "Id"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3286
    .end local v12           #jbAreas:Lorg/json/JSONObject;
    :cond_5
    :goto_3
    sget-boolean v24, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-nez v24, :cond_6

    sget-boolean v24, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-nez v24, :cond_6

    sget-boolean v24, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-eqz v24, :cond_7

    .line 3287
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updatePaymentTypesByAddEasyBuy()V

    goto/16 :goto_1

    .line 3282
    :catch_4
    move-exception v5

    .line 3284
    .restart local v5       #e1:Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 3289
    .end local v5           #e1:Lorg/json/JSONException;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getPaymentTypes()V

    goto/16 :goto_1

    .line 3296
    :pswitch_6
    sget-boolean v24, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-eqz v24, :cond_9

    .line 3298
    :try_start_5
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v25

    const-string v26, "paymentInfo"

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/entity/PaymentInfo;->setPaymentTypes(Lorg/json/JSONArray;)V

    .line 3299
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setReceiverInfoArea()V

    .line 3300
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_payment:Z

    move/from16 v24, v0

    if-nez v24, :cond_8

    .line 3301
    new-instance v24, Lcom/jingdong/common/entity/PaymentInfo;

    invoke-direct/range {v24 .. v24}, Lcom/jingdong/common/entity/PaymentInfo;-><init>()V

    sput-object v24, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 3302
    sget-object v24, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v25

    const-string v26, "paymentInfo"

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v25

    const-string v26, "Id"

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/common/utils/JSONObjectProxy;->getInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    .line 3308
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->initDefalutPaymentType()V

    .line 3311
    sget-object v24, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getPaymentDetatilInformation(I)V

    .line 3312
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_invoince:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3313
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getInvoiceTypes()V

    .line 3314
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_invoince:Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1

    .line 3316
    :catch_5
    move-exception v4

    .line 3318
    .restart local v4       #e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 3304
    .end local v4           #e:Lorg/json/JSONException;
    :cond_8
    const/16 v24, 0x0

    :try_start_6
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_payment:Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    .line 3320
    :cond_9
    sget-boolean v24, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v24, :cond_a

    .line 3322
    :try_start_7
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v25

    const-string v26, "paymentInfo"

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/entity/PaymentInfo;->setPaymentTypes(Lorg/json/JSONArray;)V

    .line 3323
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setReceiverInfoArea()V

    .line 3324
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->initDefalutPaymentType()V

    .line 3325
    sget-object v24, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getPaymentDetatilInformation(I)V

    .line 3326
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getInvoiceTypes()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_1

    .line 3327
    :catch_6
    move-exception v4

    .line 3329
    .restart local v4       #e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 3332
    .end local v4           #e:Lorg/json/JSONException;
    :cond_a
    sget-boolean v24, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v24, :cond_b

    .line 3334
    :try_start_8
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v25

    const-string v26, "paymentInfo"

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/entity/PaymentInfo;->setPaymentTypes(Lorg/json/JSONArray;)V

    .line 3335
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setReceiverInfoArea()V

    .line 3336
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->initDefalutPaymentType()V

    .line 3337
    sget-object v24, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getPaymentDetatilInformation(I)V

    .line 3338
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getInvoiceTypes()V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_1

    .line 3339
    :catch_7
    move-exception v4

    .line 3341
    .restart local v4       #e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 3346
    .end local v4           #e:Lorg/json/JSONException;
    :cond_b
    :try_start_9
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v25

    const-string v26, "paymentInfo"

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/entity/PaymentInfo;->setPaymentTypes(Lorg/json/JSONArray;)V

    .line 3348
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->initDefalutPaymentType()V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_8

    .line 3354
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setPaymentInfo()V

    .line 3355
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getInvoiceTypes()V

    goto/16 :goto_1

    .line 3349
    :catch_8
    move-exception v4

    .line 3351
    .restart local v4       #e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 3361
    .end local v4           #e:Lorg/json/JSONException;
    :pswitch_7
    invoke-direct/range {p0 .. p2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->createOrderInfoDetail(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V

    .line 3362
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setPeiSongInfo(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V

    .line 3364
    sget-object v24, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    move/from16 v21, v0

    .line 3366
    .local v21, selectId:I
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updateCODTime(ILcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 3368
    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 3369
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setPaymentInfoAreaWithItem(I)V

    goto/16 :goto_1

    .line 3371
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getPostAddr()V

    goto/16 :goto_1

    .line 3375
    .end local v21           #selectId:I
    :pswitch_8
    invoke-direct/range {p0 .. p2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->createOrderInfoDetail(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V

    .line 3376
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setGetBySelfInfo(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V

    .line 3379
    :try_start_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_addr:Z

    move/from16 v24, v0

    if-nez v24, :cond_e

    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v25, "PickSites"

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v24

    sget-object v25, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const/16 v26, 0x3

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "IdPickSite"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->hasIt(Lorg/json/JSONArray;I)Z

    move-result v24

    if-nez v24, :cond_f

    .line 3380
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updatePayWayInfoSelf()V

    .line 3381
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_addr:Z
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_9

    .line 3387
    :cond_f
    :goto_6
    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setPaymentInfoAreaWithItem(I)V

    goto/16 :goto_1

    .line 3383
    :catch_9
    move-exception v5

    .line 3385
    .restart local v5       #e1:Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 3394
    .end local v5           #e1:Lorg/json/JSONException;
    :pswitch_9
    :try_start_b
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v25

    const-string v26, "postInfo"

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/entity/PaymentInfo;->setPostArray(Lorg/json/JSONArray;)V

    .line 3395
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_addr:Z

    move/from16 v24, v0

    if-eqz v24, :cond_10

    .line 3396
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updatePayWayInfoPost()V

    .line 3397
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_addr:Z
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_a

    .line 3403
    :cond_10
    :goto_7
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setPaymentInfoAreaWithItem(I)V

    .line 3404
    sget-boolean v24, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v24, :cond_0

    sget-boolean v24, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-nez v24, :cond_0

    .line 3405
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->calculateOrder()V

    goto/16 :goto_1

    .line 3399
    :catch_a
    move-exception v4

    .line 3401
    .restart local v4       #e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7

    .line 3410
    .end local v4           #e:Lorg/json/JSONException;
    :pswitch_a
    :try_start_c
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/entity/InvoiceInfo;->setInvoinceTypes(Lorg/json/JSONObject;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    .line 3415
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getInvoiceHeaderTypes()V

    goto/16 :goto_1

    .line 3411
    :catch_b
    move-exception v4

    .line 3413
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 3419
    .end local v4           #e:Ljava/lang/Exception;
    :pswitch_b
    :try_start_d
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/entity/InvoiceInfo;->setInvoinceHeaders(Lorg/json/JSONObject;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    .line 3424
    :goto_9
    sget-boolean v24, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v24, :cond_11

    sget-boolean v24, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-nez v24, :cond_11

    sget-boolean v24, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v24, :cond_12

    .line 3425
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getInvoiceContentsGeneral()V

    goto/16 :goto_1

    .line 3420
    :catch_c
    move-exception v4

    .line 3422
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 3427
    .end local v4           #e:Ljava/lang/Exception;
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getInvoiceContentsBook()V

    goto/16 :goto_1

    .line 3436
    :pswitch_c
    :try_start_e
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/entity/InvoiceInfo;->setInvoinceBooks(Lorg/json/JSONObject;)V

    .line 3437
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceBooks()Lorg/json/JSONObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "\u4e0d\u5f00\u53d1\u7968"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_13

    .line 3438
    new-instance v22, Lorg/json/JSONObject;

    invoke-direct/range {v22 .. v22}, Lorg/json/JSONObject;-><init>()V

    .line 3439
    .local v22, tem:Lorg/json/JSONObject;
    const-string v24, "Name"

    const-string v25, "\u4e0d\u5f00\u53d1\u7968"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3440
    const-string v24, "Id"

    const-string v25, "-1"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3441
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceBooks()Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "InvoiceContents"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "InvoiceContents"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    .line 3448
    .end local v22           #tem:Lorg/json/JSONObject;
    :cond_13
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getInvoiceContentsGeneral()V

    goto/16 :goto_1

    .line 3444
    :catch_d
    move-exception v4

    .line 3446
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 3453
    .end local v4           #e:Ljava/lang/Exception;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    move-object/from16 v24, v0

    if-eqz v24, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isVisibility()Z

    move-result v24

    if-eqz v24, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isUploading:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    .line 3454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isUploading:Z

    .line 3455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isManual:I

    .line 3462
    :cond_14
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v24

    const-string v25, "miaoSha"

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    .line 3463
    .local v20, resultBoolean:Ljava/lang/Boolean;
    if-eqz v20, :cond_1a

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    :goto_b
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isMS:Z

    .line 3464
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v24

    const-string v25, "message"

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->preferentialMessage:Ljava/lang/String;

    .line 3465
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v24

    const-string v25, "message2"

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3466
    .local v17, payOnlineTips:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v24

    const-string v25, "Rpmessage"

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->priceDifferentTips:Ljava/lang/String;

    .line 3467
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v24

    const-string v25, "yunfeeList"

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbYunFeeList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 3470
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v24

    const-string v25, "OrderStr"

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v16

    .line 3471
    .local v16, orderStrJson:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v16, :cond_16

    .line 3473
    const-string v24, "IsUseJdBean"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->isNull(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_15

    .line 3474
    const-string v24, "IsUseJdBean"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    sput-boolean v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseJdbean:Z

    .line 3475
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v25, "isUseJdBean"

    sget-boolean v26, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseJdbean:Z

    invoke-virtual/range {v24 .. v26}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3478
    :cond_15
    new-instance v24, Lcom/jingdong/common/entity/UsedJdbean;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/entity/UsedJdbean;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    sput-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->currJdbean:Lcom/jingdong/common/entity/UsedJdbean;

    .line 3479
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v25, "canUseJdBeanCount"

    sget-object v26, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->currJdbean:Lcom/jingdong/common/entity/UsedJdbean;

    invoke-virtual/range {v26 .. v26}, Lcom/jingdong/common/entity/UsedJdbean;->getCanUseJdBeanCount()Ljava/lang/Double;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3480
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v25, "totalJdBeanCount"

    sget-object v26, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->currJdbean:Lcom/jingdong/common/entity/UsedJdbean;

    invoke-virtual/range {v26 .. v26}, Lcom/jingdong/common/entity/UsedJdbean;->getTotalJdBeanCount()Ljava/lang/Double;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3484
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setPayOnlineTips(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    .line 3490
    .end local v16           #orderStrJson:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v17           #payOnlineTips:Ljava/lang/String;
    .end local v20           #resultBoolean:Ljava/lang/Boolean;
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->showJdbeanView()V

    .line 3492
    const/16 v24, 0x0

    sput-boolean v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isChangeJingOrDongQuan:Z

    .line 3494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbYunFeeList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setMoneyInfo(Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 3495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->preferentialMessage:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_17

    .line 3496
    new-instance v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity$23;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$23;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->post(Ljava/lang/Runnable;)V

    .line 3504
    :cond_17
    sget-object v24, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v23

    .line 3506
    .local v23, userAddrJson:Lorg/json/JSONObject;
    if-eqz v23, :cond_18

    :try_start_10
    const-string v24, "IdProvince"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_18

    const-string v24, "IdProvince"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "0"

    invoke-static/range {v24 .. v25}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_18

    .line 3507
    const-string v24, "IdProvince"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/jingdong/app/mall/utils/CommonUtil;->setProvinceIDToSharedPreferences(Ljava/lang/String;)V

    .line 3508
    const-string v24, "IdCity"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1b

    .line 3509
    const-string v24, "IdCity"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/jingdong/app/mall/utils/CommonUtil;->setCityIDToSharedPreferences(Ljava/lang/String;)V

    .line 3513
    :goto_d
    const-string v24, "IdArea"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 3514
    const-string v24, "IdArea"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/jingdong/app/mall/utils/CommonUtil;->setDistrictIdToSharedPreferences(Ljava/lang/String;)V

    .line 3518
    :goto_e
    const-string v24, "IdTown"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 3519
    const-string v24, "IdTown"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/jingdong/app/mall/utils/CommonUtil;->setTownIdToSharedPreferences(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    .line 3530
    :cond_18
    :goto_f
    sget-boolean v24, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v24, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->submit:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1e

    .line 3531
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->submit:Z

    .line 3532
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->submitEasyBuyOrder()V

    .line 3540
    :cond_19
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isUpdatePayment:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3544
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNeedInputPassword()V

    goto/16 :goto_1

    .line 3463
    .end local v23           #userAddrJson:Lorg/json/JSONObject;
    .restart local v20       #resultBoolean:Ljava/lang/Boolean;
    :cond_1a
    const/16 v24, 0x0

    goto/16 :goto_b

    .line 3486
    .end local v20           #resultBoolean:Ljava/lang/Boolean;
    :catch_e
    move-exception v4

    .line 3487
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .line 3511
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v23       #userAddrJson:Lorg/json/JSONObject;
    :cond_1b
    const/16 v24, 0x0

    :try_start_11
    invoke-static/range {v24 .. v24}, Lcom/jingdong/app/mall/utils/CommonUtil;->setCityIDToSharedPreferences(Ljava/lang/String;)V

    goto :goto_d

    .line 3524
    :catch_f
    move-exception v24

    goto :goto_f

    .line 3516
    :cond_1c
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/jingdong/app/mall/utils/CommonUtil;->setDistrictIdToSharedPreferences(Ljava/lang/String;)V

    goto :goto_e

    .line 3521
    :cond_1d
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/jingdong/app/mall/utils/CommonUtil;->setTownIdToSharedPreferences(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    goto :goto_f

    .line 3533
    :cond_1e
    sget-boolean v24, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-nez v24, :cond_19

    sget-boolean v24, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v24, :cond_19

    sget-boolean v24, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-nez v24, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->submit:Z

    move/from16 v24, v0

    if-eqz v24, :cond_19

    .line 3534
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->submitOrder()V

    .line 3535
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->submit:Z

    goto :goto_10

    .line 3548
    .end local v23           #userAddrJson:Lorg/json/JSONObject;
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->messageAfterSubmit(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    goto/16 :goto_1

    .line 3552
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isVisibility()Z

    move-result v24

    if-eqz v24, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isUploading:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1f

    .line 3553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isUploading:Z

    .line 3554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isManual:I

    .line 3562
    :cond_1f
    :try_start_12
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->messageAfterSubmit(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10

    goto/16 :goto_1

    .line 3564
    :catch_10
    move-exception v4

    .line 3566
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 3571
    .end local v4           #e:Ljava/lang/Exception;
    :pswitch_10
    :try_start_13
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/entity/InvoiceInfo;->setInvoinceGenerals(Lorg/json/JSONObject;)V

    .line 3572
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceGenerals()Lorg/json/JSONObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "InvoiceContents"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_20

    .line 3573
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->onlyBook:Z

    .line 3577
    :cond_20
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceGenerals()Lorg/json/JSONObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "InvoiceContentsBook"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_24

    .line 3578
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->noBook:Z

    .line 3579
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoinceGenerals()Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "InvoiceContents"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "InvoiceContents"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_12

    move-result-object v8

    .line 3580
    .local v8, invoiceJsonArray:Lorg/json/JSONArray;
    const/4 v10, -0x1

    .line 3583
    .local v10, invoiceTypeId:I
    :try_start_14
    sget-object v24, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "IdInvoiceContentsType"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_11
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_12

    move-result v10

    .line 3588
    :goto_11
    const/4 v11, 0x0

    .line 3590
    .local v11, isFind:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_12
    :try_start_15
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-lt v7, v0, :cond_22

    .line 3599
    :goto_13
    if-nez v11, :cond_21

    .line 3600
    sget-object v24, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "IdInvoiceContentsType"

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "Id"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3601
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v25, "IdInvoiceContentsType"

    sget-object v26, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual/range {v26 .. v26}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "IdInvoiceContentsType"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_12

    .line 3612
    .end local v7           #i:I
    .end local v8           #invoiceJsonArray:Lorg/json/JSONArray;
    .end local v10           #invoiceTypeId:I
    .end local v11           #isFind:Z
    :cond_21
    :goto_14
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setInvoinceInfoArea()V

    .line 3613
    sget-boolean v24, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v24, :cond_0

    sget-boolean v24, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-nez v24, :cond_0

    .line 3614
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getBalance()V

    goto/16 :goto_1

    .line 3584
    .restart local v8       #invoiceJsonArray:Lorg/json/JSONArray;
    .restart local v10       #invoiceTypeId:I
    :catch_11
    move-exception v4

    .line 3585
    .local v4, e:Lorg/json/JSONException;
    :try_start_16
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_12

    goto :goto_11

    .line 3606
    .end local v4           #e:Lorg/json/JSONException;
    .end local v8           #invoiceJsonArray:Lorg/json/JSONArray;
    .end local v10           #invoiceTypeId:I
    :catch_12
    move-exception v4

    .line 3608
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    .line 3591
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v7       #i:I
    .restart local v8       #invoiceJsonArray:Lorg/json/JSONArray;
    .restart local v10       #invoiceTypeId:I
    .restart local v11       #isFind:Z
    :cond_22
    :try_start_17
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 3593
    .local v9, invoiceOb:Lorg/json/JSONObject;
    const-string v24, "Id"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    if-ne v0, v10, :cond_23

    .line 3594
    const/4 v11, 0x1

    .line 3595
    goto :goto_13

    .line 3590
    :cond_23
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 3604
    .end local v7           #i:I
    .end local v8           #invoiceJsonArray:Lorg/json/JSONArray;
    .end local v9           #invoiceOb:Lorg/json/JSONObject;
    .end local v10           #invoiceTypeId:I
    .end local v11           #isFind:Z
    :cond_24
    sget-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v25

    const-string v26, "InvoiceContentsBook"

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/entity/InvoiceInfo;->setInvoinceBooks(Lorg/json/JSONObject;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_12

    goto :goto_14

    .line 3620
    :pswitch_11
    :try_start_18
    new-instance v24, Lcom/jingdong/common/entity/UsedBalance;

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v25

    const/16 v26, 0x0

    invoke-direct/range {v24 .. v26}, Lcom/jingdong/common/entity/UsedBalance;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    sput-object v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->currBalance:Lcom/jingdong/common/entity/UsedBalance;

    .line 3621
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setBalanceView()V

    .line 3622
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isUpdatePayment:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_13

    .line 3628
    :goto_15
    new-instance v24, Lcom/jingdong/app/mall/shopping/FillOrderActivity$24;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$24;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 3642
    invoke-virtual/range {v24 .. v24}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$24;->start()V

    goto/16 :goto_1

    .line 3624
    :catch_13
    move-exception v4

    .line 3626
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 3647
    .end local v4           #e:Ljava/lang/Exception;
    :pswitch_12
    :try_start_19
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v24

    const-string v25, "createTemp"

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v15

    .line 3648
    .local v15, jsonMsg:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v15, :cond_25

    const-string v24, "Flag"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_25

    const-string v24, "Flag"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_25

    .line 3649
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f07032f

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->ShowMsg(Ljava/lang/String;)V

    .line 3650
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->fininshAddEasyTemp()V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_14

    goto/16 :goto_1

    .line 3658
    .end local v15           #jsonMsg:Lcom/jingdong/common/utils/JSONObjectProxy;
    :catch_14
    move-exception v4

    .line 3660
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 3651
    .end local v4           #e:Lorg/json/JSONException;
    .restart local v15       #jsonMsg:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_25
    if-eqz v15, :cond_0

    :try_start_1a
    const-string v24, "Flag"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_0

    const-string v24, "Flag"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 3652
    const-string v24, "Message"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->isNull(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_26

    .line 3653
    const-string v24, "Message"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->ShowMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3655
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f070330

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->ShowMsg(Ljava/lang/String;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_14

    goto/16 :goto_1

    .line 3666
    .end local v15           #jsonMsg:Lcom/jingdong/common/utils/JSONObjectProxy;
    :pswitch_13
    :try_start_1b
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v24

    const-string v25, "createTemp"

    invoke-virtual/range {v24 .. v25}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v15

    .line 3667
    .restart local v15       #jsonMsg:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v15, :cond_27

    const-string v24, "Flag"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_27

    const-string v24, "Flag"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_27

    .line 3668
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f070331

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->ShowMsg(Ljava/lang/String;)V

    .line 3669
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->fininshAddEasyTemp()V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_15

    goto/16 :goto_1

    .line 3677
    .end local v15           #jsonMsg:Lcom/jingdong/common/utils/JSONObjectProxy;
    :catch_15
    move-exception v4

    .line 3679
    .restart local v4       #e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 3670
    .end local v4           #e:Lorg/json/JSONException;
    .restart local v15       #jsonMsg:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_27
    if-eqz v15, :cond_0

    :try_start_1c
    const-string v24, "Flag"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_0

    const-string v24, "Flag"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 3671
    const-string v24, "Message"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->isNull(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_28

    .line 3672
    const-string v24, "Message"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->ShowMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3674
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f070332

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->ShowMsg(Ljava/lang/String;)V
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_15

    goto/16 :goto_1

    .line 3203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_0
        :pswitch_1
        :pswitch_12
        :pswitch_e
        :pswitch_0
        :pswitch_1
        :pswitch_13
    .end packed-switch
.end method

.method private getPaymentDetatilInformation(I)V
    .locals 7
    .parameter "type"

    .prologue
    const/4 v6, 0x4

    .line 2744
    const/4 v1, 0x0

    .line 2745
    .local v1, functionID:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2747
    .local v2, sInfoType:Ljava/lang/String;
    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    if-eq p1, v6, :cond_0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    .line 2750
    :cond_0
    :try_start_0
    const-string v2, "shipmentTypesInfo"

    .line 2752
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v4, "IdPaymentType"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2753
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-eqz v3, :cond_4

    .line 2754
    :cond_1
    const-string v1, "easyBuyShipmentTypes"

    .line 2755
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v4, "OrderStr"

    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2785
    :cond_2
    :goto_0
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    invoke-direct {p0, v1, v3, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2786
    if-ne p1, v6, :cond_3

    .line 2788
    :try_start_1
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v4, "IdPaymentType"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2794
    :cond_3
    :goto_1
    return-void

    .line 2757
    :cond_4
    :try_start_2
    const-string v1, "shipmentTypes"

    .line 2758
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2761
    :catch_0
    move-exception v0

    .line 2763
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2765
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    .line 2768
    :try_start_3
    const-string v2, "pickSitesInfo"

    .line 2769
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v4, "IdPaymentType"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2770
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-eqz v3, :cond_7

    .line 2771
    :cond_6
    const-string v1, "easyBuyPickSites"

    .line 2772
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v4, "OrderStr"

    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 2779
    :catch_1
    move-exception v0

    .line 2781
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 2774
    .end local v0           #e:Lorg/json/JSONException;
    :cond_7
    :try_start_4
    const-string v1, "pickSites"

    .line 2776
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 2789
    :catch_2
    move-exception v0

    .line 2791
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private getPaymentTypes()V
    .locals 4

    .prologue
    .line 4517
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->comositeBody()V

    .line 4518
    const-string v0, "paymentInfo"

    .line 4519
    .local v0, sInfoType:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-eqz v1, :cond_0

    const-string v1, "easyBuyPaymentType"

    :goto_0
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v3, "paymentInfo"

    invoke-direct {p0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 4520
    return-void

    .line 4519
    :cond_0
    const-string v1, "paymentType"

    goto :goto_0
.end method

.method private getPostAddr()V
    .locals 6

    .prologue
    .line 2797
    const-string v2, "postInfo"

    .line 2798
    .local v2, sInfoType:Ljava/lang/String;
    const-string v1, "postAddress"

    .line 2800
    .local v1, functionID:Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v4, "IdPaymentType"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2801
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2806
    :goto_0
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v4, "postInfo"

    invoke-direct {p0, v1, v3, v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2807
    return-void

    .line 2802
    :catch_0
    move-exception v0

    .line 2804
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getProvices()V
    .locals 4

    .prologue
    .line 6166
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6168
    .local v0, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "pin"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->lsPin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6169
    const-string v1, "action"

    const-string v2, "GetProvinces"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6172
    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v1, :cond_1

    .line 6173
    :cond_0
    const-string v1, "easyBuyOrderAddress"

    const-string v2, "GetProvinces"

    invoke-direct {p0, v1, v0, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 6192
    :goto_0
    return-void

    .line 6177
    :cond_1
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v2, "TheSkus"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v2, "TheSkus"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6178
    const-string v1, "TheSkus"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v3, "TheSkus"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6180
    :cond_2
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v2, "ThePacks"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v2, "ThePacks"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6181
    const-string v1, "ThePacks"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v3, "ThePacks"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6183
    :cond_3
    const-string v1, "orderAddress"

    const-string v2, "GetProvinces"

    invoke-direct {p0, v1, v0, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6185
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getRemark()V
    .locals 4

    .prologue
    .line 3054
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mRemark:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sRemark:Ljava/lang/String;

    .line 3056
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sRemark:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sRemark:Ljava/lang/String;

    const-string v2, " "

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sRemark:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3059
    :try_start_0
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Remark"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sRemark:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3065
    :cond_0
    :goto_0
    return-void

    .line 3060
    :catch_0
    move-exception v0

    .line 3061
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getType(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 3137
    const-string v0, "lastOderInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3138
    const/4 v0, 0x1

    .line 3180
    :goto_0
    return v0

    .line 3139
    :cond_0
    const-string v0, "GetProvinces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3140
    const/4 v0, 0x2

    goto :goto_0

    .line 3141
    :cond_1
    const-string v0, "GetCitys"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 3142
    const/16 v0, 0xb

    goto :goto_0

    .line 3143
    :cond_2
    const-string v0, "GetAreas"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 3144
    const/16 v0, 0xc

    goto :goto_0

    .line 3145
    :cond_3
    const-string v0, "paymentInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 3146
    const/4 v0, 0x3

    goto :goto_0

    .line 3147
    :cond_4
    const-string v0, "shipmentTypesInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 3148
    const/4 v0, 0x4

    goto :goto_0

    .line 3149
    :cond_5
    const-string v0, "pickSitesInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 3150
    const/4 v0, 0x5

    goto :goto_0

    .line 3151
    :cond_6
    const-string v0, "postInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 3152
    const/4 v0, 0x6

    goto :goto_0

    .line 3153
    :cond_7
    const-string v0, "invoiceTypesInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 3154
    const/4 v0, 0x7

    goto :goto_0

    .line 3155
    :cond_8
    const-string v0, "invoiceHeaderTypeInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 3156
    const/16 v0, 0x8

    goto :goto_0

    .line 3157
    :cond_9
    const-string v0, "invoiceContentsBook"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 3158
    const/16 v0, 0x9

    goto :goto_0

    .line 3159
    :cond_a
    const-string v0, "invoiceContentsGeneral"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 3160
    const/16 v0, 0xa

    goto :goto_0

    .line 3161
    :cond_b
    const-string v0, "yunfeeList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 3162
    const/16 v0, 0xd

    goto :goto_0

    .line 3163
    :cond_c
    const-string v0, "submitOrder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 3164
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 3165
    :cond_d
    const-string v0, "usedBalanceMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    .line 3166
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 3167
    :cond_e
    const-string v0, "couponInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 3168
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 3169
    :cond_f
    const-string v0, "addGiftCart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    .line 3170
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 3171
    :cond_10
    const-string v0, "easyBuyAddOrderTemp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    .line 3172
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 3173
    :cond_11
    const-string v0, "easyBuyPaymentType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    .line 3174
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 3175
    :cond_12
    const-string v0, "easyBuySubmitOrder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    .line 3176
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 3177
    :cond_13
    const-string v0, "easyBuyModifyTemp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 3178
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 3180
    :cond_14
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method private gotoEdidtCurrentAndNewAddress()V
    .locals 3

    .prologue
    .line 1579
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1580
    .local v0, t:Landroid/content/Intent;
    const-string v1, "PageType"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1581
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1582
    return-void
.end method

.method private gotoEdidtOrListAddress()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1565
    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNoRegisterOrder:Z

    if-eqz v1, :cond_0

    .line 1566
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1567
    .local v0, t:Landroid/content/Intent;
    invoke-virtual {p0, v0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1573
    :goto_0
    return-void

    .line 1569
    .end local v0           #t:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1570
    .restart local v0       #t:Landroid/content/Intent;
    const-string v1, "PageType"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1571
    invoke-virtual {p0, v0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private handle311And411(Lorg/json/JSONObject;Ljava/util/Map;I)Z
    .locals 3
    .parameter "sendJSON"
    .parameter
    .parameter "codTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 7158
    .local p2, transactionInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    invoke-virtual {v1, p1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isCanSelected(Lorg/json/JSONObject;)Z

    move-result v0

    .line 7160
    .local v0, isCanSelected:Z
    :goto_0
    if-nez v0, :cond_0

    .line 7162
    invoke-static {p3, p1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->selectDefaultPromiseTime(ILorg/json/JSONObject;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    .line 7164
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7165
    const/4 v0, 0x1

    .line 7170
    :cond_0
    if-eqz v0, :cond_3

    .line 7171
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isVisibility()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7172
    const-string v1, "mCodTime"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->showText:Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7178
    :cond_1
    :goto_1
    return v0

    .line 7158
    .end local v0           #isCanSelected:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 7175
    .restart local v0       #isCanSelected:Z
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    goto :goto_1
.end method

.method private handleClickEvent()V
    .locals 4

    .prologue
    .line 705
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mSubmit:Landroid/widget/Button;

    new-instance v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 810
    iget-boolean v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNoRegisterOrder:Z

    if-nez v2, :cond_0

    .line 813
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->orderLoginTipsLayout:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity$8;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$8;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 821
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->noRegisterSubmitBut:Landroid/widget/Button;

    new-instance v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 893
    new-instance v0, Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;-><init>(Landroid/content/Context;)V

    .line 894
    .local v0, drawable:Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;
    const-string v1, "\u83b7\u53d6\u77ed\u4fe1\u5bc6\u7801"

    .line 895
    .local v1, text:Ljava/lang/String;
    const-string v2, "\u83b7\u53d6\u77ed\u4fe1\u5bc6\u7801"

    invoke-virtual {v0, v2}, Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 896
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;->setType(I)V

    .line 897
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getMobiblePasswordText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;->setTextSize(F)V

    .line 898
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getMobiblePasswordText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 899
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getMobiblePasswordBut:Landroid/widget/Button;

    new-instance v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;

    invoke-direct {v3, p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$10;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 981
    .end local v0           #drawable:Lcom/jingdong/app/mall/utils/ui/CountdownDrawable;
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private hasIt(Lorg/json/JSONArray;I)Z
    .locals 5
    .parameter "array"
    .parameter "id"

    .prologue
    .line 2010
    const/4 v2, 0x0

    .line 2011
    .local v2, tp:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 2024
    :goto_1
    return v2

    .line 2015
    :cond_0
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, p2, :cond_1

    .line 2016
    const/4 v2, 0x1

    goto :goto_1

    .line 2019
    :catch_0
    move-exception v0

    .line 2021
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2011
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private hideInputKey()V
    .locals 3

    .prologue
    .line 5695
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->inputmethodArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 5703
    return-void

    .line 5697
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->inputmethodArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/ime/JDInputMethod;

    .line 5698
    .local v1, input:Lcom/jingdong/app/mall/ime/JDInputMethod;
    invoke-virtual {v1}, Lcom/jingdong/app/mall/ime/JDInputMethod;->isPopupwindowShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5700
    invoke-virtual {v1}, Lcom/jingdong/app/mall/ime/JDInputMethod;->dismissPopupwindow()V

    .line 5695
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hidePasswordEdit()V
    .locals 1

    .prologue
    .line 5681
    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$35;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$35;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->post(Ljava/lang/Runnable;)V

    .line 5692
    return-void
.end method

.method private initComponent()V
    .locals 9

    .prologue
    const v8, 0x7f0c01e5

    const v7, 0x7f0c01ed

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 2913
    const v3, 0x7f0c01e9

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mRemarkLayout:Landroid/widget/RelativeLayout;

    .line 2914
    const v3, 0x7f0c01ec

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->viewGap6:Landroid/view/View;

    .line 2915
    const v3, 0x7f0c007e

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTitle:Landroid/widget/TextView;

    .line 2916
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-eqz v3, :cond_9

    .line 2917
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f070359

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2923
    :goto_0
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-eqz v3, :cond_1

    .line 2924
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f07035a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2927
    :cond_1
    const v3, 0x7f0c0467

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->receiverInfoList:Landroid/widget/ListView;

    .line 2928
    const v3, 0x7f0c043f

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;

    .line 2939
    const v3, 0x7f0c0226

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->selectPayOnline:Landroid/widget/TextView;

    .line 2940
    const v3, 0x7f0c01ee

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mSubmit:Landroid/widget/Button;

    .line 2942
    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->settleContent:Landroid/view/ViewGroup;

    .line 2944
    const v3, 0x7f0c01db

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2945
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_2

    instance-of v3, v2, Landroid/widget/ScrollView;

    if-eqz v3, :cond_2

    .line 2946
    check-cast v2, Landroid/widget/ScrollView;

    .end local v2           #view:Landroid/view/View;
    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->scrollView:Landroid/widget/ScrollView;

    .line 2949
    :cond_2
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v3, :cond_b

    .line 2950
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mSubmit:Landroid/widget/Button;

    const v4, 0x7f070240

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 2956
    :cond_3
    :goto_1
    const v3, 0x7f0c0218

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mLayoutBalance:Landroid/widget/LinearLayout;

    .line 2957
    invoke-virtual {p0, v8}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTextViewBalance:Landroid/widget/TextView;

    .line 2958
    const v3, 0x7f0c0219

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mCheckboxBalance:Landroid/widget/CheckBox;

    .line 2959
    const v3, 0x7f0c021a

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mLayoutJdbean:Landroid/widget/LinearLayout;

    .line 2960
    const v3, 0x7f0c021b

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTextViewJdbean:Landroid/widget/TextView;

    .line 2961
    const v3, 0x7f0c021c

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mCheckboxJdbean:Landroid/widget/CheckBox;

    .line 2963
    const v3, 0x7f0c01eb

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mRemark:Landroid/widget/EditText;

    .line 2966
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v3, :cond_c

    .line 2967
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mRemarkLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2968
    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2969
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->viewGap6:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2970
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mRemark:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2981
    :cond_4
    :goto_2
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v3, :cond_5

    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v3, :cond_6

    .line 2982
    :cond_5
    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2986
    :cond_6
    const v3, 0x7f0c0220

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defray_passwork_layout:Landroid/widget/LinearLayout;

    .line 2987
    const v3, 0x7f0c0221

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defray_passwork_input_layout:Landroid/widget/LinearLayout;

    .line 2988
    const v3, 0x7f0c0222

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->pay_password_open_find_layout:Landroid/widget/LinearLayout;

    .line 2989
    const v3, 0x7f0c0223

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->payPasswordView:Landroid/widget/TextView;

    .line 2990
    const v3, 0x7f0c0224

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->payPasswordBtn:Landroid/widget/TextView;

    .line 2994
    iget-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNoRegisterOrder:Z

    if-nez v3, :cond_7

    .line 2995
    const v3, 0x7f0c0214

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->orderLoginTipsLayout:Landroid/widget/FrameLayout;

    .line 2996
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->orderLoginTipsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2997
    invoke-virtual {p0, v8}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2998
    const v3, 0x7f0c01e4

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2999
    const v3, 0x7f0c0215

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3000
    const v3, 0x7f0c0216

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3002
    const v3, 0x7f0c0227

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3004
    .local v1, noRegisterLayout:Landroid/view/View;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mSubmit:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 3006
    const v3, 0x7f0c0228

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendMobileEt:Landroid/widget/EditText;

    .line 3007
    const v3, 0x7f0c022b

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getMobiblePasswordText:Landroid/widget/TextView;

    .line 3008
    const v3, 0x7f0c022a

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getMobiblePasswordBut:Landroid/widget/Button;

    .line 3009
    const v3, 0x7f0c022c

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendtips:Landroid/widget/TextView;

    .line 3010
    const v3, 0x7f0c022d

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mobilePasswordEt:Landroid/widget/EditText;

    .line 3011
    const v3, 0x7f0c022e

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->noRegisterSubmitBut:Landroid/widget/Button;

    .line 3012
    const v3, 0x7f0c022f

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3013
    .local v0, noRegTipsTv:Landroid/widget/TextView;
    const-string v3, "<font color=\'#ff0000\'>\u5c0f\u8d34\u58eb</font>: \u8ba2\u5355\u63d0\u4ea4\u6210\u529f\u540e\uff0c\u60a8\u7684\u624b\u673a\u53f7\u5c06\u81ea\u52a8\u6ce8\u518c\u4e3a\u4eac\u4e1c\u8d26\u53f7"

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3018
    .end local v0           #noRegTipsTv:Landroid/widget/TextView;
    .end local v1           #noRegisterLayout:Landroid/view/View;
    :cond_7
    iget-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-eqz v3, :cond_8

    .line 3023
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mLayoutBalance:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3024
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mLayoutJdbean:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3029
    :cond_8
    return-void

    .line 2918
    :cond_9
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v3, :cond_a

    .line 2919
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f070356

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 2921
    :cond_a
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f070311

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 2951
    :cond_b
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v3, :cond_3

    .line 2952
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mSubmit:Landroid/widget/Button;

    const v4, 0x7f07034c

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 2971
    :cond_c
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-nez v3, :cond_d

    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v3, :cond_e

    .line 2973
    :cond_d
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mRemarkLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2975
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->viewGap6:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2976
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mRemark:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_2

    .line 2977
    :cond_e
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-eqz v3, :cond_4

    .line 2978
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mRemarkLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2979
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->viewGap6:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private initOrderView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 540
    const v2, 0x7f0c0231

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mSubmitLayout:Landroid/view/View;

    .line 541
    const v2, 0x7f0c0232

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mFinalPriceTv:Landroid/widget/TextView;

    .line 543
    const v2, 0x7f0c021d

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 544
    .local v1, mReturnCart:Landroid/widget/TextView;
    const v2, 0x7f0c021e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 546
    .local v0, mLookProductInventory:Landroid/view/View;
    new-instance v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity$3;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$3;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    new-instance v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity$4;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$4;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    iget-boolean v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-eqz v2, :cond_0

    .line 564
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 565
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 568
    :cond_0
    return-void
.end method

.method private initPayView(Landroid/view/View;Ljava/util/Map;)V
    .locals 13
    .parameter "convertView"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v12, 0x0

    const/16 v11, 0x8

    .line 2372
    const v9, 0x7f0c045b

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2373
    .local v4, payTypeTv:Landroid/widget/TextView;
    const v9, 0x7f0c045c

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2374
    .local v3, payContentTv:Landroid/widget/TextView;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2375
    if-eqz v4, :cond_0

    .line 2376
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2378
    :cond_0
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2381
    :cond_1
    const v9, 0x7f0c0455

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2382
    .local v8, sendTimeTv:Landroid/widget/TextView;
    const v9, 0x7f0c0456

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 2384
    .local v7, sendTimeContent:Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2385
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2386
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2389
    :cond_2
    const v9, 0x7f0c0457

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2390
    .local v1, bigTv:Landroid/widget/TextView;
    const v9, 0x7f0c0458

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2391
    .local v0, bigContent:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2392
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2393
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2396
    :cond_3
    iget-boolean v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-eqz v9, :cond_4

    .line 2397
    const v9, 0x7f0c02c2

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2400
    :cond_4
    if-eqz p2, :cond_5

    .line 2401
    const-string v9, "mInforms"

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2403
    .local v2, mInfors:Ljava/lang/String;
    const v9, 0x7f0c045a

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2404
    .local v6, phoneConfirmContent:Landroid/widget/TextView;
    const v9, 0x7f0c0459

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2406
    .local v5, phoneConfirm:Landroid/widget/TextView;
    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    .line 2407
    if-eqz v2, :cond_7

    .line 2408
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 2409
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2410
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2420
    .end local v2           #mInfors:Ljava/lang/String;
    .end local v5           #phoneConfirm:Landroid/widget/TextView;
    .end local v6           #phoneConfirmContent:Landroid/widget/TextView;
    :cond_5
    :goto_0
    return-void

    .line 2412
    .restart local v2       #mInfors:Ljava/lang/String;
    .restart local v5       #phoneConfirm:Landroid/widget/TextView;
    .restart local v6       #phoneConfirmContent:Landroid/widget/TextView;
    :cond_6
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2413
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2415
    :cond_7
    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_5

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    goto :goto_0
.end method

.method private initPromiseTime()V
    .locals 0

    .prologue
    .line 7154
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

    .line 4160
    if-nez p2, :cond_0

    .line 4161
    const-string p2, ""

    .line 4164
    :cond_0
    if-nez p3, :cond_1

    .line 4165
    const-string p3, ""

    .line 4168
    :cond_1
    if-nez p4, :cond_2

    .line 4169
    const-string p4, ""

    .line 4172
    :cond_2
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4173
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4174
    iget v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->settlePadding:I

    iget v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->settlePadding:I

    iget v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->settlePadding:I

    iget v4, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->settlePadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 4176
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->settelCommonParms:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v1, p2, v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->generatorSettleItem(Landroid/widget/LinearLayout$LayoutParams;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4177
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->settelCommonParms:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v1, p3, v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->generatorSettleItem(Landroid/widget/LinearLayout$LayoutParams;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4178
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->settelValueParms:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u5143"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->generatorSettleItem(Landroid/widget/LinearLayout$LayoutParams;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4180
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4182
    return-void
.end method

.method private isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z
    .locals 1
    .parameter "field"
    .parameter "jbInfoContainer"

    .prologue
    .line 5076
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/jingdong/common/utils/JSONObjectProxy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5077
    const/4 v0, 0x1

    .line 5079
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedInputPassword()V
    .locals 3

    .prologue
    .line 5488
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isUpdatePayment:Z

    .line 5490
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 5491
    .local v1, setting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v2, "showSecurityPayBlock4Client"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 5493
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;

    move-result-object v0

    .line 5502
    .local v0, json:Lorg/json/JSONObject;
    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 5503
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 5504
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNeedPasswordListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 5505
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 5506
    return-void
.end method

.method private isOnlinePay(Ljava/lang/Boolean;)Z
    .locals 2
    .parameter "allowOnlinePay"

    .prologue
    .line 7050
    if-nez p1, :cond_0

    .line 7051
    const-string v0, "\u5728\u7ebf\u652f\u4ed8"

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sPayWay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 7053
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private messageAfterSubmit(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 3909
    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Lcom/jingdong/common/utils/JSONObjectProxy;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4023
    return-void
.end method

.method private miaoShaoMd5Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "functionId"
    .parameter "date"

    .prologue
    .line 6799
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 6801
    .local v0, sb:Landroid/text/SpannableStringBuilder;
    const-string v1, "clientVersion"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6802
    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getSoftwareVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6804
    const-string v1, "client"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6805
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6807
    const-string v1, "functionId"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6808
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6810
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6811
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6813
    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6814
    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->readDeviceUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6816
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getMiaoShaKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6817
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jingdong/common/utils/Md5Encrypt;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized modifyEasyBuyTemp(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 7
    .parameter "tempName"
    .parameter "id"

    .prologue
    .line 1069
    monitor-enter p0

    :try_start_0
    const-string v3, "easyBuyModifyTemp"

    .line 1070
    .local v3, sInfoType:Ljava/lang/String;
    const-string v1, "easyBuyModifyOrderTemp"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    .local v1, functionID:Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_1
    sput-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    .line 1074
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    sput-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    .line 1075
    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IdInvoiceContentTypeBook"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v5, "IdInvoiceContentTypeBook"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1076
    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v5, "IsPutBookInvoice"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1081
    :goto_0
    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v5, "OrderStr"

    sget-object v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1082
    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v5, "templateName"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1083
    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v5, "Id"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1090
    :goto_1
    :try_start_2
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 1091
    .local v2, hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 1092
    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 1093
    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 1095
    new-instance v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity$12;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$12;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1133
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 1134
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1135
    monitor-exit p0

    return-void

    .line 1078
    .end local v2           #hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :cond_0
    :try_start_3
    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v5, "IsPutBookInvoice"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1085
    :catch_0
    move-exception v0

    .line 1087
    .local v0, e:Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1069
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #functionID:Ljava/lang/String;
    .end local v3           #sInfoType:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private recalOrderAfterYouHui()V
    .locals 14

    .prologue
    .line 6288
    const-string v4, "yunfeeList"

    .line 6289
    .local v4, sInfoType:Ljava/lang/String;
    const-string v2, "calcOrder"

    .line 6290
    .local v2, functionID:Ljava/lang/String;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 6291
    .local v8, theCoupons:Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6292
    .local v0, TheLipinkas:Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 6293
    .local v6, temp:Lorg/json/JSONObject;
    const-string v5, ""

    .line 6296
    .local v5, tem:Ljava/lang/String;
    :try_start_0
    sget-boolean v11, Lcom/jingdong/common/constant/Constants;->jdSwitch:Z

    if-eqz v11, :cond_2

    .line 6298
    sget-object v11, Lcom/jingdong/common/constant/Constants;->dongSel:Lorg/json/JSONObject;

    if-eqz v11, :cond_1

    sget-object v11, Lcom/jingdong/common/constant/Constants;->dongSel:Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "null"

    if-eq v11, v12, :cond_1

    sget-object v11, Lcom/jingdong/common/constant/Constants;->dongSel:Lorg/json/JSONObject;

    const-string v12, "Id"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    sget-object v11, Lcom/jingdong/common/constant/Constants;->dongSel:Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    if-eq v11, v12, :cond_1

    .line 6299
    const-string v11, "Id"

    sget-object v12, Lcom/jingdong/common/constant/Constants;->dongSel:Lorg/json/JSONObject;

    const-string v13, "Id"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6300
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 6302
    sget-object v11, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v12, "TheCoupons"

    invoke-virtual {v11, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6347
    :goto_0
    sget-object v11, Lcom/jingdong/common/constant/Constants;->liSelArray:Lorg/json/JSONArray;

    if-eqz v11, :cond_a

    sget-object v11, Lcom/jingdong/common/constant/Constants;->liSelArray:Lorg/json/JSONArray;

    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "null"

    if-eq v11, v12, :cond_a

    sget-object v11, Lcom/jingdong/common/constant/Constants;->liSelArray:Lorg/json/JSONArray;

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-lez v11, :cond_a

    .line 6349
    const/4 v3, 0x0

    .local v3, n:I
    move-object v7, v6

    .end local v6           #temp:Lorg/json/JSONObject;
    .local v7, temp:Lorg/json/JSONObject;
    :goto_1
    :try_start_1
    sget-object v11, Lcom/jingdong/common/constant/Constants;->liSelArray:Lorg/json/JSONArray;

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v3, v11, :cond_8

    .line 6373
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    if-eq v11, v12, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "[]"

    if-eq v11, v12, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_9

    .line 6374
    :cond_0
    sget-object v11, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v12, "TheLipinkas"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v6, v7

    .line 6383
    .end local v3           #n:I
    .end local v7           #temp:Lorg/json/JSONObject;
    .restart local v6       #temp:Lorg/json/JSONObject;
    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 6392
    :goto_3
    sget-object v11, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    invoke-direct {p0, v11}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->appendPromistTime(Lorg/json/JSONObject;)V

    .line 6395
    sget-object v11, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v12, "yunfeeList"

    invoke-direct {p0, v2, v11, v12}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 6396
    return-void

    .line 6304
    :cond_1
    :try_start_3
    sget-object v11, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v12, "TheCoupons"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 6387
    :catch_0
    move-exception v1

    .line 6389
    .local v1, e:Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 6308
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_4
    const-string v5, ""

    .line 6309
    sget-object v11, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    if-eqz v11, :cond_7

    sget-object v11, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "null"

    if-eq v11, v12, :cond_7

    sget-object v11, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    if-eq v11, v12, :cond_7

    sget-object v11, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_7

    .line 6310
    const/4 v3, 0x0

    .restart local v3       #n:I
    :goto_5
    sget-object v11, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v3, v11, :cond_3

    .line 6333
    const-string v11, ""

    if-eq v5, v11, :cond_6

    .line 6334
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "["

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6335
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 6336
    .end local v8           #theCoupons:Lorg/json/JSONArray;
    .local v9, theCoupons:Lorg/json/JSONArray;
    :try_start_5
    sget-object v11, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v12, "TheCoupons"

    invoke-virtual {v11, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v8, v9

    .line 6338
    .end local v9           #theCoupons:Lorg/json/JSONArray;
    .restart local v8       #theCoupons:Lorg/json/JSONArray;
    goto/16 :goto_0

    .line 6312
    :cond_3
    :try_start_6
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 6313
    .local v10, tp:Lorg/json/JSONObject;
    sget-object v11, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    const-string v12, ""

    if-eq v11, v12, :cond_4

    sget-object v11, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    if-eq v11, v12, :cond_4

    sget-object v11, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_4

    sget-object v11, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "null"

    if-eq v11, v12, :cond_4

    .line 6314
    sget-object v11, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 6315
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "null"

    if-eq v11, v12, :cond_4

    const-string v11, "Id"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, ""

    if-eq v11, v12, :cond_4

    .line 6316
    const-string v11, "Id"

    const-string v12, "Id"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6317
    if-nez v3, :cond_5

    .line 6318
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6310
    .end local v10           #tp:Lorg/json/JSONObject;
    :cond_4
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 6320
    .restart local v10       #tp:Lorg/json/JSONObject;
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v5

    goto :goto_6

    .line 6327
    .end local v10           #tp:Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 6329
    .local v1, e:Lorg/json/JSONException;
    :try_start_7
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 6339
    .end local v1           #e:Lorg/json/JSONException;
    :cond_6
    sget-object v11, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v12, "TheCoupons"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 6343
    .end local v3           #n:I
    :cond_7
    sget-object v11, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v12, "TheCoupons"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 6351
    .end local v6           #temp:Lorg/json/JSONObject;
    .restart local v3       #n:I
    .restart local v7       #temp:Lorg/json/JSONObject;
    :cond_8
    :try_start_8
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 6352
    .restart local v10       #tp:Lorg/json/JSONObject;
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "null"

    if-eq v11, v12, :cond_b

    .line 6353
    sget-object v11, Lcom/jingdong/common/constant/Constants;->liSelArray:Lorg/json/JSONArray;

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    const-string v12, ""

    if-eq v11, v12, :cond_b

    sget-object v11, Lcom/jingdong/common/constant/Constants;->liSelArray:Lorg/json/JSONArray;

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    if-eq v11, v12, :cond_b

    sget-object v11, Lcom/jingdong/common/constant/Constants;->liSelArray:Lorg/json/JSONArray;

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    if-eq v11, v12, :cond_b

    sget-object v11, Lcom/jingdong/common/constant/Constants;->liSelArray:Lorg/json/JSONArray;

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 6354
    sget-object v11, Lcom/jingdong/common/constant/Constants;->liSelArray:Lorg/json/JSONArray;

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 6355
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "null"

    if-eq v11, v12, :cond_b

    .line 6356
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 6357
    .end local v7           #temp:Lorg/json/JSONObject;
    .restart local v6       #temp:Lorg/json/JSONObject;
    :try_start_9
    const-string v11, "Id"

    const-string v12, "Id"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6358
    const-string v11, "DiscountCurUsed"

    const-string v12, "DiscountCurUsed"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6359
    const-string v11, "DiscountBind"

    const-string v12, "DiscountBind"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6360
    const-string v11, "DiscountUsed"

    const-string v12, "DiscountUsed"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6361
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 6349
    .end local v10           #tp:Lorg/json/JSONObject;
    :goto_7
    add-int/lit8 v3, v3, 0x1

    move-object v7, v6

    .end local v6           #temp:Lorg/json/JSONObject;
    .restart local v7       #temp:Lorg/json/JSONObject;
    goto/16 :goto_1

    .line 6367
    :catch_2
    move-exception v1

    move-object v6, v7

    .line 6369
    .end local v7           #temp:Lorg/json/JSONObject;
    .restart local v1       #e:Lorg/json/JSONException;
    .restart local v6       #temp:Lorg/json/JSONObject;
    :goto_8
    :try_start_a
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_7

    .line 6376
    .end local v1           #e:Lorg/json/JSONException;
    .end local v6           #temp:Lorg/json/JSONObject;
    .restart local v7       #temp:Lorg/json/JSONObject;
    :cond_9
    :try_start_b
    sget-object v11, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v12, "TheLipinkas"

    invoke-virtual {v11, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    move-object v6, v7

    .line 6379
    .end local v7           #temp:Lorg/json/JSONObject;
    .restart local v6       #temp:Lorg/json/JSONObject;
    goto/16 :goto_2

    .line 6380
    .end local v3           #n:I
    :cond_a
    :try_start_c
    sget-object v11, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v12, "TheLipinkas"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_2

    .line 6387
    .end local v8           #theCoupons:Lorg/json/JSONArray;
    .restart local v3       #n:I
    .restart local v9       #theCoupons:Lorg/json/JSONArray;
    :catch_3
    move-exception v1

    move-object v8, v9

    .end local v9           #theCoupons:Lorg/json/JSONArray;
    .restart local v8       #theCoupons:Lorg/json/JSONArray;
    goto/16 :goto_4

    .end local v6           #temp:Lorg/json/JSONObject;
    .restart local v7       #temp:Lorg/json/JSONObject;
    :catch_4
    move-exception v1

    move-object v6, v7

    .end local v7           #temp:Lorg/json/JSONObject;
    .restart local v6       #temp:Lorg/json/JSONObject;
    goto/16 :goto_4

    .line 6367
    .restart local v10       #tp:Lorg/json/JSONObject;
    :catch_5
    move-exception v1

    goto :goto_8

    .end local v6           #temp:Lorg/json/JSONObject;
    .restart local v7       #temp:Lorg/json/JSONObject;
    :cond_b
    move-object v6, v7

    .end local v7           #temp:Lorg/json/JSONObject;
    .restart local v6       #temp:Lorg/json/JSONObject;
    goto :goto_7
.end method

.method private resetCoupon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 4029
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/jingdong/common/constant/Constants;->dongSel:Lorg/json/JSONObject;

    .line 4030
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    .line 4031
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/jingdong/common/constant/Constants;->liSelArray:Lorg/json/JSONArray;

    .line 4032
    const-string v0, ""

    sput-object v0, Lcom/jingdong/common/constant/Constants;->nSelectDongQuanId:Ljava/lang/String;

    .line 4033
    sput-object v2, Lcom/jingdong/common/constant/Constants;->nselectJingQuanIDs:Ljava/util/ArrayList;

    .line 4034
    sput-object v2, Lcom/jingdong/common/constant/Constants;->nSelectLipinIDs:Ljava/util/ArrayList;

    .line 4035
    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->jSelected:Z

    .line 4036
    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->dSelected:Z

    .line 4037
    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->liSelected:Z

    .line 4038
    sput-object v2, Lcom/jingdong/common/constant/Constants;->skusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 4039
    new-instance v0, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    sput-object v0, Lcom/jingdong/common/constant/Constants;->skusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 4040
    return-void
.end method

.method private declared-synchronized resetJBBody()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 1159
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    .line 1160
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sput-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    :try_start_1
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 1163
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sput-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    .line 1165
    :cond_0
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdInvoiceContentTypeBook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdInvoiceContentTypeBook"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1166
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IsPutBookInvoice"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1172
    :goto_0
    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-eqz v1, :cond_2

    .line 1173
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IsUseBalance"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1174
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v2, "isEasyBuy"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1181
    :goto_1
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v2, "OrderStr"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1182
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v2, "CartStr"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1187
    :goto_2
    :try_start_2
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1168
    :cond_1
    :try_start_3
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IsPutBookInvoice"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1183
    :catch_0
    move-exception v0

    .line 1185
    .local v0, e:Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1159
    .end local v0           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1176
    :cond_2
    :try_start_5
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "SupportJdBean"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1177
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "isChange"

    sget-boolean v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isChangeJingOrDongQuan:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1178
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v2, "SupportJdBean"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method private setBalanceView()V
    .locals 1

    .prologue
    .line 3761
    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3827
    return-void
.end method

.method private setEmptyInvoinceInfoArea()V
    .locals 1

    .prologue
    .line 1398
    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1451
    return-void
.end method

.method private setEmptyPaymentInfoArea()V
    .locals 1

    .prologue
    .line 1917
    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1963
    return-void
.end method

.method private setEmptyReceiverInfoArea()V
    .locals 1

    .prologue
    .line 1515
    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$15;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$15;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1559
    return-void
.end method

.method private setGetBySelfArea()V
    .locals 1

    .prologue
    .line 2034
    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$19;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2142
    return-void
.end method

.method private setGetBySelfInfo(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V
    .locals 4
    .parameter "jbContainer"
    .parameter "type"

    .prologue
    .line 4213
    :try_start_0
    const-string v2, "PickSites"

    invoke-virtual {p1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 4214
    .local v0, array:Lorg/json/JSONArray;
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual {v2, v0}, Lcom/jingdong/common/entity/PaymentInfo;->setPaymentDetailInfos(Lorg/json/JSONArray;)V

    .line 4215
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p1}, Lcom/jingdong/common/entity/PaymentInfo;->setPayMentType(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4220
    .end local v0           #array:Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 4216
    :catch_0
    move-exception v1

    .line 4218
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setInvoinceInfoArea()V
    .locals 1

    .prologue
    .line 1592
    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1816
    return-void
.end method

.method private setMoneyInfo(Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 1
    .parameter "jbMoney"

    .prologue
    .line 4043
    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4135
    return-void
.end method

.method private setPayAfterReceiveArea(I)V
    .locals 1
    .parameter "selectId"

    .prologue
    .line 2152
    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$20;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$20;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;I)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2369
    return-void
.end method

.method private setPayOnlineTips(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 3694
    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$25;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$25;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->post(Ljava/lang/Runnable;)V

    .line 3710
    return-void
.end method

.method private setPaymentInfo()V
    .locals 1

    .prologue
    .line 4523
    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$33;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$33;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4540
    return-void
.end method

.method private setPaymentInfoAreaWithItem(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 2726
    packed-switch p1, :pswitch_data_0

    .line 2741
    :goto_0
    return-void

    .line 2728
    :pswitch_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setGetBySelfArea()V

    goto :goto_0

    .line 2731
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setPayAfterReceiveArea(I)V

    goto :goto_0

    .line 2734
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setPayAfterReceiveArea(I)V

    goto :goto_0

    .line 2737
    :pswitch_3
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setPostArea()V

    goto :goto_0

    .line 2726
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setPeiSongInfo(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V
    .locals 9
    .parameter "jbContainer"
    .parameter "type"

    .prologue
    .line 4224
    :try_start_0
    sget-object v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual {v6, p1}, Lcom/jingdong/common/entity/PaymentInfo;->setShipments(Lorg/json/JSONObject;)V

    .line 4225
    sget-object v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v7, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v7, v7, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v6, v7, p1}, Lcom/jingdong/common/entity/PaymentInfo;->setPayMentType(ILorg/json/JSONObject;)V

    .line 4227
    const/4 v5, 0x0

    .line 4228
    .local v5, shipmentTypes:Lorg/json/JSONObject;
    const-string v6, "ShipmentTypes"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v4

    .line 4229
    .local v4, poxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v4, :cond_0

    .line 4230
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    .line 4234
    :cond_0
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    invoke-virtual {v6}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isVisibility()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    .line 4236
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    invoke-virtual {v6, v5}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->updateShowText(Lorg/json/JSONObject;)Z

    .line 4239
    :cond_1
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 4240
    sget-object v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v7, "BigItemCodDate"

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4257
    :cond_2
    :goto_0
    iget-boolean v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_addr:Z

    if-eqz v6, :cond_3

    .line 4259
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updatePayWayInfo(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 4260
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_addr:Z

    .line 4266
    .end local v4           #poxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v5           #shipmentTypes:Lorg/json/JSONObject;
    :cond_3
    :goto_1
    return-void

    .line 4244
    .restart local v4       #poxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v5       #shipmentTypes:Lorg/json/JSONObject;
    :cond_4
    if-eqz v5, :cond_2

    const-string v6, "bigItemCodDate"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4245
    const-string v6, "bigItemCodDate"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 4247
    .local v0, bigItemcodTime:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 4248
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 4249
    .local v3, object:Lorg/json/JSONObject;
    const-string v6, "Selected"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4250
    sget-object v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v7, "BigItemCodDate"

    const-string v8, "Value"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4263
    .end local v0           #bigItemcodTime:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #object:Lorg/json/JSONObject;
    .end local v4           #poxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v5           #shipmentTypes:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 4264
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 4247
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #bigItemcodTime:Lorg/json/JSONArray;
    .restart local v2       #i:I
    .restart local v3       #object:Lorg/json/JSONObject;
    .restart local v4       #poxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v5       #shipmentTypes:Lorg/json/JSONObject;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private setPostArea()V
    .locals 1

    .prologue
    .line 2479
    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$21;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2682
    return-void
.end method

.method private setReceiverInfoArea()V
    .locals 1

    .prologue
    .line 1826
    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1908
    return-void
.end method

.method private declared-synchronized setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .parameter "funcID"
    .parameter "param"
    .parameter "type"

    .prologue
    .line 3071
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isFinishing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 3128
    :goto_0
    monitor-exit p0

    return-void

    .line 3075
    :cond_0
    :try_start_1
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 3076
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 3077
    invoke-virtual {v0, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 3079
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->hasLogin()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pickSites"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3080
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUseCookies(Z)V

    .line 3085
    :goto_1
    new-instance v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity$22;

    invoke-direct {v1, p0, p3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$22;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 3125
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 3126
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3071
    .end local v0           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 3082
    .restart local v0       #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUseCookies(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private setYouhuiArea()V
    .locals 9

    .prologue
    .line 1459
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1460
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f0c0217

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 1461
    .local v4, lin:Landroid/widget/RelativeLayout;
    const v5, 0x7f030058

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0c020e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1462
    .local v3, layout:Landroid/widget/RelativeLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->youhuiInfoList:Landroid/widget/ListView;

    .line 1465
    sget-boolean v5, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v5, :cond_1

    .line 1466
    :cond_0
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->youhuiInfoList:Landroid/widget/ListView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1503
    :goto_0
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1504
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1506
    return-void

    .line 1469
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1470
    .local v1, item:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1472
    .local v2, item1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "name"

    const-string v6, " "

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->youhuiInfoList:Landroid/widget/ListView;

    new-instance v6, Lcom/jingdong/app/mall/shopping/YouHuiAdapter;

    invoke-direct {v6, p0, v1}, Lcom/jingdong/app/mall/shopping/YouHuiAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1480
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->youhuiInfoList:Landroid/widget/ListView;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1481
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->youhuiInfoList:Landroid/widget/ListView;

    new-instance v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity$14;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$14;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private showExplainPayPasswordDialog(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "isOpen"

    .prologue
    .line 7000
    if-eqz p1, :cond_0

    .line 7002
    new-instance v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity$40;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$40;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 7020
    .local v1, controller:Lcom/jingdong/app/mall/utils/ui/DialogController;
    const v2, 0x7f070362

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 7021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7022
    .local v0, builder:Ljava/lang/StringBuilder;
    const v2, 0x7f070363

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7028
    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 7029
    const v2, 0x7f070366

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setNeutralButton(Ljava/lang/CharSequence;)V

    .line 7030
    invoke-virtual {v1, p0}, Lcom/jingdong/app/mall/utils/ui/DialogController;->init(Landroid/content/Context;)V

    .line 7031
    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->show()V

    .line 7035
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #controller:Lcom/jingdong/app/mall/utils/ui/DialogController;
    :cond_0
    return-void
.end method

.method private showJdbeanView()V
    .locals 1

    .prologue
    .line 3833
    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3906
    return-void
.end method

.method private showPasswordEdit()V
    .locals 1

    .prologue
    .line 5514
    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->post(Ljava/lang/Runnable;)V

    .line 5674
    return-void
.end method

.method private submitEasyBuyOrder()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 597
    invoke-direct {p0, v0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->submitEasyBuyOrder(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method private submitEasyBuyOrder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "captchaCode"
    .parameter "captchaKey"

    .prologue
    const/4 v7, 0x1

    .line 607
    const-string v3, "easyBuySubmitOrder"

    .line 608
    .local v3, sInfoType:Ljava/lang/String;
    const-string v1, "easyBuySubmitOrder"

    .line 610
    .local v1, functionID:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;

    .line 611
    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v5, "totalPrice"

    sget-object v6, Lcom/jingdong/common/constant/Constants;->dTotalPrice:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 612
    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v5, "templateName"

    sget-object v6, Lcom/jingdong/common/entity/DefaultEasyTempOrderInfo;->sTempName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :goto_0
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 621
    .local v2, hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v2, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 622
    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 623
    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 626
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 627
    const-string v4, "resultCode"

    invoke-virtual {v2, v4, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 630
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 631
    const-string v4, "key"

    invoke-virtual {v2, v4, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 635
    :cond_1
    sget-object v4, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->usid:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 636
    const-string v4, "usid"

    sget-object v5, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->usid:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putMapParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_2
    new-instance v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity$6;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$6;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 693
    invoke-virtual {v2, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 694
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 695
    :goto_1
    return-void

    .line 613
    .end local v2           #hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :catch_0
    move-exception v0

    .line 614
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 638
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :cond_3
    const-string v4, "unionId"

    invoke-static {v4}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->unionId:Ljava/lang/String;

    .line 639
    const-string v4, "subunionId"

    invoke-static {v4}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->subunionId:Ljava/lang/String;

    .line 640
    sget-object v4, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->unionId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 641
    new-instance v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity$5;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$5;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-static {v4}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->cps(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private submitOrder()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6426
    invoke-direct {p0, v0, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->submitOrder(Ljava/lang/String;Ljava/lang/String;)V

    .line 6427
    return-void
.end method

.method private submitOrder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "captchaCode"
    .parameter "captchaKey"

    .prologue
    const/4 v9, 0x1

    .line 6434
    const-string v5, "submitOrder"

    .line 6435
    .local v5, sInfoType:Ljava/lang/String;
    const-string v2, "submitOrder"

    .line 6436
    .local v2, functionID:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-eqz v6, :cond_0

    .line 6437
    const-string v2, "easyBuySubmitOrder"

    .line 6440
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;

    .line 6443
    sget-object v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v7, "statisticsStr"

    sget-object v8, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbSourceStr:Lorg/json/JSONObject;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6445
    sget-object v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v7, "totalPrice"

    sget-object v8, Lcom/jingdong/common/constant/Constants;->dTotalPrice:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6447
    iget-boolean v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-nez v6, :cond_1

    .line 6449
    sget-object v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v7, "syntype"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6450
    sget-object v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v7, "cartuuid"

    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->readCartUUID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6453
    :cond_1
    iget-boolean v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isMS:Z

    if-eqz v6, :cond_2

    .line 6454
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMddHHmmss"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6455
    .local v4, sFormat:Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 6456
    .local v0, date:Ljava/lang/String;
    sget-object v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v7, "sign"

    invoke-direct {p0, v2, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->miaoShaoMd5Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6457
    sget-object v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v7, "timestamp"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6463
    .end local v0           #date:Ljava/lang/String;
    .end local v4           #sFormat:Ljava/text/SimpleDateFormat;
    :cond_2
    :goto_0
    iget-boolean v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-nez v6, :cond_3

    .line 6464
    sget-object v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    invoke-direct {p0, v6}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->appendPromistTime(Lorg/json/JSONObject;)V

    .line 6472
    :cond_3
    new-instance v3, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 6473
    .local v3, hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v3, v9}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 6474
    invoke-virtual {v3, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 6475
    sget-object v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    invoke-virtual {v3, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 6478
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 6479
    const-string v6, "resultCode"

    invoke-virtual {v3, v6, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6482
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 6483
    const-string v6, "key"

    invoke-virtual {v3, v6, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6487
    :cond_5
    sget-object v6, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->usid:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 6488
    const-string v6, "usid"

    sget-object v7, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->usid:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putMapParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 6502
    :cond_6
    new-instance v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity$38;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$38;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {v3, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 6545
    invoke-virtual {v3, v9}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 6546
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 6547
    :goto_1
    return-void

    .line 6459
    .end local v3           #hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :catch_0
    move-exception v1

    .line 6460
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 6490
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :cond_7
    const-string v6, "unionId"

    invoke-static {v6}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->unionId:Ljava/lang/String;

    .line 6491
    const-string v6, "subunionId"

    invoke-static {v6}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->subunionId:Ljava/lang/String;

    .line 6492
    sget-object v6, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->unionId:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 6493
    new-instance v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity$37;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$37;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-static {v6}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->cps(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private updateCODTime(ILcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 16
    .parameter "selectId"
    .parameter "jbContainer"

    .prologue
    .line 7185
    if-nez p2, :cond_1

    .line 7297
    :cond_0
    :goto_0
    return-void

    .line 7189
    :cond_1
    const-string v14, "ShipmentTypes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/jingdong/common/utils/JSONObjectProxy;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 7190
    .local v3, array:Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_0

    .line 7194
    const/4 v10, 0x0

    .line 7196
    .local v10, jdShipInfo:Lorg/json/JSONObject;
    sget-object v14, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 7198
    .local v13, payMentType:Lorg/json/JSONObject;
    if-eqz v13, :cond_8

    const-string v14, "IdShipmentType"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 7200
    .local v2, IdShipmentType:I
    :goto_1
    const/4 v8, 0x0

    .line 7202
    .local v8, isFindId:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v5, v14, :cond_9

    .line 7214
    :goto_3
    if-nez v8, :cond_2

    .line 7215
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 7216
    if-eqz v10, :cond_2

    .line 7217
    const-string v14, "Id"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 7218
    const/4 v8, 0x1

    .line 7222
    :cond_2
    if-eqz v8, :cond_4

    .line 7223
    if-eqz v13, :cond_3

    .line 7225
    :try_start_0
    const-string v14, "IdShipmentType"

    invoke-virtual {v13, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 7229
    :cond_3
    :goto_4
    sget-object v14, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    if-eqz v14, :cond_4

    .line 7231
    :try_start_1
    sget-object v14, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v15, "IdShipmentType"

    invoke-virtual {v14, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 7237
    :cond_4
    :goto_5
    if-eqz v10, :cond_0

    .line 7241
    if-eqz v13, :cond_b

    const-string v14, "CODTime"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 7243
    .local v1, CODTime:I
    :goto_6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->handle311And411(Lorg/json/JSONObject;Ljava/util/Map;I)Z

    move-result v9

    .line 7245
    .local v9, isHandled:Z
    const/4 v7, 0x0

    .line 7247
    .local v7, isFindCod:Z
    if-nez v9, :cond_6

    .line 7249
    const-string v14, "CanShipTime"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 7251
    const-string v14, "SupCodTime"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 7253
    .local v11, mSupCodTime:Lorg/json/JSONArray;
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_6

    .line 7255
    if-gtz v1, :cond_5

    .line 7256
    const/4 v1, 0x1

    .line 7259
    :cond_5
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v5, v14, :cond_c

    .line 7269
    :goto_8
    if-nez v7, :cond_6

    .line 7271
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 7272
    .local v4, codObject:Lorg/json/JSONObject;
    if-eqz v4, :cond_6

    .line 7273
    const-string v14, "Id"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 7274
    const/4 v7, 0x1

    .line 7282
    .end local v4           #codObject:Lorg/json/JSONObject;
    .end local v11           #mSupCodTime:Lorg/json/JSONArray;
    :cond_6
    if-eqz v7, :cond_0

    .line 7283
    if-eqz v13, :cond_7

    .line 7285
    :try_start_2
    const-string v14, "CODTime"

    invoke-virtual {v13, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 7289
    :cond_7
    :goto_9
    sget-object v14, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    if-eqz v14, :cond_0

    .line 7291
    :try_start_3
    sget-object v14, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v15, "CODTime"

    invoke-virtual {v14, v15, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 7292
    :catch_0
    move-exception v14

    goto/16 :goto_0

    .line 7198
    .end local v1           #CODTime:I
    .end local v2           #IdShipmentType:I
    .end local v5           #i:I
    .end local v7           #isFindCod:Z
    .end local v8           #isFindId:Z
    .end local v9           #isHandled:Z
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 7203
    .restart local v2       #IdShipmentType:I
    .restart local v5       #i:I
    .restart local v8       #isFindId:Z
    :cond_9
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 7204
    .local v12, object:Lorg/json/JSONObject;
    if-eqz v12, :cond_a

    .line 7205
    const-string v14, "Id"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 7206
    .local v6, id:I
    if-ne v6, v2, :cond_a

    .line 7207
    move-object v10, v12

    .line 7208
    const/4 v8, 0x1

    .line 7209
    goto/16 :goto_3

    .line 7202
    .end local v6           #id:I
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 7241
    .end local v12           #object:Lorg/json/JSONObject;
    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    .line 7260
    .restart local v1       #CODTime:I
    .restart local v7       #isFindCod:Z
    .restart local v9       #isHandled:Z
    .restart local v11       #mSupCodTime:Lorg/json/JSONArray;
    :cond_c
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 7261
    .restart local v12       #object:Lorg/json/JSONObject;
    if-eqz v12, :cond_d

    .line 7262
    const-string v14, "Id"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    if-ne v14, v1, :cond_d

    .line 7263
    const/4 v7, 0x1

    .line 7264
    goto :goto_8

    .line 7259
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 7286
    .end local v11           #mSupCodTime:Lorg/json/JSONArray;
    .end local v12           #object:Lorg/json/JSONObject;
    :catch_1
    move-exception v14

    goto :goto_9

    .line 7232
    .end local v1           #CODTime:I
    .end local v7           #isFindCod:Z
    .end local v9           #isHandled:Z
    :catch_2
    move-exception v14

    goto/16 :goto_5

    .line 7226
    :catch_3
    move-exception v14

    goto/16 :goto_4
.end method

.method private updateCompositeOrderStr()V
    .locals 5

    .prologue
    .line 5241
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNoRegisterOrder:Z

    if-nez v1, :cond_9

    .line 5242
    :cond_0
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    if-nez v1, :cond_a

    .line 5243
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sput-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    .line 5244
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updateOrderStrByUserInfo()V

    .line 5246
    const-string v1, "IdInvoiceType"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5247
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdInvoiceType"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdInvoiceType"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5250
    :cond_1
    const-string v1, "IdInvoiceHeaderType"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5251
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdInvoiceHeaderType"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdInvoiceHeaderType"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5254
    :cond_2
    const-string v1, "IdInvoiceContentTypeBook"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5255
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdInvoiceContentTypeBook"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdInvoiceContentTypeBook"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5258
    :cond_3
    const-string v1, "IdCompanyBranch"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5259
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdCompanyBranch"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdCompanyBranch"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5262
    :cond_4
    const-string v1, "IdInvoiceContentsType"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5263
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdInvoiceContentsType"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdInvoiceContentsType"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5267
    :cond_5
    const-string v1, "IdPaymentType"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5268
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdPaymentType"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v3, v3, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5271
    :cond_6
    const-string v1, "PaymentWay"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5272
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "PaymentWay"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "PaymentWay"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5275
    :cond_7
    const-string v1, "PromotionPrice"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5276
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "PromotionPrice"

    sget-wide v3, Lcom/jingdong/common/entity/LastOrderInfo;->dPromotionPrice:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 5279
    :cond_8
    const-string v1, "Price"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5280
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Price"

    sget-wide v3, Lcom/jingdong/common/entity/LastOrderInfo;->dPrice:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 5293
    :cond_9
    :goto_0
    return-void

    .line 5284
    :cond_a
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updateOrderStrByUserInfo()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5289
    :catch_0
    move-exception v0

    .line 5291
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateCompositeOrderStrByInvoice()V
    .locals 5

    .prologue
    .line 5888
    :try_start_0
    sget-object v2, Lcom/jingdong/common/constant/Constants;->mModifiedInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    .line 5889
    .local v1, jbInvoiceInfo:Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdInvoiceContentsType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "IdInvoiceContentsType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "IdInvoiceContentsType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_0

    const-string v2, "IdInvoiceContentsType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_0

    .line 5890
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdInvoiceContentsType"

    const-string v4, "IdInvoiceContentsType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5893
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InvoiceTitle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "InvoiceTitle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "InvoiceTitle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_1

    const-string v2, "InvoiceTitle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_1

    .line 5894
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "InvoiceTitle"

    const-string v4, "InvoiceTitle"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5896
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdInvoiceHeaderType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "IdInvoiceHeaderType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "IdInvoiceHeaderType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_2

    const-string v2, "IdInvoiceHeaderType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_2

    .line 5897
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdInvoiceHeaderType"

    const-string v4, "IdInvoiceHeaderType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5900
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CompanyName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "CompanyName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "CompanyName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_3

    const-string v2, "CompanyName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_3

    .line 5901
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "CompanyName"

    const-string v4, "CompanyName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5903
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdInvoiceType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "IdInvoiceType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "IdInvoiceType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_4

    const-string v2, "IdInvoiceType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_4

    .line 5904
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdInvoiceType"

    const-string v4, "IdInvoiceType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5907
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdInvoiceContentTypeBook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "IdInvoiceContentTypeBook"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "IdInvoiceContentTypeBook"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_5

    const-string v2, "IdInvoiceContentTypeBook"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_5

    .line 5908
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdInvoiceContentTypeBook"

    const-string v4, "IdInvoiceContentTypeBook"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5915
    .end local v1           #jbInvoiceInfo:Lorg/json/JSONObject;
    :cond_5
    :goto_0
    return-void

    .line 5911
    :catch_0
    move-exception v0

    .line 5913
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateCompositeOrderStrByModifyPayment()V
    .locals 5

    .prologue
    .line 6020
    :try_start_0
    sget-object v2, Lcom/jingdong/common/constant/Constants;->mModifiedPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v3, v3, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 6021
    .local v1, jbPay:Lorg/json/JSONObject;
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v2, v2, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 6022
    const-string v2, "IdPaymentType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    if-eq v2, v3, :cond_0

    const-string v2, "IdPaymentType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "IdPaymentType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_0

    const-string v2, "IdPaymentType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_0

    .line 6023
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdPaymentType"

    const-string v4, "IdPaymentType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6025
    :cond_0
    const-string v2, "IdPickSite"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    if-eq v2, v3, :cond_1

    const-string v2, "IdPickSite"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "IdPickSite"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_1

    const-string v2, "IdPickSite"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_1

    .line 6026
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdPickSite"

    const-string v4, "IdPickSite"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6050
    .end local v1           #jbPay:Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 6029
    .restart local v1       #jbPay:Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdPaymentType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "IdPaymentType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    if-eq v2, v3, :cond_3

    const-string v2, "IdPaymentType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "IdPaymentType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_3

    const-string v2, "IdPaymentType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_3

    .line 6030
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdPaymentType"

    const-string v4, "IdPaymentType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6032
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdShipmentType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "IdShipmentType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    if-eq v2, v3, :cond_4

    const-string v2, "IdShipmentType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "IdShipmentType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_4

    const-string v2, "IdShipmentType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_4

    .line 6033
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IdShipmentType"

    const-string v4, "IdShipmentType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6035
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CODTime"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "CODTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "CODTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_5

    const-string v2, "CODTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_5

    .line 6036
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "CODTime"

    const-string v4, "CODTime"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6038
    :cond_5
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IsCodInform"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "IsCodInform"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v2, "IsCodInform"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_6

    const-string v2, "IsCodInform"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_6

    .line 6039
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "IsCodInform"

    const-string v4, "IsCodInform"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6041
    :cond_6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PaymentWay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "PaymentWay"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "PaymentWay"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_1

    const-string v2, "PaymentWay"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_1

    .line 6042
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "PaymentWay"

    const-string v4, "PaymentWay"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 6046
    .end local v1           #jbPay:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 6048
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private updateInvoinceInfo()V
    .locals 5

    .prologue
    .line 5922
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    if-nez v2, :cond_0

    .line 5923
    new-instance v2, Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-direct {v2}, Lcom/jingdong/common/entity/InvoiceInfo;-><init>()V

    sput-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    .line 5925
    :cond_0
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5926
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/InvoiceInfo;->setInvoiceInfo(Lorg/json/JSONObject;)V

    .line 5928
    :cond_1
    sget-object v2, Lcom/jingdong/common/constant/Constants;->mModifiedInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    .line 5931
    .local v1, jbInvoiceInfo:Lorg/json/JSONObject;
    :try_start_0
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_3

    .line 5932
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2, v1}, Lcom/jingdong/common/entity/InvoiceInfo;->setInvoiceInfo(Lorg/json/JSONObject;)V

    .line 5934
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2, v1}, Lcom/jingdong/common/entity/InvoiceInfo;->setInvoiceInfo(Lorg/json/JSONObject;)V

    .line 5974
    :cond_2
    :goto_0
    return-void

    .line 5937
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdInvoiceContentsType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "IdInvoiceContentsType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "IdInvoiceContentsType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_4

    const-string v2, "IdInvoiceContentsType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_4

    .line 5938
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdInvoiceContentsType"

    const-string v4, "IdInvoiceContentsType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5940
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdInvoiceContentsType"

    const-string v4, "IdInvoiceContentsType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5942
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InvoiceTitle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "InvoiceTitle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "InvoiceTitle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_5

    const-string v2, "InvoiceTitle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_5

    .line 5943
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "InvoiceTitle"

    const-string v4, "InvoiceTitle"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5945
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "InvoiceTitle"

    const-string v4, "InvoiceTitle"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5947
    :cond_5
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdInvoiceHeaderType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "IdInvoiceHeaderType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v2, "IdInvoiceHeaderType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_6

    const-string v2, "IdInvoiceHeaderType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_6

    .line 5948
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdInvoiceHeaderType"

    const-string v4, "IdInvoiceHeaderType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5950
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdInvoiceHeaderType"

    const-string v4, "IdInvoiceHeaderType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5952
    :cond_6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CompanyName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "CompanyName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "CompanyName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_7

    const-string v2, "CompanyName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_7

    .line 5953
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "CompanyName"

    const-string v4, "CompanyName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5955
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "CompanyName"

    const-string v4, "CompanyName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5957
    :cond_7
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdInvoiceType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "IdInvoiceType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v2, "IdInvoiceType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_8

    const-string v2, "IdInvoiceType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_8

    .line 5958
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdInvoiceType"

    const-string v4, "IdInvoiceType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5960
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdInvoiceType"

    const-string v4, "IdInvoiceType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5963
    :cond_8
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdInvoiceContentTypeBook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "IdInvoiceContentTypeBook"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "IdInvoiceContentTypeBook"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_2

    const-string v2, "IdInvoiceContentTypeBook"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_2

    .line 5964
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdInvoiceContentTypeBook"

    const-string v4, "IdInvoiceContentTypeBook"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5966
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdInvoiceContentTypeBook"

    const-string v4, "IdInvoiceContentTypeBook"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5970
    :catch_0
    move-exception v0

    .line 5972
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private updateOrderStrByUserInfo()V
    .locals 5

    .prologue
    .line 5354
    :try_start_0
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "pin"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->lsPin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5355
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    if-eq v1, v2, :cond_0

    .line 5356
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Name"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5358
    :cond_0
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    if-eq v1, v2, :cond_1

    .line 5359
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Mobile"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5362
    :cond_1
    const-string v1, "Phone"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5363
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Phone"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5366
    :cond_2
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_3

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    if-eq v1, v2, :cond_3

    .line 5367
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Zip"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5370
    :cond_3
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdProvince"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5371
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdProvince"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdProvince"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5374
    :cond_4
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdCity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5375
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdCity"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdCity"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5378
    :cond_5
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdArea"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5379
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdArea"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdArea"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5383
    :cond_6
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdTown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5384
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdTown"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdTown"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5390
    :goto_0
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Where"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5391
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Where"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Where"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5394
    :cond_7
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5395
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Email"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Email"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5398
    :cond_8
    const-string v1, "UserLevel"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {p0, v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5399
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "UserLevel"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "UserLevel"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5405
    :cond_9
    :goto_1
    return-void

    .line 5386
    :cond_a
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdTown"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5401
    :catch_0
    move-exception v0

    .line 5403
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private updateOrderStrByUserInfoByAddEasyTemp()V
    .locals 5

    .prologue
    .line 5304
    :try_start_0
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5305
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    if-eq v1, v2, :cond_0

    .line 5306
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Name"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5308
    :cond_0
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    if-eq v1, v2, :cond_1

    .line 5309
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Mobile"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5312
    :cond_1
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    if-eq v1, v2, :cond_2

    .line 5313
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Zip"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5316
    :cond_2
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdProvince"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5317
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdProvince"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdProvince"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5320
    :cond_3
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdCity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5321
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdCity"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdCity"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5324
    :cond_4
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdArea"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5325
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdArea"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdArea"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5328
    :cond_5
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Where"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5329
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Where"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Where"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5332
    :cond_6
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5333
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Email"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Email"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5345
    :cond_7
    :goto_0
    return-void

    .line 5341
    :catch_0
    move-exception v0

    .line 5342
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private updatePayWayInfo(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 7
    .parameter "jbContainer"

    .prologue
    .line 4270
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4273
    .local v2, jbShipInfo:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "ShipmentTypes"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 4277
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4279
    .local v1, jbPay:Lorg/json/JSONObject;
    const-string v4, "IdPaymentType"

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4281
    const-string v4, "IdShipmentType"

    const-string v5, "Id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4283
    const-string v4, "SupCodTime"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CanShipTime"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CanShipTime"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4284
    const-string v4, "CODTime"

    const-string v5, "SupCodTime"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4289
    :cond_0
    :try_start_1
    const-string v4, "SupPaymentWay"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4291
    .local v3, mSupPaymentWay:Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 4292
    const-string v4, "PaymentWay"

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4298
    .end local v3           #mSupPaymentWay:Lorg/json/JSONArray;
    :cond_1
    :goto_0
    :try_start_2
    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const-string v5, "IdPaymentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    .line 4300
    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const-string v5, "IdPaymentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Lcom/jingdong/common/entity/PaymentInfo;->setPayMentType(ILorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4306
    .end local v1           #jbPay:Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 4301
    :catch_0
    move-exception v0

    .line 4303
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 4294
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #jbPay:Lorg/json/JSONObject;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private updatePayWayInfoPost()V
    .locals 7

    .prologue
    .line 2430
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2433
    .local v2, jbShipInfo:Lorg/json/JSONObject;
    :try_start_0
    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "ShipmentTypes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 2441
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 2444
    .local v3, mSupCodTime:Lorg/json/JSONArray;
    const-string v4, "SupCodTime"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2445
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2446
    .local v1, jbPay:Lorg/json/JSONObject;
    sget-object v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPostArray()Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5546\u6237\u5ba2\u6237\u53f7"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2448
    const-string v4, "postid"

    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPostArray()Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2449
    const-string v4, "postreceiver"

    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPostArray()Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2454
    :goto_0
    const-string v4, "IdPaymentType"

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2456
    const-string v4, "IdShipmentType"

    const-string v5, "Id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2459
    const-string v4, "CODTime"

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2462
    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const-string v5, "IdPaymentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    .line 2464
    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const-string v5, "IdPaymentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Lcom/jingdong/common/entity/PaymentInfo;->setPayMentType(ILorg/json/JSONObject;)V

    .line 2470
    .end local v1           #jbPay:Lorg/json/JSONObject;
    .end local v3           #mSupCodTime:Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 2451
    .restart local v1       #jbPay:Lorg/json/JSONObject;
    .restart local v3       #mSupCodTime:Lorg/json/JSONArray;
    :cond_0
    const-string v4, "postid"

    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPostArray()Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2452
    const-string v4, "postreceiver"

    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPostArray()Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2465
    .end local v1           #jbPay:Lorg/json/JSONObject;
    .end local v3           #mSupCodTime:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 2467
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private updatePayWayInfoSelf()V
    .locals 6

    .prologue
    .line 1975
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1976
    .local v2, tpArray:Lorg/json/JSONArray;
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/PaymentInfo;->getPaymentDetailInfos()Lorg/json/JSONArray;

    move-result-object v2

    .line 1981
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1983
    .local v1, jbPay:Lorg/json/JSONObject;
    const-string v3, "IdPaymentType"

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1985
    const-string v3, "IdPickSite"

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1987
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const-string v4, "IdPaymentType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    .line 1989
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v4, "IdPaymentType"

    const-string v5, "IdPaymentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1990
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v4, "IdPickSite"

    const-string v5, "IdPickSite"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1992
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const-string v4, "IdPaymentType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/jingdong/common/entity/PaymentInfo;->setPayMentType(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1998
    .end local v1           #jbPay:Lorg/json/JSONObject;
    .end local v2           #tpArray:Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 1993
    :catch_0
    move-exception v0

    .line 1995
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private updatePaymentInfo(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 6058
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    if-nez v3, :cond_0

    .line 6059
    new-instance v3, Lcom/jingdong/common/entity/PaymentInfo;

    invoke-direct {v3}, Lcom/jingdong/common/entity/PaymentInfo;-><init>()V

    sput-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 6064
    :cond_0
    :try_start_0
    new-instance v3, Lcom/jingdong/common/entity/PaymentInfo;

    invoke-direct {v3}, Lcom/jingdong/common/entity/PaymentInfo;-><init>()V

    sput-object v3, Lcom/jingdong/common/constant/Constants;->mModifiedPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 6065
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6067
    .local v1, jdPay:Lorg/json/JSONObject;
    const-string v3, "IdPaymentType"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 6069
    .local v2, paymentId:I
    const-string v3, "IdPaymentType"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6070
    if-ne v2, v7, :cond_4

    .line 6071
    const-string v3, "IdPickSite"

    const-string v4, "IdPickSite"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6081
    :cond_1
    :goto_0
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iput v2, v3, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    .line 6082
    sget-object v3, Lcom/jingdong/common/constant/Constants;->mModifiedPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual {v3, v2, v1}, Lcom/jingdong/common/entity/PaymentInfo;->setPayMentType(ILorg/json/JSONObject;)V

    .line 6086
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "{}"

    if-eq v3, v4, :cond_2

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "{ }"

    if-eq v3, v4, :cond_2

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_2

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lt v3, v6, :cond_2

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    if-ne v3, v4, :cond_5

    .line 6087
    :cond_2
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4, v1}, Lcom/jingdong/common/entity/PaymentInfo;->setPayMentType(ILorg/json/JSONObject;)V

    .line 6088
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4, v1}, Lcom/jingdong/common/entity/PaymentInfo;->setPayMentType(ILorg/json/JSONObject;)V

    .line 6158
    .end local v1           #jdPay:Lorg/json/JSONObject;
    .end local v2           #paymentId:I
    :cond_3
    :goto_1
    return-void

    .line 6073
    .restart local v1       #jdPay:Lorg/json/JSONObject;
    .restart local v2       #paymentId:I
    :cond_4
    const-string v3, "IdShipmentType"

    const-string v4, "IdShipmentType"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6074
    const-string v3, "CODTime"

    const-string v4, "CODTime"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6075
    const-string v3, "IsCodInform"

    const-string v4, "IsCodInform"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6076
    if-ne v2, v6, :cond_1

    .line 6077
    const-string v3, "PaymentWay"

    const-string v4, "PaymentWay"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 6154
    .end local v1           #jdPay:Lorg/json/JSONObject;
    .end local v2           #paymentId:I
    :catch_0
    move-exception v0

    .line 6155
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 6090
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #jdPay:Lorg/json/JSONObject;
    .restart local v2       #paymentId:I
    :cond_5
    :try_start_1
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v3, v3, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    if-ne v3, v7, :cond_7

    .line 6092
    const-string v3, "IdPaymentType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v3, "IdPaymentType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_6

    const-string v3, "IdPaymentType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, " "

    if-eq v3, v4, :cond_6

    .line 6093
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdPaymentType"

    const-string v5, "IdPaymentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6095
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdPaymentType"

    const-string v5, "IdPaymentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6097
    :cond_6
    const-string v3, "IdPickSite"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "IdPickSite"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_3

    const-string v3, "IdPickSite"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, " "

    if-eq v3, v4, :cond_3

    .line 6098
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdPickSite"

    const-string v5, "IdPickSite"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6100
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdPickSite"

    const-string v5, "IdPickSite"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 6104
    :cond_7
    const-string v3, "IdPaymentType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v3, "IdPaymentType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_8

    const-string v3, "IdPaymentType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, " "

    if-eq v3, v4, :cond_8

    .line 6105
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdPaymentType"

    const-string v5, "IdPaymentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6107
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdPaymentType"

    const-string v5, "IdPaymentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6109
    :cond_8
    const-string v3, "IdShipmentType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v3, "IdShipmentType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_9

    const-string v3, "IdShipmentType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, " "

    if-eq v3, v4, :cond_9

    .line 6110
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdShipmentType"

    const-string v5, "IdShipmentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6112
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdShipmentType"

    const-string v5, "IdShipmentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6114
    :cond_9
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CODTime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "CODTime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v3, "CODTime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    if-eq v3, v4, :cond_b

    const-string v3, "CODTime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_b

    const-string v3, "CODTime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    if-eq v3, v4, :cond_b

    .line 6115
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "CODTime"

    const-string v5, "CODTime"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6117
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "CODTime"

    const-string v5, "CODTime"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6122
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PaymentWay"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "PaymentWay"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    if-eq v3, v4, :cond_c

    const-string v3, "PaymentWay"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    const-string v3, "PaymentWay"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_c

    const-string v3, "PaymentWay"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    if-eq v3, v4, :cond_c

    .line 6123
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "PaymentWay"

    const-string v5, "PaymentWay"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6125
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "PaymentWay"

    const-string v5, "PaymentWay"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6130
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IsCodInform"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "IsCodInform"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    if-eq v3, v4, :cond_d

    const-string v3, "IsCodInform"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string v3, "IsCodInform"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_d

    const-string v3, "IsCodInform"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    if-eq v3, v4, :cond_d

    .line 6131
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IsCodInform"

    const-string v5, "IsCodInform"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6133
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IsCodInform"

    const-string v5, "IsCodInform"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6139
    :goto_4
    const-string v3, "selectBigitem"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    .line 6141
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    if-nez v3, :cond_a

    .line 6142
    new-instance v3, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    invoke-direct {v3}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;-><init>()V

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    .line 6149
    :cond_a
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v4, "BigItemCodDate"

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 6119
    :cond_b
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "CODTime"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 6120
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "CODTime"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 6127
    :cond_c
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "PaymentWay"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 6128
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "PaymentWay"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 6135
    :cond_d
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IsCodInform"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 6136
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IsCodInform"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method private updatePaymentTypes()V
    .locals 4

    .prologue
    .line 5216
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updatCcomositeBody()V

    .line 5217
    const-string v0, "paymentInfo"

    .line 5218
    .local v0, sInfoType:Ljava/lang/String;
    const-string v1, "paymentType"

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v3, "paymentInfo"

    invoke-direct {p0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 5219
    return-void
.end method

.method private updatePaymentTypesByAddEasyBuy()V
    .locals 6

    .prologue
    .line 5198
    const-string v2, "paymentInfo"

    .line 5199
    .local v2, sInfoType:Ljava/lang/String;
    const-string v1, "easyBuyPaymentType"

    .line 5202
    .local v1, functionID:Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    sput-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    .line 5203
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sput-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    .line 5205
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v4, "OrderStr"

    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5212
    :goto_0
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v4, "paymentInfo"

    invoke-direct {p0, v1, v3, v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 5213
    return-void

    .line 5208
    :catch_0
    move-exception v0

    .line 5210
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private updatePaymentTypesByInvoice()V
    .locals 6

    .prologue
    .line 5842
    const/4 v1, 0x0

    .line 5844
    .local v1, functionId:Ljava/lang/String;
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v3, :cond_1

    .line 5845
    :cond_0
    const-string v1, "easyBuyPaymentType"

    .line 5846
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updateCompositeOrderStrByInvoice()V

    .line 5847
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sput-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    .line 5849
    :try_start_0
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v4, "OrderStr"

    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5861
    :goto_0
    const-string v2, "paymentInfo"

    .line 5862
    .local v2, sInfoType:Ljava/lang/String;
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v4, "paymentInfo"

    invoke-direct {p0, v1, v3, v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 5863
    return-void

    .line 5850
    .end local v2           #sInfoType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 5852
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 5857
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    const-string v1, "paymentType"

    .line 5858
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updatCcomositeBodyByInvoice()V

    goto :goto_0
.end method

.method private updatePaymentTypesByModifyPayment()V
    .locals 6

    .prologue
    .line 5980
    const/4 v1, 0x0

    .line 5981
    .local v1, functionId:Ljava/lang/String;
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v3, :cond_1

    .line 5982
    :cond_0
    const-string v1, "easyBuyPaymentType"

    .line 5983
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updateCompositeOrderStrByModifyPayment()V

    .line 5984
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sput-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    .line 5986
    :try_start_0
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v4, "OrderStr"

    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5996
    :goto_0
    const-string v2, "paymentInfo"

    .line 5997
    .local v2, sInfoType:Ljava/lang/String;
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v4, "paymentInfo"

    invoke-direct {p0, v1, v3, v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 5998
    return-void

    .line 5987
    .end local v2           #sInfoType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 5989
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 5992
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    const-string v1, "paymentType"

    .line 5993
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updatCcomositeBodyByModifyPayment()V

    goto :goto_0
.end method

.method private updateUserInfo()V
    .locals 5

    .prologue
    .line 5137
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    if-nez v2, :cond_0

    .line 5138
    new-instance v2, Lcom/jingdong/common/entity/UserInfo;

    invoke-direct {v2}, Lcom/jingdong/common/entity/UserInfo;-><init>()V

    sput-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 5140
    :cond_0
    sget-object v2, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_1

    .line 5141
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    sget-object v3, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/UserInfo;->setUserName(Ljava/lang/String;)V

    .line 5142
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    sget-object v3, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/UserInfo;->setUserName(Ljava/lang/String;)V

    .line 5144
    :cond_1
    sget-object v2, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_2

    .line 5145
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    sget-object v3, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/UserInfo;->setUserMobile(Ljava/lang/String;)V

    .line 5146
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    sget-object v3, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/UserInfo;->setUserMobile(Ljava/lang/String;)V

    .line 5148
    :cond_2
    sget-object v2, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5149
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    sget-object v3, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/UserInfo;->setUserZip(Ljava/lang/String;)V

    .line 5150
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    sget-object v3, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/UserInfo;->setUserZip(Ljava/lang/String;)V

    .line 5152
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5153
    .local v1, jbAddrt:Lorg/json/JSONObject;
    sget-object v2, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    .line 5157
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdProvince"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "IdProvince"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "IdProvince"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_4

    const-string v2, "IdProvince"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  "

    if-eq v2, v3, :cond_4

    .line 5158
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdProvince"

    const-string v4, "IdProvince"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5159
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdProvince"

    const-string v4, "IdProvince"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5162
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdCity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "IdCity"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "IdCity"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_5

    const-string v2, "IdCity"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  "

    if-eq v2, v3, :cond_5

    .line 5163
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdCity"

    const-string v4, "IdCity"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5164
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdCity"

    const-string v4, "IdCity"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5168
    :cond_5
    const-string v2, "IdTown"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 5169
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdTown"

    const-string v4, "IdTown"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5170
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdTown"

    const-string v4, "IdTown"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5177
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdArea"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "IdArea"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v2, "IdArea"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_6

    const-string v2, "IdArea"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  "

    if-eq v2, v3, :cond_6

    .line 5178
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdArea"

    const-string v4, "IdArea"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5179
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdArea"

    const-string v4, "IdArea"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5181
    :cond_6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Where"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "Where"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "Where"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_7

    const-string v2, "Where"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  "

    if-eq v2, v3, :cond_7

    .line 5182
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Where"

    const-string v4, "Where"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5183
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Where"

    const-string v4, "Where"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5186
    :cond_7
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Email"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Email"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v2, "Email"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_8

    const-string v2, "Email"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  "

    if-eq v2, v3, :cond_8

    .line 5187
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Email"

    const-string v4, "Email"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5188
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Email"

    const-string v4, "Email"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5195
    :cond_8
    :goto_1
    return-void

    .line 5172
    :cond_9
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdTown"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 5173
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdTown"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5191
    :catch_0
    move-exception v0

    .line 5193
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private updateUserInfoByAddEasyBuy()V
    .locals 5

    .prologue
    .line 5084
    sget-boolean v2, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v2, :cond_1

    .line 5085
    :cond_0
    new-instance v2, Lcom/jingdong/common/entity/UserInfo;

    invoke-direct {v2}, Lcom/jingdong/common/entity/UserInfo;-><init>()V

    sput-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 5086
    new-instance v2, Lcom/jingdong/common/entity/UserInfo;

    invoke-direct {v2}, Lcom/jingdong/common/entity/UserInfo;-><init>()V

    sput-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 5088
    :cond_1
    sget-object v2, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_2

    .line 5089
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    sget-object v3, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/UserInfo;->setUserName(Ljava/lang/String;)V

    .line 5090
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    sget-object v3, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/UserInfo;->setUserName(Ljava/lang/String;)V

    .line 5092
    :cond_2
    sget-object v2, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_3

    sget-object v2, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    if-eq v2, v3, :cond_3

    .line 5093
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    sget-object v3, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/UserInfo;->setUserMobile(Ljava/lang/String;)V

    .line 5094
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    sget-object v3, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/UserInfo;->setUserMobile(Ljava/lang/String;)V

    .line 5096
    :cond_3
    sget-object v2, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 5097
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    sget-object v3, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/UserInfo;->setUserZip(Ljava/lang/String;)V

    .line 5098
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    sget-object v3, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/UserInfo;->setUserZip(Ljava/lang/String;)V

    .line 5100
    :cond_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5101
    .local v1, jbAddrt:Lorg/json/JSONObject;
    sget-object v2, Lcom/jingdong/common/constant/Constants;->mModifiedUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    .line 5105
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdProvince"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "IdProvince"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "IdProvince"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_5

    const-string v2, "IdProvince"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  "

    if-eq v2, v3, :cond_5

    .line 5106
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdProvince"

    const-string v4, "IdProvince"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5107
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdProvince"

    const-string v4, "IdProvince"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5110
    :cond_5
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdCity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "IdCity"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v2, "IdCity"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_6

    const-string v2, "IdCity"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  "

    if-eq v2, v3, :cond_6

    .line 5111
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdCity"

    const-string v4, "IdCity"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5112
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdCity"

    const-string v4, "IdCity"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5115
    :cond_6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdArea"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "IdArea"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "IdArea"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_7

    const-string v2, "IdArea"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  "

    if-eq v2, v3, :cond_7

    .line 5116
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdArea"

    const-string v4, "IdArea"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5117
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IdArea"

    const-string v4, "IdArea"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5119
    :cond_7
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Where"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Where"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v2, "Where"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_8

    const-string v2, "Where"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  "

    if-eq v2, v3, :cond_8

    .line 5120
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Where"

    const-string v4, "Where"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5121
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Where"

    const-string v4, "Where"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5124
    :cond_8
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Email"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "Email"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v2, "Email"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_9

    const-string v2, "Email"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  "

    if-eq v2, v3, :cond_9

    .line 5125
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Email"

    const-string v4, "Email"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5126
    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Email"

    const-string v4, "Email"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5133
    :cond_9
    :goto_0
    return-void

    .line 5129
    :catch_0
    move-exception v0

    .line 5131
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateYouHuiXin()V
    .locals 23

    .prologue
    .line 5710
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 5711
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v20, 0x7f0c0217

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 5712
    .local v12, lin:Landroid/widget/RelativeLayout;
    const v20, 0x7f03014d

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    const v21, 0x7f0c0ad0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 5713
    .local v8, layout:Landroid/widget/RelativeLayout;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->youhuiInfoList:Landroid/widget/ListView;

    .line 5714
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ListView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->youhuiInfoList:Landroid/widget/ListView;

    .line 5716
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 5718
    .local v19, tv:Landroid/widget/TextView;
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5719
    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 5722
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5723
    .local v6, item:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 5725
    .local v7, item1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, " "

    .line 5726
    .local v17, tep:Ljava/lang/String;
    const/4 v14, 0x0

    .line 5729
    .local v14, noContent:Z
    sget-boolean v20, Lcom/jingdong/common/constant/Constants;->jdSwitch:Z

    if-eqz v20, :cond_5

    .line 5730
    sget-object v20, Lcom/jingdong/common/constant/Constants;->dongSel:Lorg/json/JSONObject;

    if-eqz v20, :cond_4

    sget-object v20, Lcom/jingdong/common/constant/Constants;->dongSel:Lorg/json/JSONObject;

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "null"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_4

    sget-object v20, Lcom/jingdong/common/constant/Constants;->dongSel:Lorg/json/JSONObject;

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_4

    sget-object v20, Lcom/jingdong/common/constant/Constants;->dongSel:Lorg/json/JSONObject;

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 5732
    :try_start_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\u4f7f\u75281\u5f20\u4e1c\u5238, \u9762\u989d"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/jingdong/common/constant/Constants;->dongSel:Lorg/json/JSONObject;

    const-string v22, "Discount"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u5143"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 5772
    :goto_0
    sget-object v20, Lcom/jingdong/common/constant/Constants;->liSelArray:Lorg/json/JSONArray;

    if-eqz v20, :cond_c

    sget-object v20, Lcom/jingdong/common/constant/Constants;->liSelArray:Lorg/json/JSONArray;

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "null"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_c

    sget-object v20, Lcom/jingdong/common/constant/Constants;->liSelArray:Lorg/json/JSONArray;

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v20

    if-lez v20, :cond_c

    .line 5773
    const/4 v9, 0x0

    .line 5774
    .local v9, li_count:I
    const-wide/16 v10, 0x0

    .line 5775
    .local v10, li_price:D
    const/4 v13, 0x0

    .local v13, n:I
    :goto_1
    sget-object v20, Lcom/jingdong/common/constant/Constants;->liSelArray:Lorg/json/JSONArray;

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-lt v13, v0, :cond_9

    .line 5791
    if-eqz v17, :cond_0

    const-string v20, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_0

    const-string v20, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 5792
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\u4f7f\u7528"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u5f20"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u793c\u54c1\u5361"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " \u4f59\u989d"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u5143"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 5803
    .end local v9           #li_count:I
    .end local v10           #li_price:D
    .end local v13           #n:I
    :cond_1
    :goto_2
    const-string v20, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_2

    const-string v20, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 5804
    :cond_2
    const-string v17, "\u60a8\u6ca1\u6709\u9009\u62e9\u4f18\u60e0\u5238\u6216\u793c\u54c1\u5361"

    .line 5806
    :cond_3
    const-string v20, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5807
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5808
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    sput-object v20, Lcom/jingdong/common/constant/Constants;->item:Ljava/util/ArrayList;

    .line 5809
    sget-object v20, Lcom/jingdong/common/constant/Constants;->item:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->youhuiInfoList:Landroid/widget/ListView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/jingdong/app/mall/shopping/YouHuiAdapter;

    sget-object v22, Lcom/jingdong/common/constant/Constants;->item:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/YouHuiAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5813
    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 5814
    invoke-virtual {v12, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 5815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->youhuiInfoList:Landroid/widget/ListView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/jingdong/app/mall/shopping/FillOrderActivity$36;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$36;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 5836
    return-void

    .line 5734
    :catch_0
    move-exception v4

    .line 5736
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 5740
    .end local v4           #e:Lorg/json/JSONException;
    :cond_4
    const/4 v14, 0x1

    .line 5742
    goto/16 :goto_0

    .line 5744
    :cond_5
    sget-object v20, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    if-eqz v20, :cond_8

    sget-object v20, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "null"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_8

    sget-object v20, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_8

    sget-object v20, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v20

    if-lez v20, :cond_8

    .line 5745
    const/4 v3, 0x0

    .line 5746
    .local v3, count:I
    const-wide/16 v15, 0x0

    .line 5747
    .local v15, price:D
    const/4 v13, 0x0

    .restart local v13       #n:I
    :goto_3
    sget-object v20, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-lt v13, v0, :cond_6

    .line 5764
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\u4f7f\u7528"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u5f20"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u4eac\u5238"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " \u9762\u989d"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u5143"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 5766
    goto/16 :goto_0

    .line 5749
    :cond_6
    :try_start_1
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    .line 5751
    .local v18, tp:Lorg/json/JSONObject;
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "null"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 5752
    sget-object v20, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 5753
    add-int/lit8 v3, v3, 0x1

    .line 5754
    const-string v20, "Discount"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v20

    add-double v15, v15, v20

    .line 5747
    .end local v18           #tp:Lorg/json/JSONObject;
    :cond_7
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 5758
    :catch_1
    move-exception v4

    .line 5760
    .restart local v4       #e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 5768
    .end local v3           #count:I
    .end local v4           #e:Lorg/json/JSONException;
    .end local v13           #n:I
    .end local v15           #price:D
    :cond_8
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 5777
    .restart local v9       #li_count:I
    .restart local v10       #li_price:D
    .restart local v13       #n:I
    :cond_9
    :try_start_2
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    .line 5778
    .restart local v18       #tp:Lorg/json/JSONObject;
    if-eqz v18, :cond_a

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "null"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_a

    .line 5779
    sget-object v20, Lcom/jingdong/common/constant/Constants;->liSelArray:Lorg/json/JSONArray;

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 5780
    add-int/lit8 v9, v9, 0x1

    .line 5781
    const-string v20, "LeaveMoney"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v20

    add-double v10, v10, v20

    .line 5775
    .end local v18           #tp:Lorg/json/JSONObject;
    :cond_a
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 5785
    :catch_2
    move-exception v4

    .line 5787
    .restart local v4       #e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 5794
    .end local v4           #e:Lorg/json/JSONException;
    :cond_b
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\n \u4f7f\u7528"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u5f20"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u793c\u54c1\u5361"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " \u4f59\u989d"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u5143"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 5797
    goto/16 :goto_2

    .line 5798
    .end local v9           #li_count:I
    .end local v10           #li_price:D
    .end local v13           #n:I
    :cond_c
    if-eqz v14, :cond_1

    .line 5799
    const-string v17, "\u60a8\u6ca1\u6709\u9009\u62e9\u4f18\u60e0\u5238\u6216\u793c\u54c1\u5361"

    goto/16 :goto_2
.end method


# virtual methods
.method public comositeBody()V
    .locals 4

    .prologue
    .line 5063
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->compositeOrderStr()V

    .line 5064
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getCartItemInfo()V

    .line 5065
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sput-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    .line 5067
    :try_start_0
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v2, "OrderStr"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5068
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v2, "CartStr"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5073
    :goto_0
    return-void

    .line 5069
    :catch_0
    move-exception v0

    .line 5071
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected initDefalutPaymentType()V
    .locals 5

    .prologue
    .line 4552
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/PaymentInfo;->getPaymentTypes()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v2, v2, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4555
    :try_start_0
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/PaymentInfo;->getPaymentTypes()Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    .line 4556
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v2, v2, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/PaymentInfo;->getPaymentTypes()Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jingdong/common/entity/PaymentInfo;->setPayMentType(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4565
    :cond_0
    :goto_0
    return-void

    .line 4557
    :catch_0
    move-exception v0

    .line 4558
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected initIfNeedCall(Landroid/content/res/Resources;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .parameter "res"
    .parameter "jdShipInfo"
    .parameter "payMentType"
    .parameter "map"
    .parameter "delivery_Type"

    .prologue
    .line 2689
    if-eqz p5, :cond_0

    :try_start_0
    const-string v1, "\u4eac\u4e1c"

    invoke-virtual {p5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2691
    const-string v0, ""

    .line 2693
    .local v0, phoneVerify:Ljava/lang/String;
    const-string v1, "SupInforms"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "IsCodInform"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "IsCodInform"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2695
    const v1, 0x7f0701a3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2696
    const/4 v1, 0x1

    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->bPhone:Z

    .line 2703
    :goto_0
    const-string v1, "mInforms"

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2714
    .end local v0           #phoneVerify:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 2699
    .restart local v0       #phoneVerify:Ljava/lang/String;
    :cond_1
    const v1, 0x7f0701a4

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2700
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->bPhone:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2705
    .end local v0           #phoneVerify:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 2709
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public initLastOrderInfo(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 9
    .parameter "jbInfoContainer"

    .prologue
    .line 4321
    if-nez p1, :cond_0

    .line 4514
    :goto_0
    return-void

    .line 4327
    :cond_0
    :try_start_0
    const-string v6, "needRemark"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1e

    const-string v6, "needRemark"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 4328
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNeedRemark:Z

    .line 4334
    :goto_1
    const-string v6, "Pin"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->lsPin:Ljava/lang/String;

    .line 4336
    const-string v6, "Name"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, ""

    const-string v7, "Name"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eq v6, v7, :cond_1

    const-string v6, "Name"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "Name"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 4337
    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    const-string v7, "Name"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jingdong/common/entity/UserInfo;->setUserName(Ljava/lang/String;)V

    .line 4340
    :cond_1
    const-string v6, "Phone"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4341
    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    const-string v7, "Phone"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jingdong/common/entity/UserInfo;->setUserPhone(Ljava/lang/String;)V

    .line 4343
    :cond_2
    const-string v6, "Mobile"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4344
    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    const-string v7, "Mobile"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jingdong/common/entity/UserInfo;->setUserMobile(Ljava/lang/String;)V

    .line 4346
    :cond_3
    const-string v6, "Zip"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4347
    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    const-string v7, "Zip"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jingdong/common/entity/UserInfo;->setUserZip(Ljava/lang/String;)V

    .line 4350
    :cond_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4351
    .local v1, jbAddr:Lorg/json/JSONObject;
    const-string v6, "IdProvince"

    const-string v7, "IdProvince"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4352
    const-string v6, "IdCity"

    const-string v7, "IdCity"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4353
    const-string v6, "IdArea"

    const-string v7, "IdArea"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4356
    const-string v6, "IdTown"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 4357
    const-string v6, "IdTown"

    const-string v7, "IdTown"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4361
    :cond_5
    const-string v6, "Where"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4362
    const-string v6, "Where"

    const-string v7, "Where"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4363
    :cond_6
    const-string v6, "Email"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4364
    const-string v6, "Email"

    const-string v7, "Email"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4365
    :cond_7
    const-string v6, "UserLevel"

    const-string v7, "UserLevel"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4366
    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v6, v1}, Lcom/jingdong/common/entity/UserInfo;->setUserAddr(Lorg/json/JSONObject;)V

    .line 4367
    const/4 v1, 0x0

    .line 4369
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 4371
    .local v5, jbPay:Lorg/json/JSONObject;
    const-string v6, "IdPaymentType"

    const-string v7, "IdPaymentType"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4373
    const-string v6, "IdShipmentType"

    const-string v7, "IdShipmentType"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4374
    const-string v6, "CODTime"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 4375
    const-string v6, "CODTime"

    const-string v7, "CODTime"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4377
    :cond_8
    const-string v6, "CodDate"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4378
    const-string v6, "CodDate"

    const-string v7, "CodDate"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4380
    :cond_9
    const-string v6, "ShipTime"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 4381
    const-string v6, "ShipTime"

    const-string v7, "ShipTime"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4383
    :cond_a
    const-string v6, "IsCodInform"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 4384
    const-string v6, "IsCodInform"

    const-string v7, "IsCodInform"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4388
    :goto_2
    const-string v6, "PaymentWay"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 4389
    const-string v6, "PaymentWay"

    const-string v7, "PaymentWay"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4391
    :cond_b
    const-string v6, "IdPickSite"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 4392
    const-string v6, "IdPickSite"

    const-string v7, "IdPickSite"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4394
    :cond_c
    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const-string v7, "IdPaymentType"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    .line 4395
    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    const-string v7, "IdPaymentType"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7, v5}, Lcom/jingdong/common/entity/PaymentInfo;->setPayMentType(ILorg/json/JSONObject;)V

    .line 4396
    const/4 v5, 0x0

    .line 4398
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 4399
    .local v3, jbInvoice:Lorg/json/JSONObject;
    const-string v6, "IdInvoicePutType"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 4400
    const-string v6, "IdInvoicePutType"

    const-string v7, "IdInvoicePutType"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4402
    :cond_d
    const-string v6, "IdInvoiceContentTypeBook"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 4403
    const-string v6, "IdInvoiceContentTypeBook"

    const-string v7, "IdInvoiceContentTypeBook"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4406
    :cond_e
    const-string v6, "IdInvoiceContentsType"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 4407
    const-string v6, "IdInvoiceContentsType"

    const-string v7, "IdInvoiceContentsType"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4410
    :cond_f
    const-string v6, "InvoiceTitle"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 4411
    const-string v6, "InvoiceTitle"

    const-string v7, "InvoiceTitle"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4413
    :cond_10
    const-string v6, "IdInvoiceType"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 4414
    const-string v6, "IdInvoiceType"

    const-string v7, "IdInvoiceType"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4417
    :cond_11
    const-string v6, "CompanyName"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 4418
    const-string v6, "CompanyName"

    const-string v7, "CompanyName"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4421
    :cond_12
    const-string v6, "IdCompanyBranch"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 4422
    const-string v6, "IdCompanyBranch"

    const-string v7, "IdCompanyBranch"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4424
    :cond_13
    const-string v6, "IdInvoiceHeaderType"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 4425
    const-string v6, "IdInvoiceHeaderType"

    const-string v7, "IdInvoiceHeaderType"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4428
    :cond_14
    const-string v6, "IsPutBookInvoice"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_21

    const-string v6, "IsPutBookInvoice"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_21

    .line 4429
    const-string v6, "IsPutBookInvoice"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_20

    .line 4430
    const-string v6, "IdInvoiceContentTypeBook"

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4431
    const-string v6, "IsPutBookInvoice"

    const-string v7, "IsPutBookInvoice"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4442
    :goto_3
    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v6, v3}, Lcom/jingdong/common/entity/InvoiceInfo;->setInvoiceInfo(Lorg/json/JSONObject;)V

    .line 4443
    const/4 v3, 0x0

    .line 4445
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4446
    .local v2, jbCoupons:Lorg/json/JSONObject;
    const-string v6, "TheCoupons"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 4447
    const-string v6, "TheCoupons"

    const-string v7, "TheCoupons"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4448
    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mYouhuiQuan:Lcom/jingdong/common/entity/YouHuiQuan;

    iput-object v2, v6, Lcom/jingdong/common/entity/YouHuiQuan;->Coupons:Lorg/json/JSONObject;

    .line 4451
    :cond_15
    const/4 v2, 0x0

    .line 4453
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 4454
    .local v4, jbLipinkas:Lorg/json/JSONObject;
    const-string v6, "TheLipinkas"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 4455
    const-string v6, "TheLipinkas"

    const-string v7, "TheLipinkas"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4456
    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mYouhuiQuan:Lcom/jingdong/common/entity/YouHuiQuan;

    iput-object v4, v6, Lcom/jingdong/common/entity/YouHuiQuan;->LipinKas:Lorg/json/JSONObject;

    .line 4459
    :cond_16
    const/4 v4, 0x0

    .line 4460
    const-string v6, "Remark"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 4461
    const-string v6, "Remark"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mRemark:Ljava/lang/String;

    .line 4464
    :cond_17
    const-string v6, "PromotionPrice"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 4465
    const-string v6, "PromotionPrice"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    sput-wide v6, Lcom/jingdong/common/entity/LastOrderInfo;->dPromotionPrice:D

    .line 4468
    :cond_18
    const-string v6, "Price"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 4469
    const-string v6, "Price"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    sput-wide v6, Lcom/jingdong/common/entity/LastOrderInfo;->dPrice:D

    .line 4472
    :cond_19
    const-string v6, "IsUseBalance"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 4473
    const-string v6, "IsUseBalance"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseBalance:Z

    .line 4474
    sget-object v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v7, "IsUseBalance"

    sget-boolean v8, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseBalance:Z

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 4477
    :cond_1a
    const-string v6, "IsUseJdBean"

    invoke-direct {p0, v6, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isLastOrderInfoContainField(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 4478
    const-string v6, "IsUseJdBean"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseJdbean:Z

    .line 4479
    sget-object v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v7, "isUseJdBean"

    sget-boolean v8, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseJdbean:Z

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 4482
    :cond_1b
    const-string v6, "usedJdBeanMap"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1c

    .line 4483
    new-instance v6, Lcom/jingdong/common/entity/UsedJdbean;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v7}, Lcom/jingdong/common/entity/UsedJdbean;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    sput-object v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->currJdbean:Lcom/jingdong/common/entity/UsedJdbean;

    .line 4485
    sget-object v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v7, "canUseJdBeanCount"

    sget-object v8, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->currJdbean:Lcom/jingdong/common/entity/UsedJdbean;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/UsedJdbean;->getCanUseJdBeanCount()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4486
    sget-object v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v7, "totalJdBeanCount"

    sget-object v8, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->currJdbean:Lcom/jingdong/common/entity/UsedJdbean;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/UsedJdbean;->getTotalJdBeanCount()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4490
    :cond_1c
    const-string v6, "BigItemCodDate"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 4491
    new-instance v6, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    invoke-direct {v6}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;-><init>()V

    iput-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    .line 4492
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    const-string v7, "BigItemCodDate"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4500
    .end local v1           #jbAddr:Lorg/json/JSONObject;
    .end local v2           #jbCoupons:Lorg/json/JSONObject;
    .end local v3           #jbInvoice:Lorg/json/JSONObject;
    .end local v4           #jbLipinkas:Lorg/json/JSONObject;
    .end local v5           #jbPay:Lorg/json/JSONObject;
    :cond_1d
    :goto_4
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/jingdong/app/mall/shopping/FillOrderActivity$32;

    invoke-direct {v7, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$32;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4330
    :cond_1e
    const/4 v6, 0x0

    :try_start_1
    iput-boolean v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNeedRemark:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 4495
    :catch_0
    move-exception v0

    .line 4497
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 4386
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #jbAddr:Lorg/json/JSONObject;
    .restart local v5       #jbPay:Lorg/json/JSONObject;
    :cond_1f
    :try_start_2
    const-string v6, "IsCodInform"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 4433
    .restart local v3       #jbInvoice:Lorg/json/JSONObject;
    :cond_20
    const-string v6, "IsPutBookInvoice"

    const-string v7, "IsPutBookInvoice"

    invoke-virtual {p1, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 4439
    :cond_21
    const-string v6, "IdInvoiceContentTypeBook"

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5415
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/MyActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 5416
    packed-switch p2, :pswitch_data_0

    .line 5480
    :cond_0
    :goto_0
    return-void

    .line 5419
    :pswitch_0
    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v0, :cond_2

    .line 5421
    :cond_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updateUserInfoByAddEasyBuy()V

    .line 5423
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updateOrderStrByUserInfoByAddEasyTemp()V

    .line 5424
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_addr:Z

    .line 5425
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updatePaymentTypesByAddEasyBuy()V

    .line 5432
    :goto_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->scrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 5433
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 5427
    :cond_2
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updateUserInfo()V

    .line 5428
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_addr:Z

    .line 5429
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updatePaymentTypes()V

    goto :goto_1

    .line 5439
    :pswitch_1
    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v0, :cond_4

    .line 5441
    :cond_3
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updateUserInfoByAddEasyBuy()V

    .line 5443
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updateOrderStrByUserInfoByAddEasyTemp()V

    .line 5444
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_addr:Z

    .line 5445
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updatePaymentTypesByAddEasyBuy()V

    goto :goto_0

    .line 5447
    :cond_4
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updateUserInfo()V

    .line 5448
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_addr:Z

    .line 5449
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updatePaymentTypes()V

    goto :goto_0

    .line 5456
    :pswitch_2
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_payment:Z

    .line 5459
    const-string v0, "PromiseTime"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    .line 5461
    invoke-direct {p0, p3}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updatePaymentInfo(Landroid/content/Intent;)V

    .line 5462
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updatePaymentTypesByModifyPayment()V

    goto :goto_0

    .line 5467
    :pswitch_3
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_invoince:Z

    .line 5468
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_payment:Z

    .line 5469
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updateInvoinceInfo()V

    .line 5470
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updatePaymentTypesByInvoice()V

    goto :goto_0

    .line 5474
    :pswitch_4
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isUpdatePayment:Z

    .line 5475
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updateYouHuiXin()V

    .line 5476
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->recalOrderAfterYouHui()V

    goto :goto_0

    .line 5416
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0c01df

    const v5, 0x7f030050

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 427
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 429
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->hasLogin()Z

    move-result v1

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNoRegisterOrder:Z

    .line 430
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 431
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isEasyBuy"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    .line 432
    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-eqz v1, :cond_0

    .line 433
    const-string v1, "easyBuySource"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/SourceEntity;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->easyBuySource:Lcom/jingdong/common/entity/SourceEntity;

    .line 435
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 436
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "selectedCartResponseInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/cart/CartResponseInfo;

    sput-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    .line 439
    :cond_1
    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-eqz v1, :cond_2

    .line 447
    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setContentView(I)V

    .line 448
    new-instance v1, Lcom/jingdong/common/entity/PaymentInfo;

    invoke-direct {v1}, Lcom/jingdong/common/entity/PaymentInfo;-><init>()V

    sput-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 449
    new-instance v1, Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-direct {v1}, Lcom/jingdong/common/entity/InvoiceInfo;-><init>()V

    sput-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    .line 450
    new-instance v1, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbYunFeeList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 451
    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTempName:Landroid/widget/EditText;

    .line 452
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTempName:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 454
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->initComponent()V

    .line 455
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->compositeDefaultOrderStr()V

    .line 456
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->onlyBook:Z

    .line 457
    sput-boolean v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseBalance:Z

    .line 458
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_addr:Z

    .line 459
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_payment:Z

    .line 460
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_invoince:Z

    .line 461
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->noBook:Z

    .line 462
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->newWay:Z

    .line 463
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setEmptyReceiverInfoArea()V

    .line 464
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setEmptyPaymentInfoArea()V

    .line 465
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setEmptyInvoinceInfoArea()V

    .line 468
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getCartItemInfo()V

    .line 472
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->handleClickEvent()V

    .line 536
    :goto_0
    iput-object p0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->context:Landroid/content/Context;

    .line 537
    return-void

    .line 473
    :cond_2
    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v1, :cond_3

    .line 476
    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setContentView(I)V

    .line 477
    new-instance v1, Lcom/jingdong/common/entity/PaymentInfo;

    invoke-direct {v1}, Lcom/jingdong/common/entity/PaymentInfo;-><init>()V

    sput-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 478
    new-instance v1, Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-direct {v1}, Lcom/jingdong/common/entity/InvoiceInfo;-><init>()V

    sput-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    .line 479
    new-instance v1, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbYunFeeList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 480
    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTempName:Landroid/widget/EditText;

    .line 481
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTempName:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 482
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTempName:Landroid/widget/EditText;

    sget-object v2, Lcom/jingdong/common/entity/DefaultEasyTempOrderInfo;->sTempName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 483
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->initComponent()V

    .line 485
    sget-object v1, Lcom/jingdong/common/entity/DefaultEasyTempOrderInfo;->jsonTemp:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v2, "Info"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->compositeOrderStr(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 486
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->onlyBook:Z

    .line 487
    sput-boolean v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseBalance:Z

    .line 488
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_addr:Z

    .line 489
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->noBook:Z

    .line 490
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->newWay:Z

    .line 493
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->handleClickEvent()V

    .line 495
    sget-object v1, Lcom/jingdong/common/entity/DefaultEasyTempOrderInfo;->jsonTemp:Lcom/jingdong/common/utils/JSONObjectProxy;

    sput-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jsonOrderInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 496
    sget-object v1, Lcom/jingdong/common/entity/DefaultEasyTempOrderInfo;->jsonTemp:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v2, "Info"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->initLastOrderInfo(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 497
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getProvices()V

    goto :goto_0

    .line 500
    :cond_3
    const v1, 0x7f03005a

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setContentView(I)V

    .line 501
    new-instance v1, Lcom/jingdong/common/entity/PaymentInfo;

    invoke-direct {v1}, Lcom/jingdong/common/entity/PaymentInfo;-><init>()V

    sput-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 502
    new-instance v1, Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-direct {v1}, Lcom/jingdong/common/entity/InvoiceInfo;-><init>()V

    sput-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mNewInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    .line 503
    new-instance v1, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbYunFeeList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 504
    sput-object v7, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->currBalance:Lcom/jingdong/common/entity/UsedBalance;

    .line 505
    sput-object v7, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->currJdbean:Lcom/jingdong/common/entity/UsedJdbean;

    .line 506
    sput-boolean v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isChangeJingOrDongQuan:Z

    .line 507
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->initComponent()V

    .line 508
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->initOrderView()V

    .line 509
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->onlyBook:Z

    .line 510
    sput-boolean v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseBalance:Z

    .line 511
    sput-boolean v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseJdbean:Z

    .line 512
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->update_by_addr:Z

    .line 513
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->noBook:Z

    .line 514
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->newWay:Z

    .line 515
    iput-boolean v4, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isUpdatePayment:Z

    .line 516
    const-string v1, "0"

    sput-object v1, Lcom/jingdong/common/constant/Constants;->dYTotalPrice:Ljava/lang/String;

    .line 518
    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNoRegisterOrder:Z

    if-eqz v1, :cond_5

    .line 519
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->LoadSecurityEnable()V

    .line 520
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getCartItemInfo()V

    .line 521
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->handleClickEvent()V

    .line 522
    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-nez v1, :cond_4

    .line 523
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getLarstOrderInfo()V

    .line 524
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setYouhuiArea()V

    goto/16 :goto_0

    .line 526
    :cond_4
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getEasyBuyInfo()V

    goto/16 :goto_0

    .line 529
    :cond_5
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getCartItemInfo()V

    .line 530
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getLarstOrderInfo()V

    .line 531
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->handleClickEvent()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 6274
    new-instance v0, Lcom/jingdong/common/entity/UserInfo;

    invoke-direct {v0}, Lcom/jingdong/common/entity/UserInfo;-><init>()V

    sput-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 6275
    new-instance v0, Lcom/jingdong/common/entity/PaymentInfo;

    invoke-direct {v0}, Lcom/jingdong/common/entity/PaymentInfo;-><init>()V

    sput-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 6276
    new-instance v0, Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-direct {v0}, Lcom/jingdong/common/entity/InvoiceInfo;-><init>()V

    sput-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    .line 6277
    new-instance v0, Lcom/jingdong/common/entity/YouHuiQuan;

    invoke-direct {v0}, Lcom/jingdong/common/entity/YouHuiQuan;-><init>()V

    sput-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mYouhuiQuan:Lcom/jingdong/common/entity/YouHuiQuan;

    .line 6278
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->hideInputKey()V

    .line 6279
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->inputmethodArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6280
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onDestroy()V

    .line 6281
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 6765
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 6767
    const/4 v2, 0x0

    .line 6768
    .local v2, isHideInputMethod:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->inputmethodArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 6775
    if-eqz v2, :cond_2

    .line 6776
    const/4 v3, 0x1

    .line 6791
    .end local v0           #i:I
    .end local v2           #isHideInputMethod:Z
    :goto_1
    return v3

    .line 6769
    .restart local v0       #i:I
    .restart local v2       #isHideInputMethod:Z
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->inputmethodArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/ime/JDInputMethod;

    .line 6770
    .local v1, input:Lcom/jingdong/app/mall/ime/JDInputMethod;
    invoke-virtual {v1}, Lcom/jingdong/app/mall/ime/JDInputMethod;->isPopupwindowShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6771
    invoke-virtual {v1}, Lcom/jingdong/app/mall/ime/JDInputMethod;->dismissPopupwindow()V

    .line 6772
    const/4 v2, 0x1

    .line 6768
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6779
    .end local v1           #input:Lcom/jingdong/app/mall/ime/JDInputMethod;
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sput-object v3, Lcom/jingdong/common/constant/Constants;->dongSel:Lorg/json/JSONObject;

    .line 6780
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    sput-object v3, Lcom/jingdong/common/constant/Constants;->jinSelArray:Lorg/json/JSONArray;

    .line 6781
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    sput-object v3, Lcom/jingdong/common/constant/Constants;->liSelArray:Lorg/json/JSONArray;

    .line 6782
    const-string v3, ""

    sput-object v3, Lcom/jingdong/common/constant/Constants;->nSelectDongQuanId:Ljava/lang/String;

    .line 6783
    sput-object v5, Lcom/jingdong/common/constant/Constants;->nselectJingQuanIDs:Ljava/util/ArrayList;

    .line 6784
    sput-object v5, Lcom/jingdong/common/constant/Constants;->nSelectLipinIDs:Ljava/util/ArrayList;

    .line 6785
    sput-boolean v4, Lcom/jingdong/common/constant/Constants;->jSelected:Z

    .line 6786
    sput-boolean v4, Lcom/jingdong/common/constant/Constants;->dSelected:Z

    .line 6787
    sput-boolean v4, Lcom/jingdong/common/constant/Constants;->liSelected:Z

    .line 6791
    .end local v0           #i:I
    .end local v2           #isHideInputMethod:Z
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/jingdong/app/mall/utils/MyActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 6823
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 6824
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 6832
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mRemark:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 6833
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mRemark:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 6836
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendMobileEt:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    .line 6837
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendMobileEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 6840
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mobilePasswordEt:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    .line 6841
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mobilePasswordEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 6844
    :cond_3
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onPause()V

    .line 6845
    return-void

    .line 6825
    .restart local v1       #i:I
    :cond_4
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 6826
    .local v0, et:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6827
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 6824
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public updatCcomositeBody()V
    .locals 4

    .prologue
    .line 5222
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updateCompositeOrderStr()V

    .line 5223
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getCartItemInfo()V

    .line 5224
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sput-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    .line 5226
    :try_start_0
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v2, "OrderStr"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5227
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v2, "CartStr"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5232
    :goto_0
    return-void

    .line 5228
    :catch_0
    move-exception v0

    .line 5230
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public updatCcomositeBodyByInvoice()V
    .locals 4

    .prologue
    .line 5870
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updateCompositeOrderStrByInvoice()V

    .line 5871
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getCartItemInfo()V

    .line 5872
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sput-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    .line 5874
    :try_start_0
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v2, "OrderStr"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5875
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v2, "CartStr"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5880
    :goto_0
    return-void

    .line 5876
    :catch_0
    move-exception v0

    .line 5878
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public updatCcomositeBodyByModifyPayment()V
    .locals 4

    .prologue
    .line 6001
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->updateCompositeOrderStrByModifyPayment()V

    .line 6002
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getCartItemInfo()V

    .line 6003
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sput-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    .line 6005
    :try_start_0
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v2, "OrderStr"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6006
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbBody:Lorg/json/JSONObject;

    const-string v2, "CartStr"

    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbCartStr:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6011
    :goto_0
    return-void

    .line 6007
    :catch_0
    move-exception v0

    .line 6009
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
