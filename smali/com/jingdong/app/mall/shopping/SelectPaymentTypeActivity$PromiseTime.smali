.class public Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PromiseTime"
.end annotation


# static fields
.field public static final BY_DEFAULT_SELECT:I = 0x2

.field public static final BY_SERVER:I = 0x0

.field public static final BY_USER:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final FROM_LASTODER:I = 0x64

.field public static final FROM_SHIPMENTTYPES:I = 0xc8


# instance fields
.field fromWitch:I

.field public isManual:I

.field public isUploading:Z

.field public localType:I

.field public promiseDate:Ljava/lang/String;

.field public promiseSendPay:Ljava/lang/String;

.field public promiseTimeRange:Ljava/lang/String;

.field public promiseType:I

.field public showText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1592
    new-instance v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime$1;

    invoke-direct {v0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime$1;-><init>()V

    sput-object v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1614
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1587
    iput v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isManual:I

    .line 1588
    iput-boolean v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isUploading:Z

    .line 1563
    return-void
.end method

.method public static selectDefaultPromiseTime(ILorg/json/JSONObject;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;
    .locals 10
    .parameter "CODTime"
    .parameter "sendJSON"

    .prologue
    const/4 v5, 0x0

    const/16 v9, 0x137

    const/4 v8, 0x2

    .line 1734
    if-nez p1, :cond_1

    .line 1816
    :cond_0
    :goto_0
    return-object v5

    .line 1738
    :cond_1
    const-string v6, "Promise311"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1740
    .local v0, Promise311:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    const-string v6, "support"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1742
    new-instance v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    invoke-direct {v5}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;-><init>()V

    .line 1744
    .local v5, promiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;
    iput v9, v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->localType:I

    .line 1746
    iput v8, v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isManual:I

    .line 1747
    const-string v6, "promiseType"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseType:I

    .line 1748
    const-string v6, "promiseSendPay"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseSendPay:Ljava/lang/String;

    .line 1749
    const-string v6, "promiseDate"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseDate:Ljava/lang/String;

    .line 1750
    const-string v6, "promiseTimeRange"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseTimeRange:Ljava/lang/String;

    .line 1752
    invoke-virtual {v5}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isVisibility()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1754
    const-string v6, "show311Text"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->showText:Ljava/lang/String;

    goto :goto_0

    .line 1759
    :cond_2
    const/4 v5, 0x0

    .line 1763
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->createDaysList(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1765
    .local v2, days:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;>;"
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->getFirstVisPos(Ljava/util/ArrayList;)I

    move-result v3

    .line 1767
    .local v3, firstVisPos:I
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1769
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;

    .line 1771
    .local v1, day:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;
    if-eqz v1, :cond_0

    iget-object v6, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;->hours:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;->hours:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1773
    iget-object v6, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;->hours:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;

    .line 1775
    .local v4, hour:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;
    if-eqz v4, :cond_0

    .line 1776
    new-instance v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    .end local v5           #promiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;
    invoke-direct {v5}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;-><init>()V

    .line 1778
    .restart local v5       #promiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;
    iput v9, v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->localType:I

    .line 1784
    iput v8, v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isManual:I

    .line 1786
    const-string v6, "promiseType"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseType:I

    .line 1789
    iget-object v6, v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;->promiseSendPay:Ljava/lang/String;

    iput-object v6, v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseSendPay:Ljava/lang/String;

    .line 1790
    iget-object v6, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;->date:Ljava/lang/String;

    iput-object v6, v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseDate:Ljava/lang/String;

    .line 1791
    iget-object v6, v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;->promiseTimeRange:Ljava/lang/String;

    iput-object v6, v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseTimeRange:Ljava/lang/String;

    .line 1793
    invoke-virtual {v5}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isVisibility()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1795
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->showText:Ljava/lang/String;

    goto/16 :goto_0

    .line 1802
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1617
    const/4 v0, 0x0

    return v0
.end method

.method public isCanSelected(Lorg/json/JSONObject;)Z
    .locals 6
    .parameter "sendJSON"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1700
    if-nez p1, :cond_1

    .line 1719
    :cond_0
    :goto_0
    return v2

    .line 1704
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isVisibility()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1706
    const-string v4, "Promise311"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1708
    .local v0, Promise311:Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    const-string v4, "support"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->localType:I

    const/16 v5, 0x137

    if-ne v4, v5, :cond_2

    move v2, v3

    .line 1709
    goto :goto_0

    .line 1712
    :cond_2
    const-string v4, "Promise411"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1714
    .local v1, Promise411:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v4, "support"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "grayFlag"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->localType:I

    const/16 v5, 0x19b

    if-ne v4, v5, :cond_0

    move v2, v3

    .line 1715
    goto :goto_0
.end method

.method public isVisibility()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1821
    iget v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->localType:I

    const/16 v2, 0x137

    if-ne v1, v2, :cond_1

    .line 1822
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseSendPay:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseDate:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseTimeRange:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1831
    :cond_0
    :goto_0
    return v0

    .line 1825
    :cond_1
    iget v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->localType:I

    const/16 v2, 0x19b

    if-ne v1, v2, :cond_2

    .line 1826
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseSendPay:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1831
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "promiseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "promiseSendPay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseSendPay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "promiseDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "promiseTimeRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseTimeRange:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "showText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->showText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fromWitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->fromWitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isManual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isManual:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isUploading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isUploading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "localType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->localType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateShowText(Lorg/json/JSONObject;)Z
    .locals 6
    .parameter "sendJSON"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1652
    iget v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isManual:I

    if-eqz v4, :cond_1

    .line 1689
    :cond_0
    :goto_0
    return v2

    .line 1656
    :cond_1
    if-eqz p1, :cond_0

    .line 1660
    iget v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->localType:I

    const/16 v5, 0x137

    if-ne v4, v5, :cond_2

    .line 1661
    const-string v4, "Promise311"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1662
    .local v0, Promise311:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    const-string v4, "support"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1664
    const-string v2, "promiseType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseType:I

    .line 1665
    const-string v2, "promiseSendPay"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseSendPay:Ljava/lang/String;

    .line 1666
    const-string v2, "promiseDate"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseDate:Ljava/lang/String;

    .line 1667
    const-string v2, "promiseTimeRange"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseTimeRange:Ljava/lang/String;

    .line 1669
    const-string v2, "show311Text"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->showText:Ljava/lang/String;

    move v2, v3

    .line 1675
    goto :goto_0

    .line 1677
    .end local v0           #Promise311:Lorg/json/JSONObject;
    :cond_2
    iget v4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->localType:I

    const/16 v5, 0x19b

    if-ne v4, v5, :cond_0

    .line 1678
    const-string v4, "Promise411"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1679
    .local v1, Promise411:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v4, "support"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "grayFlag"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1681
    const-string v2, "promiseType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseType:I

    .line 1682
    const-string v2, "promiseSendPay"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseSendPay:Ljava/lang/String;

    .line 1684
    const-string v2, "sendMsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->showText:Ljava/lang/String;

    move v2, v3

    .line 1685
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1622
    iget v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1623
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseSendPay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1624
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1625
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseTimeRange:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1626
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->showText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1628
    iget v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->fromWitch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1629
    iget v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isManual:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1630
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isUploading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1631
    iget v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->localType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1633
    return-void

    .line 1630
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
