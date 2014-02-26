.class public Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
.super Ljava/lang/Object;
.source "CartResonseYBSelected.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x605b5236adc0bbe3L


# instance fields
.field private rSuitId:Ljava/lang/String;

.field private rWid:Ljava/lang/String;

.field private ybSku:Lcom/jingdong/common/entity/cart/CartResponseSku;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V
    .locals 2
    .parameter "proxy"
    .parameter "imageDomain"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v1, "RWid"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->setrWid(Ljava/lang/String;)V

    .line 41
    const-string v1, "RSuitId"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->setrSuitId(Ljava/lang/String;)V

    .line 43
    const-string v1, "MainYbSku"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 44
    .local v0, ybSkuProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v0, :cond_0

    .line 45
    new-instance v1, Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-direct {v1, v0, p2}, Lcom/jingdong/common/entity/cart/CartResponseSku;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->setYbSku(Lcom/jingdong/common/entity/cart/CartResponseSku;)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, yb:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    move-object v1, v0

    .line 131
    iget-object v2, p0, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->ybSku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseSku;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/cart/CartResponseSku;

    iput-object v2, v1, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->ybSku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-object v1

    .line 132
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getYbId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->ybSku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->ybSku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getYbNum()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->ybSku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->ybSku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->ybSku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    return-object v0
.end method

.method public getrSuitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->rSuitId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 94
    const-string v0, ""

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->rSuitId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getrWid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->rWid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 51
    const-string v0, ""

    .line 53
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->rWid:Ljava/lang/String;

    goto :goto_0
.end method

.method public setYbSku(Lcom/jingdong/common/entity/cart/CartResponseSku;)V
    .locals 0
    .parameter "ybSku"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->ybSku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 90
    return-void
.end method

.method public setrSuitId(Ljava/lang/String;)V
    .locals 0
    .parameter "rSuitId"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->rSuitId:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setrWid(Ljava/lang/String;)V
    .locals 0
    .parameter "rWid"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->rWid:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public toOrderParamsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getrSuitId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "4_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getrSuitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getrWid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getrWid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartResonseYBSelected [rWid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->rWid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rSuitId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->rSuitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ybSku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->ybSku:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
