.class public Lcom/jingdong/common/entity/OrderCommodity;
.super Ljava/lang/Object;
.source "OrderCommodity.java"


# static fields
.field private static final SYMBOL_AFFIX:Ljava/lang/String; = "[\u9644\u4ef6]"

.field public static final SYMBOL_EMPTY:Ljava/lang/String; = "-"

.field private static final SYMBOL_GIFT:Ljava/lang/String; = "[\u8d60\u54c1]"

.field public static final SYMBOL_STOCK_NO:Ljava/lang/String; = "\u65e0\u8d27"

.field public static final SYMBOL_STOCK_YES:Ljava/lang/String; = "\u73b0\u8d27"

.field public static final TYPE_GIFT_CHOOSE:I = 0x10

.field public static final TYPE_GIFT_MUST_AFFIX:I = 0x5

.field public static final TYPE_GIFT_MUST_DONG:I = 0x3

.field public static final TYPE_GIFT_MUST_JING:I = 0x0

.field public static final TYPE_GIFT_MUST_SKU:I = 0x2

.field public static final TYPE_PACK_COMMON:I = 0x4

.field public static final TYPE_PORDUCT_COMMON:I = 0x1

.field public static final TYPE_PORDUCT_UNKNOW:I = -0x1

.field public static final TYPE_PRODUCT_FULL_CUT:I = 0xb

.field public static final TYPE_PRODUCT_FULL_GIVE:I = 0xd

.field public static final TYPE_YANBAO:I = 0x8

.field private static colorIntGray:I

.field private static colorIntRed:I


# instance fields
.field private desc:Ljava/lang/String;

.field private gifts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/OrderCommodityGift;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private imageDomain:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private jdPrice:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private num:Ljava/lang/String;

.field private point:Ljava/lang/String;

.field private rePrice:Ljava/lang/String;

.field private stockStatus:Ljava/lang/String;

