.class public Lcom/jingdong/common/entity/cart/CartResponseSku;
.super Lcom/jingdong/common/entity/cart/CartSkuSummary;
.source "CartResponseSku.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/entity/cart/CartResponseSku$Tag;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6abb2cf3b33024f1L


# instance fields
.field private awardType:Ljava/lang/Integer;

.field private checkType:Ljava/lang/Integer;

.field private discount:Ljava/lang/String;

.field private imageDomail:Ljava/lang/String;

.field private imgUrl:Ljava/lang/String;

.field private mustGifts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseGift;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private point:Ljava/lang/Integer;

.field private price:Ljava/lang/String;

.field private priceImg:Ljava/lang/String;

.field private priceShow:Ljava/lang/String;

.field private rePrice:Ljava/lang/String;

.field private tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseSku$Tag;",
            ">;"
        }
    .end annotation
.end field

.field private targetId:Ljava/lang/Integer;

.field private ybCanSelectedCategorys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResonseYB;",
            ">;"
        }
    .end annotation
.end field

.field private ybSkus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResonseYBSelected;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V
    .locals 8
    .parameter "proxy"
    .parameter "imageDomail"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/jingdong/common/entity/cart/CartSkuSummary;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 108
    iput-object p2, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->imageDomail:Ljava/lang/String;

    .line 111
    const-string v6, "Name"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jingdong/common/entity/cart/CartResponseSku;->setName(Ljava/lang/String;)V

    .line 112
    const-string v6, "AwardType"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jingdong/common/entity/cart/CartResponseSku;->setAwardType(Ljava/lang/Integer;)V

    .line 113
    const-string v6, "PriceImg"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jingdong/common/entity/cart/CartResponseSku;->setPriceImg(Ljava/lang/String;)V

    .line 114
    const-string v6, "targetId"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jingdong/common/entity/cart/CartResponseSku;->setTargetId(Ljava/lang/Integer;)V

    .line 115
    const-string v6, "PriceShow"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jingdong/common/entity/cart/CartResponseSku;->setPriceShow(Ljava/lang/String;)V

    .line 116
    const-string v6, "ImgUrl"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jingdong/common/entity/cart/CartResponseSku;->setImgUrl(Ljava/lang/String;)V

    .line 117
    const-string v6, "CheckType"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jingdong/common/entity/cart/CartResponseSku;->setCheckType(Ljava/lang/Integer;)V

    .line 118
    const-string v6, "RePrice"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jingdong/common/entity/cart/CartResponseSku;->setRePrice(Ljava/lang/String;)V

    .line 119
    const-string v6, "Price"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jingdong/common/entity/cart/CartResponseSku;->setPrice(Ljava/lang/String;)V

    .line 120
    const-string v6, "Discount"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jingdong/common/entity/cart/CartResponseSku;->setDiscount(Ljava/lang/String;)V

    .line 121
    const-string v6, "Point"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jingdong/common/entity/cart/CartResponseSku;->setPoint(Ljava/lang/Integer;)V

    .line 124
    const-string v6, "Tags"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    .line 125
    .local v2, tagsProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 126
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->tags:Ljava/util/ArrayList;

    .line 137
    :cond_0
    const-string v6, "YbSkus"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    .line 138
    .local v5, ybsProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 139
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->ybSkus:Ljava/util/ArrayList;

    .line 141
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v5}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v6

    if-lt v0, v6, :cond_4

    .line 150
    .end local v0           #i:I
    :cond_1
    const-string v6, "CanSelectYB"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v4

    .line 151
    .local v4, ybsCanSelectProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 152
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->ybCanSelectedCategorys:Ljava/util/ArrayList;

    .line 154
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    invoke-virtual {v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v6

    if-lt v0, v6, :cond_6

    .line 163
    .end local v0           #i:I
    :cond_2
    const-string v6, "Gifts"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    .line 164
    .local v1, mustGiftProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 165
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->mustGifts:Ljava/util/ArrayList;

    .line 167
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-virtual {v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v6

    if-lt v0, v6, :cond_8

    .line 174
    .end local v0           #i:I
    :cond_3
    return-void

    .line 142
    .end local v1           #mustGiftProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v4           #ybsCanSelectProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v0       #i:I
    :cond_4
    invoke-virtual {v5, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    .line 143
    .local v3, temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v3, :cond_5

    .line 144
    iget-object v6, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->ybSkus:Ljava/util/ArrayList;

    new-instance v7, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    invoke-direct {v7, v3, p2}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v3           #temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v4       #ybsCanSelectProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_6
    invoke-virtual {v4, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    .line 156
    .restart local v3       #temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v3, :cond_7

    .line 157
    iget-object v6, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->ybCanSelectedCategorys:Ljava/util/ArrayList;

    new-instance v7, Lcom/jingdong/common/entity/cart/CartResonseYB;

    invoke-direct {v7, v3}, Lcom/jingdong/common/entity/cart/CartResonseYB;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    .end local v3           #temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v1       #mustGiftProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_8
    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    .line 169
    .restart local v3       #temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v3, :cond_9

    .line 170
    iget-object v6, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->mustGifts:Ljava/util/ArrayList;

    new-instance v7, Lcom/jingdong/common/entity/cart/CartResponseGift;

    invoke-direct {v7, v3, p2}, Lcom/jingdong/common/entity/cart/CartResponseGift;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAwardType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->awardType:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->awardType:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getCheckType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->checkType:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 291
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->checkType:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getDiscount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->discount:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 328
    const-string v0, ""

    .line 330
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->discount:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->imgUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 271
    const-string v0, ""

    .line 282
    :goto_0
    return-object v0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->imgUrl:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->imgUrl:Ljava/lang/String;

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->imageDomail:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 279
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->imageDomail:Ljava/lang/String;

    .line 282
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->imageDomail:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMustGifts()Ljava/util/ArrayList;
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
    .line 365
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->mustGifts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 252
    const-string v0, ""

    .line 254
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPoint()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->point:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 341
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->point:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->price:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 317
    const-string v0, ""

    .line 319
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->price:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPriceImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->priceImg:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 219
    const-string v0, ""

    .line 221
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->priceImg:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPriceShow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->priceShow:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 241
    const-string v0, ""

    .line 243
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->priceShow:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRePrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->rePrice:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 306
    const-string v0, ""

    .line 308
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->rePrice:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseSku$Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->tags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->targetId:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 230
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->targetId:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getYbCanSelectedCategorys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResonseYB;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->ybCanSelectedCategorys:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getYbSkus()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResonseYBSelected;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->ybSkus:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getCheckType()Ljava/lang/Integer;

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

.method public setAwardType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "awardType"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->awardType:Ljava/lang/Integer;

    .line 215
    return-void
.end method

.method public setCheckType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "checkType"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->checkType:Ljava/lang/Integer;

    .line 302
    return-void
.end method

.method public setDiscount(Ljava/lang/String;)V
    .locals 0
    .parameter "discount"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->discount:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imgUrl"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->imgUrl:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setMustGifts(Ljava/util/ArrayList;)V
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
    .line 369
    .local p1, mustGifts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseGift;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->mustGifts:Ljava/util/ArrayList;

    .line 370
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->name:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setPoint(Ljava/lang/Integer;)V
    .locals 0
    .parameter "point"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->point:Ljava/lang/Integer;

    .line 346
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->price:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setPriceImg(Ljava/lang/String;)V
    .locals 0
    .parameter "priceImg"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->priceImg:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setPriceShow(Ljava/lang/String;)V
    .locals 0
    .parameter "priceShow"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->priceShow:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setRePrice(Ljava/lang/String;)V
    .locals 0
    .parameter "rePrice"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->rePrice:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setTags(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseSku$Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, tags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseSku$Tag;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->tags:Ljava/util/ArrayList;

    .line 267
    return-void
.end method

.method public setTargetId(Ljava/lang/Integer;)V
    .locals 0
    .parameter "targetId"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->targetId:Ljava/lang/Integer;

    .line 237
    return-void
.end method

.method public setYbCanSelectedCategorys(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResonseYB;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, ybCanSelectedCategorys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResonseYB;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->ybCanSelectedCategorys:Ljava/util/ArrayList;

    .line 362
    return-void
.end method

.method public setYbCategorys(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResonseYBSelected;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, ybSkus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResonseYBSelected;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->ybSkus:Ljava/util/ArrayList;

    .line 354
    return-void
.end method

.method public toProduct()Lcom/jingdong/common/entity/Product;
    .locals 2

    .prologue
    .line 374
    invoke-super {p0}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->toProduct()Lcom/jingdong/common/entity/Product;

    move-result-object v0

    .line 375
    .local v0, product:Lcom/jingdong/common/entity/Product;
    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 376
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartResponseSku [awardType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->awardType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priceImg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->priceImg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->targetId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priceShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->priceShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->tags:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ybCategorys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->ybSkus:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ybSelectedCategorys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->ybCanSelectedCategorys:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->checkType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rePrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->rePrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", discount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->discount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", point="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->point:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skuId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->skuId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseSku;->num:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
