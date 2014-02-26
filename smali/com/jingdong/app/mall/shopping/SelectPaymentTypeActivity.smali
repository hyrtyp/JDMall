.class public Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "SelectPaymentTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;,
        Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;,
        Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$IDialogClickListener;,
        Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;,
        Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;,
        Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;,
        Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;
    }
.end annotation


# static fields
.field private static final MAP_URL:Ljava/lang/String; = "file:///android_asset/map.htm"

.field public static final PAY_CASH_DELIVERY:I = 0x1

.field public static final PAY_ONLINE:I = 0x4

.field public static final PAY_POST:I = 0x2

.field public static final PAY_SELF:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SelectPaymentTypeActivity"


# instance fields
.field protected final BY_ID:I

.field protected final BY_String:I

.field private ConfirmRG:Landroid/widget/RadioGroup;

.field private final OPERATING_BIG_SEND_TIME:I

.field private final OPERATING_PAYMENT_TYPE:I

.field private final OPERATING_PAYMENT_WAY:I

.field private final OPERATING_SELF:I

.field private final OPERATING_SEND_TIME:I

.field private final OPERATING_SEND_TYPE:I

.field private bigDeliveryTimeButton:Landroid/widget/ImageButton;

.field private bigDeliveryTimeTip:Landroid/widget/TextView;

.field private bigDeliveryTimeTv:Landroid/widget/TextView;

.field private comfirmPayment:Landroid/widget/Button;

.field private confirmTip:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private deliveryTimeButton:Landroid/widget/ImageButton;

.field private deliveryTimeTip:Landroid/widget/TextView;

.field private deliveryTimeTv:Landroid/widget/TextView;

.field private distributionTypeButton:Landroid/widget/ImageButton;

.field private distributionTypeTv:Landroid/widget/TextView;

.field private errorTips:Ljava/lang/String;

.field private hd:Landroid/os/Handler;

.field isNoRegisterOrder:Z

.field private isPhoneConfirm:Z

.field jdBody:Lorg/json/JSONObject;

.field jdCart:Lorg/json/JSONObject;

.field jdOrder:Lorg/json/JSONObject;

.field private lsPin:Ljava/lang/String;

.field private mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

.field private mCurrPayMonyTypesId:I

.field private mCurrPaymentId:I

.field private mCurrSelfId:I

.field private mCurrSendTimeId:I

.field private mCurrSendTypeId:I

.field private mDialog:Landroid/app/Dialog;

.field private mPayMentJSON:Lorg/json/JSONObject;

.field private mPickSitesJSON:Lorg/json/JSONObject;

.field mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

.field private mSendTimeJSON:Lorg/json/JSONObject;

.field private paymentTypeArrowButton:Landroid/widget/ImageButton;

.field private paymentTypeTv:Landroid/widget/TextView;

.field private paymentTypesTip:Landroid/widget/TextView;

.field private paymentTypesTv:Landroid/widget/TextView;

.field private paymentTypesbutton:Landroid/widget/ImageButton;

.field private paymentsContentLayout:Landroid/widget/RelativeLayout;

.field private selfButton:Landroid/widget/ImageButton;

.field private selfTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 65
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdCart:Lorg/json/JSONObject;

    .line 66
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    .line 67
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdBody:Lorg/json/JSONObject;

    .line 70
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->isNoRegisterOrder:Z

    .line 72
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypeTv:Landroid/widget/TextView;

    .line 73
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypeArrowButton:Landroid/widget/ImageButton;

    .line 74
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentsContentLayout:Landroid/widget/RelativeLayout;

    .line 75
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->comfirmPayment:Landroid/widget/Button;

    .line 81
    const/16 v0, 0x46

    iput v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSendTypeId:I

    .line 82
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->isPhoneConfirm:Z

    .line 83
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    .line 85
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPayMentJSON:Lorg/json/JSONObject;

    .line 86
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mSendTimeJSON:Lorg/json/JSONObject;

    .line 87
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPickSitesJSON:Lorg/json/JSONObject;

    .line 94
    iput v3, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OPERATING_PAYMENT_TYPE:I

    .line 95
    const/4 v0, 0x2

    iput v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OPERATING_SEND_TYPE:I

    .line 96
    const/4 v0, 0x3

    iput v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OPERATING_SEND_TIME:I

    .line 97
    const/4 v0, 0x4

    iput v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OPERATING_BIG_SEND_TIME:I

    .line 98
    const/4 v0, 0x5

    iput v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OPERATING_PAYMENT_WAY:I

    .line 99
    const/4 v0, 0x6

    iput v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OPERATING_SELF:I

    .line 101
    iput v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->BY_ID:I

    .line 102
    iput v3, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->BY_String:I

    .line 104
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->distributionTypeTv:Landroid/widget/TextView;

    .line 105
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->distributionTypeButton:Landroid/widget/ImageButton;

    .line 107
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeTip:Landroid/widget/TextView;

    .line 108
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeTv:Landroid/widget/TextView;

    .line 109
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeButton:Landroid/widget/ImageButton;

    .line 111
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->bigDeliveryTimeTip:Landroid/widget/TextView;

    .line 112
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->bigDeliveryTimeTv:Landroid/widget/TextView;

    .line 113
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->bigDeliveryTimeButton:Landroid/widget/ImageButton;

    .line 115
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypesTv:Landroid/widget/TextView;

    .line 116
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypesTip:Landroid/widget/TextView;

    .line 117
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypesbutton:Landroid/widget/ImageButton;

    .line 119
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->confirmTip:Landroid/widget/TextView;

    .line 120
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->ConfirmRG:Landroid/widget/RadioGroup;

    .line 122
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->selfTv:Landroid/widget/TextView;

    .line 123
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->selfButton:Landroid/widget/ImageButton;

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->hd:Landroid/os/Handler;

    .line 126
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->context:Landroid/content/Context;

    .line 128
    const-string v0, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->errorTips:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mDialog:Landroid/app/Dialog;

    .line 61
    return-void
.end method

.method private OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "object"
    .parameter "key"
    .parameter "value"
    .parameter "defaultValue"

    .prologue
    .line 1323
    if-nez p3, :cond_0

    .line 1324
    if-eqz p4, :cond_0

    .line 1325
    :try_start_0
    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1329
    :cond_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    :goto_0
    return-void

    .line 1331
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPickSitesJSON:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1198
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->pickSitesSelectedByJs(I)V

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->selectChange(II)V

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrPaymentId:I

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1274
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->initOrderJson()V

    return-void
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1116
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->requestSendInfo(I)V

    return-void
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrPayMonyTypesId:I

    return-void
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypesTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSendTimeId:I

    return-void
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPayMentJSON:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->bigDeliveryTimeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    return-void
.end method

