.class public Lcom/jingdong/common/entity/cart/CartResponseGift;
.super Lcom/jingdong/common/entity/cart/CartResponseSku;
.source "CartResponseGift.java"


# instance fields
.field protected gifts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V
    .locals 1
    .parameter "proxy"
    .parameter "imageDomail"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/jingdong/common/entity/cart/CartResponseSku;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseGift;->gifts:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "proxy"
    .parameter "skuKey"
    .parameter "imageDomail"

    .prologue
    .line 31
    invoke-virtual {p1, p2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lcom/jingdong/common/entity/cart/CartResponseSku;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/jingdong/common/entity/cart/CartResponseGift;->gifts:Ljava/util/ArrayList;

    .line 34
    const-string v3, "Gifts"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 35
    .local v0, giftsProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 36
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/jingdong/common/entity/cart/CartResponseGift;->gifts:Ljava/util/ArrayList;

    .line 38
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 45
    .end local v1           #i:I
    :cond_0
    return-void

    .line 39
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 40
    .local v2, temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v2, :cond_2

    .line 41
    iget-object v3, p0, Lcom/jingdong/common/entity/cart/CartResponseGift;->gifts:Ljava/util/ArrayList;

    new-instance v4, Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-direct {v4, v2, p3}, Lcom/jingdong/common/entity/cart/CartResponseSku;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getGifts()Ljava/util/ArrayList;
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
    .line 48
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseGift;->gifts:Ljava/util/ArrayList;

    return-object v0
.end method
