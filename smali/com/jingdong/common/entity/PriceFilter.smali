.class public Lcom/jingdong/common/entity/PriceFilter;
.super Ljava/lang/Object;
.source "PriceFilter.java"


# instance fields
.field private maxPrice:Ljava/lang/String;

.field private minPrice:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 1
    .parameter "jsonObjectProxy"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "min"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/PriceFilter;->minPrice:Ljava/lang/String;

    .line 15
    const-string v0, "max"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/PriceFilter;->maxPrice:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/List;
    .locals 5
    .parameter "jsonArrayProxy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/PriceFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    const/4 v1, 0x0

    .line 20
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PriceFilter;>;"
    if-nez p0, :cond_0

    .line 21
    const/4 v4, 0x0

    .line 33
    :goto_0
    return-object v4

    .line 24
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PriceFilter;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PriceFilter;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v0, v4, :cond_1

    move-object v4, v1

    .line 33
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 27
    .local v2, object:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v2, :cond_2

    .line 28
    new-instance v3, Lcom/jingdong/common/entity/PriceFilter;

    invoke-direct {v3, v2}, Lcom/jingdong/common/entity/PriceFilter;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 29
    .local v3, priceFilter:Lcom/jingdong/common/entity/PriceFilter;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .end local v3           #priceFilter:Lcom/jingdong/common/entity/PriceFilter;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getMaxPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jingdong/common/entity/PriceFilter;->maxPrice:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/PriceFilter;->maxPrice:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMinPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jingdong/common/entity/PriceFilter;->minPrice:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/PriceFilter;->minPrice:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMaxPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "maxPrice"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/jingdong/common/entity/PriceFilter;->maxPrice:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setMinPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "minPrice"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/jingdong/common/entity/PriceFilter;->minPrice:Ljava/lang/String;

    .line 43
    return-void
.end method
