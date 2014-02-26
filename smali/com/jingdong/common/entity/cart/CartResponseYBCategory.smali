.class public Lcom/jingdong/common/entity/cart/CartResponseYBCategory;
.super Ljava/lang/Object;
.source "CartResponseYBCategory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x28c3672fa0602674L


# instance fields
.field private describe:Ljava/lang/String;

.field private sort:Ljava/lang/Integer;

.field private virtualSkuName:Ljava/lang/String;

.field private virtualSkuType:Ljava/lang/String;

.field private ybBrands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseYBBrand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 5
    .parameter "proxy"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v3, "VirtualTypeName"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->setVirtualSkuName(Ljava/lang/String;)V

    .line 53
    const-string v3, "VirtualSkuType"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->setVirtualSkuType(Ljava/lang/String;)V

    .line 54
    const-string v3, "Sort"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->setSort(Ljava/lang/Integer;)V

    .line 55
    const-string v3, "Describe"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->setDescribe(Ljava/lang/String;)V

    .line 58
    const-string v3, "YBTrademarkVO"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    .line 59
    .local v1, skusProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->ybBrands:Ljava/util/ArrayList;

    .line 62
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 70
    .end local v0           #i:I
    :cond_0
    return-void

    .line 63
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 64
    .local v2, temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v2, :cond_2

    .line 65
    iget-object v3, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->ybBrands:Ljava/util/ArrayList;

    new-instance v4, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;

    invoke-direct {v4, v2}, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDescribe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->describe:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 107
    const-string v0, ""

    .line 109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->describe:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSort()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->sort:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->sort:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getVirtualSkuName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->virtualSkuName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 96
    const-string v0, ""

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->virtualSkuName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVirtualSkuType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->virtualSkuType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 85
    const-string v0, ""

    .line 87
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->virtualSkuType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getYbDetails()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseYBBrand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->ybBrands:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setDescribe(Ljava/lang/String;)V
    .locals 0
    .parameter "describe"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->describe:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setSort(Ljava/lang/Integer;)V
    .locals 0
    .parameter "sort"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->sort:Ljava/lang/Integer;

    .line 81
    return-void
.end method

.method public setVirtualSkuName(Ljava/lang/String;)V
    .locals 0
    .parameter "virtualSkuName"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->virtualSkuName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setVirtualSkuType(Ljava/lang/String;)V
    .locals 0
    .parameter "virtualSkuType"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->virtualSkuType:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setYbDetails(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseYBBrand;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, ybBrands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseYBBrand;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->ybBrands:Ljava/util/ArrayList;

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartResponseYBCategory [sort="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->sort:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", virtualSkuType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->virtualSkuType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", virtualSkuName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->virtualSkuName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", describe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->describe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ybBrands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->ybBrands:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
