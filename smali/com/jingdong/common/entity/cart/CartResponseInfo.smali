.class public Lcom/jingdong/common/entity/cart/CartResponseInfo;
.super Ljava/lang/Object;
.source "CartResponseInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x406749331f668e34L


# instance fields
.field private checkedCartPackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseSuit;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseSku;",
            ">;>;"
        }
    .end annotation
.end field

.field private checkedCartSkuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;"
        }
    .end annotation
.end field

.field private checkedCartYBList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResonseYBSelected;",
            ">;"
        }
    .end annotation
.end field

.field private checkedSkuOfThePacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;"
        }
    .end annotation
.end field

.field private checkedStatisticsPackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartPackSummary;",
            ">;"
        }
    .end annotation
.end field

.field private checkedStatisticsSkuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;"
        }
    .end annotation
.end field

.field private discount:Ljava/lang/String;

.field private gifts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseGift;",
            ">;"
        }
    .end annotation
.end field

.field private hasDaJiaDian:Ljava/lang/Boolean;

.field private isEmpty:Ljava/lang/Boolean;

.field private num:Ljava/lang/Integer;

.field private price:Ljava/lang/String;

.field private priceShow:Ljava/lang/String;

.field private rePrice:Ljava/lang/String;

.field private skus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseSku;",
            ">;"
        }
    .end annotation
.end field

.field private suits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseSuit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V
    .locals 8
    .parameter "proxy"
    .parameter "imageDomain"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->skus:Ljava/util/ArrayList;

    .line 62
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->gifts:Ljava/util/ArrayList;

    .line 67
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->suits:Ljava/util/ArrayList;

    .line 121
    const-string v5, "Num"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->setNum(Ljava/lang/Integer;)V

    .line 122
    const-string v5, "RePrice"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->setRePrice(Ljava/lang/String;)V

    .line 123
    const-string v5, "HasDaJiaDian"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->setHasDaJiaDian(Ljava/lang/Boolean;)V

    .line 124
    const-string v5, "Price"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->setPrice(Ljava/lang/String;)V

    .line 125
    const-string v5, "Discount"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->setDiscount(Ljava/lang/String;)V

    .line 126
    const-string v5, "PriceShow"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->setPriceShow(Ljava/lang/String;)V

    .line 127
    const-string v5, "IsEmpty"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->setIsEmpty(Ljava/lang/Boolean;)V

    .line 130
    const-string v5, "Skus"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    .line 131
    .local v2, skusProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 133
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lt v1, v5, :cond_3

    .line 142
    .end local v1           #i:I
    :cond_0
    const-string v5, "Gifts"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 143
    .local v0, giftsProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 145
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lt v1, v5, :cond_5

    .line 154
    .end local v1           #i:I
    :cond_1
    const-string v5, "Suits"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    .line 155
    .local v3, suitsProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 157
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    invoke-virtual {v3}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lt v1, v5, :cond_7

    .line 165
    .end local v1           #i:I
    :cond_2
    return-void

    .line 134
    .end local v0           #giftsProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v3           #suitsProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v1       #i:I
    :cond_3
    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    .line 135
    .local v4, temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v4, :cond_4

    .line 136
    iget-object v5, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->skus:Ljava/util/ArrayList;

    new-instance v6, Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-direct {v6, v4, p2}, Lcom/jingdong/common/entity/cart/CartResponseSku;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v4           #temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v0       #giftsProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_5
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    .line 147
    .restart local v4       #temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v4, :cond_6

    const-string v5, "MainSku"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 148
    iget-object v5, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->gifts:Ljava/util/ArrayList;

    new-instance v6, Lcom/jingdong/common/entity/cart/CartResponseGift;

    const-string v7, "MainSku"

    invoke-direct {v6, v4, v7, p2}, Lcom/jingdong/common/entity/cart/CartResponseGift;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    .end local v4           #temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v3       #suitsProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_7
    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    .line 159
    .restart local v4       #temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v4, :cond_8

    .line 160
    iget-object v5, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->suits:Ljava/util/ArrayList;

    new-instance v6, Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-direct {v6, v4, p2}, Lcom/jingdong/common/entity/cart/CartResponseSuit;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private makeCheckedSkusAndPacks()V
    .locals 11

    .prologue
    .line 318
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedStatisticsSkuList:Ljava/util/ArrayList;

    .line 319
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedStatisticsPackList:Ljava/util/ArrayList;

    .line 320
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartSkuList:Ljava/util/ArrayList;

    .line 321
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartPackMap:Ljava/util/HashMap;

    .line 322
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartYBList:Ljava/util/ArrayList;

    .line 323
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedSkuOfThePacks:Ljava/util/ArrayList;

    .line 325
    iget-object v6, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->skus:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 334
    iget-object v6, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 343
    iget-object v6, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->suits:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 395
    return-void

    .line 325
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 326
    .local v3, sku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 327
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedStatisticsSkuList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartSkuList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 330
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartYBList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 334
    .end local v3           #sku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/cart/CartResponseGift;

    .line 335
    .local v0, gift:Lcom/jingdong/common/entity/cart/CartResponseGift;
    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseGift;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 336
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedStatisticsSkuList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartSkuList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseGift;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseGift;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 339
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartYBList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseGift;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 343
    .end local v0           #gift:Lcom/jingdong/common/entity/cart/CartResponseGift;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/cart/CartResponseSuit;

    .line 344
    .local v5, suit:Lcom/jingdong/common/entity/cart/CartResponseSuit;
    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getsType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "4"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 345
    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 346
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedStatisticsPackList:Ljava/util/ArrayList;

    new-instance v8, Lcom/jingdong/common/entity/cart/CartPackSummary;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getPackId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getNum()Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartPackMap:Ljava/util/HashMap;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSkus()Ljava/util/ArrayList;

    move-result-object v4

    .line 351
    .local v4, skuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<-Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 352
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 353
    .restart local v3       #sku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 354
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartYBList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 356
    :cond_6
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedSkuOfThePacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 359
    .end local v1           #i:I
    .end local v3           #sku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    .end local v4           #skuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<-Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    :cond_7
    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getsType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "11"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 360
    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSkus()Ljava/util/ArrayList;

    move-result-object v4

    .line 361
    .restart local v4       #skuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<-Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v2, selectedCartResponseSkuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseSku;>;"
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v1, v7, :cond_8

    .line 373
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 374
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartPackMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 363
    :cond_8
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 364
    .restart local v3       #sku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 365
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedStatisticsSkuList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedSkuOfThePacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 369
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartYBList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 362
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 376
    .end local v1           #i:I
    .end local v2           #selectedCartResponseSkuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseSku;>;"
    .end local v3           #sku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    .end local v4           #skuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<-Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    :cond_a
    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getsType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "16"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 377
    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSkus()Ljava/util/ArrayList;

    move-result-object v4

    .line 378
    .restart local v4       #skuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<-Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .restart local v2       #selectedCartResponseSkuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseSku;>;"
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v1, v7, :cond_b

    .line 390
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 391
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartPackMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 380
    :cond_b
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 381
    .restart local v3       #sku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 382
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedStatisticsSkuList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedSkuOfThePacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_c

    .line 386
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartYBList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 379
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method


