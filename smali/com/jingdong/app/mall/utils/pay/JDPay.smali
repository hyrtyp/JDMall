.class public Lcom/jingdong/app/mall/utils/pay/JDPay;
.super Ljava/lang/Object;
.source "JDPay.java"

# interfaces
.implements Lcom/jingdong/common/utils/pay/IPay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doPay(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "orderId"

    .prologue
    .line 17
    new-instance v0, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v0}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 18
    .local v0, params:Lcom/jingdong/common/utils/URLParamMap;
    const-string v1, "orderId"

    invoke-virtual {v0, v1, p2}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    const-string v1, "pay"

    new-instance v2, Lcom/jingdong/app/mall/utils/pay/JDPay$1;

    invoke-direct {v2, p0, p1}, Lcom/jingdong/app/mall/utils/pay/JDPay$1;-><init>(Lcom/jingdong/app/mall/utils/pay/JDPay;Landroid/app/Activity;)V

    invoke-static {v1, v0, v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    .line 33
    return-void
.end method
