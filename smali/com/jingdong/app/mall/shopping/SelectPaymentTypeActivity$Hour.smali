.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Hour"
.end annotation


# instance fields
.field isCanSelected:Z

.field promiseSendPay:Ljava/lang/String;

.field promiseTimeRange:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;->promiseTimeRange:Ljava/lang/String;

    return-object v0
.end method
