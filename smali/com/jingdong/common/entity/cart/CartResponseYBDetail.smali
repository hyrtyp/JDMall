.class public Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
.super Ljava/lang/Object;
.source "CartResponseYBDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x31248ced1eb381a4L


# instance fields
.field private cid:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private priceCent:Ljava/lang/String;

.field private priceShow:Ljava/lang/String;

.field private rSuitId:Ljava/lang/String;

.field private rWid:Ljava/lang/String;

.field private serviceYear:Ljava/lang/String;

.field private skuName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "ServiceYear"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->setServiceYear(Ljava/lang/String;)V

    .line 72
    const-string v0, "Cid"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->setCid(Ljava/lang/String;)V

    .line 73
    const-string v0, "Id"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->setId(Ljava/lang/String;)V

    .line 74
    const-string v0, "Name"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->setName(Ljava/lang/String;)V

    .line 75
    const-string v0, "PriceShow"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->setPriceShow(Ljava/lang/String;)V

    .line 76
    const-string v0, "PriceCent"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->setPriceCent(Ljava/lang/String;)V

    .line 77
    const-string v0, "RWid"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->setrWid(Ljava/lang/String;)V

    .line 78
    const-string v0, "RSuitId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->setrSuitId(Ljava/lang/String;)V

    .line 79
    const-string v0, "SkuName"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->setSkuName(Ljava/lang/String;)V

    .line 80
    const-string v0, "Message"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->setMessage(Ljava/lang/String;)V

    .line 81
    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->cid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 129
    const-string v0, ""

    .line 131
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->cid:Ljava/lang/String;

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 107
    const-string v0, ""

    .line 109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 184
    const-string v0, ""

    .line 186
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 96
    const-string v0, ""

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPriceCent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->priceCent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 140
    const-string v0, ""

    .line 142
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->priceCent:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPriceShow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->priceShow:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 118
    const-string v0, ""

    .line 120
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->priceShow:Ljava/lang/String;

    goto :goto_0
.end method

.method public getServiceYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->serviceYear:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 85
    const-string v0, ""

    .line 87
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->serviceYear:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSkuName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->skuName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 173
    const-string v0, ""

    .line 175
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->skuName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getrSuitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->rSuitId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 151
    const-string v0, ""

    .line 153
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->rSuitId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getrWid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->rWid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 162
    const-string v0, ""

    .line 164
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->rWid:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .parameter "cid"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->cid:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->id:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->message:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->name:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setPriceCent(Ljava/lang/String;)V
    .locals 0
    .parameter "priceCent"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->priceCent:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setPriceShow(Ljava/lang/String;)V
    .locals 0
    .parameter "priceShow"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->priceShow:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setServiceYear(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceYear"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->serviceYear:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setSkuName(Ljava/lang/String;)V
    .locals 0
    .parameter "skuName"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->skuName:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setrSuitId(Ljava/lang/String;)V
    .locals 0
    .parameter "rSuitId"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->rSuitId:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setrWid(Ljava/lang/String;)V
    .locals 0
    .parameter "rWid"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->rWid:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartResponseYBDetail [serviceYear="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->serviceYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priceShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->priceShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priceCent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->priceCent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rSuitId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->rSuitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rWid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->rWid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skuName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->skuName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
