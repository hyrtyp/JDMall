.class public Lcom/jingdong/common/entity/cart/CartResponseYBBrand;
.super Ljava/lang/Object;
.source "CartResponseYBBrand.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7e271c8956c2dbf3L


# instance fields
.field private brandId:Ljava/lang/String;

.field private brandLinks:Ljava/lang/String;

.field private brandName:Ljava/lang/String;

.field private sort:Ljava/lang/Integer;

.field private ybDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseYBDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 5
    .parameter "proxy"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v3, "BrandId"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->setBrandId(Ljava/lang/String;)V

    .line 49
    const-string v3, "BrandLinks"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->setBrandLinks(Ljava/lang/String;)V

    .line 50
    const-string v3, "BrandName"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->setBrandName(Ljava/lang/String;)V

    .line 51
    const-string v3, "Sort"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->setSort(Ljava/lang/Integer;)V

    .line 54
    const-string v3, "YBConfigVOs"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    .line 55
    .local v1, skusProxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->ybDetails:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 66
    .end local v0           #i:I
    :cond_0
    return-void

    .line 59
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 60
    .local v2, temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v2, :cond_2

    .line 61
    iget-object v3, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->ybDetails:Ljava/util/ArrayList;

    new-instance v4, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;

    invoke-direct {v4, v2}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBrandId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->brandId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 70
    const-string v0, ""

    .line 72
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->brandId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBrandLinks()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->brandLinks:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 103
    const-string v0, ""

    .line 105
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->brandLinks:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBrandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->brandName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 92
    const-string v0, ""

    .line 94
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->brandName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSort()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->sort:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->sort:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getYbDetails()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseYBDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->ybDetails:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setBrandId(Ljava/lang/String;)V
    .locals 0
    .parameter "brandId"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->brandId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setBrandLinks(Ljava/lang/String;)V
    .locals 0
    .parameter "brandLinks"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->brandLinks:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setBrandName(Ljava/lang/String;)V
    .locals 0
    .parameter "brandName"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->brandName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setSort(Ljava/lang/Integer;)V
    .locals 0
    .parameter "sort"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->sort:Ljava/lang/Integer;

    .line 88
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
            "Lcom/jingdong/common/entity/cart/CartResponseYBDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, ybDetails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseYBDetail;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->ybDetails:Ljava/util/ArrayList;

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartResponseYBBrand [brandId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->brandId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->sort:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", brandName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->brandName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", brandLinks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->brandLinks:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ybDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->ybDetails:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
