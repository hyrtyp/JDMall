.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime$1;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;
    .locals 3
    .parameter "source"

    .prologue
    const/4 v1, 0x1

    .line 1595
    new-instance v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    invoke-direct {v0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;-><init>()V

    .line 1597
    .local v0, time:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseType:I

    .line 1598
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseSendPay:Ljava/lang/String;

    .line 1599
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseDate:Ljava/lang/String;

    .line 1600
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseTimeRange:Ljava/lang/String;

    .line 1601
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->showText:Ljava/lang/String;

    .line 1603
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->fromWitch:I

    .line 1604
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isManual:I

    .line 1605
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isUploading:Z

    .line 1606
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->localType:I

    .line 1608
    return-object v0

    .line 1605
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime$1;->createFromParcel(Landroid/os/Parcel;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;
    .locals 1
    .parameter "size"

    .prologue
    .line 1612
    new-array v0, p1, [Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime$1;->newArray(I)[Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    move-result-object v0

    return-object v0
.end method