.field private type:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/high16 v0, -0x1

    sput v0, Lcom/jingdong/common/entity/OrderCommodity;->colorIntRed:I

    .line 47
    const v0, -0x777778

    sput v0, Lcom/jingdong/common/entity/OrderCommodity;->colorIntGray:I

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V
    .locals 2
    .parameter "jsonObject"
    .parameter "imageDomain"

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    :try_start_0
    iput-object p2, p0, Lcom/jingdong/common/entity/OrderCommodity;->imageDomain:Ljava/lang/String;

    .line 153
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/OrderCommodity;->setId(Ljava/lang/String;)V

    .line 154
    const-string v1, "imageUrl"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/OrderCommodity;->setImageUrl(Ljava/lang/String;)V

    .line 155
    const-string v1, "jdPrice"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/OrderCommodity;->setJdPrice(Ljava/lang/String;)V

    .line 156
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/OrderCommodity;->setName(Ljava/lang/String;)V

    .line 157
    const-string v1, "num"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/OrderCommodity;->setNum(Ljava/lang/String;)V

    .line 158
    const-string v1, "point"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/OrderCommodity;->setPoint(Ljava/lang/String;)V

    .line 159
    const-string v1, "rePrice"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/OrderCommodity;->setRePrice(Ljava/lang/String;)V

    .line 160
    const-string v1, "stockStatus"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/OrderCommodity;->setStockStatus(Ljava/lang/String;)V

    .line 161
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/OrderCommodity;->setType(Ljava/lang/Integer;)V

    .line 162
    const-string v1, "gifts"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    invoke-static {v1}, Lcom/jingdong/common/entity/OrderCommodityGift;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/OrderCommodity;->setGifts(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeSpannableStringBuilder(Ljava/lang/String;Landroid/text/style/ForegroundColorSpan;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "str"
    .parameter "span"

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 256
    :goto_0
    return-object v0

    .line 252
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 254
    .local v0, stringBuffer:Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "jsonArray"
    .parameter "imageDomain"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/OrderCommodity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/OrderCommodity;>;"
    if-nez p0, :cond_1

    .line 395
    :cond_0
    return-object v3

    .line 388
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 389
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 390
    .local v1, jObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v1, :cond_2

    .line 391
    new-instance v2, Lcom/jingdong/common/entity/OrderCommodity;

    invoke-direct {v2, v1, p1}, Lcom/jingdong/common/entity/OrderCommodity;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V

    .line 392
    .local v2, jdOrderStat:Lcom/jingdong/common/entity/OrderCommodity;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v2           #jdOrderStat:Lcom/jingdong/common/entity/OrderCommodity;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->desc:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 324
    const-string v0, ""

    .line 326
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->desc:Ljava/lang/String;

    goto :goto_0
.end method

.method public getGiftDesc()Ljava/lang/CharSequence;
    .locals 12

    .prologue
    const/16 v11, 0x21

    const/4 v10, 0x0

    .line 344
    const/4 v1, 0x0

    .line 346
    .local v1, desc:Landroid/text/SpannableStringBuilder;
    iget-object v8, p0, Lcom/jingdong/common/entity/OrderCommodity;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 347
    .local v7, size:I
    iget-object v8, p0, Lcom/jingdong/common/entity/OrderCommodity;->gifts:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    if-lez v7, :cond_0

    .line 348
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .end local v1           #desc:Landroid/text/SpannableStringBuilder;
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 349
    .restart local v1       #desc:Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .line 350
    .local v0, affixString:Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    .line 352
    .local v3, giftString:Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v7, :cond_1

    .line 380
    .end local v0           #affixString:Landroid/text/SpannableStringBuilder;
    .end local v3           #giftString:Landroid/text/SpannableStringBuilder;
    .end local v4           #i:I
    :cond_0
    return-object v1

    .line 353
    .restart local v0       #affixString:Landroid/text/SpannableStringBuilder;
    .restart local v3       #giftString:Landroid/text/SpannableStringBuilder;
    .restart local v4       #i:I
    :cond_1
    if-lez v4, :cond_2

    .line 354
    const-string v8, "\n"

    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 356
    :cond_2
    iget-object v8, p0, Lcom/jingdong/common/entity/OrderCommodity;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/OrderCommodityGift;

    .line 358
    .local v2, gift:Lcom/jingdong/common/entity/OrderCommodityGift;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/OrderCommodityGift;->getType()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_3

    .line 359
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .end local v0           #affixString:Landroid/text/SpannableStringBuilder;
    const-string v8, "[\u9644\u4ef6]"

    invoke-direct {v0, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 360
    .restart local v0       #affixString:Landroid/text/SpannableStringBuilder;
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    sget v9, Lcom/jingdong/common/entity/OrderCommodity;->colorIntRed:I

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const-string v9, "[\u9644\u4ef6]"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0, v8, v10, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 361
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 367
    :goto_1
    const-string v8, " "

    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 369
    invoke-virtual {v2}, Lcom/jingdong/common/entity/OrderCommodityGift;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 371
    const-string v8, " "

    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 373
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/OrderCommodityGift;->getNum()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/jingdong/common/entity/OrderCommodityGift;->getDesc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 374
    .local v5, numStr:Ljava/lang/String;
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 375
    .local v6, numString:Landroid/text/SpannableStringBuilder;
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    sget v9, Lcom/jingdong/common/entity/OrderCommodity;->colorIntRed:I

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v10, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 376
    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 352
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 363
    .end local v5           #numStr:Ljava/lang/String;
    .end local v6           #numString:Landroid/text/SpannableStringBuilder;
    :cond_3
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .end local v3           #giftString:Landroid/text/SpannableStringBuilder;
    const-string v8, "[\u8d60\u54c1]"

    invoke-direct {v3, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 364
    .restart local v3       #giftString:Landroid/text/SpannableStringBuilder;
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    sget v9, Lcom/jingdong/common/entity/OrderCommodity;->colorIntRed:I

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const-string v9, "[\u8d60\u54c1]"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v8, v10, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 365
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1
.end method

.method public getGifts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/OrderCommodityGift;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->gifts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->gifts:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 185
    const-string v0, ""

    .line 187
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->imageUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 196
    const-string v0, ""

    .line 206
    :goto_0
    return-object v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->imageUrl:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->imageUrl:Ljava/lang/String;

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->imageDomain:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->imageDomain:Ljava/lang/String;

    .line 206
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jingdong/common/entity/OrderCommodity;->imageDomain:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/OrderCommodity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getJdPrice()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->jdPrice:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->jdPrice:Ljava/lang/String;

    const-string v1, "-"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    const-string v0, ""

    .line 220
    :goto_0
    return-object v0

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/common/entity/OrderCommodity;->isNoStock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->jdPrice:Ljava/lang/String;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget v2, Lcom/jingdong/common/entity/OrderCommodity;->colorIntGray:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/jingdong/common/entity/OrderCommodity;->makeSpannableStringBuilder(Ljava/lang/String;Landroid/text/style/ForegroundColorSpan;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->jdPrice:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 230
    const-string v0, ""

    .line 235
    :goto_0
    return-object v0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/common/entity/OrderCommodity;->isNoStock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jingdong/common/entity/OrderCommodity;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jingdong/common/entity/OrderCommodity;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget v2, Lcom/jingdong/common/entity/OrderCommodity;->colorIntGray:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/jingdong/common/entity/OrderCommodity;->makeSpannableStringBuilder(Ljava/lang/String;Landroid/text/style/ForegroundColorSpan;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNum()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->num:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 265
    const-string v0, ""

    .line 270
    :goto_0
    return-object v0

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/common/entity/OrderCommodity;->isNoStock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->num:Ljava/lang/String;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget v2, Lcom/jingdong/common/entity/OrderCommodity;->colorIntGray:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/jingdong/common/entity/OrderCommodity;->makeSpannableStringBuilder(Ljava/lang/String;Landroid/text/style/ForegroundColorSpan;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->num:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->point:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 280
    const-string v0, ""

    .line 282
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->point:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRePrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->rePrice:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 291
    const-string v0, ""

    .line 293
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->rePrice:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStockStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->stockStatus:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 302
    const-string v0, ""

    .line 304
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->stockStatus:Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->type:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 313
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodity;->type:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public isNoStock()Z
    .locals 2

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/jingdong/common/entity/OrderCommodity;->getStockStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u65e0\u8d27"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderCommodity;->desc:Ljava/lang/String;

    .line 320
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
            "Lcom/jingdong/common/entity/OrderCommodityGift;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, gifts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/OrderCommodityGift;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderCommodity;->gifts:Ljava/util/ArrayList;

    .line 170
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderCommodity;->id:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imageUrl"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderCommodity;->imageUrl:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setJdPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "jdPrice"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderCommodity;->jdPrice:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderCommodity;->name:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setNum(Ljava/lang/String;)V
    .locals 0
    .parameter "num"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderCommodity;->num:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setPoint(Ljava/lang/String;)V
    .locals 0
    .parameter "point"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderCommodity;->point:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setRePrice(Ljava/lang/String;)V
    .locals 0
    .parameter "rePrice"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderCommodity;->rePrice:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setStockStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "stockStatus"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderCommodity;->stockStatus:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderCommodity;->type:Ljava/lang/Integer;

    .line 309
    return-void
.end method
