.class public Lcom/jingdong/common/entity/cart/CartResponseSuit;
.super Lcom/jingdong/common/entity/cart/CartPackSummary;
.source "CartResponseSuit.java"


# instance fields
.field private addMoney:Ljava/lang/String;

.field private canSelectGifts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseGift;",
            ">;"
        }
    .end annotation
.end field

.field private canSelectedGiftNum:Ljava/lang/Integer;

.field private checkType:Ljava/lang/Integer;

.field private discount:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private needMoney:Ljava/lang/Integer;

.field private point:Ljava/lang/Integer;

.field private price:Ljava/lang/String;

.field private priceShow:Ljava/lang/String;

.field private rePrice:Ljava/lang/String;

.field private selectedGift:Ljava/lang/Boolean;

.field private suitTip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V
    .locals 7
    .parameter "proxy"
    .parameter "imageDomain"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 98
    const-string v5, "Name"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->setName(Ljava/lang/String;)V

    .line 99
    const-string v5, "NeedMoney"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->setNeedMoney(Ljava/lang/Integer;)V

    .line 100
    const-string v5, "Num"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->setNum(Ljava/lang/Integer;)V

    .line 101
    const-string v5, "RePrice"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->setRePrice(Ljava/lang/String;)V

    .line 102
    const-string v5, "Price"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->setPrice(Ljava/lang/String;)V

    .line 103
    const-string v5, "SType"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->setsType(Ljava/lang/String;)V

    .line 104
    const-string v5, "Discount"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->setDiscount(Ljava/lang/String;)V

    .line 105
    const-string v5, "Id"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->setPackId(Ljava/lang/String;)V

    .line 106
    const-string v5, "PriceShow"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->setPriceShow(Ljava/lang/String;)V

    .line 107
    const-string v5, "STip"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->setSuitTip(Ljava/lang/String;)V

    .line 108
    const-string v5, "SelectedGift"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->setSelectedGift(Ljava/lang/Boolean;)V

    .line 109
    const-string v5, "Point"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->setPoint(Ljava/lang/Integer;)V

    .line 110
    const-string v5, "AddMoney"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->setAddMoney(Ljava/lang/String;)V

    .line 111
    const-string v5, "CanSelectedGiftNum"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->setCanSelectedGiftNum(Ljava/lang/Integer;)V

    .line 112
    const-string v5, "CheckType"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->setCheckType(Ljava/lang/Integer;)V

    .line 115
    const-string v5, "Skus"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    .line 116
    .local v3, skusProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 117
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->skus:Ljava/util/ArrayList;

    .line 119
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lt v2, v5, :cond_3

    .line 128
    .end local v2           #i:I
    :cond_0
    const-string v5, "Gifts"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    .line 129
    .local v1, giftsProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 130
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->gifts:Ljava/util/ArrayList;

    .line 132
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    invoke-virtual {v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lt v2, v5, :cond_5

    .line 141
    .end local v2           #i:I
    :cond_1
    const-string v5, "CanSelectGifts"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 142
    .local v0, canSelectGiftsProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 143
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->canSelectGifts:Ljava/util/ArrayList;

    .line 145
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lt v2, v5, :cond_7

    .line 153
    .end local v2           #i:I
    :cond_2
    return-void

    .line 120
    .end local v0           #canSelectGiftsProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v1           #giftsProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v2       #i:I
    :cond_3
    invoke-virtual {v3, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    .line 121
    .local v4, temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v4, :cond_4

    .line 122
    iget-object v5, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->skus:Ljava/util/ArrayList;

    new-instance v6, Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-direct {v6, v4, p2}, Lcom/jingdong/common/entity/cart/CartResponseSku;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v4           #temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v1       #giftsProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_5
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    .line 134
    .restart local v4       #temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v4, :cond_6

    .line 135
    iget-object v5, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->gifts:Ljava/util/ArrayList;

    new-instance v6, Lcom/jingdong/common/entity/cart/CartResponseGift;

    invoke-direct {v6, v4, p2}, Lcom/jingdong/common/entity/cart/CartResponseGift;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    .end local v4           #temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v0       #canSelectGiftsProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_7
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    .line 147
    .restart local v4       #temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v4, :cond_8

    .line 148
    iget-object v5, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->canSelectGifts:Ljava/util/ArrayList;

    new-instance v6, Lcom/jingdong/common/entity/cart/CartResponseGift;

    invoke-direct {v6, v4, p2}, Lcom/jingdong/common/entity/cart/CartResponseGift;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getAddMoney()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->addMoney:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 305
    const-string v0, ""

    .line 308
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->addMoney:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCanSelectGifts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseGift;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->canSelectGifts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCanSelectedGiftNum()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->canSelectedGiftNum:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->canSelectedGiftNum:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getCheckType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->checkType:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 328
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->checkType:Ljava/lang/Integer;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->checkType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDiscount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->discount:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 209
    const-string v0, ""

    .line 211
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->discount:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 157
    const-string v0, ""

    .line 159
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNeedMoney()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->needMoney:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->needMoney:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getNum()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->num:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->num:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getPoint()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->point:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->point:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->price:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 261
    const-string v0, ""

    .line 263
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->price:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPriceShow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->priceShow:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 220
    const-string v0, ""

    .line 222
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->priceShow:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRePrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->rePrice:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 190
    const-string v0, ""

    .line 192
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->rePrice:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSelectedGift()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->selectedGift:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->selectedGift:Ljava/lang/Boolean;

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->selectedGift:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSuitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getPackId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuitTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->suitTip:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 272
    const-string v0, ""

    .line 274
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->suitTip:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSuitType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getsType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getCheckType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAddMoney(Ljava/lang/String;)V
    .locals 0
    .parameter "addMoney"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->addMoney:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setCanSelectGifts(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseGift;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, canSelectGifts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseGift;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->canSelectGifts:Ljava/util/ArrayList;

    .line 301
    return-void
.end method

.method public setCanSelectedGiftNum(Ljava/lang/Integer;)V
    .locals 0
    .parameter "canSelectedGiftNum"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->canSelectedGiftNum:Ljava/lang/Integer;

    .line 324
    return-void
.end method

.method public setCheckType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "checkType"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->checkType:Ljava/lang/Integer;

    .line 339
    return-void
.end method

.method public setDiscount(Ljava/lang/String;)V
    .locals 0
    .parameter "discount"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->discount:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->name:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setNeedMoney(Ljava/lang/Integer;)V
    .locals 0
    .parameter "needMoney"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->needMoney:Ljava/lang/Integer;

    .line 175
    return-void
.end method

.method public setNum(Ljava/lang/Integer;)V
    .locals 0
    .parameter "num"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->num:Ljava/lang/Integer;

    .line 186
    return-void
.end method

.method public setPoint(Ljava/lang/Integer;)V
    .locals 0
    .parameter "point"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->point:Ljava/lang/Integer;

    .line 238
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->price:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setPriceShow(Ljava/lang/String;)V
    .locals 0
    .parameter "priceShow"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->priceShow:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setRePrice(Ljava/lang/String;)V
    .locals 0
    .parameter "rePrice"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->rePrice:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setSelectedGift(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "selectedGift"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->selectedGift:Ljava/lang/Boolean;

    .line 290
    return-void
.end method

.method public setSuitTip(Ljava/lang/String;)V
    .locals 0
    .parameter "suitTip"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->suitTip:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public toPack()Lcom/jingdong/common/entity/Pack;
    .locals 2

    .prologue
    .line 343
    invoke-super {p0}, Lcom/jingdong/common/entity/cart/CartPackSummary;->toPack()Lcom/jingdong/common/entity/Pack;

    move-result-object v0

    .line 344
    .local v0, pack:Lcom/jingdong/common/entity/Pack;
    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/Pack;->setName(Ljava/lang/String;)V

    .line 345
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartResponseSuit [canSelectGifts="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->canSelectGifts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", addMoney="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->addMoney:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canSelectedGiftNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->canSelectedGiftNum:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needMoney="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->needMoney:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rePrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->rePrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", discount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->discount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priceShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->priceShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", point="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->point:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", suitTip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->suitTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selectedGift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->selectedGift:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->skus:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gifts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->packId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->num:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSuit;->sType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
