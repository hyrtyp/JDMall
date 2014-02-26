.class public Lcom/jingdong/common/entity/cart/CartResonseYB;
.super Ljava/lang/Object;
.source "CartResonseYB.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x61c169da2485c5a6L


# instance fields
.field private categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseYBCategory;",
            ">;"
        }
    .end annotation
.end field

.field private skuId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 5
    .parameter "proxy"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v3, "SkuID"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jingdong/common/entity/cart/CartResonseYB;->setSkuId(Ljava/lang/String;)V

    .line 35
    const-string v3, "YBTongVOs"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 36
    .local v0, categorysProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 37
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/jingdong/common/entity/cart/CartResonseYB;->categories:Ljava/util/ArrayList;

    .line 39
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 47
    .end local v1           #i:I
    :cond_0
    return-void

    .line 40
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 41
    .local v2, temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v2, :cond_2

    .line 42
    iget-object v3, p0, Lcom/jingdong/common/entity/cart/CartResonseYB;->categories:Ljava/util/ArrayList;

    new-instance v4, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;

    invoke-direct {v4, v2}, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCategories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseYBCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResonseYB;->categories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSkuId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResonseYB;->skuId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 51
    const-string v0, ""

    .line 53
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResonseYB;->skuId:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCategories(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseYBCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, categories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseYBCategory;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResonseYB;->categories:Ljava/util/ArrayList;

    .line 66
    return-void
.end method

.method public setSkuId(Ljava/lang/String;)V
    .locals 0
    .parameter "skuId"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResonseYB;->skuId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartResonseYB [skuId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResonseYB;->skuId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResonseYB;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