# virtual methods
.method public getAllBuyPack()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Pack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Pack;>;"
    const/4 v1, 0x0

    .line 305
    .local v1, pack:Lcom/jingdong/common/entity/Pack;
    iget-object v3, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->suits:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 311
    return-object v0

    .line 305
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/cart/CartResponseSuit;

    .line 306
    .local v2, suit:Lcom/jingdong/common/entity/cart/CartResponseSuit;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getsType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "4"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 307
    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->toPack()Lcom/jingdong/common/entity/Pack;

    move-result-object v1

    .line 308
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAllBuyProduct()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    const/4 v3, 0x0

    .line 276
    .local v3, product:Lcom/jingdong/common/entity/Product;
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->skus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 280
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 284
    iget-object v7, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->suits:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 294
    return-object v2

    .line 276
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 277
    .local v4, sku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    invoke-virtual {v4}, Lcom/jingdong/common/entity/cart/CartResponseSku;->toProduct()Lcom/jingdong/common/entity/Product;

    move-result-object v3

    .line 278
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    .end local v4           #sku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/cart/CartResponseGift;

    .line 281
    .local v0, gift:Lcom/jingdong/common/entity/cart/CartResponseGift;
    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseGift;->toProduct()Lcom/jingdong/common/entity/Product;

    move-result-object v3

    .line 282
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 284
    .end local v0           #gift:Lcom/jingdong/common/entity/cart/CartResponseGift;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/cart/CartResponseSuit;

    .line 285
    .local v6, suit:Lcom/jingdong/common/entity/cart/CartResponseSuit;
    invoke-virtual {v6}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getsType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "4"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 286
    invoke-virtual {v6}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSkus()Ljava/util/ArrayList;

    move-result-object v5

    .line 287
    .local v5, skuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<-Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 288
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    .line 289
    .local v4, sku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    invoke-virtual {v4}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->toProduct()Lcom/jingdong/common/entity/Product;

    move-result-object v3

    .line 290
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public getCheckedCartPackMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseSuit;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseSku;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartPackMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 421
    invoke-direct {p0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->makeCheckedSkusAndPacks()V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartPackMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCheckedCartSkuList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartSkuList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->makeCheckedSkusAndPacks()V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartSkuList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCheckedCartYBList()Ljava/util/ArrayList;
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
    .line 457
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartYBList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->makeCheckedSkusAndPacks()V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartYBList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCheckedSkuOfThePacks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedSkuOfThePacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 465
    invoke-direct {p0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->makeCheckedSkusAndPacks()V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedSkuOfThePacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCheckedStatisticsPackList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartPackSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedStatisticsPackList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->makeCheckedSkusAndPacks()V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedStatisticsPackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCheckedStatisticsSkuList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedStatisticsSkuList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->makeCheckedSkusAndPacks()V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedStatisticsSkuList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDiscount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->discount:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 237
    const-string v0, ""

    .line 239
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->discount:Ljava/lang/String;

    goto :goto_0
.end method

.method public getGifts()Ljava/util/ArrayList;
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
    .line 220
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->gifts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHasDaJiaDian()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->hasDaJiaDian:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->hasDaJiaDian:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getIsEmpty()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->isEmpty:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->isEmpty:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getNum()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->num:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->num:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->price:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 210
    const-string v0, ""

    .line 212
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->price:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPriceShow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->priceShow:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 248
    const-string v0, ""

    .line 250
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->priceShow:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRePrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->rePrice:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 188
    const-string v0, ""

    .line 190
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->rePrice:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSkus()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseSku;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->skus:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSuits()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseSuit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->suits:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUnOverlapCheckedCartYBList()Ljava/util/ArrayList;
    .locals 7
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
    .line 438
    iget-object v4, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartYBList:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 439
    const/4 v4, 0x0

    .line 453
    :goto_0
    return-object v4

    .line 441
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 442
    .local v2, unOverlapCheckedCartYBMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;>;"
    iget-object v4, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->checkedCartYBList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 453
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 442
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    .line 443
    .local v3, yb:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    .line 444
    .local v1, overlapYb:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
    if-nez v1, :cond_3

    .line 445
    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 447
    :cond_3
    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 448
    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int v0, v4, v6

    .line 449
    .local v0, newNum:I
    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/jingdong/common/entity/cart/CartResponseSku;->setNum(Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method public setDiscount(Ljava/lang/String;)V
    .locals 0
    .parameter "discount"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->discount:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setGifts(Ljava/util/ArrayList;)V
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
    .line 224
    .local p1, gifts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseGift;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->gifts:Ljava/util/ArrayList;

    .line 225
    return-void
.end method

.method public setHasDaJiaDian(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "hasDaJiaDian"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->hasDaJiaDian:Ljava/lang/Boolean;

    .line 206
    return-void
.end method

.method public setIsEmpty(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isEmpty"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->isEmpty:Ljava/lang/Boolean;

    .line 266
    return-void
.end method

.method public setNum(Ljava/lang/Integer;)V
    .locals 0
    .parameter "num"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->num:Ljava/lang/Integer;

    .line 176
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->price:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setPriceShow(Ljava/lang/String;)V
    .locals 0
    .parameter "priceShow"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->priceShow:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setRePrice(Ljava/lang/String;)V
    .locals 0
    .parameter "rePrice"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->rePrice:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setSkus(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseSku;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, skus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseSku;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->skus:Ljava/util/ArrayList;

    .line 184
    return-void
.end method

.method public setSuits(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseSuit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, suits:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseSuit;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->suits:Ljava/util/ArrayList;

    .line 233
    return-void
.end method

.method public toCheckedCartStr()Lorg/json/JSONObject;
    .locals 24

    .prologue
    .line 476
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 480
    .local v9, proxy:Lorg/json/JSONObject;
    :try_start_0
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 481
    .local v14, skusProxy:Lorg/json/JSONArray;
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getCheckedCartSkuList()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_5

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getUnOverlapCheckedCartYBList()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_6

    .line 491
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v21

    if-lez v21, :cond_1

    .line 492
    const-string v21, "TheSkus"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getCheckedCartPackMap()Ljava/util/HashMap;

    move-result-object v7

    .line 497
    .local v7, packMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/jingdong/common/entity/cart/CartResponseSuit;Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseSku;>;>;"
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 498
    .local v8, packsProxy:Lorg/json/JSONArray;
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_7

    .line 538
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v21

    if-lez v21, :cond_2

    .line 539
    const-string v21, "ThePacks"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 543
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getCheckedSkuOfThePacks()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_3

    .line 544
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 545
    .local v12, skusOfPacksProxy:Lorg/json/JSONArray;
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getCheckedSkuOfThePacks()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_f

    .line 548
    const-string v21, "SkusOfThePacks"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    .end local v12           #skusOfPacksProxy:Lorg/json/JSONArray;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getCheckedCartYBList()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_4

    .line 553
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 554
    .local v15, skusYbProxy:Lorg/json/JSONObject;
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getCheckedCartYBList()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_10

    .line 557
    const-string v21, "YbInfo"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    .end local v7           #packMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/jingdong/common/entity/cart/CartResponseSuit;Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseSku;>;>;"
    .end local v8           #packsProxy:Lorg/json/JSONArray;
    .end local v14           #skusProxy:Lorg/json/JSONArray;
    .end local v15           #skusYbProxy:Lorg/json/JSONObject;
    :cond_4
    :goto_5
    return-object v9

    .line 481
    .restart local v14       #skusProxy:Lorg/json/JSONArray;
    :cond_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    .line 482
    .local v18, summary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    invoke-virtual/range {v18 .. v18}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->toSummaryParams()Lorg/json/JSONObject;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 560
    .end local v14           #skusProxy:Lorg/json/JSONArray;
    .end local v18           #summary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    :catch_0
    move-exception v21

    goto :goto_5

    .line 484
    .restart local v14       #skusProxy:Lorg/json/JSONArray;
    :cond_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    .line 485
    .local v19, yb:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
    invoke-virtual/range {v19 .. v19}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 486
    invoke-virtual/range {v19 .. v19}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/jingdong/common/entity/cart/CartResponseSku;->toSummaryParams()Lorg/json/JSONObject;

    move-result-object v20

    .line 488
    .local v20, ybJson:Lorg/json/JSONObject;
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 498
    .end local v19           #yb:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
    .end local v20           #ybJson:Lorg/json/JSONObject;
    .restart local v7       #packMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/jingdong/common/entity/cart/CartResponseSuit;Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseSku;>;>;"
    .restart local v8       #packsProxy:Lorg/json/JSONArray;
    :cond_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jingdong/common/entity/cart/CartResponseSuit;

    .line 499
    .local v16, suit:Lcom/jingdong/common/entity/cart/CartResponseSuit;
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 500
    .local v17, suitProxy:Lorg/json/JSONObject;
    const-string v21, "Id"

    invoke-virtual/range {v16 .. v16}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getPackId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    const-string v21, "num"

    invoke-virtual/range {v16 .. v16}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getNum()Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 504
    .local v6, mainSkusList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseSku;>;"
    if-eqz v6, :cond_e

    .line 505
    invoke-virtual/range {v16 .. v16}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getsType()Ljava/lang/String;

    move-result-object v21

    const-string v23, "16"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 506
    const-string v21, "suitType"

    const/16 v23, 0xa

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 507
    const-string v21, "sType"

    const/16 v23, 0xd

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 513
    :cond_8
    :goto_6
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 514
    .local v13, skusOfSuitsJson:Lorg/json/JSONArray;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_c

    .line 517
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v21

    if-lez v21, :cond_9

    .line 518
    const-string v21, "TheSkus"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getGifts()Ljava/util/ArrayList;

    move-result-object v10

    .line 523
    .local v10, selectedGiftsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<-Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 524
    .local v4, giftsOfSuitsJson:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v5, v0, :cond_d

    .line 529
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v21

    if-lez v21, :cond_a

    .line 530
    const-string v21, "Gifts"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    .end local v4           #giftsOfSuitsJson:Lorg/json/JSONArray;
    .end local v5           #i:I
    .end local v10           #selectedGiftsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<-Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    .end local v13           #skusOfSuitsJson:Lorg/json/JSONArray;
    :cond_a
    :goto_9
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_2

    .line 508
    :cond_b
    invoke-virtual/range {v16 .. v16}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getsType()Ljava/lang/String;

    move-result-object v21

    const-string v23, "11"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 509
    const-string v21, "suitType"

    const/16 v23, 0xa

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 510
    const-string v21, "sType"

    const-string v23, "11"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    .line 514
    .restart local v13       #skusOfSuitsJson:Lorg/json/JSONArray;
    :cond_c
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 515
    .local v18, summary:Lcom/jingdong/common/entity/cart/CartResponseSku;
    invoke-virtual/range {v18 .. v18}, Lcom/jingdong/common/entity/cart/CartResponseSku;->toSummaryParams()Lorg/json/JSONObject;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7

    .line 525
    .end local v18           #summary:Lcom/jingdong/common/entity/cart/CartResponseSku;
    .restart local v4       #giftsOfSuitsJson:Lorg/json/JSONArray;
    .restart local v5       #i:I
    .restart local v10       #selectedGiftsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<-Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    :cond_d
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->toSummaryParams()Lorg/json/JSONObject;

    move-result-object v3

    .line 526
    .local v3, giftObject:Lorg/json/JSONObject;
    const-string v21, "awardType"

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 527
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 524
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 533
    .end local v3           #giftObject:Lorg/json/JSONObject;
    .end local v4           #giftsOfSuitsJson:Lorg/json/JSONArray;
    .end local v5           #i:I
    .end local v10           #selectedGiftsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<-Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    .end local v13           #skusOfSuitsJson:Lorg/json/JSONArray;
    :cond_e
    const-string v21, "suitType"

    const/16 v23, 0x6

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 534
    const-string v21, "sType"

    const-string v23, "4"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_9

    .line 545
    .end local v6           #mainSkusList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseSku;>;"
    .end local v16           #suit:Lcom/jingdong/common/entity/cart/CartResponseSuit;
    .end local v17           #suitProxy:Lorg/json/JSONObject;
    .restart local v12       #skusOfPacksProxy:Lorg/json/JSONArray;
    :cond_f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    .line 546
    .local v11, sku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    invoke-virtual {v11}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->getSkuId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_3

    .line 554
    .end local v11           #sku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    .end local v12           #skusOfPacksProxy:Lorg/json/JSONArray;
    .restart local v15       #skusYbProxy:Lorg/json/JSONObject;
    :cond_10
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    .line 555
    .restart local v19       #yb:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
    invoke-virtual/range {v19 .. v19}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->toOrderParamsString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbNum()Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4
.end method

.method public toCheckedStatisticsStr()Lorg/json/JSONObject;
    .locals 16

    .prologue
    .line 574
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 577
    .local v10, proxy:Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/database/table/DB_CartTable;->getCartListForProduct()Ljava/util/HashMap;

    move-result-object v3

    .line 578
    .local v3, dbProductMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/Product;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getCheckedStatisticsSkuList()Ljava/util/ArrayList;

    move-result-object v1

    .line 579
    .local v1, checkedSkuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 580
    .local v6, jsonArraySku:Lorg/json/JSONArray;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_0

    .line 596
    const-string v13, "TheSkus"

    invoke-virtual {v10, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 599
    invoke-static {}, Lcom/jingdong/common/database/table/DB_PacksTable;->getPacksListForPack()Ljava/util/HashMap;

    move-result-object v2

    .line 600
    .local v2, dbPackMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/Pack;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getCheckedStatisticsPackList()Ljava/util/ArrayList;

    move-result-object v0

    .line 601
    .local v0, checkedPackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartPackSummary;>;"
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 602
    .local v5, jsonArrayPack:Lorg/json/JSONArray;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_2

    .line 618
    const-string v13, "ThePacks"

    invoke-virtual {v10, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 627
    .end local v0           #checkedPackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartPackSummary;>;"
    .end local v1           #checkedSkuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    .end local v2           #dbPackMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/Pack;>;"
    .end local v3           #dbProductMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/Product;>;"
    .end local v5           #jsonArrayPack:Lorg/json/JSONArray;
    .end local v6           #jsonArraySku:Lorg/json/JSONArray;
    :goto_2
    return-object v10

    .line 580
    .restart local v1       #checkedSkuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    .restart local v3       #dbProductMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/Product;>;"
    .restart local v6       #jsonArraySku:Lorg/json/JSONArray;
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    .line 581
    .local v11, sku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 582
    .local v4, json:Lorg/json/JSONObject;
    const-string v14, "Id"

    invoke-virtual {v11}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->getSkuId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    invoke-virtual {v11}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->getSkuId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/common/entity/Product;

    .line 584
    .local v9, product:Lcom/jingdong/common/entity/Product;
    const/4 v12, 0x0

    .line 585
    .local v12, sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    if-eqz v9, :cond_1

    .line 586
    invoke-virtual {v9}, Lcom/jingdong/common/entity/Product;->getSourceEntity()Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v12

    .line 591
    :goto_3
    const-string v14, "source_type"

    invoke-virtual {v12}, Lcom/jingdong/common/entity/SourceEntity;->getSourceType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 592
    const-string v14, "source_value"

    invoke-virtual {v12}, Lcom/jingdong/common/entity/SourceEntity;->getSourceValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 594
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 620
    .end local v1           #checkedSkuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    .end local v3           #dbProductMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/Product;>;"
    .end local v4           #json:Lorg/json/JSONObject;
    .end local v6           #jsonArraySku:Lorg/json/JSONArray;
    .end local v9           #product:Lcom/jingdong/common/entity/Product;
    .end local v11           #sku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    .end local v12           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    :catch_0
    move-exception v13

    goto :goto_2

    .line 588
    .restart local v1       #checkedSkuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    .restart local v3       #dbProductMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/Product;>;"
    .restart local v4       #json:Lorg/json/JSONObject;
    .restart local v6       #jsonArraySku:Lorg/json/JSONArray;
    .restart local v9       #product:Lcom/jingdong/common/entity/Product;
    .restart local v11       #sku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    .restart local v12       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    :cond_1
    new-instance v12, Lcom/jingdong/common/entity/SourceEntity;

    .end local v12           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    const-string v14, "shoppingCart_webSite"

    const/4 v15, 0x0

    invoke-direct {v12, v14, v15}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v12       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    goto :goto_3

    .line 602
    .end local v4           #json:Lorg/json/JSONObject;
    .end local v9           #product:Lcom/jingdong/common/entity/Product;
    .end local v11           #sku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    .end local v12           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    .restart local v0       #checkedPackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartPackSummary;>;"
    .restart local v2       #dbPackMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/Pack;>;"
    .restart local v5       #jsonArrayPack:Lorg/json/JSONArray;
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jingdong/common/entity/cart/CartPackSummary;

    .line 603
    .local v8, packSum:Lcom/jingdong/common/entity/cart/CartPackSummary;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 604
    .restart local v4       #json:Lorg/json/JSONObject;
    const-string v14, "Id"

    invoke-virtual {v8}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getPackId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 605
    invoke-virtual {v8}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getPackId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jingdong/common/entity/Pack;

    .line 606
    .local v7, pack:Lcom/jingdong/common/entity/Pack;
    const/4 v12, 0x0

    .line 607
    .restart local v12       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    if-eqz v7, :cond_3

    .line 608
    invoke-virtual {v7}, Lcom/jingdong/common/entity/Pack;->getSourceEntity()Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v12

    .line 613
    :goto_4
    const-string v14, "source_type"

    invoke-virtual {v12}, Lcom/jingdong/common/entity/SourceEntity;->getSourceType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 614
    const-string v14, "source_value"

    invoke-virtual {v12}, Lcom/jingdong/common/entity/SourceEntity;->getSourceValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 616
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 610
    :cond_3
    new-instance v12, Lcom/jingdong/common/entity/SourceEntity;

    .end local v12           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    const-string v14, "shoppingCart_webSite"

    const/4 v15, 0x0

    invoke-direct {v12, v14, v15}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v12       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartResponseInfo [num="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->num:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->skus:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rePrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->rePrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasDaJiaDian="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->hasDaJiaDian:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gifts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", suits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->suits:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", discount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->discount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priceShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->priceShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEmpty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseInfo;->isEmpty:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
