.class public Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;
.super Ljava/lang/Object;
.source "MyOrderPaymentUtils.java"


# instance fields
.field private mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private mProduct:Lcom/jingdong/common/entity/Product;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter "activity"
    .parameter "product"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 24
    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;->mProduct:Lcom/jingdong/common/entity/Product;

    .line 25
    return-void
.end method


# virtual methods
.method public doCheckLogistics()V
    .locals 4

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/MyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;->mProduct:Lcom/jingdong/common/entity/Product;

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "product"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;->mProduct:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 54
    const-string v1, "title"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const v3, 0x7f07045f

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method public doOnlinePay()V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;->mProduct:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/pay/PayUtils;->doPay(Landroid/app/Activity;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public doPostPayConfirm()V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/MyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, i:Landroid/content/Intent;
    const-string v1, "orderId"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;->mProduct:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const-string v2, "post_order_confrim_flag"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->putBooleanToPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 46
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPaymentUtils;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 47
    return-void
.end method
