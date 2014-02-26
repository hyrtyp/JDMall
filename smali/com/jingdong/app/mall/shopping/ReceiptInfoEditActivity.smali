.class public Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "ReceiptInfoEditActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/shopping/UpdateOrderInfoInterface;


# static fields
.field public static final GET_INVOINCE_BOOK:I = 0x2

.field public static final GET_INVOINCE_GENERAL:I = 0x3

.field public static final GET_INVOINCE_TYPES:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field bCompany:Z

.field bPersonel:Z

.field private isNoRegisterOrder:Z

.field items:[Ljava/lang/String;

.field jbBody:Lorg/json/JSONObject;

.field jbBooks:Lorg/json/JSONObject;

.field jbCartStr:Lorg/json/JSONObject;

.field jbGeneral:Lorg/json/JSONObject;

.field jbOrderStr:Lorg/json/JSONObject;

.field jbTypes:Lorg/json/JSONObject;

.field mBook:Landroid/widget/TextView;

.field mBook2:Landroid/widget/ImageButton;

.field mBookFlag:Landroid/widget/TextView;

.field mCompanyBtn:Landroid/widget/RadioButton;

.field mCompanyEdt:Landroid/widget/EditText;

.field mConfirm:Landroid/widget/Button;

.field mGeneral:Landroid/widget/TextView;

.field mGeneral2:Landroid/widget/ImageButton;

.field mGeneralFlag:Landroid/widget/TextView;

.field mPersonel:Landroid/widget/RadioButton;

.field mReceiptType:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;

.field nBookSelected:I

.field nBookSelectedID:I

.field nGeneralSelected:I

.field nGeneralSelectedID:I

.field noBook:Z

.field onlyBook:Z

.field sCompanyName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 48
    const-string v0, "ReceiptInfoEditActivity"

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->TAG:Ljava/lang/String;

    .line 65
    iput v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nBookSelected:I

    iput v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nGeneralSelected:I

    .line 66
    const/4 v0, 0x4

    iput v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nBookSelectedID:I

    iput v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nGeneralSelectedID:I

    .line 67
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->bPersonel:Z

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->bCompany:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->items:[Ljava/lang/String;

    .line 77
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->onlyBook:Z

    .line 78
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->noBook:Z

    .line 81
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->isNoRegisterOrder:Z

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->createBookAlertDiglog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->createGeneralAlertDiglog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->setNewGeneral(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->setNewBook(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 740
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->handleDatas(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V

    return-void
.end method

.method private compositeOrderStr()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 1057
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    .line 1059
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1060
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1061
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Mobile"

    .line 1062
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v3

    .line 1061
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1066
    :goto_0
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserPhone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1067
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Phone"

    .line 1068
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserPhone()Ljava/lang/String;

    move-result-object v3

    .line 1067
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1072
    :goto_1
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1073
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Zip"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1078
    :goto_2
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdProvince"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1079
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdProvince"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 1080
    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdProvince"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1079
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1085
    :goto_3
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdCity"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1086
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdCity"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 1087
    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdCity"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1086
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1091
    :goto_4
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdArea"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1092
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdArea"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 1093
    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdArea"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1092
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1098
    :goto_5
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1099
    const-string v2, "Where"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1100
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Where"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 1101
    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Where"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1100
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1105
    :goto_6
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1106
    const-string v2, "Email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1107
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Email"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1108
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Email"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 1109
    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Email"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1108
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1113
    :goto_7
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1114
    const-string v2, "UserLevel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1115
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    .line 1116
    const-string v2, "UserLevel"

    .line 1115
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1117
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "UserLevel"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 1118
    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "UserLevel"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1117
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1123
    :goto_8
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1124
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1125
    const-string v2, "IdInvoiceType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1126
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    .line 1127
    const-string v2, "IdInvoiceType"

    .line 1126
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1128
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdInvoiceType"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    .line 1129
    invoke-virtual {v3}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdInvoiceType"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1128
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1134
    :goto_9
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1135
    const-string v2, "IdInvoiceHeaderType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1136
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    .line 1137
    const-string v2, "IdInvoiceHeaderType"

    .line 1136
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1138
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    .line 1139
    const-string v2, "IdInvoiceHeaderType"

    .line 1140
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v3

    .line 1141
    const-string v4, "IdInvoiceHeaderType"

    .line 1140
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1138
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1145
    :goto_a
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1146
    const-string v2, "IdInvoiceContentTypeBook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1147
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    .line 1148
    const-string v2, "IdInvoiceContentTypeBook"

    .line 1147
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1149
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    .line 1150
    const-string v2, "IdInvoiceContentTypeBook"

    .line 1151
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v3

    .line 1152
    const-string v4, "IdInvoiceContentTypeBook"

    .line 1151
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1149
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1159
    :cond_0
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1160
    const-string v2, "IdCompanyBranch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1161
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    .line 1162
    const-string v2, "IdCompanyBranch"

    .line 1161
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1163
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    .line 1164
    const-string v2, "IdCompanyBranch"

    .line 1165
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v3

    .line 1166
    const-string v4, "IdCompanyBranch"

    .line 1165
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1163
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1171
    :goto_b
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1172
    const-string v2, "IdInvoiceContentsType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1173
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    .line 1174
    const-string v2, "IdInvoiceContentsType"

    .line 1173
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1175
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    .line 1176
    const-string v2, "IdInvoiceContentsType"

    .line 1177
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v3

    .line 1178
    const-string v4, "IdInvoiceContentsType"

    .line 1177
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1175
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1185
    :cond_1
    :goto_c
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v1, v1, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_f

    .line 1186
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v1, v1, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    if-lez v1, :cond_f

    .line 1187
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdPaymentType"

    .line 1188
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v3, v3, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    .line 1187
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1192
    :goto_d
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 1193
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v2, v2, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1194
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PaymentWay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1195
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 1196
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v2, v2, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    .line 1195
    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1197
    const-string v2, "PaymentWay"

    .line 1196
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1195
    if-eqz v1, :cond_10

    .line 1198
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "PaymentWay"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 1199
    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1200
    const-string v4, "PaymentWay"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1198
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1205
    :goto_e
    sget-wide v1, Lcom/jingdong/common/entity/LastOrderInfo;->dPromotionPrice:D

    cmpl-double v1, v1, v5

    if-ltz v1, :cond_11

    .line 1206
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "PromotionPrice"

    .line 1207
    sget-wide v3, Lcom/jingdong/common/entity/LastOrderInfo;->dPromotionPrice:D

    .line 1206
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1211
    :goto_f
    sget-wide v1, Lcom/jingdong/common/entity/LastOrderInfo;->dPrice:D

    cmpl-double v1, v1, v5

    if-ltz v1, :cond_12

    .line 1212
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Price"

    sget-wide v3, Lcom/jingdong/common/entity/LastOrderInfo;->dPrice:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1220
    :goto_10
    return-void

    .line 1064
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Mobile"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_10

    .line 1070
    .end local v0           #e:Lorg/json/JSONException;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Phone"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 1075
    :cond_4
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Zip"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 1082
    :cond_5
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdProvince"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 1089
    :cond_6
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdCity"

    const/16 v3, 0x48

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 1095
    :cond_7
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdArea"

    const/16 v3, 0xb03

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_5

    .line 1103
    :cond_8
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Where"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_6

    .line 1111
    :cond_9
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Email"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 1120
    :cond_a
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "UserLevel"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_8

    .line 1131
    :cond_b
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdInvoiceType"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_9

    .line 1143
    :cond_c
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdInvoiceHeaderType"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_a

    .line 1168
    :cond_d
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdCompanyBranch"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_b

    .line 1180
    :cond_e
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdInvoiceContentsType"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_c

    .line 1190
    :cond_f
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdPaymentType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_d

    .line 1202
    :cond_10
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "PaymentWay"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_e

    .line 1209
    :cond_11
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "PromotionPrice"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_f

    .line 1214
    :cond_12
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Price"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_10
.end method

.method private compositeOrderStrByAddEasyBuy()V
    .locals 5

    .prologue
    .line 962
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    .line 964
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 966
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 967
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Mobile"

    .line 968
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v3

    .line 967
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 972
    :goto_0
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserPhone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 973
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Phone"

    .line 974
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserPhone()Ljava/lang/String;

    move-result-object v3

    .line 973
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 978
    :goto_1
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 979
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Zip"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 984
    :goto_2
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdProvince"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 985
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdProvince"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 986
    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdProvince"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 985
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 991
    :goto_3
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdCity"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 992
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdCity"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 993
    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdCity"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 992
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 997
    :goto_4
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdArea"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 998
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdArea"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 999
    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "IdArea"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 998
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1004
    :goto_5
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1005
    const-string v2, "Where"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1006
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Where"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 1007
    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Where"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1006
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1011
    :goto_6
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1012
    const-string v2, "Email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1013
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Email"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1014
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Email"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 1015
    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Email"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1014
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1019
    :goto_7
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1020
    const-string v2, "UserLevel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1021
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    .line 1022
    const-string v2, "UserLevel"

    .line 1021
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1023
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "UserLevel"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 1024
    invoke-virtual {v3}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "UserLevel"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1023
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1028
    :goto_8
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v1, v1, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_a

    .line 1029
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v1, v1, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    if-lez v1, :cond_a

    .line 1030
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdPaymentType"

    .line 1031
    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v3, v3, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    .line 1030
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1035
    :goto_9
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 1036
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v2, v2, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1037
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PaymentWay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1038
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 1039
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v2, v2, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    .line 1038
    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1040
    const-string v2, "PaymentWay"

    .line 1039
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1038
    if-eqz v1, :cond_b

    .line 1041
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "PaymentWay"

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 1042
    sget-object v4, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v4, v4, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1043
    const-string v4, "PaymentWay"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1041
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1052
    :cond_0
    :goto_a
    return-void

    .line 970
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Mobile"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1048
    :catch_0
    move-exception v0

    .line 1050
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a

    .line 976
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Phone"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 981
    :cond_3
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Zip"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 988
    :cond_4
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdProvince"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 995
    :cond_5
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdCity"

    const/16 v3, 0x48

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 1001
    :cond_6
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdArea"

    const/16 v3, 0xb03

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_5

    .line 1009
    :cond_7
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Where"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_6

    .line 1017
    :cond_8
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "Email"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 1026
    :cond_9
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "UserLevel"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_8

    .line 1033
    :cond_a
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdPaymentType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_9

    .line 1045
    :cond_b
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "PaymentWay"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a
.end method

.method private createBookAlertDiglog(Ljava/lang/String;)V
    .locals 8
    .parameter "title"

    .prologue
    .line 372
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 373
    .local v2, jbProv:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 379
    .local v3, oldSendTime:Ljava/lang/String;
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mBook:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 381
    :try_start_0
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBooks:Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    .line 382
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBooks:Lorg/json/JSONObject;

    const-string v6, "InvoiceContents"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    if-eq v5, v6, :cond_0

    .line 383
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBooks:Lorg/json/JSONObject;

    const-string v6, "InvoiceContents"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBooks:Lorg/json/JSONObject;

    const-string v6, "InvoiceContents"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 387
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->items:[Ljava/lang/String;

    .line 388
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lt v1, v5, :cond_3

    .line 399
    .end local v1           #i:I
    :goto_2
    move-object v4, v3

    .line 401
    .local v4, temp:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 403
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 404
    iget v5, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nBookSelected:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 405
    const/4 v5, 0x4

    iput v5, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nBookSelected:I

    .line 407
    :cond_2
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->items:[Ljava/lang/String;

    iget v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nBookSelected:I

    .line 408
    new-instance v7, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$9;

    invoke-direct {v7, p0, v4}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$9;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 428
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 389
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v4           #temp:Ljava/lang/String;
    .restart local v1       #i:I
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->items:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 392
    .end local v1           #i:I
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private createGeneralAlertDiglog(Ljava/lang/String;)V
    .locals 8
    .parameter "title"

    .prologue
    .line 314
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 315
    .local v2, jbProv:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 321
    .local v3, oldSendTime:Ljava/lang/String;
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mGeneral:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 323
    :try_start_0
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbGeneral:Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    .line 324
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbGeneral:Lorg/json/JSONObject;

    const-string v6, "InvoiceContents"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    if-eq v5, v6, :cond_0

    .line 325
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbGeneral:Lorg/json/JSONObject;

    const-string v6, "InvoiceContents"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbGeneral:Lorg/json/JSONObject;

    const-string v6, "InvoiceContents"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 329
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->items:[Ljava/lang/String;

    .line 330
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lt v1, v5, :cond_2

    .line 341
    .end local v1           #i:I
    :goto_2
    move-object v4, v3

    .line 343
    .local v4, temp:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 347
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->items:[Ljava/lang/String;

    iget v6, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nGeneralSelected:I

    .line 348
    new-instance v7, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$8;

    invoke-direct {v7, p0, v4}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$8;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 368
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 331
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v4           #temp:Ljava/lang/String;
    .restart local v1       #i:I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->items:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 334
    .end local v1           #i:I
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private getCartItemInfo()V
    .locals 6

    .prologue
    .line 813
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v3, :cond_1

    .line 814
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 815
    .local v1, sku:Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 817
    .local v2, temp:Lorg/json/JSONArray;
    :try_start_0
    const-string v3, "Id"

    sget-wide v4, Lcom/jingdong/common/constant/Constants;->easyBuyProdId:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 818
    const-string v3, "num"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 819
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 820
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbCartStr:Lorg/json/JSONObject;

    const-string v4, "TheSkus"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    .end local v1           #sku:Lorg/json/JSONObject;
    .end local v2           #temp:Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 821
    .restart local v1       #sku:Lorg/json/JSONObject;
    .restart local v2       #temp:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 822
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 824
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #sku:Lorg/json/JSONObject;
    .end local v2           #temp:Lorg/json/JSONArray;
    :cond_1
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    if-eqz v3, :cond_0

    .line 825
    sget-object v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->cartResponseInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->toCheckedCartStr()Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbCartStr:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private getInvoincesContentBook()V
    .locals 3

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->updatCcomositeBody()V

    .line 529
    const-string v0, "invoiceContentsBook"

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBody:Lorg/json/JSONObject;

    .line 530
    const-string v2, "invoiceContentsBook"

    .line 529
    invoke-direct {p0, v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method private getInvoincesContentGeneral()V
    .locals 6

    .prologue
    .line 534
    const/4 v1, 0x0

    .line 535
    .local v1, functionId:Ljava/lang/String;
    sget-boolean v2, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v2, :cond_1

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->updatCcomositeBodyByAddEasyBuy()V

    .line 537
    const-string v1, "easyBuyInvoiceContentsGeneral"

    .line 540
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserInfo()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "pin"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 541
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBody:Lorg/json/JSONObject;

    const-string v3, "OrderStr"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBody:Lorg/json/JSONObject;

    const-string v3, "invoiceContentsGeneral"

    invoke-direct {p0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 551
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 546
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->updatCcomositeBody()V

    .line 547
    const-string v1, "invoiceContentsGeneral"

    goto :goto_0
.end method

.method private getInvoincesTypes()V
    .locals 6

    .prologue
    .line 507
    const/4 v1, 0x0

    .line 508
    .local v1, functionId:Ljava/lang/String;
    sget-boolean v2, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v2, :cond_1

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->updatCcomositeBodyByAddEasyBuy()V

    .line 510
    const-string v1, "easyBuyInvoiceTypes"

    .line 512
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v3, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserInfo()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "pin"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBody:Lorg/json/JSONObject;

    const-string v3, "OrderStr"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBody:Lorg/json/JSONObject;

    const-string v3, "invoiceTypesInfo"

    invoke-direct {p0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 524
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 516
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 519
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->updatCcomositeBody()V

    .line 520
    const-string v1, "invoiceTypes"

    goto :goto_0
.end method

.method private getType(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 495
    const-string v0, "invoiceTypesInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 496
    const/4 v0, 0x1

    .line 502
    :goto_0
    return v0

    .line 497
    :cond_0
    const-string v0, "invoiceContentsBook"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 498
    const/4 v0, 0x2

    goto :goto_0

    .line 499
    :cond_1
    const-string v0, "invoiceContentsGeneral"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 500
    const/4 v0, 0x3

    goto :goto_0

    .line 502
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private handleClickEvent()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mBook:Landroid/widget/TextView;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$1;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mBook2:Landroid/widget/ImageButton;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$2;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mGeneral:Landroid/widget/TextView;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$3;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mGeneral2:Landroid/widget/ImageButton;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$4;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mPersonel:Landroid/widget/RadioButton;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$5;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 244
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mCompanyBtn:Landroid/widget/RadioButton;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$6;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$6;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 260
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mConfirm:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$7;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$7;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    return-void
.end method

.method private handleDatas(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V
    .locals 3
    .parameter "httpResponse"
    .parameter "action"

    .prologue
    .line 742
    :try_start_0
    invoke-direct {p0, p2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->getType(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 804
    :goto_0
    return-void

    .line 745
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbTypes:Lorg/json/JSONObject;

    .line 746
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->setInvoinceTypesView()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 752
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->getInvoincesContentGeneral()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 798
    :catch_0
    move-exception v1

    goto :goto_0

    .line 758
    :pswitch_1
    :try_start_3
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBooks:Lorg/json/JSONObject;

    .line 759
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBooks:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u4e0d\u5f00\u53d1\u7968"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 760
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 761
    .local v0, tem:Lorg/json/JSONObject;
    const-string v1, "Name"

    const-string v2, "\u4e0d\u5f00\u53d1\u7968"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 762
    const-string v1, "Id"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 763
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBooks:Lorg/json/JSONObject;

    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 764
    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 772
    .end local v0           #tem:Lorg/json/JSONObject;
    :cond_0
    :goto_2
    :try_start_4
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->setInvoinceBookView()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 778
    :pswitch_2
    :try_start_5
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 779
    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 778
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbGeneral:Lorg/json/JSONObject;

    .line 780
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 781
    const-string v2, "InvoiceContentsBook"

    .line 780
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBooks:Lorg/json/JSONObject;

    .line 782
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbGeneral:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 783
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->onlyBook:Z

    .line 785
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBooks:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    .line 786
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->noBook:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 793
    :cond_2
    :goto_3
    :try_start_6
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->setInvoinceBookView()V

    .line 794
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->setInvoinceGeneralView()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 788
    :catch_1
    move-exception v1

    goto :goto_3

    .line 767
    :catch_2
    move-exception v1

    goto :goto_2

    .line 747
    :catch_3
    move-exception v1

    goto :goto_1

    .line 742
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initComponent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 130
    const v1, 0x7f0c02c1

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mReceiptType:Landroid/widget/TextView;

    .line 131
    const v1, 0x7f0c05f9

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mBook:Landroid/widget/TextView;

    .line 132
    const v1, 0x7f0c05fa

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mGeneral:Landroid/widget/TextView;

    .line 134
    const v1, 0x7f0c05f5

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mPersonel:Landroid/widget/RadioButton;

    .line 135
    const v1, 0x7f0c05f6

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mCompanyBtn:Landroid/widget/RadioButton;

    .line 137
    const v1, 0x7f0c05f8

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mBookFlag:Landroid/widget/TextView;

    .line 138
    const v1, 0x7f0c05f3

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mGeneralFlag:Landroid/widget/TextView;

    .line 140
    const v1, 0x7f0c05fb

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mBook2:Landroid/widget/ImageButton;

    .line 141
    const v1, 0x7f0c05fc

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mGeneral2:Landroid/widget/ImageButton;

    .line 143
    const v1, 0x7f0c05fd

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mConfirm:Landroid/widget/Button;

    .line 145
    const v1, 0x7f0c05f7

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mCompanyEdt:Landroid/widget/EditText;

    .line 146
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mCompanyEdt:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 147
    const v1, 0x7f0c007e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mTitle:Landroid/widget/TextView;

    .line 148
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f070305

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 149
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    if-eqz v1, :cond_2

    .line 150
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-eq v1, v2, :cond_2

    .line 151
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 152
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-eq v1, v2, :cond_2

    .line 153
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    const-string v2, "InvoiceTitle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    :try_start_0
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    .line 157
    const-string v2, "InvoiceTitle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u4e2a\u4eba"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mPersonel:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 185
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mCompanyBtn:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 162
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mCompanyEdt:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 163
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    const-string v2, "CompanyName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    .line 166
    const-string v2, "CompanyName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_1

    .line 167
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    .line 168
    const-string v2, "CompanyName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 167
    if-eq v1, v2, :cond_1

    .line 169
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    .line 170
    const-string v2, "CompanyName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    .line 169
    if-eq v1, v2, :cond_1

    .line 171
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mCompanyEdt:Landroid/widget/EditText;

    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    .line 172
    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "CompanyName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->bCompany:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 182
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mPersonel:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 183
    iput-boolean v4, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->bCompany:Z

    goto :goto_0
.end method

.method private setInvoinceBookView()V
    .locals 1

    .prologue
    .line 589
    new-instance v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$11;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$11;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->post(Ljava/lang/Runnable;)V

    .line 640
    return-void
.end method

.method private setInvoinceGeneralView()V
    .locals 1

    .prologue
    .line 643
    new-instance v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$12;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$12;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->post(Ljava/lang/Runnable;)V

    .line 691
    return-void
.end method

.method private setInvoinceTypesView()V
    .locals 1

    .prologue
    .line 555
    new-instance v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$10;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$10;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->post(Ljava/lang/Runnable;)V

    .line 584
    return-void
.end method

.method private setNewBook(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->items:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBooks:Lorg/json/JSONObject;

    const-string v3, "InvoiceContents"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 435
    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 436
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBooks:Lorg/json/JSONObject;

    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 437
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 436
    iput v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nBookSelectedID:I

    .line 451
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mBook:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->items:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :goto_1
    return-void

    .line 439
    :cond_1
    const/4 v0, 0x0

    .local v0, k:I
    :goto_2
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->items:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->items:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBooks:Lorg/json/JSONObject;

    .line 441
    const-string v3, "InvoiceContents"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 442
    const-string v3, "Name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBooks:Lorg/json/JSONObject;

    .line 444
    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 445
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 443
    iput v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nBookSelectedID:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    .end local v0           #k:I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 439
    .restart local v0       #k:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private setNewGeneral(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->items:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbGeneral:Lorg/json/JSONObject;

    .line 287
    const-string v3, "InvoiceContents"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 288
    const-string v3, "Name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbGeneral:Lorg/json/JSONObject;

    .line 290
    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 291
    const-string v2, "Id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 289
    iput v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nGeneralSelectedID:I

    .line 305
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mGeneral:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->items:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :goto_1
    return-void

    .line 293
    :cond_1
    const/4 v0, 0x0

    .local v0, k:I
    :goto_2
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->items:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->items:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbGeneral:Lorg/json/JSONObject;

    .line 295
    const-string v3, "InvoiceContents"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 296
    const-string v3, "Name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbGeneral:Lorg/json/JSONObject;

    .line 298
    const-string v2, "InvoiceContents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 299
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 297
    iput v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nGeneralSelectedID:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    .end local v0           #k:I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 293
    .restart local v0       #k:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .parameter "funcID"
    .parameter "param"
    .parameter "action"

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    .line 702
    new-instance v1, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$13;

    invoke-direct {v1, p0, p3}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$13;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;Ljava/lang/String;)V

    .line 701
    invoke-virtual {v0, p1, p2, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Ljava/lang/String;Lorg/json/JSONObject;Lcom/jingdong/common/utils/HttpGroup$OnAllListener;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 738
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v1, 0x7f0300ef

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isNoRegisterOrder"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->isNoRegisterOrder:Z

    .line 91
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->onlyBook:Z

    .line 92
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->initComponent()V

    .line 93
    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v1, :cond_3

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->compositeOrderStrByAddEasyBuy()V

    .line 100
    :goto_0
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    if-eqz v1, :cond_1

    .line 101
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 102
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    const-string v2, "IdInvoiceContentsType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :try_start_0
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    .line 106
    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdInvoiceContentsType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 105
    iput v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nGeneralSelectedID:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_1
    :goto_1
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    if-eqz v1, :cond_2

    .line 113
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 114
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    const-string v2, "IdInvoiceContentTypeBook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    :try_start_1
    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v1

    .line 118
    const-string v2, "IdInvoiceContentTypeBook"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 117
    iput v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nBookSelectedID:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->getInvoincesTypes()V

    .line 126
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->handleClickEvent()V

    .line 127
    return-void

    .line 96
    :cond_3
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->compositeOrderStr()V

    .line 97
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->getCartItemInfo()V

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 119
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 121
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public updatCcomositeBody()V
    .locals 5

    .prologue
    .line 477
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBody:Lorg/json/JSONObject;

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdPaymentType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 480
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdPaymentType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBody:Lorg/json/JSONObject;

    const-string v2, "OrderStr"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBody:Lorg/json/JSONObject;

    const-string v2, "CartStr"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbCartStr:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 484
    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->isNoRegisterOrder:Z

    if-eqz v1, :cond_1

    .line 485
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBody:Lorg/json/JSONObject;

    const-string v2, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserInfo()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "pin"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :cond_1
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 490
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public updatCcomositeBodyByAddEasyBuy()V
    .locals 4

    .prologue
    .line 462
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBody:Lorg/json/JSONObject;

    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdPaymentType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 465
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IdPaymentType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBody:Lorg/json/JSONObject;

    const-string v2, "OrderStr"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :goto_0
    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 470
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateInvoinceInfo()V
    .locals 3

    .prologue
    .line 1233
    new-instance v1, Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-direct {v1}, Lcom/jingdong/common/entity/InvoiceInfo;-><init>()V

    sput-object v1, Lcom/jingdong/common/constant/Constants;->mModifiedInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    .line 1234
    sget-object v1, Lcom/jingdong/common/constant/Constants;->mModifiedInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, v1, Lcom/jingdong/common/entity/InvoiceInfo;->jbInvoiceInfo:Lorg/json/JSONObject;

    .line 1236
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1237
    .local v0, jbInvoice:Lorg/json/JSONObject;
    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v1, :cond_2

    .line 1238
    :cond_0
    const-string v1, "IdInvoiceType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1241
    const-string v1, "IdInvoiceContentTypeBook"

    .line 1242
    iget v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nBookSelectedID:I

    .line 1241
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1247
    const-string v1, "IdInvoiceContentsType"

    .line 1248
    iget v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nGeneralSelectedID:I

    .line 1247
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1252
    const-string v1, "IdInvoiceContentsType"

    .line 1253
    iget v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nGeneralSelectedID:I

    .line 1252
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1254
    const-string v1, "IdInvoiceContentTypeBook"

    .line 1255
    iget v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nBookSelectedID:I

    .line 1254
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1258
    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->bCompany:Z

    if-eqz v1, :cond_1

    .line 1259
    const-string v1, "InvoiceTitle"

    const-string v2, "\u5355\u4f4d"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1260
    const-string v1, "CompanyName"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->sCompanyName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1261
    const-string v1, "IdInvoiceHeaderType"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1293
    :goto_0
    sget-object v1, Lcom/jingdong/common/constant/Constants;->mModifiedInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v1, v0}, Lcom/jingdong/common/entity/InvoiceInfo;->setInvoiceInfo(Lorg/json/JSONObject;)V

    .line 1299
    .end local v0           #jbInvoice:Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 1263
    .restart local v0       #jbInvoice:Lorg/json/JSONObject;
    :cond_1
    const-string v1, "InvoiceTitle"

    const-string v2, "\u4e2a\u4eba"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1264
    const-string v1, "IdInvoiceHeaderType"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 1294
    .end local v0           #jbInvoice:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1267
    .restart local v0       #jbInvoice:Lorg/json/JSONObject;
    :cond_2
    const-string v1, "IdInvoiceType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1268
    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->onlyBook:Z

    if-eqz v1, :cond_3

    .line 1269
    const-string v1, "IdInvoiceContentTypeBook"

    .line 1270
    iget v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nBookSelectedID:I

    .line 1269
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1282
    :goto_2
    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->bCompany:Z

    if-eqz v1, :cond_5

    .line 1283
    const-string v1, "InvoiceTitle"

    const-string v2, "\u5355\u4f4d"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1284
    const-string v1, "CompanyName"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->sCompanyName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1285
    const-string v1, "IdInvoiceHeaderType"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 1272
    :cond_3
    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->noBook:Z

    if-eqz v1, :cond_4

    .line 1273
    const-string v1, "IdInvoiceContentsType"

    .line 1274
    iget v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nGeneralSelectedID:I

    .line 1273
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    .line 1276
    :cond_4
    const-string v1, "IdInvoiceContentsType"

    .line 1277
    iget v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nGeneralSelectedID:I

    .line 1276
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1278
    const-string v1, "IdInvoiceContentTypeBook"

    .line 1279
    iget v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nBookSelectedID:I

    .line 1278
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    .line 1287
    :cond_5
    const-string v1, "InvoiceTitle"

    const-string v2, "\u4e2a\u4eba"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1288
    const-string v1, "IdInvoiceHeaderType"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public updatePaymentInfo()V
    .locals 0

    .prologue
    .line 1311
    return-void
.end method

.method public updateUserInfo()V
    .locals 0

    .prologue
    .line 1322
    return-void
.end method

.method public updateYouhuiInfo()V
    .locals 0

    .prologue
    .line 1334
    return-void
.end method
