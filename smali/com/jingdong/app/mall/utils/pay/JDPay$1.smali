.class Lcom/jingdong/app/mall/utils/pay/JDPay$1;
.super Ljava/lang/Object;
.source "JDPay.java"

# interfaces
.implements Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/pay/JDPay;->doPay(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/pay/JDPay;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/pay/JDPay;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/pay/JDPay$1;->this$0:Lcom/jingdong/app/mall/utils/pay/JDPay;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/pay/JDPay$1;->val$activity:Landroid/app/Activity;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/pay/JDPay$1;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/jingdong/app/mall/utils/pay/JDPay$1$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/pay/JDPay$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2, p1}, Lcom/jingdong/app/mall/utils/pay/JDPay$1$1;-><init>(Lcom/jingdong/app/mall/utils/pay/JDPay$1;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 31
    return-void
.end method
