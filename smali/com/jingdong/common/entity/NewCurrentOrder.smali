.class public Lcom/jingdong/common/entity/NewCurrentOrder;
.super Ljava/lang/Object;
.source "NewCurrentOrder.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NEW_CURRENT_ORDER:I = 0x1

.field public static final PAY_CASH_DELIVERY:I = 0x1

.field public static final PAY_ONLINE:I = 0x4

.field public static final PAY_POST:I = 0x2

.field public static final PAY_SELF:I = 0x3

.field private static final TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x60c8689b957eea5cL


# instance fields
.field private addressDetail:Ljava/lang/String;

.field private bigItemCodDateName:Ljava/lang/String;

.field private bigItemCodDateValue:Ljava/lang/String;

.field private changeAreaMessage:Ljava/lang/String;

.field private cityName:Ljava/lang/String;

.field private codTime:Ljava/lang/Integer;

.field private codTimeName:Ljava/lang/String;

.field private companyName:Ljava/lang/String;

.field private countryName:Ljava/lang/String;

.field private couponDiscount:Ljava/lang/Integer;

.field private couponInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CouponInfo;",
            ">;"
        }
    .end annotation
.end field

.field private currBalance:Lcom/jingdong/common/entity/UsedBalance;

.field private currJdbean:Lcom/jingdong/common/entity/UsedJdbean;

.field private discount:Ljava/lang/Integer;

.field private discountLipinka:Ljava/lang/Integer;

.field private email:Ljava/lang/String;

.field private giftInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/GiftCartInfo;",
            ">;"
        }
    .end annotation
.end field

.field private hasTang9:Ljava/lang/Boolean;

.field private idArea:Ljava/lang/Integer;

.field private idCity:Ljava/lang/Integer;

.field private idCompanyBranch:Ljava/lang/Integer;

.field private idInvoiceContentTypeBook:Ljava/lang/Integer;

.field private idInvoiceContentsType:Ljava/lang/Integer;

.field private idInvoiceHeaderType:Ljava/lang/Integer;

.field private idInvoicePutType:Ljava/lang/Integer;

.field private idInvoiceType:Ljava/lang/Integer;

.field private idPaymentType:Ljava/lang/Integer;

.field private idPickSite:Ljava/lang/Integer;

.field private idProvince:Ljava/lang/Integer;

.field private idShipmentType:Ljava/lang/Integer;

.field private idTown:Ljava/lang/Integer;

.field private invoiceContentTypeBookName:Ljava/lang/String;

.field private invoiceContentsTypeName:Ljava/lang/String;

.field private invoiceTitle:Ljava/lang/String;

.field private invoiceTypeName:Ljava/lang/String;

.field private isChangeJingOrDongQuan:Z

.field private isChangeLipin:Z

.field private isCodInform:Ljava/lang/Boolean;

.field private isIdTown:Ljava/lang/Boolean;

.field private isOpenPaymentPassword:Ljava/lang/Boolean;

.field private isPutBookInvoice:Ljava/lang/Boolean;

.field private isUseBalance:Ljava/lang/Boolean;

.field private isUseJdBean:Ljava/lang/Boolean;

.field private isUsedVirtualPay:Ljava/lang/Boolean;

.field private miaoSha:Ljava/lang/Boolean;

.field private mobile:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private needRemark:Ljava/lang/Boolean;

.field private openPasswordTip:Ljava/lang/String;

.field private orderBulk:Ljava/lang/Integer;

.field private otherMessage:Ljava/lang/String;

.field private param:Ljava/lang/String;

.field private payOnlineMessage:Ljava/lang/String;

.field private payPasswordKey:Ljava/lang/String;

.field private payPasswordValue:Ljava/lang/String;

.field private payWayId:Ljava/lang/Integer;

.field private paymentType:Ljava/lang/String;

.field private paymentWay:Ljava/lang/Integer;

.field private paymentWayName:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private pickSiteAddress:Ljava/lang/String;

.field private pickSiteName:Ljava/lang/String;

.field private pin:Ljava/lang/String;

.field private postCustomerId:Ljava/lang/String;

.field private postPayee:Ljava/lang/String;

.field private price:Ljava/lang/Integer;

.field private priceItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;",
            ">;"
        }
    .end annotation
.end field

.field private primitivePrice:Ljava/lang/Integer;

.field private promiseDate:Ljava/lang/String;

.field private promiseSendPay:Ljava/lang/String;

.field private promiseTimeRange:Ljava/lang/String;

.field private promiseType:Ljava/lang/Integer;

.field private promotionPrice:Ljava/lang/Integer;

.field private provinceName:Ljava/lang/String;

.field private rePrice:Ljava/lang/Integer;

.field private remark:Ljava/lang/String;

.field private shipmentTypeName:Ljava/lang/String;

.field private show311Text:Ljava/lang/String;

.field private show411Text:Ljava/lang/String;

.field private showSecurityFunctionId:Ljava/lang/String;

.field private showSecurityMessage:Ljava/lang/String;

.field private showSecuritySubmitKey:Ljava/lang/String;

.field private showSecurityTitle:Ljava/lang/String;

.field private showSecurityUrl:Ljava/lang/String;

.field private submitOrderInfo:Lcom/jingdong/common/entity/SubmitOrderInfo;

.field private totalFee:Ljava/lang/Integer;

.field private totalPrice:Ljava/lang/String;

.field private townName:Ljava/lang/String;

.field private userLevel:Ljava/lang/Integer;

.field private usid:Ljava/lang/String;

.field private virtualPayAvailable:Lcom/jingdong/common/entity/VirtualPayAvailable;

.field private where:Ljava/lang/String;

