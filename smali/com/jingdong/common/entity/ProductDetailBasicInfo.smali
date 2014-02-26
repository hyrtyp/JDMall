.class public Lcom/jingdong/common/entity/ProductDetailBasicInfo;
.super Ljava/lang/Object;
.source "ProductDetailBasicInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1627fd2456d3f623L


# instance fields
.field private cartFlag:Z

.field private cartImag:Ljava/lang/String;

.field private cartTip:Ljava/lang/String;

.field private easyBuy:Z

.field private infoPageImag:Ljava/lang/String;

.field private miaosha:Z

.field private name:Ljava/lang/String;

.field private stock:Ljava/lang/String;

.field private wareId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 1
    .parameter "jsObject"
    .parameter "functionId"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    packed-switch p2, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 99
    :pswitch_0
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->setName(Ljava/lang/String;)V

    .line 100
    const-string v0, "stock"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->setStock(Ljava/lang/String;)V

    .line 101
    const-string v0, "cartTip"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->setCartTip(Ljava/lang/String;)V

    .line 102
    const-string v0, "easyBuy"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->setEasyBuy(Z)V

    .line 103
    const-string v0, "miaosha"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->setMiaosha(Z)V

    .line 104
    const-string v0, "cartFlag"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->setCartFlag(Z)V

    .line 105
    const-string v0, "wareId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->setWareId(Ljava/lang/String;)V

    .line 106
    const-string v0, "cartImag"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->setCartImag(Ljava/lang/String;)V

    .line 107
    const-string v0, "infoPageImag"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->setInfoPageImag(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCartImag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->cartImag:Ljava/lang/String;

    return-object v0
.end method

.method public getCartTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->cartTip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, ""

    .line 68
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->cartTip:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInfoPageImag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->infoPageImag:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, ""

    .line 50
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->stock:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, ""

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->stock:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWareId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->wareId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, ""

    .line 41
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->wareId:Ljava/lang/String;

    goto :goto_0
.end method

.method public isCartFlag()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->cartFlag:Z

    return v0
.end method

.method public isEasyBuy()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->easyBuy:Z

    return v0
.end method

.method public isMiaosha()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->miaosha:Z

    return v0
.end method

.method public setCartFlag(Z)V
    .locals 0
    .parameter "cartFlag"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->cartFlag:Z

    .line 90
    return-void
.end method

.method public setCartImag(Ljava/lang/String;)V
    .locals 0
    .parameter "cartImag"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->cartImag:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setCartTip(Ljava/lang/String;)V
    .locals 0
    .parameter "cartTip"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->cartTip:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setEasyBuy(Z)V
    .locals 0
    .parameter "easyBuy"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->easyBuy:Z

    .line 78
    return-void
.end method

.method public setInfoPageImag(Ljava/lang/String;)V
    .locals 0
    .parameter "infoPageImag"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->infoPageImag:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setMiaosha(Z)V
    .locals 0
    .parameter "miaosha"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->miaosha:Z

    .line 84
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->name:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setStock(Ljava/lang/String;)V
    .locals 0
    .parameter "stock"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->stock:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setWareId(Ljava/lang/String;)V
    .locals 0
    .parameter "wareId"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;->wareId:Ljava/lang/String;

    .line 45
    return-void
.end method
