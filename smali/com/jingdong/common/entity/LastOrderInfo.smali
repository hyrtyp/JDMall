.class public Lcom/jingdong/common/entity/LastOrderInfo;
.super Ljava/lang/Object;
.source "LastOrderInfo.java"


# static fields
.field public static dPrice:D

.field public static dPromotionPrice:D

.field public static mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

.field public static mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

.field public static mRemark:Ljava/lang/String;

.field public static mUserInfo:Lcom/jingdong/common/entity/UserInfo;

.field public static mYouhuiQuan:Lcom/jingdong/common/entity/YouHuiQuan;


# instance fields
.field public hasOrderBefore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/jingdong/common/entity/UserInfo;

    invoke-direct {v0}, Lcom/jingdong/common/entity/UserInfo;-><init>()V

    sput-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 20
    new-instance v0, Lcom/jingdong/common/entity/PaymentInfo;

    invoke-direct {v0}, Lcom/jingdong/common/entity/PaymentInfo;-><init>()V

    sput-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 21
    new-instance v0, Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-direct {v0}, Lcom/jingdong/common/entity/InvoiceInfo;-><init>()V

    sput-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    .line 22
    new-instance v0, Lcom/jingdong/common/entity/YouHuiQuan;

    invoke-direct {v0}, Lcom/jingdong/common/entity/YouHuiQuan;-><init>()V

    sput-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mYouhuiQuan:Lcom/jingdong/common/entity/YouHuiQuan;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/common/entity/LastOrderInfo;->hasOrderBefore:Z

    .line 44
    new-instance v0, Lcom/jingdong/common/entity/UserInfo;

    invoke-direct {v0}, Lcom/jingdong/common/entity/UserInfo;-><init>()V

    sput-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 45
    new-instance v0, Lcom/jingdong/common/entity/PaymentInfo;

    invoke-direct {v0}, Lcom/jingdong/common/entity/PaymentInfo;-><init>()V

    sput-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 46
    new-instance v0, Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-direct {v0}, Lcom/jingdong/common/entity/InvoiceInfo;-><init>()V

    sput-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    .line 47
    new-instance v0, Lcom/jingdong/common/entity/YouHuiQuan;

    invoke-direct {v0}, Lcom/jingdong/common/entity/YouHuiQuan;-><init>()V

    sput-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mYouhuiQuan:Lcom/jingdong/common/entity/YouHuiQuan;

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/entity/UserInfo;Lcom/jingdong/common/entity/PaymentInfo;Lcom/jingdong/common/entity/InvoiceInfo;Lcom/jingdong/common/entity/YouHuiQuan;)V
    .locals 1
    .parameter "userInfo"
    .parameter "paymentInfo"
    .parameter "invoiceInfo"
    .parameter "youhuiQuan"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/common/entity/LastOrderInfo;->hasOrderBefore:Z

    .line 37
    sput-object p1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 38
    sput-object p2, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 39
    sput-object p3, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    .line 40
    sput-object p4, Lcom/jingdong/common/entity/LastOrderInfo;->mYouhuiQuan:Lcom/jingdong/common/entity/YouHuiQuan;

    .line 41
    return-void
.end method