.method static synthetic access$22(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSelfId:I

    return-void
.end method

.method static synthetic access$23(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->selfTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$24(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 615
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->handleDatas(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mSendTimeJSON:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$26(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 819
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->updatePayMentsData(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$27(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Lorg/json/JSONArray;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 665
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->updatePickSitesData(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$28(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->createPickAlertDiglog()V

    return-void
.end method

.method static synthetic access$29(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1230
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getCurrPickPostionId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;ILorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->createAlertDiglog(ILorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$30(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->isPhoneConfirm:Z

    return-void
.end method

.method static synthetic access$31(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Ljava/util/ArrayList;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1977
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->show311Dialog(Ljava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$32(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Landroid/widget/ListView;Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2127
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->resetRightAdapter(Landroid/widget/ListView;Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;)V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 77
    iget v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrPaymentId:I

    return v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSelfId:I

    return v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSendTypeId:I

    return v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 79
    iget v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSendTimeId:I

    return v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->isPhoneConfirm:Z

    return v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrPayMonyTypesId:I

    return v0
.end method

.method private compositeOrderStrByAddEasyBuy()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1050
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1051
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    .line 1052
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v5, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1053
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v5, "Mobile"

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1054
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v5, "Phone"

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/UserInfo;->getUserPhone()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1055
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v5, "Zip"

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1057
    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    .line 1058
    .local v3, userInfoJSON:Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v5, "IdProvince"

    const-string v6, "IdProvince"

    invoke-direct {p0, v3, v6}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1059
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v5, "IdCity"

    const-string v6, "IdCity"

    invoke-direct {p0, v3, v6}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x48

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1060
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v5, "IdArea"

    const-string v6, "IdArea"

    invoke-direct {p0, v3, v6}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0xb03

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1061
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v5, "Where"

    const-string v6, "Where"

    invoke-direct {p0, v3, v6}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, ""

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1062
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v5, "Email"

    const-string v6, "Email"

    invoke-direct {p0, v3, v6}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, ""

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1063
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v5, "UserLevel"

    const-string v6, "UserLevel"

    invoke-direct {p0, v3, v6}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1065
    const/4 v0, 0x1

    .line 1067
    .local v0, payId:I
    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    if-lez v4, :cond_0

    .line 1068
    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v0, v4, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    .line 1070
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v5, "IdPaymentType"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1072
    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1074
    .local v1, paymentJSON:Lorg/json/JSONObject;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1076
    .local v2, paymentWay:Ljava/lang/Integer;
    const-string v4, "PaymentWay"

    invoke-direct {p0, v1, v4}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1077
    const-string v4, "PaymentWay"

    invoke-direct {p0, v1, v4}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1080
    .end local v2           #paymentWay:Ljava/lang/Integer;
    :cond_1
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v5, "PaymentWay"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v4, v5, v2, v6}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1082
    .end local v0           #payId:I
    .end local v1           #paymentJSON:Lorg/json/JSONObject;
    .end local v3           #userInfoJSON:Lorg/json/JSONObject;
    :cond_2
    return-void
.end method

.method private createAlertDiglog(ILorg/json/JSONObject;)V
    .locals 21
    .parameter "operating"
    .parameter "object"

    .prologue
    .line 335
    if-nez p2, :cond_0

    .line 410
    :goto_0
    return-void

    .line 338
    :cond_0
    const/16 v19, 0x0

    .line 339
    .local v19, ob:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 341
    .local v16, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    .line 343
    :try_start_0
    const-string v3, "paymentInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrPaymentId:I

    const/4 v6, 0x0

    const-string v7, "Name"

    const-string v8, "Id"

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOpeartingData(Lorg/json/JSONArray;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;

    move-result-object v19

    .line 344
    const v3, 0x7f07043e

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :cond_1
    :goto_1
    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;->items:[Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;->items:[Ljava/lang/String;

    array-length v3, v3

    if-gtz v3, :cond_8

    .line 384
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->errorTips:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 346
    :cond_3
    const/4 v3, 0x5

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    .line 348
    :try_start_1
    const-string v3, "ShipmentTypes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "SupPaymentWay"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 349
    .local v4, supPaymentWayArray:Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrPayMonyTypesId:I

    const/4 v6, 0x0

    const-string v7, "Name"

    const-string v8, "Id"

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOpeartingData(Lorg/json/JSONArray;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;

    move-result-object v19

    .line 350
    const v3, 0x7f07043f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 376
    .end local v4           #supPaymentWayArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 352
    :cond_4
    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    .line 354
    const-string v3, "ShipmentTypes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "SupCodTime"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 355
    .local v6, supCodTimeArray:Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget v7, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSendTimeId:I

    const/4 v8, 0x0

    const-string v9, "Name"

    const-string v10, "Id"

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOpeartingData(Lorg/json/JSONArray;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;

    move-result-object v19

    .line 356
    const v3, 0x7f070440

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 358
    .end local v6           #supCodTimeArray:Lorg/json/JSONArray;
    :cond_5
    const/4 v3, 0x4

    move/from16 v0, p1

    if-ne v0, v3, :cond_6

    .line 360
    const-string v3, "ShipmentTypes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "bigItemCodDate"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 361
    .local v8, bigSupCodTimeArray:Lorg/json/JSONArray;
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Name"

    const-string v12, "Id"

    const/4 v13, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOpeartingData(Lorg/json/JSONArray;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;

    move-result-object v19

    .line 362
    const v3, 0x7f070441

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 364
    .end local v8           #bigSupCodTimeArray:Lorg/json/JSONArray;
    :cond_6
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_7

    .line 366
    new-instance v20, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;

    invoke-direct/range {v20 .. v21}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 367
    .end local v19           #ob:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;
    .local v20, ob:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;
    :try_start_2
    const-string v3, "ShipmentTypes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "Name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 368
    .local v18, name:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v18, v3, v5

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;->items:[Ljava/lang/String;

    .line 369
    const v3, 0x7f070442

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v19, v20

    .line 371
    .end local v20           #ob:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;
    .restart local v19       #ob:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;
    goto/16 :goto_1

    .end local v18           #name:Ljava/lang/String;
    :cond_7
    const/4 v3, 0x6

    move/from16 v0, p1

    if-ne v0, v3, :cond_1

    .line 373
    :try_start_3
    const-string v3, "PickSites"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSelfId:I

    const/4 v12, 0x0

    const-string v13, "Name"

    const-string v14, "Id"

    const/4 v15, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v15}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOpeartingData(Lorg/json/JSONArray;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;

    move-result-object v19

    .line 374
    const v3, 0x7f070443

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 392
    :cond_8
    move-object/from16 v0, v19

    iget v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;->defaultSelect:I

    move/from16 v17, v0

    .line 394
    .local v17, defaultSelectId:I
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;->items:[Ljava/lang/String;

    new-instance v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$3;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v5, v0, v1, v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$3;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;II)V

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 409
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 376
    .end local v17           #defaultSelectId:I
    .end local v19           #ob:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;
    .restart local v20       #ob:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;
    :catch_1
    move-exception v3

    move-object/from16 v19, v20

    .end local v20           #ob:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;
    .restart local v19       #ob:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;
    goto/16 :goto_1
.end method

.method public static createDaysList(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 11
    .parameter "promise311"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1925
    const/4 v9, 0x0

    .line 1926
    .local v9, promiseDays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;>;"
    if-nez p0, :cond_0

    .line 1927
    const/4 v10, 0x0

    .line 1974
    :goto_0
    return-object v10

    .line 1929
    :cond_0
    const-string v10, "days"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1930
    .local v0, array:Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 1932
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #promiseDays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1934
    .restart local v9       #promiseDays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v6, v10, :cond_2

    .end local v6           #i:I
    :cond_1
    move-object v10, v9

    .line 1974
    goto :goto_0

    .line 1936
    .restart local v6       #i:I
    :cond_2
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1938
    .local v1, d:Lorg/json/JSONObject;
    if-eqz v1, :cond_4

    .line 1940
    new-instance v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;

    invoke-direct {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;-><init>()V

    .line 1941
    .local v2, day:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;
    const-string v10, "date"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;->date:Ljava/lang/String;

    .line 1942
    const-string v10, "week"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;->week:Ljava/lang/String;

    .line 1944
    const-string v10, "hours"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1946
    .local v5, hoursArray:Lorg/json/JSONArray;
    if-eqz v5, :cond_3

    .line 1948
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;->hours:Ljava/util/ArrayList;

    .line 1950
    const/4 v8, 0x0

    .local v8, j:I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v8, v10, :cond_5

    .line 1968
    .end local v8           #j:I
    :cond_3
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1934
    .end local v2           #day:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;
    .end local v5           #hoursArray:Lorg/json/JSONArray;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1951
    .restart local v2       #day:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;
    .restart local v5       #hoursArray:Lorg/json/JSONArray;
    .restart local v8       #j:I
    :cond_5
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1952
    .local v3, h:Lorg/json/JSONObject;
    if-eqz v3, :cond_6

    .line 1953
    const-string v10, "isCanSelected"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 1954
    .local v7, isCanSelected:Z
    if-eqz v7, :cond_6

    .line 1955
    new-instance v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;

    invoke-direct {v4}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;-><init>()V

    .line 1956
    .local v4, hour:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;
    const-string v10, "promiseSendPay"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;->promiseSendPay:Ljava/lang/String;

    .line 1958
    const/4 v10, 0x1

    iput-boolean v10, v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;->isCanSelected:Z

    .line 1959
    const-string v10, "promiseTimeRange"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;->promiseTimeRange:Ljava/lang/String;

    .line 1960
    iget-object v10, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;->hours:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1950
    .end local v4           #hour:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;
    .end local v7           #isCanSelected:Z
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private createPickAlertDiglog()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    .line 724
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 725
    .local v6, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v0, 0x7f070443

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 726
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->context:Landroid/content/Context;

    const v1, 0x7f03014e

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 727
    .local v8, rootView:Landroid/view/View;
    const v0, 0x7f0c0ad3

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/webkit/WebView;

    .line 728
    .local v9, webView:Landroid/webkit/WebView;
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 729
    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 730
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v9, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 731
    new-instance v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;

    invoke-direct {v0, p0, v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$JavaScriptInterface;)V

    const-string v1, "android"

    invoke-virtual {v9, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    const/16 v0, 0x96

    invoke-virtual {v9, v0}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 734
    const v0, 0x7f0c0ad5

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    .line 735
    .local v10, zhitiListView:Landroid/widget/ListView;
    new-instance v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$13;

    const v3, 0x1090012

    const v4, 0x1020014

    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getPicks()[Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$13;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 745
    invoke-virtual {v10, v12}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 746
    iget v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSelfId:I

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getCurrPickPostionId(I)I

    move-result v0

    invoke-virtual {v10, v0, v12}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 748
    const v0, 0x7f0c0ad4

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 749
    .local v11, zhituMapBtn:Landroid/widget/Button;
    const v0, 0x7f070445

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setText(I)V

    .line 750
    new-instance v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;

    invoke-direct {v0, p0, v9, v10, v11}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Landroid/webkit/WebView;Landroid/widget/ListView;Landroid/widget/Button;)V

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 774
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 775
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 776
    .local v7, dialog:Landroid/app/AlertDialog;
    iput-object v7, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mDialog:Landroid/app/Dialog;

    .line 777
    new-instance v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$15;

    invoke-direct {v0, p0, v7}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$15;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 787
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 789
    new-instance v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$16;

    invoke-direct {v0, p0, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$16;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v9, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 817
    return-void
.end method

.method private getCartItemInfo()V
    .locals 1

    .prologue
    .line 1030
    sget-object v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    if-eqz v0, :cond_0

    .line 1031
    sget-object v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->toCheckedCartStr()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdCart:Lorg/json/JSONObject;

    .line 1047
    :cond_0
    return-void
.end method

.method private getCurrPickPostionId(I)I
    .locals 6
    .parameter "currPickId"

    .prologue
    .line 1232
    :try_start_0
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPickSitesJSON:Lorg/json/JSONObject;

    const-string v5, "PickSites"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1233
    .local v3, pickArray:Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 1235
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 1236
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_2

    .line 1249
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v3           #pickArray:Lorg/json/JSONArray;
    :cond_0
    :goto_1
    const/4 v0, 0x0

    :cond_1
    return v0

    .line 1237
    .restart local v0       #i:I
    .restart local v1       #length:I
    .restart local v3       #pickArray:Lorg/json/JSONArray;
    :cond_2
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1238
    .local v2, object:Lorg/json/JSONObject;
    const-string v4, "Id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eq p1, v4, :cond_1

    .line 1236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1243
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #pickArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static getFirstVisPos(Ljava/util/ArrayList;)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1911
    .local p0, days:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;>;"
    const/4 v0, 0x0

    .line 1912
    .local v0, checkedPos:I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1913
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 1921
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_0
    :goto_1
    return v0

    .line 1914
    .restart local v2       #i:I
    .restart local v3       #n:I
    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;

    .line 1915
    .local v1, day:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;->hours:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;->hours:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1916
    move v0, v2

    .line 1917
    goto :goto_1

    .line 1913
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getOpeartingData(Lorg/json/JSONArray;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;
    .locals 7
    .parameter "array"
    .parameter "comparisonNum"
    .parameter "comparisonStr"
    .parameter "nameKay"
    .parameter "ValueKey"
    .parameter "type"

    .prologue
    .line 298
    move-object v3, p1

    .line 299
    .local v3, objectArray:Lorg/json/JSONArray;
    if-eqz v3, :cond_3

    .line 300
    :try_start_0
    new-instance v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V

    .line 302
    .local v1, ob:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;->items:[Ljava/lang/String;

    .line 304
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;->items:[Ljava/lang/String;

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 331
    .end local v0           #i:I
    .end local v1           #ob:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;
    :goto_1
    return-object v1

    .line 305
    .restart local v0       #i:I
    .restart local v1       #ob:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 306
    .local v2, object:Lorg/json/JSONObject;
    iget-object v4, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;->items:[Ljava/lang/String;

    invoke-virtual {v2, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 308
    if-nez p6, :cond_2

    .line 309
    invoke-virtual {v2, p5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    sub-int v4, p2, v4

    if-nez v4, :cond_1

    .line 310
    iput v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;->defaultSelect:I

    .line 304
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_2
    const/4 v4, 0x1

    if-ne p6, v4, :cond_1

    iget-object v4, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;->items:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    .line 313
    iget-object v4, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;->items:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 314
    iput v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;->defaultSelect:I

    goto :goto_2

    .line 325
    .end local v0           #i:I
    .end local v1           #ob:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$OperatingBean;
    .end local v2           #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 331
    :goto_3
    const/4 v1, 0x0

    goto :goto_1

    .line 322
    :cond_3
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->errorTips:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method private getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "object"
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 1339
    if-nez p1, :cond_0

    .line 1348
    :goto_0
    return-object v1

    .line 1343
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getPaymentTypes()V
    .locals 5

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, functionId:Ljava/lang/String;
    sget-boolean v2, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v2, :cond_1

    .line 171
    :cond_0
    :try_start_0
    const-string v1, "easyBuyPaymentType"

    .line 172
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdBody:Lorg/json/JSONObject;

    .line 173
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdBody:Lorg/json/JSONObject;

    const-string v3, "OrderStr"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdBody:Lorg/json/JSONObject;

    const-string v3, "paymentType"

    invoke-direct {p0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 189
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 179
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    const-string v1, "paymentType"

    .line 180
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->updatCcomositeBody()V

    .line 182
    :try_start_1
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdBody:Lorg/json/JSONObject;

    const-string v3, "isCurrentOrder"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 183
    :catch_1
    move-exception v0

    .line 184
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getPicks()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 1254
    :try_start_0
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPickSitesJSON:Lorg/json/JSONObject;

    const-string v6, "PickSites"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1255
    .local v4, pickArray:Lorg/json/JSONArray;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1256
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 1257
    .local v2, length:I
    new-array v1, v2, [Ljava/lang/String;

    .line 1258
    .local v1, items:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 1271
    .end local v0           #i:I
    .end local v1           #items:[Ljava/lang/String;
    .end local v2           #length:I
    .end local v4           #pickArray:Lorg/json/JSONArray;
    :goto_1
    return-object v1

    .line 1259
    .restart local v0       #i:I
    .restart local v1       #items:[Ljava/lang/String;
    .restart local v2       #length:I
    .restart local v4       #pickArray:Lorg/json/JSONArray;
    :cond_0
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1260
    .local v3, object:Lorg/json/JSONObject;
    const-string v5, "Name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1265
    .end local v0           #i:I
    .end local v1           #items:[Ljava/lang/String;
    .end local v2           #length:I
    .end local v3           #object:Lorg/json/JSONObject;
    .end local v4           #pickArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    .line 1271
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getPositions()V
    .locals 5

    .prologue
    .line 1143
    const/4 v1, 0x0

    .line 1144
    .local v1, functionId:Ljava/lang/String;
    sget-boolean v2, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v2, :cond_1

    .line 1146
    :cond_0
    :try_start_0
    const-string v1, "easyBuyPickSites"

    .line 1147
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdBody:Lorg/json/JSONObject;

    .line 1148
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdBody:Lorg/json/JSONObject;

    const-string v3, "OrderStr"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdBody:Lorg/json/JSONObject;

    const-string v3, "pickSites"

    invoke-direct {p0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1158
    return-void

    .line 1149
    :catch_0
    move-exception v0

    .line 1150
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1153
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    const-string v1, "pickSites"

    .line 1154
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->updatCcomositeBody()V

    goto :goto_0
.end method

.method private getSendTypes()V
    .locals 5

    .prologue
    .line 1125
    const/4 v1, 0x0

    .line 1126
    .local v1, functionId:Ljava/lang/String;
    sget-boolean v2, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v2, :cond_1

    .line 1128
    :cond_0
    :try_start_0
    const-string v1, "easyBuyShipmentTypes"

    .line 1129
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdBody:Lorg/json/JSONObject;

    .line 1130
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdBody:Lorg/json/JSONObject;

    const-string v3, "OrderStr"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdBody:Lorg/json/JSONObject;

    const-string v3, "shipmentTypes"

    invoke-direct {p0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1140
    return-void

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1135
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    const-string v1, "shipmentTypes"

    .line 1136
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->updatCcomositeBody()V

    goto :goto_0
.end method

.method private handle311And411()Z
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1363
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mSendTimeJSON:Lorg/json/JSONObject;

    if-nez v11, :cond_1

    .line 1560
    :cond_0
    :goto_0
    return v9

    .line 1367
    :cond_1
    const/4 v6, 0x0

    .line 1368
    .local v6, sendJSON:Lorg/json/JSONObject;
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mSendTimeJSON:Lorg/json/JSONObject;

    const-string v12, "ShipmentTypes"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1369
    .local v2, a:Lorg/json/JSONArray;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 1370
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1373
    :cond_2
    if-eqz v6, :cond_0

    .line 1377
    const/4 v8, 0x0

    .line 1379
    .local v8, typeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;>;"
    const-string v11, "Promise311"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1381
    .local v0, Promise311:Lorg/json/JSONObject;
    if-eqz v0, :cond_4

    const-string v11, "support"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1383
    if-nez v8, :cond_3

    .line 1384
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #typeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1387
    .restart local v8       #typeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;>;"
    :cond_3
    new-instance v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;

    invoke-direct {v7, p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V

    .line 1389
    .local v7, type:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;
    const/16 v11, 0x137

    iput v11, v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->localType:I

    .line 1392
    const-string v11, "promiseType"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->promiseType:I

    .line 1394
    iput-boolean v10, v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->support:Z

    .line 1396
    const-string v11, "promise311Tip"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->promise311Tip:Ljava/lang/String;

    .line 1398
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->createDaysList(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->days:Ljava/util/ArrayList;

    .line 1400
    iget-object v11, v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->days:Ljava/util/ArrayList;

    invoke-static {v11}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getFirstVisPos(Ljava/util/ArrayList;)I

    move-result v11

    iput v11, v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->firstVisPos:I

    .line 1402
    const-string v11, "show311Text"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->show311Text:Ljava/lang/String;

    .line 1404
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1408
    .end local v7           #type:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;
    :cond_4
    const-string v11, "Promise411"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1410
    .local v1, Promise411:Lorg/json/JSONObject;
    if-eqz v1, :cond_6

    const-string v11, "support"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "grayFlag"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1412
    if-nez v8, :cond_5

    .line 1413
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #typeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1416
    .restart local v8       #typeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;>;"
    :cond_5
    new-instance v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;

    invoke-direct {v7, p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V

    .line 1418
    .restart local v7       #type:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;
    const/16 v11, 0x19b

    iput v11, v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->localType:I

    .line 1420
    const-string v11, "promiseType"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->promiseType:I

    .line 1421
    const-string v11, "promiseSendPay"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->promiseSendPay:Ljava/lang/String;

    .line 1422
    iput-boolean v10, v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->support:Z

    .line 1423
    iput-boolean v9, v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->grayFlag:Z

    .line 1424
    const-string v11, "promiseMsg"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->promiseMsg:Ljava/lang/String;

    .line 1425
    const-string v11, "sendMsg"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->sendMsg:Ljava/lang/String;

    .line 1427
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1431
    .end local v7           #type:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;
    :cond_6
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 1435
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    .line 1437
    iget v9, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSendTimeId:I

    invoke-direct {p0, v6, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->handle311And411(Lorg/json/JSONObject;I)Z

    move-result v3

    .line 1439
    .local v3, isCanSelected:Z
    if-eqz v3, :cond_7

    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    invoke-virtual {v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isVisibility()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1440
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    invoke-virtual {v9, v6}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->updateShowText(Lorg/json/JSONObject;)Z

    .line 1441
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeTv:Landroid/widget/TextView;

    if-eqz v9, :cond_7

    .line 1445
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeTv:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->showText:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1451
    :cond_7
    move-object v5, v8

    .line 1453
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;>;"
    new-instance v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;

    invoke-direct {v4, p0, v5}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Ljava/util/ArrayList;)V

    .line 1553
    .local v4, l:Landroid/view/View$OnClickListener;
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeTv:Landroid/widget/TextView;

    if-eqz v9, :cond_8

    .line 1554
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeTv:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1556
    :cond_8
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeButton:Landroid/widget/ImageButton;

    if-eqz v9, :cond_9

    .line 1557
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    move v9, v10

    .line 1560
    goto/16 :goto_0
.end method

.method private handle311And411(Lorg/json/JSONObject;I)Z
    .locals 2
    .parameter "sendJSON"
    .parameter "codTime"

    .prologue
    .line 2164
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    invoke-virtual {v1, p1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isCanSelected(Lorg/json/JSONObject;)Z

    move-result v0

    .line 2166
    .local v0, isCanSelected:Z
    :goto_0
    if-nez v0, :cond_0

    .line 2168
    invoke-static {p2, p1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->selectDefaultPromiseTime(ILorg/json/JSONObject;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    .line 2170
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2171
    const/4 v0, 0x1

    .line 2176
    :cond_0
    if-nez v0, :cond_1

    .line 2177
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    .line 2180
    :cond_1
    return v0

    .line 2164
    .end local v0           #isCanSelected:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleDatas(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V
    .locals 2
    .parameter "httpResponse"
    .parameter "action"

    .prologue
    const/4 v1, 0x0

    .line 616
    const-string v0, "paymentType"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPayMentJSON:Lorg/json/JSONObject;

    .line 619
    sget-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v0, v0, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->updatePayments(I)V

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    const-string v0, "shipmentTypes"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 623
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPickSitesJSON:Lorg/json/JSONObject;

    .line 624
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    const-string v1, "shipmentTypesInfo"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mSendTimeJSON:Lorg/json/JSONObject;

    .line 625
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->hd:Landroid/os/Handler;

    new-instance v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$10;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$10;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    goto :goto_0

    .line 641
    :cond_2
    const-string v0, "pickSites"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mSendTimeJSON:Lorg/json/JSONObject;

    .line 645
    :try_start_1
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    const-string v1, "pickSitesInfo"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPickSitesJSON:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 651
    :goto_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->hd:Landroid/os/Handler;

    new-instance v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$11;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$11;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 646
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private handlePromiseTime()Z
    .locals 2

    .prologue
    .line 1354
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->handle311And411()Z

    move-result v0

    .line 1355
    .local v0, isHandled:Z
    if-nez v0, :cond_0

    .line 1356
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    .line 1358
    :cond_0
    return v0
.end method

.method private handlerClickResult(Lorg/json/JSONArray;[Ljava/lang/String;ILcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$IDialogClickListener;)V
    .locals 9
    .parameter "array"
    .parameter "keys"
    .parameter "gradationId"
    .parameter "callback"

    .prologue
    .line 533
    move-object v5, p1

    .line 534
    .local v5, objectArray:Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    .line 535
    :try_start_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 537
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 554
    .end local v0           #i:I
    .end local v2           #length:I
    :cond_0
    :goto_1
    return-void

    .line 538
    .restart local v0       #i:I
    .restart local v2       #length:I
    :cond_1
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 539
    .local v4, object:Lorg/json/JSONObject;
    if-ne p3, v0, :cond_3

    .line 540
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 541
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    array-length v7, p2

    const/4 v6, 0x0

    :goto_2
    if-lt v6, v7, :cond_2

    .line 544
    invoke-interface {p4, v3}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$IDialogClickListener;->onCall(Ljava/util/Map;)V

    goto :goto_1

    .line 549
    .end local v0           #i:I
    .end local v2           #length:I
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 541
    .restart local v0       #i:I
    .restart local v2       #length:I
    .restart local v3       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4       #object:Lorg/json/JSONObject;
    :cond_2
    aget-object v1, p2, v6

    .line 542
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 537
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initOrderJson()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    .line 1275
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iput-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    .line 1276
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "pin"

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->lsPin:Ljava/lang/String;

    const-string v9, ""

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1277
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "Mobile"

    sget-object v8, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1278
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "Phone"

    sget-object v8, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/UserInfo;->getUserPhone()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1279
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "Zip"

    sget-object v8, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1280
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "IdProvince"

    sget-object v8, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "IdProvince"

    invoke-direct {p0, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1281
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "IdCity"

    sget-object v8, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "IdCity"

    invoke-direct {p0, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x48

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1282
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "IdArea"

    sget-object v8, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "IdArea"

    invoke-direct {p0, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0xb03

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1283
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "IdTown"

    sget-object v8, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "IdTown"

    invoke-direct {p0, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1284
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "Where"

    sget-object v8, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "Where"

    invoke-direct {p0, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, ""

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1285
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "Email"

    sget-object v8, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "Email"

    invoke-direct {p0, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, ""

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1286
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "UserLevel"

    sget-object v8, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "UserLevel"

    invoke-direct {p0, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1288
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "IdInvoiceType"

    sget-object v8, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "IdInvoiceType"

    invoke-direct {p0, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1289
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "IdInvoiceHeaderType"

    sget-object v8, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "IdInvoiceHeaderType"

    invoke-direct {p0, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1290
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "IdInvoiceContentTypeBook"

    sget-object v8, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "IdInvoiceContentTypeBook"

    invoke-direct {p0, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1291
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "IdCompanyBranch"

    sget-object v8, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "IdCompanyBranch"

    invoke-direct {p0, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1292
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "IdInvoiceContentsType"

    sget-object v8, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "IdInvoiceContentsType"

    invoke-direct {p0, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1294
    const/4 v0, 0x1

    .line 1295
    .local v0, payId:I
    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    const/4 v7, 0x5

    if-ge v6, v7, :cond_2

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    if-lez v6, :cond_2

    .line 1296
    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v0, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    .line 1301
    :goto_0
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "IdPaymentType"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1303
    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v7, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v7, v7, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v6, v7}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1304
    .local v1, paymentInfo:Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "PaymentWay"

    const-string v8, "PaymentWay"

    invoke-direct {p0, v1, v8}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getOrderInfoForKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1306
    const-wide/16 v4, 0x0

    .line 1308
    .local v4, promotionPriceId:D
    sget-wide v6, Lcom/jingdong/common/entity/LastOrderInfo;->dPromotionPrice:D

    cmpl-double v6, v6, v11

    if-ltz v6, :cond_0

    .line 1309
    sget-wide v4, Lcom/jingdong/common/entity/LastOrderInfo;->dPromotionPrice:D

    .line 1311
    :cond_0
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "PromotionPrice"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1313
    sget-wide v2, Lcom/jingdong/common/entity/LastOrderInfo;->dPrice:D

    .line 1314
    .local v2, price:D
    sget-wide v6, Lcom/jingdong/common/entity/LastOrderInfo;->dPrice:D

    cmpl-double v6, v6, v11

    if-ltz v6, :cond_1

    .line 1315
    sget-wide v2, Lcom/jingdong/common/entity/LastOrderInfo;->dPrice:D

    .line 1318
    :cond_1
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "Price"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->OrderPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1319
    return-void

    .line 1298
    .end local v1           #paymentInfo:Lorg/json/JSONObject;
    .end local v2           #price:D
    .end local v4           #promotionPriceId:D
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initSelID()V
    .locals 5

    .prologue
    .line 242
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 244
    .local v1, payInfo:Lcom/jingdong/common/entity/PaymentInfo;
    if-eqz v1, :cond_1

    .line 245
    iget v3, v1, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    const/4 v4, 0x5

    if-gt v3, v4, :cond_2

    iget v3, v1, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    if-lez v3, :cond_2

    .line 246
    iget v3, v1, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    iput v3, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrPaymentId:I

    .line 252
    :goto_0
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v3, v3, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v1, v3}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 254
    .local v2, selectedObject:Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 256
    const-string v3, "PaymentWay"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 258
    :try_start_0
    const-string v3, "PaymentWay"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrPayMonyTypesId:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_0
    :goto_1
    const-string v3, "CODTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 265
    :try_start_1
    const-string v3, "CODTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSendTimeId:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    .end local v2           #selectedObject:Lorg/json/JSONObject;
    :cond_1
    :goto_2
    return-void

    .line 249
    :cond_2
    const/4 v3, 0x1

    iput v3, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrPaymentId:I

    goto :goto_0

    .line 259
    .restart local v2       #selectedObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 266
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 267
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 192
    const v2, 0x7f0c0620

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypeTv:Landroid/widget/TextView;

    .line 193
    const v2, 0x7f0c0621

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypeArrowButton:Landroid/widget/ImageButton;

    .line 194
    const v2, 0x7f0c0622

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentsContentLayout:Landroid/widget/RelativeLayout;

    .line 195
    const v2, 0x7f0c0623

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->comfirmPayment:Landroid/widget/Button;

    .line 197
    const v2, 0x7f0c007e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 198
    .local v0, mTitle:Landroid/widget/TextView;
    const v2, 0x7f0702f8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 200
    new-instance v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$1;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V

    .line 209
    .local v1, paymentClickListener:Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypeTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypeArrowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->comfirmPayment:Landroid/widget/Button;

    new-instance v3, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$2;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$2;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    return-void
.end method

.method private pickSitesSelectedByJs(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 1203
    :try_start_0
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPickSitesJSON:Lorg/json/JSONObject;

    const-string v6, "PickSites"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1204
    .local v4, pickArray:Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 1205
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1206
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_2

    .line 1224
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v4           #pickArray:Lorg/json/JSONArray;
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_1

    .line 1225
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 1226
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mDialog:Landroid/app/Dialog;

    .line 1228
    :cond_1
    return-void

    .line 1207
    .restart local v0       #i:I
    .restart local v1       #length:I
    .restart local v4       #pickArray:Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1208
    .local v3, object:Lorg/json/JSONObject;
    if-ne p1, v0, :cond_3

    .line 1209
    const-string v5, "Name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1210
    .local v2, name:Ljava/lang/String;
    const-string v5, "Id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSelfId:I

    .line 1211
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->selfTv:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1206
    .end local v2           #name:Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1218
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v3           #object:Lorg/json/JSONObject;
    .end local v4           #pickArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private requestSendInfo(I)V
    .locals 1
    .parameter "payId"

    .prologue
    .line 1117
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1118
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getPositions()V

    .line 1122
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1120
    :cond_2
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getSendTypes()V

    goto :goto_0
.end method

.method private resetRightAdapter(Landroid/widget/ListView;Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;)V
    .locals 3
    .parameter "right"
    .parameter "day"

    .prologue
    .line 2129
    if-nez p1, :cond_0

    .line 2160
    :goto_0
    return-void

    .line 2132
    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;->hours:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;->hours:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 2133
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 2137
    :cond_2
    iget-object v0, p2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;->hours:Ljava/util/ArrayList;

    .line 2139
    .local v0, hourList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;>;"
    new-instance v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$26;

    const v2, 0x7f0300fb

    invoke-direct {v1, p0, p0, v2, v0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$26;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Landroid/content/Context;ILjava/util/List;)V

    .line 2158
    .local v1, rightAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;>;"
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private selectChange(II)V
    .locals 4
    .parameter "operating"
    .parameter "gradationId"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 421
    if-ne p1, v2, :cond_1

    .line 424
    const/4 v2, 0x2

    :try_start_0
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Name"

    aput-object v3, v1, v2

    .line 425
    .local v1, keys:[Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPayMentJSON:Lorg/json/JSONObject;

    const-string v3, "paymentInfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$4;

    invoke-direct {v3, p0, v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$4;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;[Ljava/lang/String;)V

    invoke-direct {p0, v2, v1, p2, v3}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->handlerClickResult(Lorg/json/JSONArray;[Ljava/lang/String;ILcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$IDialogClickListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .end local v1           #keys:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 447
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    .line 450
    const/4 v2, 0x2

    :try_start_1
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Name"

    aput-object v3, v1, v2

    .line 451
    .restart local v1       #keys:[Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mSendTimeJSON:Lorg/json/JSONObject;

    const-string v3, "ShipmentTypes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "SupPaymentWay"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$5;

    invoke-direct {v3, p0, v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$5;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;[Ljava/lang/String;)V

    invoke-direct {p0, v2, v1, p2, v3}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->handlerClickResult(Lorg/json/JSONArray;[Ljava/lang/String;ILcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$IDialogClickListener;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 459
    .end local v1           #keys:[Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 460
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 463
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 466
    const/4 v2, 0x2

    :try_start_2
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Name"

    aput-object v3, v1, v2

    .line 467
    .restart local v1       #keys:[Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mSendTimeJSON:Lorg/json/JSONObject;

    const-string v3, "ShipmentTypes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "SupCodTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$6;

    invoke-direct {v3, p0, v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$6;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;[Ljava/lang/String;)V

    invoke-direct {p0, v2, v1, p2, v3}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->handlerClickResult(Lorg/json/JSONArray;[Ljava/lang/String;ILcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$IDialogClickListener;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 475
    .end local v1           #keys:[Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 476
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 478
    .end local v0           #e:Lorg/json/JSONException;
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 481
    const/4 v2, 0x2

    :try_start_3
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Value"

    aput-object v3, v1, v2

    .line 482
    .restart local v1       #keys:[Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mSendTimeJSON:Lorg/json/JSONObject;

    const-string v3, "ShipmentTypes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "bigItemCodDate"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$7;

    invoke-direct {v3, p0, v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$7;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;[Ljava/lang/String;)V

    invoke-direct {p0, v2, v1, p2, v3}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->handlerClickResult(Lorg/json/JSONArray;[Ljava/lang/String;ILcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$IDialogClickListener;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 498
    .end local v1           #keys:[Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 499
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 501
    .end local v0           #e:Lorg/json/JSONException;
    :cond_4
    if-eq p1, v3, :cond_0

    .line 503
    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    .line 506
    const/4 v2, 0x2

    :try_start_4
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Name"

    aput-object v3, v1, v2

    .line 507
    .restart local v1       #keys:[Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPickSitesJSON:Lorg/json/JSONObject;

    const-string v3, "PickSites"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$8;

    invoke-direct {v3, p0, v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$8;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;[Ljava/lang/String;)V

    invoke-direct {p0, v2, v1, p2, v3}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->handlerClickResult(Lorg/json/JSONArray;[Ljava/lang/String;ILcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$IDialogClickListener;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 518
    .end local v1           #keys:[Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 519
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .parameter "funcID"
    .parameter "param"
    .parameter "action"

    .prologue
    const/4 v2, 0x1

    .line 569
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 570
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v0, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 572
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUseCookies(Z)V

    .line 578
    :goto_0
    new-instance v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$9;

    invoke-direct {v1, p0, p3}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$9;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 611
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 612
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 613
    return-void

    .line 576
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUseCookies(Z)V

    goto :goto_0
.end method

.method private show311Dialog(Ljava/util/ArrayList;II)V
    .locals 11
    .parameter
    .parameter "checkedPos"
    .parameter "promiseType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, dayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;>;"
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 1983
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 2125
    :cond_0
    :goto_0
    return-void

    .line 1987
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300f9

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1989
    .local v1, dialogView:Landroid/view/View;
    const v3, 0x7f0c0624

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 1993
    .local v8, left:Landroid/widget/ListView;
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f0300fa

    invoke-direct {v3, p0, v4, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v8, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1994
    invoke-virtual {v8, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1995
    invoke-virtual {v8, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1999
    invoke-virtual {v8, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2001
    const v3, 0x7f0c0625

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    .line 2003
    .local v9, right:Landroid/widget/ListView;
    const v3, 0x106000d

    invoke-virtual {v9, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 2005
    invoke-virtual {v9, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 2006
    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 2008
    invoke-virtual {v9, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2010
    const v3, 0x7f0c05ba

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 2012
    new-instance v3, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$24;

    invoke-direct {v3, p0, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$24;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Landroid/widget/ListView;)V

    invoke-virtual {v8, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2039
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "\u9009\u62e9\u6307\u5b9a\u9001\u8d27\u65f6\u95f4"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, dialog:Landroid/app/AlertDialog;
    move v3, v2

    move v4, v2

    move v5, v2

    .line 2041
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 2043
    new-instance v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;

    move-object v3, p0

    move-object v4, v8

    move-object v5, v9

    move v6, p3

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Landroid/widget/ListView;Landroid/widget/ListView;ILandroid/app/AlertDialog;)V

    invoke-virtual {v9, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2120
    invoke-virtual {v8, p2, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 2121
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;

    invoke-direct {p0, v9, v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->resetRightAdapter(Landroid/widget/ListView;Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;)V

    .line 2123
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private updatePayMentsData(Lorg/json/JSONObject;)V
    .locals 22
    .parameter "sendJSON"

    .prologue
    .line 821
    const v20, 0x7f0300cc

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 823
    .local v10, layout:Landroid/widget/RelativeLayout;
    const v20, 0x7f0c049f

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->distributionTypeTv:Landroid/widget/TextView;

    .line 824
    const v20, 0x7f0c04a0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->distributionTypeButton:Landroid/widget/ImageButton;

    .line 826
    const v20, 0x7f0c04a1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeTip:Landroid/widget/TextView;

    .line 827
    const v20, 0x7f0c04a2

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeTv:Landroid/widget/TextView;

    .line 828
    const v20, 0x7f0c04a3

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeButton:Landroid/widget/ImageButton;

    .line 830
    const v20, 0x7f0c04a4

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->bigDeliveryTimeTip:Landroid/widget/TextView;

    .line 831
    const v20, 0x7f0c04a5

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->bigDeliveryTimeTv:Landroid/widget/TextView;

    .line 832
    const v20, 0x7f0c04a6

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->bigDeliveryTimeButton:Landroid/widget/ImageButton;

    .line 834
    const v20, 0x7f0c04ac

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypesTv:Landroid/widget/TextView;

    .line 835
    const v20, 0x7f0c04ab

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypesTip:Landroid/widget/TextView;

    .line 836
    const v20, 0x7f0c04ad

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypesbutton:Landroid/widget/ImageButton;

    .line 838
    const v20, 0x7f0c04a8

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RadioGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->ConfirmRG:Landroid/widget/RadioGroup;

    .line 839
    const v20, 0x7f0c04a7

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->confirmTip:Landroid/widget/TextView;

    .line 841
    if-nez p1, :cond_0

    .line 1027
    :goto_0
    return-void

    .line 850
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrPaymentId:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypesbutton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypesTv:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypesTip:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 894
    :cond_1
    :goto_1
    const-string v20, "Id"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSendTypeId:I

    .line 897
    const-string v20, "Name"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 898
    .local v11, name:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->distributionTypeTv:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    new-instance v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$18;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$18;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V

    .line 908
    .local v5, distributionTypeClick:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->distributionTypeTv:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->distributionTypeButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 912
    .end local v5           #distributionTypeClick:Landroid/view/View$OnClickListener;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->handlePromiseTime()Z

    move-result v9

    .line 914
    .local v9, isHandled:Z
    if-nez v9, :cond_4

    .line 917
    const-string v20, "SupCodTime"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_c

    const-string v20, "CanShipTime"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_c

    const-string v20, "CanShipTime"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 918
    const-string v20, "SupCodTime"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 919
    .local v16, supCodArray:Lorg/json/JSONArray;
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v17

    .line 921
    .local v17, supCodArrayLength:I
    const/4 v8, 0x0

    .line 923
    .local v8, isFind:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    move/from16 v0, v17

    if-lt v7, v0, :cond_a

    .line 931
    :goto_3
    if-nez v8, :cond_3

    .line 932
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 933
    .local v19, timeObject:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeTv:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const-string v21, "Name"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    const-string v20, "Id"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSendTimeId:I

    .line 937
    .end local v19           #timeObject:Lorg/json/JSONObject;
    :cond_3
    new-instance v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$19;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$19;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V

    .line 945
    .local v4, deliveryTimeClick:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeTv:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 957
    .end local v4           #deliveryTimeClick:Landroid/view/View$OnClickListener;
    .end local v7           #i:I
    .end local v8           #isFind:Z
    .end local v16           #supCodArray:Lorg/json/JSONArray;
    .end local v17           #supCodArrayLength:I
    :cond_4
    :goto_4
    const-string v20, "bigItemCodDate"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_f

    const-string v20, "bigItemCodDate"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v20

    if-lez v20, :cond_f

    .line 958
    const-string v20, "bigItemCodDate"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 959
    .local v3, bigItemCodDateArray:Lorg/json/JSONArray;
    const/4 v8, 0x0

    .line 961
    .restart local v8       #isFind:Z
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-lt v7, v0, :cond_d

    .line 970
    :goto_6
    if-nez v8, :cond_6

    .line 971
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 972
    .local v12, object:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    .line 973
    new-instance v20, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    invoke-direct/range {v20 .. v20}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    .line 975
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->bigDeliveryTimeTv:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const-string v21, "Name"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    move-object/from16 v20, v0

    const-string v21, "Name"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;->setName(Ljava/lang/String;)V

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    move-object/from16 v20, v0

    const-string v21, "Value"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;->setValue(Ljava/lang/String;)V

    .line 980
    .end local v12           #object:Lorg/json/JSONObject;
    :cond_6
    new-instance v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$20;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$20;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V

    .line 987
    .local v2, bigDeliveryTimeClick:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->bigDeliveryTimeTv:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->bigDeliveryTimeButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 998
    .end local v2           #bigDeliveryTimeClick:Landroid/view/View$OnClickListener;
    .end local v3           #bigItemCodDateArray:Lorg/json/JSONArray;
    .end local v7           #i:I
    .end local v8           #isFind:Z
    :goto_7
    const-string v20, "SupInforms"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_11

    .line 999
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->isPhoneConfirm:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->ConfirmRG:Landroid/widget/RadioGroup;

    move-object/from16 v20, v0

    const v21, 0x7f0c04a9

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RadioGroup;->check(I)V

    .line 1005
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->ConfirmRG:Landroid/widget/RadioGroup;

    move-object/from16 v20, v0

    new-instance v21, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$21;

    invoke-direct/range {v21 .. v22}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$21;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    .end local v9           #isHandled:Z
    .end local v11           #name:Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentsContentLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentsContentLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 857
    :cond_7
    :try_start_1
    const-string v20, "SupPaymentWay"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 858
    const-string v20, "SupPaymentWay"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 860
    .local v18, supPayWayArray:Lorg/json/JSONArray;
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 866
    .local v13, paymentNum:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_a
    if-ge v7, v13, :cond_1

    .line 867
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 869
    .local v15, paymentTypeObject:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrPayMonyTypesId:I

    move/from16 v20, v0

    const-string v21, "Id"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypesTv:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const-string v21, "Name"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    new-instance v14, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$17;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V

    .line 880
    .local v14, paymentTypeClick:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypesTv:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypesbutton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1021
    .end local v7           #i:I
    .end local v13           #paymentNum:I
    .end local v14           #paymentTypeClick:Landroid/view/View$OnClickListener;
    .end local v15           #paymentTypeObject:Lorg/json/JSONObject;
    .end local v18           #supPayWayArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v6

    .line 1022
    .local v6, e:Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_9

    .line 866
    .end local v6           #e:Lorg/json/JSONException;
    .restart local v7       #i:I
    .restart local v13       #paymentNum:I
    .restart local v15       #paymentTypeObject:Lorg/json/JSONObject;
    .restart local v18       #supPayWayArray:Lorg/json/JSONArray;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 887
    .end local v7           #i:I
    .end local v13           #paymentNum:I
    .end local v15           #paymentTypeObject:Lorg/json/JSONObject;
    .end local v18           #supPayWayArray:Lorg/json/JSONArray;
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypesbutton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypesTv:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypesTip:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 924
    .restart local v7       #i:I
    .restart local v8       #isFind:Z
    .restart local v9       #isHandled:Z
    .restart local v11       #name:Ljava/lang/String;
    .restart local v16       #supCodArray:Lorg/json/JSONArray;
    .restart local v17       #supCodArrayLength:I
    :cond_a
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 925
    .restart local v19       #timeObject:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSendTimeId:I

    move/from16 v20, v0

    const-string v21, "Id"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeTv:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const-string v21, "Name"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    const/4 v8, 0x1

    .line 928
    goto/16 :goto_3

    .line 923
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 950
    .end local v7           #i:I
    .end local v8           #isFind:Z
    .end local v16           #supCodArray:Lorg/json/JSONArray;
    .end local v17           #supCodArrayLength:I
    .end local v19           #timeObject:Lorg/json/JSONObject;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeTip:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeTv:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 962
    .restart local v3       #bigItemCodDateArray:Lorg/json/JSONArray;
    .restart local v7       #i:I
    .restart local v8       #isFind:Z
    :cond_d
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 963
    .restart local v12       #object:Lorg/json/JSONObject;
    const-string v20, "Name"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->bigDeliveryTimeTv:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const-string v21, "Name"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    const/4 v8, 0x1

    .line 966
    goto/16 :goto_6

    .line 961
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 992
    .end local v3           #bigItemCodDateArray:Lorg/json/JSONArray;
    .end local v7           #i:I
    .end local v8           #isFind:Z
    .end local v12           #object:Lorg/json/JSONObject;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->bigDeliveryTimeTip:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->bigDeliveryTimeTv:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->bigDeliveryTimeButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_7

    .line 1002
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->ConfirmRG:Landroid/widget/RadioGroup;

    move-object/from16 v20, v0

    const v21, 0x7f0c04aa

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_8

    .line 1017
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->confirmTip:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->ConfirmRG:Landroid/widget/RadioGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RadioGroup;->setVisibility(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_9
.end method

.method private updatePayments(I)V
    .locals 1
    .parameter "payId"

    .prologue
    .line 1085
    new-instance v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$22;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$22;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->post(Ljava/lang/Runnable;)V

    .line 1113
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->requestSendInfo(I)V

    .line 1114
    return-void
.end method

.method private updatePickSitesData(Lorg/json/JSONArray;)V
    .locals 9
    .parameter "jsonArray"

    .prologue
    .line 666
    const v6, 0x7f0300cb

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 668
    .local v3, layout:Landroid/widget/RelativeLayout;
    const v6, 0x7f0c049c

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->selfTv:Landroid/widget/TextView;

    .line 669
    const v6, 0x7f0c049d

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->selfButton:Landroid/widget/ImageButton;

    .line 672
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-gtz v6, :cond_1

    .line 673
    :cond_0
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->errorTips:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 721
    :goto_0
    return-void

    .line 677
    :cond_1
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    if-nez v6, :cond_2

    .line 678
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->initOrderJson()V

    .line 681
    :cond_2
    const/4 v1, 0x0

    .line 682
    .local v1, isFind:Z
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 683
    .local v2, jsonArrayLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v2, :cond_4

    .line 693
    if-nez v1, :cond_3

    .line 694
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 695
    .local v4, object:Lorg/json/JSONObject;
    const-string v6, "Id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSelfId:I

    .line 696
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->selfTv:Landroid/widget/TextView;

    const-string v7, "Name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "IdPickSite"

    iget v8, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSelfId:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 701
    .end local v4           #object:Lorg/json/JSONObject;
    :cond_3
    new-instance v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$12;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$12;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V

    .line 709
    .local v5, selfClick:Landroid/view/View$OnClickListener;
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->selfTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->selfButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    .end local v0           #i:I
    .end local v1           #isFind:Z
    .end local v2           #jsonArrayLength:I
    .end local v5           #selfClick:Landroid/view/View$OnClickListener;
    :goto_2
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentsContentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 720
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentsContentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 684
    .restart local v0       #i:I
    .restart local v1       #isFind:Z
    .restart local v2       #jsonArrayLength:I
    :cond_4
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 685
    .restart local v4       #object:Lorg/json/JSONObject;
    iget v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSelfId:I

    const-string v7, "Id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 686
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->selfTv:Landroid/widget/TextView;

    const-string v7, "Name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    const-string v6, "Id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSelfId:I

    .line 688
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v7, "IdPickSite"

    iget v8, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSelfId:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 689
    const/4 v1, 0x1

    .line 683
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 713
    .end local v0           #i:I
    .end local v1           #isFind:Z
    .end local v2           #jsonArrayLength:I
    .end local v4           #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const v1, 0x7f0300f8

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->setContentView(I)V

    .line 138
    iput-object p0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->context:Landroid/content/Context;

    .line 140
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 141
    .local v0, thisIntent:Landroid/content/Intent;
    const-string v1, "isNoRegisterOrder"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->isNoRegisterOrder:Z

    .line 142
    const-string v1, "IdPickSite"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSelfId:I

    .line 143
    const-string v1, "pin"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->lsPin:Ljava/lang/String;

    .line 146
    :try_start_0
    const-string v1, "PromiseTime"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bPhone:Z

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->isPhoneConfirm:Z

    .line 152
    const-string v1, "selectBigitem"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    .line 154
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->initView()V

    .line 155
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->initSelID()V

    .line 157
    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v1, :cond_1

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->compositeOrderStrByAddEasyBuy()V

    .line 164
    :goto_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getPaymentTypes()V

    .line 165
    return-void

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->initOrderJson()V

    .line 161
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getCartItemInfo()V

    goto :goto_1

    .line 147
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updatCcomositeBody()V
    .locals 4

    .prologue
    .line 1161
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdBody:Lorg/json/JSONObject;

    .line 1163
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdBody:Lorg/json/JSONObject;

    const-string v2, "OrderStr"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1164
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdBody:Lorg/json/JSONObject;

    const-string v2, "CartStr"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdCart:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1165
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdBody:Lorg/json/JSONObject;

    const-string v2, "pin"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->lsPin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    :goto_0
    return-void

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