.field private zip:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/entity/NewCurrentOrder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->couponInfo:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->giftInfo:Ljava/util/ArrayList;

    .line 142
    iput-boolean v1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isChangeJingOrDongQuan:Z

    .line 143
    iput-boolean v1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isChangeLipin:Z

    .line 166
    new-instance v0, Lcom/jingdong/common/entity/SubmitOrderInfo;

    invoke-direct {v0}, Lcom/jingdong/common/entity/SubmitOrderInfo;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->submitOrderInfo:Lcom/jingdong/common/entity/SubmitOrderInfo;

    .line 170
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 2
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->couponInfo:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->giftInfo:Ljava/util/ArrayList;

    .line 142
    iput-boolean v1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isChangeJingOrDongQuan:Z

    .line 143
    iput-boolean v1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isChangeLipin:Z

    .line 166
    new-instance v0, Lcom/jingdong/common/entity/SubmitOrderInfo;

    invoke-direct {v0}, Lcom/jingdong/common/entity/SubmitOrderInfo;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->submitOrderInfo:Lcom/jingdong/common/entity/SubmitOrderInfo;

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/jingdong/common/entity/NewCurrentOrder;->update(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 174
    return-void
.end method


# virtual methods
.method public getAddressDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->addressDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getBigItemCodDateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->bigItemCodDateName:Ljava/lang/String;

    return-object v0
.end method

.method public getBigItemCodDateValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->bigItemCodDateValue:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeAreaMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->changeAreaMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getCodTime()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->codTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCodTimeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->codTimeName:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->countryName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 843
    const-string v0, ""

    .line 845
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->countryName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCouponDiscount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->couponDiscount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCouponInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CouponInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->couponInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCurrBalance()Lcom/jingdong/common/entity/UsedBalance;
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->currBalance:Lcom/jingdong/common/entity/UsedBalance;

    return-object v0
.end method

.method public getCurrJdbean()Lcom/jingdong/common/entity/UsedJdbean;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->currJdbean:Lcom/jingdong/common/entity/UsedJdbean;

    return-object v0
.end method

.method public getDiscount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->discount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDiscountLipinka()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->discountLipinka:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDisplayCouponGiftContent()Ljava/lang/String;
    .locals 12

    .prologue
    .line 756
    const-string v7, ""

    .line 757
    .local v7, returnStr:Ljava/lang/String;
    iget-object v9, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->couponInfo:Ljava/util/ArrayList;

    invoke-static {v9}, Lcom/jingdong/common/entity/CouponInfo;->lookupSelectedForList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 758
    .local v0, couponSelectedLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    iget-object v9, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->giftInfo:Ljava/util/ArrayList;

    invoke-static {v9}, Lcom/jingdong/common/entity/GiftCartInfo;->lookupSelectedForList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 760
    .local v3, giftSelectedLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 761
    const-string v7, "\u60a8\u6ca1\u6709\u9009\u62e9\u4f18\u60e0\u5238\u6216\u793c\u54c1\u5361"

    move-object v8, v7

    .line 786
    .end local v7           #returnStr:Ljava/lang/String;
    .local v8, returnStr:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 764
    .end local v8           #returnStr:Ljava/lang/String;
    .restart local v7       #returnStr:Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/jingdong/common/entity/CouponInfo;->lookupJingForList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 765
    .local v4, jingList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    invoke-static {v0}, Lcom/jingdong/common/entity/CouponInfo;->lookupDongForList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 766
    .local v1, dongList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 767
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v9, "\u4f7f\u75281\u5f20\u4e1c\u5238, \u9762\u989d"

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/common/entity/CouponInfo;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/CouponInfo;->getDiscount()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u5143"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 776
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 777
    const-wide/16 v5, 0x0

    .line 778
    .local v5, price:D
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_6

    .line 781
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 782
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 784
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\u4f7f\u7528"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u5f20\u793c\u54c1\u5361, \u4f59\u989d"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u5143"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v5           #price:D
    :cond_3
    move-object v8, v7

    .line 786
    .end local v7           #returnStr:Ljava/lang/String;
    .restart local v8       #returnStr:Ljava/lang/String;
    goto/16 :goto_0

    .line 768
    .end local v8           #returnStr:Ljava/lang/String;
    .restart local v7       #returnStr:Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 769
    const-wide/16 v5, 0x0

    .line 770
    .restart local v5       #price:D
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    .line 773
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u4f7f\u7528"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u5f20\u4eac\u5238, \u9762\u989d"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u5143"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 770
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/CouponInfo;

    .line 771
    .local v2, entity:Lcom/jingdong/common/entity/CouponInfo;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/CouponInfo;->getDiscount()Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v5, v10

    goto :goto_3

    .line 778
    .end local v2           #entity:Lcom/jingdong/common/entity/CouponInfo;
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/GiftCartInfo;

    .line 779
    .local v2, entity:Lcom/jingdong/common/entity/GiftCartInfo;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/GiftCartInfo;->getLeaveMoney()Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v5, v10

    goto/16 :goto_2
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->email:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1361
    const-string v0, ""

    .line 1363
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->email:Ljava/lang/String;

    goto :goto_0
.end method

.method public getGiftInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/GiftCartInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->giftInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHasTang9()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->hasTang9:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 995
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 997
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->hasTang9:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getIdArea()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idArea:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1200
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1202
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idArea:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getIdCity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idCity:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1068
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1070
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idCity:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getIdCompanyBranch()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idCompanyBranch:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdInvoiceContentTypeBook()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idInvoiceContentTypeBook:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdInvoiceContentsType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idInvoiceContentsType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdInvoiceHeaderType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idInvoiceHeaderType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdInvoicePutType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idInvoicePutType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdInvoiceType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idInvoiceType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdPaymentType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idPaymentType:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 949
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 951
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idPaymentType:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getIdPickSite()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idPickSite:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdProvince()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idProvince:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1033
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1035
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idProvince:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getIdShipmentType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idShipmentType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdTown()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idTown:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 930
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 932
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idTown:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getInvoiceContentTypeBookName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->invoiceContentTypeBookName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1410
    const-string v0, ""

    .line 1412
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->invoiceContentTypeBookName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInvoiceContentsTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->invoiceContentsTypeName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1399
    const-string v0, ""

    .line 1401
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->invoiceContentsTypeName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInvoiceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->invoiceTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getInvoiceTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->invoiceTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCodInform()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isCodInform:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsIdTown()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isIdTown:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 876
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 878
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isIdTown:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getIsOpenPaymentPassword()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isOpenPaymentPassword:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1499
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1501
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isOpenPaymentPassword:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getIsPutBookInvoice()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isPutBookInvoice:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsUseBalance()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isUseBalance:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1111
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1113
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isUseBalance:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getIsUseJdBean()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isUseJdBean:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1380
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1382
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isUseJdBean:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getIsUsedVirtualPay()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isUsedVirtualPay:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1488
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1490
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isUsedVirtualPay:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getMiaoSha()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->miaoSha:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1453
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1455
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->miaoSha:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->mobile:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1022
    const-string v0, ""

    .line 1024
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->mobile:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1130
    const-string v0, ""

    .line 1132
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNeedRemark()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->needRemark:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1165
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1167
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->needRemark:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getOpenPasswordTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->openPasswordTip:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderBulk()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->orderBulk:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOtherMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->otherMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->param:Ljava/lang/String;

    return-object v0
.end method

.method public getPayOnlineMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->payOnlineMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPayPasswordKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->payPasswordKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPayPasswordValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->payPasswordValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPayWayId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->payWayId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPaymentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->paymentType:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentWay()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->paymentWay:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1219
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1221
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->paymentWay:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getPaymentWayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->paymentWayName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->phone:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 865
    const-string v0, ""

    .line 867
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->phone:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPickSiteAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->pickSiteAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPickSiteName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->pickSiteName:Ljava/lang/String;

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->pin:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 854
    const-string v0, ""

    .line 856
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->pin:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPostCustomerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->postCustomerId:Ljava/lang/String;

    return-object v0
.end method

.method public getPostPayee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->postPayee:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->price:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPriceItemList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->priceItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPrimitivePrice()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->primitivePrice:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPromiseDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->promiseDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPromiseSendPay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->promiseSendPay:Ljava/lang/String;

    return-object v0
.end method

.method public getPromiseTimeRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->promiseTimeRange:Ljava/lang/String;

    return-object v0
.end method

.method public getPromiseType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->promiseType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPromotionPrice()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->promotionPrice:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProvinceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->provinceName:Ljava/lang/String;

    return-object v0
.end method

.method public getRePrice()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->rePrice:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getShipmentTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->shipmentTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getShow311Text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->show311Text:Ljava/lang/String;

    return-object v0
.end method

.method public getShow411Text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->show411Text:Ljava/lang/String;

    return-object v0
.end method

.method public getShowSecurityFunctionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->showSecurityFunctionId:Ljava/lang/String;

    return-object v0
.end method

.method public getShowSecurityMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->showSecurityMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getShowSecuritySubmitKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->showSecuritySubmitKey:Ljava/lang/String;

    return-object v0
.end method

.method public getShowSecurityTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->showSecurityTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getShowSecurityUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->showSecurityUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSubmitOrderInfo()Lcom/jingdong/common/entity/SubmitOrderInfo;
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->submitOrderInfo:Lcom/jingdong/common/entity/SubmitOrderInfo;

    return-object v0
.end method

.method public getTotalFee()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->totalFee:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTotalPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->totalPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getTownName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->townName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLevel()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->userLevel:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 887
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 889
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->userLevel:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getUsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->usid:Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualPayAvailable()Lcom/jingdong/common/entity/VirtualPayAvailable;
    .locals 1

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->virtualPayAvailable:Lcom/jingdong/common/entity/VirtualPayAvailable;

    return-object v0
.end method

.method public getWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->where:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 968
    const-string v0, ""

    .line 970
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->where:Ljava/lang/String;

    goto :goto_0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->zip:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1350
    const-string v0, ""

    .line 1352
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->zip:Ljava/lang/String;

    goto :goto_0
.end method

.method public isChangeJingOrDongQuan()Z
    .locals 1

    .prologue
    .line 1565
    iget-boolean v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isChangeJingOrDongQuan:Z

    return v0
.end method

.method public isChangeLipin()Z
    .locals 1

    .prologue
    .line 1573
    iget-boolean v0, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isChangeLipin:Z

    return v0
.end method

.method public parseNewModelForInvoicePage(Lcom/jingdong/common/entity/NewCurrentOrder;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 544
    if-nez p1, :cond_0

    .line 555
    :goto_0
    return-void

    .line 548
    :cond_0
    invoke-virtual {p1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdInvoiceType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdInvoiceType(Ljava/lang/Integer;)V

    .line 549
    invoke-virtual {p1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdInvoiceContentTypeBook()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdInvoiceContentTypeBook(Ljava/lang/Integer;)V

    .line 550
    invoke-virtual {p1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdInvoiceContentsType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdInvoiceContentsType(Ljava/lang/Integer;)V

    .line 551
    invoke-virtual {p1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getInvoiceTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->setInvoiceTitle(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCompanyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->setCompanyName(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdInvoiceHeaderType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdInvoiceHeaderType(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public parseNewModelForYouHuiLipinPage(Lcom/jingdong/common/entity/NewCurrentOrder;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 558
    if-nez p1, :cond_0

    .line 566
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-boolean v0, p1, Lcom/jingdong/common/entity/NewCurrentOrder;->isChangeJingOrDongQuan:Z

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->setChangeJingOrDongQuan(Z)V

    .line 563
    invoke-virtual {p1}, Lcom/jingdong/common/entity/NewCurrentOrder;->isChangeLipin()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->setChangeLipin(Z)V

    .line 564
    invoke-virtual {p1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCouponInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->setCouponInfo(Ljava/util/ArrayList;)V

    .line 565
    invoke-virtual {p1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getGiftInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->setGiftInfo(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public parseOldModelForPaymentInfo(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 431
    new-instance v3, Lcom/jingdong/common/entity/PaymentInfo;

    invoke-direct {v3}, Lcom/jingdong/common/entity/PaymentInfo;-><init>()V

    .line 435
    .local v3, mNewPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;
    :try_start_0
    new-instance v5, Lcom/jingdong/common/entity/PaymentInfo;

    invoke-direct {v5}, Lcom/jingdong/common/entity/PaymentInfo;-><init>()V

    sput-object v5, Lcom/jingdong/common/constant/Constants;->mModifiedPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 436
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 438
    .local v1, jdPay:Lorg/json/JSONObject;
    const-string v5, "IdPaymentType"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 440
    .local v4, paymentId:I
    const-string v5, "IdPaymentType"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 441
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdPaymentType(Ljava/lang/Integer;)V

    .line 442
    if-ne v4, v9, :cond_3

    .line 443
    const-string v5, "IdPickSite"

    const-string v6, "IdPickSite"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 444
    const-string v5, "IdPickSite"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdPickSite(Ljava/lang/Integer;)V

    .line 460
    :cond_0
    :goto_0
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iput v4, v5, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    .line 461
    sget-object v5, Lcom/jingdong/common/constant/Constants;->mModifiedPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    invoke-virtual {v5, v4, v1}, Lcom/jingdong/common/entity/PaymentInfo;->setPayMentType(ILorg/json/JSONObject;)V

    .line 465
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "{}"

    if-eq v5, v6, :cond_1

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "{ }"

    if-eq v5, v6, :cond_1

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_1

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lt v5, v8, :cond_1

    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    if-ne v5, v6, :cond_4

    .line 466
    :cond_1
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v5, v6, v1}, Lcom/jingdong/common/entity/PaymentInfo;->setPayMentType(ILorg/json/JSONObject;)V

    .line 467
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v5, v1}, Lcom/jingdong/common/entity/PaymentInfo;->setPayMentType(ILorg/json/JSONObject;)V

    .line 535
    .end local v1           #jdPay:Lorg/json/JSONObject;
    .end local v4           #paymentId:I
    :cond_2
    :goto_1
    return-void

    .line 446
    .restart local v1       #jdPay:Lorg/json/JSONObject;
    .restart local v4       #paymentId:I
    :cond_3
    const-string v5, "IdShipmentType"

    const-string v6, "IdShipmentType"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 447
    const-string v5, "CODTime"

    const-string v6, "CODTime"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 448
    const-string v5, "IsCodInform"

    const-string v6, "IsCodInform"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 450
    const-string v5, "IdShipmentType"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdShipmentType(Ljava/lang/Integer;)V

    .line 451
    const-string v5, "CODTime"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setCodTime(Ljava/lang/Integer;)V

    .line 452
    const-string v5, "IsCodInform"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIsCodInform(Ljava/lang/Boolean;)V

    .line 454
    if-ne v4, v8, :cond_0

    .line 455
    const-string v5, "PaymentWay"

    const-string v6, "PaymentWay"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 456
    const-string v5, "PaymentWay"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPaymentWay(Ljava/lang/Integer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 532
    .end local v1           #jdPay:Lorg/json/JSONObject;
    .end local v4           #paymentId:I
    :catch_0
    move-exception v0

    .line 533
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 469
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #jdPay:Lorg/json/JSONObject;
    .restart local v4       #paymentId:I
    :cond_4
    :try_start_1
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    if-ne v5, v9, :cond_6

    .line 471
    const-string v5, "IdPaymentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v5, "IdPaymentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_5

    const-string v5, "IdPaymentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, " "

    if-eq v5, v6, :cond_5

    .line 472
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "IdPaymentType"

    const-string v7, "IdPaymentType"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "IdPaymentType"

    const-string v7, "IdPaymentType"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    :cond_5
    const-string v5, "IdPickSite"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v5, "IdPickSite"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_2

    const-string v5, "IdPickSite"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, " "

    if-eq v5, v6, :cond_2

    .line 477
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "IdPickSite"

    const-string v7, "IdPickSite"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 479
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "IdPickSite"

    const-string v7, "IdPickSite"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 483
    :cond_6
    const-string v5, "IdPaymentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v5, "IdPaymentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_7

    const-string v5, "IdPaymentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, " "

    if-eq v5, v6, :cond_7

    .line 484
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "IdPaymentType"

    const-string v7, "IdPaymentType"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 486
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "IdPaymentType"

    const-string v7, "IdPaymentType"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    :cond_7
    const-string v5, "IdShipmentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string v5, "IdShipmentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_8

    const-string v5, "IdShipmentType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, " "

    if-eq v5, v6, :cond_8

    .line 489
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "IdShipmentType"

    const-string v7, "IdShipmentType"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 491
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "IdShipmentType"

    const-string v7, "IdShipmentType"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 493
    :cond_8
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CODTime"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "CODTime"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    const-string v5, "CODTime"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    if-eq v5, v6, :cond_a

    const-string v5, "CODTime"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_a

    const-string v5, "CODTime"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    if-eq v5, v6, :cond_a

    .line 494
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "CODTime"

    const-string v7, "CODTime"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "CODTime"

    const-string v7, "CODTime"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PaymentWay"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "PaymentWay"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    if-eq v5, v6, :cond_b

    const-string v5, "PaymentWay"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_b

    const-string v5, "PaymentWay"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_b

    const-string v5, "PaymentWay"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    if-eq v5, v6, :cond_b

    .line 502
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "PaymentWay"

    const-string v7, "PaymentWay"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "PaymentWay"

    const-string v7, "PaymentWay"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IsCodInform"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "IsCodInform"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    if-eq v5, v6, :cond_c

    const-string v5, "IsCodInform"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c

    const-string v5, "IsCodInform"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_c

    const-string v5, "IsCodInform"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    if-eq v5, v6, :cond_c

    .line 510
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "IsCodInform"

    const-string v7, "IsCodInform"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "IsCodInform"

    const-string v7, "IsCodInform"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    :goto_4
    const-string v5, "selectBigitem"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    .line 520
    .local v2, mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;
    if-nez v2, :cond_9

    .line 521
    new-instance v2, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    .end local v2           #mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;
    invoke-direct {v2}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;-><init>()V

    .line 523
    .restart local v2       #mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;
    :cond_9
    invoke-virtual {v2}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setBigItemCodDateValue(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v2}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setBigItemCodDateName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 498
    .end local v2           #mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;
    :cond_a
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "CODTime"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 499
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "CODTime"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 506
    :cond_b
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "PaymentWay"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 507
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "PaymentWay"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 514
    :cond_c
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v5, v6}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "IsCodInform"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 515
    sget-object v5, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v5, v5, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    invoke-virtual {v3, v5}, Lcom/jingdong/common/entity/PaymentInfo;->getPayMentType(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "IsCodInform"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public parseOldModelForUserInfo(Lcom/jingdong/common/entity/UserInfo;)V
    .locals 3
    .parameter "userInfo"

    .prologue
    const/4 v2, 0x0

    .line 317
    if-nez p1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 321
    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->setName(Ljava/lang/String;)V

    .line 323
    :cond_1
    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 324
    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->setMobile(Ljava/lang/String;)V

    .line 326
    :cond_2
    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 327
    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserInfo;->getUserZip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->setZip(Ljava/lang/String;)V

    .line 329
    :cond_3
    new-instance v0, Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-virtual {p1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    .line 331
    .local v0, jbAddrt:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v1, "IdProvince"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdProvince(Ljava/lang/Integer;)V

    .line 332
    const-string v1, "IdCity"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdCity(Ljava/lang/Integer;)V

    .line 333
    const-string v1, "IdArea"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdArea(Ljava/lang/Integer;)V

    .line 334
    const-string v1, "IdTown"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 335
    const-string v1, "IdTown"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdTown(Ljava/lang/Integer;)V

    .line 340
    :goto_1
    const-string v1, "Where"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->setWhere(Ljava/lang/String;)V

    .line 341
    const-string v1, "Email"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->setEmail(Ljava/lang/String;)V

    .line 342
    const-string v1, "addressDetail"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->setAddressDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 337
    :cond_4
    invoke-virtual {p0, v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdTown(Ljava/lang/Integer;)V

    .line 338
    invoke-virtual {p0, v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->setTownName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setAddressDetail(Ljava/lang/String;)V
    .locals 0
    .parameter "addressDetail"

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->addressDetail:Ljava/lang/String;

    .line 1010
    return-void
.end method

.method public setBigItemCodDateName(Ljava/lang/String;)V
    .locals 0
    .parameter "bigItemCodDateName"

    .prologue
    .line 1337
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->bigItemCodDateName:Ljava/lang/String;

    .line 1338
    return-void
.end method

.method public setBigItemCodDateValue(Ljava/lang/String;)V
    .locals 0
    .parameter "bigItemCodDateValue"

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->bigItemCodDateValue:Ljava/lang/String;

    .line 1346
    return-void
.end method

.method public setChangeAreaMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "changeAreaMessage"

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->changeAreaMessage:Ljava/lang/String;

    .line 1242
    return-void
.end method

.method public setChangeJingOrDongQuan(Z)V
    .locals 0
    .parameter "isChangeJingOrDongQuan"

    .prologue
    .line 1569
    iput-boolean p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isChangeJingOrDongQuan:Z

    .line 1570
    return-void
.end method

.method public setChangeLipin(Z)V
    .locals 0
    .parameter "isChangeLipin"

    .prologue
    .line 1577
    iput-boolean p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isChangeLipin:Z

    .line 1578
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0
    .parameter "cityName"

    .prologue
    .line 901
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->cityName:Ljava/lang/String;

    .line 902
    return-void
.end method

.method public setCodTime(Ljava/lang/Integer;)V
    .locals 0
    .parameter "codTime"

    .prologue
    .line 925
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->codTime:Ljava/lang/Integer;

    .line 926
    return-void
.end method

.method public setCodTimeName(Ljava/lang/String;)V
    .locals 0
    .parameter "codTimeName"

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->codTimeName:Ljava/lang/String;

    .line 1330
    return-void
.end method

.method public setCompanyName(Ljava/lang/String;)V
    .locals 0
    .parameter "companyName"

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->companyName:Ljava/lang/String;

    .line 1376
    return-void
.end method

.method public setCountryName(Ljava/lang/String;)V
    .locals 0
    .parameter "countryName"

    .prologue
    .line 849
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->countryName:Ljava/lang/String;

    .line 850
    return-void
.end method

.method public setCouponDiscount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "couponDiscount"

    .prologue
    .line 810
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->couponDiscount:Ljava/lang/Integer;

    .line 811
    return-void
.end method

.method public setCouponInfo(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CouponInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 794
    .local p1, selectedCouponInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->couponInfo:Ljava/util/ArrayList;

    .line 795
    return-void
.end method

.method public setCurrBalance(Lcom/jingdong/common/entity/UsedBalance;)V
    .locals 0
    .parameter "currBalance"

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->currBalance:Lcom/jingdong/common/entity/UsedBalance;

    .line 1433
    return-void
.end method

.method public setCurrJdbean(Lcom/jingdong/common/entity/UsedJdbean;)V
    .locals 0
    .parameter "currJdbean"

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->currJdbean:Lcom/jingdong/common/entity/UsedJdbean;

    .line 1298
    return-void
.end method

.method public setDiscount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "discount"

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->discount:Ljava/lang/Integer;

    .line 1048
    return-void
.end method

.method public setDiscountLipinka(Ljava/lang/Integer;)V
    .locals 0
    .parameter "discountLipinka"

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->discountLipinka:Ljava/lang/Integer;

    .line 1091
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->email:Ljava/lang/String;

    .line 1368
    return-void
.end method

.method public setGiftInfo(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/GiftCartInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 802
    .local p1, selectedGiftInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->giftInfo:Ljava/util/ArrayList;

    .line 803
    return-void
.end method

.method public setHasTang9(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "hasTang9"

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->hasTang9:Ljava/lang/Boolean;

    .line 1002
    return-void
.end method

.method public setIdArea(Ljava/lang/Integer;)V
    .locals 0
    .parameter "idArea"

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idArea:Ljava/lang/Integer;

    .line 1207
    return-void
.end method

.method public setIdCity(Ljava/lang/Integer;)V
    .locals 0
    .parameter "idCity"

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idCity:Ljava/lang/Integer;

    .line 1075
    return-void
.end method

.method public setIdCompanyBranch(Ljava/lang/Integer;)V
    .locals 0
    .parameter "idCompanyBranch"

    .prologue
    .line 917
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idCompanyBranch:Ljava/lang/Integer;

    .line 918
    return-void
.end method

.method public setIdInvoiceContentTypeBook(Ljava/lang/Integer;)V
    .locals 0
    .parameter "idInvoiceContentTypeBook"

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idInvoiceContentTypeBook:Ljava/lang/Integer;

    .line 1180
    return-void
.end method

.method public setIdInvoiceContentsType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "idInvoiceContentsType"

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idInvoiceContentsType:Ljava/lang/Integer;

    .line 1145
    return-void
.end method

.method public setIdInvoiceHeaderType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "idInvoiceHeaderType"

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idInvoiceHeaderType:Ljava/lang/Integer;

    .line 1234
    return-void
.end method

.method public setIdInvoicePutType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "idInvoicePutType"

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idInvoicePutType:Ljava/lang/Integer;

    .line 1188
    return-void
.end method

.method public setIdInvoiceType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "idInvoiceType"

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idInvoiceType:Ljava/lang/Integer;

    .line 1215
    return-void
.end method

.method public setIdPaymentType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "idPaymentType"

    .prologue
    .line 955
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idPaymentType:Ljava/lang/Integer;

    .line 956
    return-void
.end method

.method public setIdPickSite(Ljava/lang/Integer;)V
    .locals 0
    .parameter "idPickSite"

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idPickSite:Ljava/lang/Integer;

    .line 1266
    return-void
.end method

.method public setIdProvince(Ljava/lang/Integer;)V
    .locals 0
    .parameter "idProvince"

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idProvince:Ljava/lang/Integer;

    .line 1040
    return-void
.end method

.method public setIdShipmentType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "idShipmentType"

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idShipmentType:Ljava/lang/Integer;

    .line 1107
    return-void
.end method

.method public setIdTown(Ljava/lang/Integer;)V
    .locals 0
    .parameter "idTown"

    .prologue
    .line 936
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->idTown:Ljava/lang/Integer;

    .line 937
    return-void
.end method

.method public setInvoiceContentTypeBookName(Ljava/lang/String;)V
    .locals 0
    .parameter "invoiceContentTypeBookName"

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->invoiceContentTypeBookName:Ljava/lang/String;

    .line 1417
    return-void
.end method

.method public setInvoiceContentsTypeName(Ljava/lang/String;)V
    .locals 0
    .parameter "invoiceContentsTypeName"

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->invoiceContentsTypeName:Ljava/lang/String;

    .line 1406
    return-void
.end method

.method public setInvoiceTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "invoiceTitle"

    .prologue
    .line 909
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->invoiceTitle:Ljava/lang/String;

    .line 910
    return-void
.end method

.method public setInvoiceTypeName(Ljava/lang/String;)V
    .locals 0
    .parameter "invoiceTypeName"

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->invoiceTypeName:Ljava/lang/String;

    .line 1395
    return-void
.end method

.method public setIsCodInform(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isCodInform"

    .prologue
    .line 838
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isCodInform:Ljava/lang/Boolean;

    .line 839
    return-void
.end method

.method public setIsIdTown(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isIdTown"

    .prologue
    .line 882
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isIdTown:Ljava/lang/Boolean;

    .line 883
    return-void
.end method

.method public setIsOpenPaymentPassword(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isOpenPaymentPassword"

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isOpenPaymentPassword:Ljava/lang/Boolean;

    .line 1506
    return-void
.end method

.method public setIsPutBookInvoice(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isPutBookInvoice"

    .prologue
    .line 944
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isPutBookInvoice:Ljava/lang/Boolean;

    .line 945
    return-void
.end method

.method public setIsUseBalance(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isUseBalance"

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isUseBalance:Ljava/lang/Boolean;

    .line 1118
    return-void
.end method

.method public setIsUseJdBean(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isUseJdBean"

    .prologue
    .line 1386
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isUseJdBean:Ljava/lang/Boolean;

    .line 1387
    return-void
.end method

.method public setIsUsedVirtualPay(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isUsedVirtualPay"

    .prologue
    .line 1494
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->isUsedVirtualPay:Ljava/lang/Boolean;

    .line 1495
    return-void
.end method

.method public setMiaoSha(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "miaoSha"

    .prologue
    .line 1459
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->miaoSha:Ljava/lang/Boolean;

    .line 1460
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .parameter "mobile"

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->mobile:Ljava/lang/String;

    .line 1029
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->name:Ljava/lang/String;

    .line 1137
    return-void
.end method

.method public setNeedRemark(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "needRemark"

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->needRemark:Ljava/lang/Boolean;

    .line 1172
    return-void
.end method

.method public setOpenPasswordTip(Ljava/lang/String;)V
    .locals 0
    .parameter "openPasswordTip"

    .prologue
    .line 1513
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->openPasswordTip:Ljava/lang/String;

    .line 1514
    return-void
.end method

.method public setOrderBulk(Ljava/lang/Integer;)V
    .locals 0
    .parameter "orderBulk"

    .prologue
    .line 982
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->orderBulk:Ljava/lang/Integer;

    .line 983
    return-void
.end method

.method public setOtherMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "otherMessage"

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->otherMessage:Ljava/lang/String;

    .line 1258
    return-void
.end method

.method public setParam(Ljava/lang/String;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->param:Ljava/lang/String;

    .line 1562
    return-void
.end method

.method public setPayOnlineMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "payOnlineMessage"

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->payOnlineMessage:Ljava/lang/String;

    .line 1250
    return-void
.end method

.method public setPayPasswordKey(Ljava/lang/String;)V
    .locals 0
    .parameter "payPasswordKey"

    .prologue
    .line 1601
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->payPasswordKey:Ljava/lang/String;

    .line 1602
    return-void
.end method

.method public setPayPasswordValue(Ljava/lang/String;)V
    .locals 0
    .parameter "payPasswordValue"

    .prologue
    .line 1609
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->payPasswordValue:Ljava/lang/String;

    .line 1610
    return-void
.end method

.method public setPayWayId(Ljava/lang/Integer;)V
    .locals 0
    .parameter "payWayId"

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->payWayId:Ljava/lang/Integer;

    .line 1099
    return-void
.end method

.method public setPaymentType(Ljava/lang/String;)V
    .locals 0
    .parameter "paymentType"

    .prologue
    .line 963
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->paymentType:Ljava/lang/String;

    .line 964
    return-void
.end method

.method public setPaymentWay(Ljava/lang/Integer;)V
    .locals 0
    .parameter "paymentWay"

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->paymentWay:Ljava/lang/Integer;

    .line 1226
    return-void
.end method

.method public setPaymentWayName(Ljava/lang/String;)V
    .locals 0
    .parameter "paymentWayName"

    .prologue
    .line 1440
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->paymentWayName:Ljava/lang/String;

    .line 1441
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 871
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->phone:Ljava/lang/String;

    .line 872
    return-void
.end method

.method public setPickSiteAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "pickSiteAddress"

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->pickSiteAddress:Ljava/lang/String;

    .line 1282
    return-void
.end method

.method public setPickSiteName(Ljava/lang/String;)V
    .locals 0
    .parameter "pickSiteName"

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->pickSiteName:Ljava/lang/String;

    .line 1274
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0
    .parameter "pin"

    .prologue
    .line 860
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->pin:Ljava/lang/String;

    .line 861
    return-void
.end method

.method public setPostCustomerId(Ljava/lang/String;)V
    .locals 0
    .parameter "postCustomerId"

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->postCustomerId:Ljava/lang/String;

    .line 1306
    return-void
.end method

.method public setPostPayee(Ljava/lang/String;)V
    .locals 0
    .parameter "postPayee"

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->postPayee:Ljava/lang/String;

    .line 1314
    return-void
.end method

.method public setPrice(Ljava/lang/Integer;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->price:Ljava/lang/Integer;

    .line 1196
    return-void
.end method

.method public setPriceItemList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1289
    .local p1, priceItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->priceItemList:Ljava/util/ArrayList;

    .line 1290
    return-void
.end method

.method public setPrimitivePrice(Ljava/lang/Integer;)V
    .locals 0
    .parameter "primitivePrice"

    .prologue
    .line 990
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->primitivePrice:Ljava/lang/Integer;

    .line 991
    return-void
.end method

.method public setPromiseDate(Ljava/lang/String;)V
    .locals 0
    .parameter "promiseDate"

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->promiseDate:Ljava/lang/String;

    .line 1083
    return-void
.end method

.method public setPromiseSendPay(Ljava/lang/String;)V
    .locals 0
    .parameter "promiseSendPay"

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->promiseSendPay:Ljava/lang/String;

    .line 1484
    return-void
.end method

.method public setPromiseTimeRange(Ljava/lang/String;)V
    .locals 0
    .parameter "promiseTimeRange"

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->promiseTimeRange:Ljava/lang/String;

    .line 1153
    return-void
.end method

.method public setPromiseType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "promiseType"

    .prologue
    .line 826
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->promiseType:Ljava/lang/Integer;

    .line 827
    return-void
.end method

.method public setPromotionPrice(Ljava/lang/Integer;)V
    .locals 0
    .parameter "promotionPrice"

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->promotionPrice:Ljava/lang/Integer;

    .line 1126
    return-void
.end method

.method public setProvinceName(Ljava/lang/String;)V
    .locals 0
    .parameter "provinceName"

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->provinceName:Ljava/lang/String;

    .line 1056
    return-void
.end method

.method public setRePrice(Ljava/lang/Integer;)V
    .locals 0
    .parameter "rePrice"

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->rePrice:Ljava/lang/Integer;

    .line 1018
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .parameter "remark"

    .prologue
    .line 1448
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->remark:Ljava/lang/String;

    .line 1449
    return-void
.end method

.method public setShipmentTypeName(Ljava/lang/String;)V
    .locals 0
    .parameter "shipmentTypeName"

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->shipmentTypeName:Ljava/lang/String;

    .line 1322
    return-void
.end method

.method public setShow311Text(Ljava/lang/String;)V
    .locals 0
    .parameter "show311Text"

    .prologue
    .line 1585
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->show311Text:Ljava/lang/String;

    .line 1586
    return-void
.end method

.method public setShow411Text(Ljava/lang/String;)V
    .locals 0
    .parameter "show411Text"

    .prologue
    .line 1593
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->show411Text:Ljava/lang/String;

    .line 1594
    return-void
.end method

.method public setShowSecurityFunctionId(Ljava/lang/String;)V
    .locals 0
    .parameter "showSecurityFunctionId"

    .prologue
    .line 1537
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->showSecurityFunctionId:Ljava/lang/String;

    .line 1538
    return-void
.end method

.method public setShowSecurityMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "showSecurityMessage"

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->showSecurityMessage:Ljava/lang/String;

    .line 1554
    return-void
.end method

.method public setShowSecuritySubmitKey(Ljava/lang/String;)V
    .locals 0
    .parameter "showSecuritySubmitKey"

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->showSecuritySubmitKey:Ljava/lang/String;

    .line 1530
    return-void
.end method

.method public setShowSecurityTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "showSecurityTitle"

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->showSecurityTitle:Ljava/lang/String;

    .line 1522
    return-void
.end method

.method public setShowSecurityUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "showSecurityUrl"

    .prologue
    .line 1545
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->showSecurityUrl:Ljava/lang/String;

    .line 1546
    return-void
.end method

.method public setSubmitOrderInfo(Lcom/jingdong/common/entity/SubmitOrderInfo;)V
    .locals 0
    .parameter "submitOrderInfo"

    .prologue
    .line 1467
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->submitOrderInfo:Lcom/jingdong/common/entity/SubmitOrderInfo;

    .line 1468
    return-void
.end method

.method public setTotalFee(Ljava/lang/Integer;)V
    .locals 0
    .parameter "totalFee"

    .prologue
    .line 818
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->totalFee:Ljava/lang/Integer;

    .line 819
    return-void
.end method

.method public setTotalPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "totalPrice"

    .prologue
    .line 1475
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->totalPrice:Ljava/lang/String;

    .line 1476
    return-void
.end method

.method public setTownName(Ljava/lang/String;)V
    .locals 0
    .parameter "townName"

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->townName:Ljava/lang/String;

    .line 1161
    return-void
.end method

.method public setUserLevel(Ljava/lang/Integer;)V
    .locals 0
    .parameter "userLevel"

    .prologue
    .line 893
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->userLevel:Ljava/lang/Integer;

    .line 894
    return-void
.end method

.method public setUsid(Ljava/lang/String;)V
    .locals 0
    .parameter "usid"

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->usid:Ljava/lang/String;

    .line 1618
    return-void
.end method

.method public setVirtualPayAvailable(Lcom/jingdong/common/entity/VirtualPayAvailable;)V
    .locals 0
    .parameter "virtualPayAvailable"

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->virtualPayAvailable:Lcom/jingdong/common/entity/VirtualPayAvailable;

    .line 1425
    return-void
.end method

.method public setWhere(Ljava/lang/String;)V
    .locals 0
    .parameter "where"

    .prologue
    .line 974
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->where:Ljava/lang/String;

    .line 975
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0
    .parameter "zip"

    .prologue
    .line 1356
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->zip:Ljava/lang/String;

    .line 1357
    return-void
.end method

.method public toOldModelForPaymentInfo()Lcom/jingdong/common/entity/PaymentInfo;
    .locals 6

    .prologue
    .line 385
    new-instance v2, Lcom/jingdong/common/entity/PaymentInfo;

    invoke-direct {v2}, Lcom/jingdong/common/entity/PaymentInfo;-><init>()V

    .line 388
    .local v2, oldPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 390
    .local v1, jdPay:Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdPaymentType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 392
    .local v3, paymentId:I
    const-string v4, "IdPaymentType"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 393
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 394
    const-string v4, "IdPickSite"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdPickSite()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    :cond_0
    :goto_0
    iput v3, v2, Lcom/jingdong/common/entity/PaymentInfo;->type:I

    .line 410
    iput v3, v2, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    .line 411
    invoke-virtual {v2, v3, v1}, Lcom/jingdong/common/entity/PaymentInfo;->setPayMentType(ILorg/json/JSONObject;)V

    .line 420
    .end local v1           #jdPay:Lorg/json/JSONObject;
    .end local v3           #paymentId:I
    :goto_1
    return-object v2

    .line 396
    .restart local v1       #jdPay:Lorg/json/JSONObject;
    .restart local v3       #paymentId:I
    :cond_1
    const-string v4, "IdShipmentType"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdShipmentType()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    const-string v4, "CODTime"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCodTime()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, isInform:Z
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIsCodInform()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIsCodInform()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 400
    const/4 v0, 0x1

    .line 402
    :cond_2
    const-string v4, "IsCodInform"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 403
    sput-boolean v0, Lcom/jingdong/common/constant/Constants;->bPhone:Z

    .line 405
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 406
    const-string v4, "PaymentWay"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPaymentWay()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    .end local v0           #isInform:Z
    .end local v1           #jdPay:Lorg/json/JSONObject;
    .end local v3           #paymentId:I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public toOldModelForUserInfo()Lcom/jingdong/common/entity/UserInfo;
    .locals 4

    .prologue
    .line 352
    new-instance v0, Lcom/jingdong/common/entity/UserInfo;

    invoke-direct {v0}, Lcom/jingdong/common/entity/UserInfo;-><init>()V

    .line 353
    .local v0, userInfo:Lcom/jingdong/common/entity/UserInfo;
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserInfo;->setUserName(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserInfo;->setUserPhone(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserInfo;->setUserMobile(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getZip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/UserInfo;->setUserZip(Ljava/lang/String;)V

    .line 359
    :try_start_0
    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdProvince"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdProvince()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdCity"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdCity()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdTown()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdTown"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdTown()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    :goto_0
    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdArea"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdArea()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Where"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getWhere()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Email"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "UserLevel"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getUserLevel()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "addressDetail"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getAddressDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    :goto_1
    return-object v0

    .line 366
    :cond_0
    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IdTown"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public toOrderStr()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 575
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 579
    .local v2, jbOrderStr:Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "pin"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 581
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 582
    const-string v5, "Name"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 584
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getMobile()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 585
    const-string v5, "Mobile"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getMobile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 587
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 588
    const-string v5, "Phone"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPhone()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 590
    :cond_2
    const-string v5, "Zip"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getZip()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 591
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdProvince()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 592
    const-string v5, "IdProvince"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdProvince()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 594
    :cond_3
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdCity()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 595
    const-string v5, "IdCity"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdCity()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 597
    :cond_4
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdArea()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 598
    const-string v5, "IdArea"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdArea()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 600
    :cond_5
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdTown()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 601
    const-string v5, "IdTown"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdTown()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 603
    :cond_6
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getWhere()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 604
    const-string v5, "Where"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getWhere()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 606
    :cond_7
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getAddressDetail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 607
    const-string v5, "addressDetail"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getAddressDetail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 609
    :cond_8
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 610
    const-string v5, "Email"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 612
    :cond_9
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getUserLevel()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 613
    const-string v5, "UserLevel"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getUserLevel()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 615
    :cond_a
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCompanyName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 616
    const-string v5, "CompanyName"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCompanyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 618
    :cond_b
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getInvoiceTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 619
    const-string v5, "InvoiceTitle"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getInvoiceTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 621
    :cond_c
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdInvoiceType()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 622
    const-string v5, "IdInvoiceType"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdInvoiceType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 624
    :cond_d
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdInvoiceHeaderType()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 625
    const-string v5, "IdInvoiceHeaderType"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdInvoiceHeaderType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 627
    :cond_e
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdInvoiceContentTypeBook()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 628
    const-string v5, "IdInvoiceContentTypeBook"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdInvoiceContentTypeBook()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 631
    :cond_f
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdCompanyBranch()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 632
    const-string v5, "IdCompanyBranch"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdCompanyBranch()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 634
    :cond_10
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdInvoiceContentsType()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 635
    const-string v5, "IdInvoiceContentsType"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdInvoiceContentsType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 647
    :cond_11
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdPaymentType()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 648
    const-string v5, "IdPaymentType"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdPaymentType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 650
    :cond_12
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPaymentWay()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 651
    const-string v5, "PaymentWay"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPaymentWay()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 653
    :cond_13
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdShipmentType()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 654
    const-string v5, "IdShipmentType"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdShipmentType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 656
    :cond_14
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCodTime()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 657
    const-string v5, "CODTime"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCodTime()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 659
    :cond_15
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCodTimeName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 660
    const-string v5, "CodDate"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCodTimeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 665
    :cond_16
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdPickSite()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 666
    const-string v5, "IdPickSite"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdPickSite()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    :cond_17
    const-string v5, "IsCodInform"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIsCodInform()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPromotionPrice()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 672
    const-string v5, "PromotionPrice"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPromotionPrice()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 674
    :cond_18
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPrice()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 675
    const-string v5, "Price"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPrice()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 677
    :cond_19
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getRemark()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 678
    const-string v5, "Remark"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 681
    :cond_1a
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getParam()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 682
    const-string v5, "param"

    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getParam()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    :cond_1b
    const-string v5, "isUseJdBean"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIsUseJdBean()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 687
    const-string v5, "SupportJdBean"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 690
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCurrJdbean()Lcom/jingdong/common/entity/UsedJdbean;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 691
    const-string v5, "canUseJdBeanCount"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCurrJdbean()Lcom/jingdong/common/entity/UsedJdbean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/UsedJdbean;->getCanUseJdBeanCount()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 692
    const-string v5, "totalJdBeanCount"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCurrJdbean()Lcom/jingdong/common/entity/UsedJdbean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/UsedJdbean;->getTotalJdBeanCount()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 696
    :cond_1c
    iget-object v5, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->couponInfo:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/jingdong/common/entity/CouponInfo;->lookupSelectedOrModifyForList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 697
    .local v3, uploadCouon:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1d

    .line 698
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 699
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_21

    .line 702
    const-string v5, "TheCoupons"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 706
    .end local v0           #array:Lorg/json/JSONArray;
    :cond_1d
    iget-object v5, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->giftInfo:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/jingdong/common/entity/GiftCartInfo;->lookupSelectedOrModifyForList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 707
    .local v4, uploadGift:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1e

    .line 708
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 709
    .restart local v0       #array:Lorg/json/JSONArray;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_22

    .line 713
    const-string v5, "TheLipinkas"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 717
    .end local v0           #array:Lorg/json/JSONArray;
    :cond_1e
    const-string v5, "IsUseBalance"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIsUseBalance()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 720
    const-string v5, "BigItemCodDate"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getBigItemCodDateValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 723
    const-string v5, "promiseType"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPromiseType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 724
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPromiseSendPay()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 725
    const-string v5, "promiseSendPay"

    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPromiseSendPay()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    :cond_1f
    const-string v5, "promiseDate"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPromiseDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    const-string v5, "promiseTimeRange"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPromiseTimeRange()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 730
    const-string v5, "isOpenPaymentPassword"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIsOpenPaymentPassword()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 731
    const-string v5, "needRemark"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getNeedRemark()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 734
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPayPasswordKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPayPasswordValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 735
    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPayPasswordKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPayPasswordValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 746
    .end local v3           #uploadCouon:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    .end local v4           #uploadGift:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    :cond_20
    :goto_2
    return-object v2

    .line 699
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v3       #uploadCouon:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    :cond_21
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/CouponInfo;

    .line 700
    .local v1, info:Lcom/jingdong/common/entity/CouponInfo;
    invoke-virtual {v1}, Lcom/jingdong/common/entity/CouponInfo;->toOrderJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 739
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #info:Lcom/jingdong/common/entity/CouponInfo;
    .end local v3           #uploadCouon:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    :catch_0
    move-exception v5

    goto :goto_2

    .line 709
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v3       #uploadCouon:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    .restart local v4       #uploadGift:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    :cond_22
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/GiftCartInfo;

    .line 710
    .local v1, info:Lcom/jingdong/common/entity/GiftCartInfo;
    invoke-virtual {v1}, Lcom/jingdong/common/entity/GiftCartInfo;->toOrderJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method public update(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 8
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 178
    if-nez p1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 182
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 185
    :pswitch_0
    const-string v5, "lastOderInfo"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 187
    .local v2, orderInfoJson:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v2, :cond_3

    .line 188
    const-string v5, "CouponDiscount"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setCouponDiscount(Ljava/lang/Integer;)V

    .line 189
    const-string v5, "TotalFee"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setTotalFee(Ljava/lang/Integer;)V

    .line 190
    const-string v5, "PromiseType"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPromiseType(Ljava/lang/Integer;)V

    .line 191
    const-string v5, "IsCodInform"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIsCodInform(Ljava/lang/Boolean;)V

    .line 192
    const-string v5, "CountryName"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setCountryName(Ljava/lang/String;)V

    .line 193
    const-string v5, "Pin"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPin(Ljava/lang/String;)V

    .line 194
    const-string v5, "Phone"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPhone(Ljava/lang/String;)V

    .line 195
    const-string v5, "IsIdTown"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIsIdTown(Ljava/lang/Boolean;)V

    .line 196
    const-string v5, "UserLevel"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setUserLevel(Ljava/lang/Integer;)V

    .line 197
    const-string v5, "CityName"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setCityName(Ljava/lang/String;)V

    .line 198
    const-string v5, "InvoiceTitle"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setInvoiceTitle(Ljava/lang/String;)V

    .line 199
    const-string v5, "CompanyName"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setCompanyName(Ljava/lang/String;)V

    .line 200
    const-string v5, "IdCompanyBranch"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdCompanyBranch(Ljava/lang/Integer;)V

    .line 201
    const-string v5, "CODTime"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setCodTime(Ljava/lang/Integer;)V

    .line 202
    const-string v5, "CODTimeName"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setCodTimeName(Ljava/lang/String;)V

    .line 203
    const-string v5, "BigItemCodDateName"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setBigItemCodDateName(Ljava/lang/String;)V

    .line 204
    const-string v5, "BigItemCodDate"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setBigItemCodDateValue(Ljava/lang/String;)V

    .line 205
    const-string v5, "IdTown"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdTown(Ljava/lang/Integer;)V

    .line 206
    const-string v5, "IsPutBookInvoice"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIsPutBookInvoice(Ljava/lang/Boolean;)V

    .line 207
    const-string v5, "IdPaymentType"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdPaymentType(Ljava/lang/Integer;)V

    .line 208
    const-string v5, "PaymentType"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPaymentType(Ljava/lang/String;)V

    .line 209
    const-string v5, "Where"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setWhere(Ljava/lang/String;)V

    .line 210
    const-string v5, "addressDetail"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setAddressDetail(Ljava/lang/String;)V

    .line 211
    const-string v5, "Zip"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setZip(Ljava/lang/String;)V

    .line 212
    const-string v5, "OrderBulk"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setOrderBulk(Ljava/lang/Integer;)V

    .line 213
    const-string v5, "PrimitivePrice"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPrimitivePrice(Ljava/lang/Integer;)V

    .line 214
    const-string v5, "HasTang9"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setHasTang9(Ljava/lang/Boolean;)V

    .line 215
    const-string v5, "AddressDetail"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setAddressDetail(Ljava/lang/String;)V

    .line 216
    const-string v5, "RePrice"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setRePrice(Ljava/lang/Integer;)V

    .line 217
    const-string v5, "Mobile"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setMobile(Ljava/lang/String;)V

    .line 218
    const-string v5, "IdProvince"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdProvince(Ljava/lang/Integer;)V

    .line 219
    const-string v5, "Discount"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setDiscount(Ljava/lang/Integer;)V

    .line 220
    const-string v5, "ProvinceName"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setProvinceName(Ljava/lang/String;)V

    .line 222
    const-string v5, "IdCity"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdCity(Ljava/lang/Integer;)V

    .line 223
    const-string v5, "PromiseDate"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPromiseDate(Ljava/lang/String;)V

    .line 224
    const-string v5, "DiscountLipinka"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setDiscountLipinka(Ljava/lang/Integer;)V

    .line 225
    const-string v5, "PayWayId"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPayWayId(Ljava/lang/Integer;)V

    .line 226
    const-string v5, "IdShipmentType"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdShipmentType(Ljava/lang/Integer;)V

    .line 227
    const-string v5, "ShipmentType"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setShipmentTypeName(Ljava/lang/String;)V

    .line 228
    const-string v5, "IsUseBalance"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIsUseBalance(Ljava/lang/Boolean;)V

    .line 229
    const-string v5, "IsUseJdBean"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIsUseJdBean(Ljava/lang/Boolean;)V

    .line 230
    const-string v5, "PromotionPrice"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPromotionPrice(Ljava/lang/Integer;)V

    .line 231
    const-string v5, "Name"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setName(Ljava/lang/String;)V

    .line 232
    const-string v5, "IdInvoiceContentsType"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdInvoiceContentsType(Ljava/lang/Integer;)V

    .line 233
    const-string v5, "PromiseTimeRange"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPromiseTimeRange(Ljava/lang/String;)V

    .line 234
    const-string v5, "TownName"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setTownName(Ljava/lang/String;)V

    .line 235
    const-string v5, "needRemark"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setNeedRemark(Ljava/lang/Boolean;)V

    .line 236
    const-string v5, "IdInvoiceContentTypeBook"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdInvoiceContentTypeBook(Ljava/lang/Integer;)V

    .line 237
    const-string v5, "IdInvoicePutType"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdInvoicePutType(Ljava/lang/Integer;)V

    .line 238
    const-string v5, "Price"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPrice(Ljava/lang/Integer;)V

    .line 239
    const-string v5, "IdArea"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdArea(Ljava/lang/Integer;)V

    .line 240
    const-string v5, "IdInvoiceType"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdInvoiceType(Ljava/lang/Integer;)V

    .line 241
    const-string v5, "InvoiceTypeName"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setInvoiceTypeName(Ljava/lang/String;)V

    .line 242
    const-string v5, "PaymentWay"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPaymentWay(Ljava/lang/Integer;)V

    .line 243
    const-string v5, "PaymentWayName"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPaymentWayName(Ljava/lang/String;)V

    .line 244
    const-string v5, "IdInvoiceHeaderType"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdInvoiceHeaderType(Ljava/lang/Integer;)V

    .line 245
    const-string v5, "IdPickSite"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIdPickSite(Ljava/lang/Integer;)V

    .line 246
    const-string v5, "PickSiteName"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPickSiteName(Ljava/lang/String;)V

    .line 247
    const-string v5, "PickSiteAddress"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPickSiteAddress(Ljava/lang/String;)V

    .line 248
    const-string v5, "PostCustomerId"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPostCustomerId(Ljava/lang/String;)V

    .line 249
    const-string v5, "PostPayee"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPostPayee(Ljava/lang/String;)V

    .line 250
    const-string v5, "InvoiceContentsTypeBook"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setInvoiceContentTypeBookName(Ljava/lang/String;)V

    .line 251
    const-string v5, "InvoiceContentsType"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setInvoiceContentsTypeName(Ljava/lang/String;)V

    .line 252
    const-string v5, "isUsedVirtualPay"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIsUsedVirtualPay(Ljava/lang/Boolean;)V

    .line 253
    const-string v5, "show311Text"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setShow311Text(Ljava/lang/String;)V

    .line 254
    const-string v5, "show411Text"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setShow411Text(Ljava/lang/String;)V

    .line 256
    const-string v5, "param"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 257
    .local v1, jsonParams:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v1, :cond_1

    .line 258
    invoke-virtual {v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setParam(Ljava/lang/String;)V

    .line 262
    :cond_1
    const-string v5, "usedJdBeanMap"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 263
    new-instance v5, Lcom/jingdong/common/entity/UsedJdbean;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lcom/jingdong/common/entity/UsedJdbean;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    iput-object v5, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->currJdbean:Lcom/jingdong/common/entity/UsedJdbean;

    .line 267
    :cond_2
    new-instance v4, Lcom/jingdong/common/entity/UsedBalance;

    invoke-direct {v4}, Lcom/jingdong/common/entity/UsedBalance;-><init>()V

    .line 268
    .local v4, user:Lcom/jingdong/common/entity/UsedBalance;
    const-string v5, "MoneyBalance"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/UsedBalance;->setBalanceValue(Ljava/lang/Double;)V

    .line 269
    const-string v5, "BalanceMessage"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/UsedBalance;->setBalanceName(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0, v4}, Lcom/jingdong/common/entity/NewCurrentOrder;->setCurrBalance(Lcom/jingdong/common/entity/UsedBalance;)V

    .line 273
    const-string v5, "isOpenPaymentPassword"

    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIsOpenPaymentPassword(Ljava/lang/Boolean;)V

    .line 274
    const-string v5, "securityPasswordBlock"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    .line 275
    .local v3, passwordBlack:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v3, :cond_3

    .line 276
    const-string v5, "openPasswordTip"

    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setOpenPasswordTip(Ljava/lang/String;)V

    .line 278
    const-string v5, "title"

    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setShowSecurityTitle(Ljava/lang/String;)V

    .line 279
    const-string v5, "submitKey"

    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setShowSecuritySubmitKey(Ljava/lang/String;)V

    .line 280
    const-string v5, "functionId"

    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setShowSecurityFunctionId(Ljava/lang/String;)V

    .line 281
    const-string v5, "url"

    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setShowSecurityUrl(Ljava/lang/String;)V

    .line 282
    const-string v5, "message"

    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setShowSecurityMessage(Ljava/lang/String;)V

    .line 286
    .end local v1           #jsonParams:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v3           #passwordBlack:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v4           #user:Lcom/jingdong/common/entity/UsedBalance;
    :cond_3
    const-string v5, "changeAreaMessage"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setChangeAreaMessage(Ljava/lang/String;)V

    .line 287
    const-string v5, "message"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setOtherMessage(Ljava/lang/String;)V

    .line 288
    const-string v5, "onlineMessage"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPayOnlineMessage(Ljava/lang/String;)V

    .line 289
    invoke-static {p1}, Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;->toList(Lcom/jingdong/common/utils/JSONObjectProxy;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPriceItemList(Ljava/util/ArrayList;)V

    .line 291
    iget-object v5, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->priceItemList:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->priceItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 292
    iget-object v5, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->priceItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 300
    :cond_5
    :goto_1
    const-string v5, "miaoSha"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setMiaoSha(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 292
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;

    .line 293
    .local v0, item:Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;
    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;->getLabel()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u5546\u54c1\u91d1\u989d"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 294
    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jingdong/common/entity/NewCurrentOrder;->totalPrice:Ljava/lang/String;

    goto :goto_1

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
