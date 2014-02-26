.class public Lcom/jingdong/common/utils/pay/PayUtils;
.super Ljava/lang/Object;
.source "PayUtils.java"


# static fields
.field private static iPay:Lcom/jingdong/common/utils/pay/IPay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doPay(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "orderId"

    .prologue
    .line 13
    sget-object v0, Lcom/jingdong/common/utils/pay/PayUtils;->iPay:Lcom/jingdong/common/utils/pay/IPay;

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lcom/jingdong/common/utils/pay/PayUtils;->iPay:Lcom/jingdong/common/utils/pay/IPay;

    invoke-interface {v0, p0, p1}, Lcom/jingdong/common/utils/pay/IPay;->doPay(Landroid/app/Activity;Ljava/lang/String;)V

    .line 16
    :cond_0
    return-void
.end method

.method public static setPay(Lcom/jingdong/common/utils/pay/IPay;)V
    .locals 0
    .parameter "iPay"

    .prologue
    .line 19
    sput-object p0, Lcom/jingdong/common/utils/pay/PayUtils;->iPay:Lcom/jingdong/common/utils/pay/IPay;

    .line 20
    return-void
.end method
