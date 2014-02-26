.class public Lcom/jingdong/common/entity/cart/CartResponse;
.super Ljava/lang/Object;
.source "CartResponse.java"


# instance fields
.field private code:Ljava/lang/Integer;

.field private errorMessage:Ljava/lang/String;

.field private imageDomain:Ljava/lang/String;

.field private info:Lcom/jingdong/common/entity/cart/CartResponseInfo;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v1, "code"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/cart/CartResponse;->setCode(Ljava/lang/Integer;)V

    .line 43
    const-string v1, "imageDomain"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/cart/CartResponse;->setImageDomain(Ljava/lang/String;)V

    .line 44
    const-string v1, "message"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/cart/CartResponse;->setMessage(Ljava/lang/String;)V

    .line 45
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/cart/CartResponse;->setErrorMessage(Ljava/lang/String;)V

    .line 48
    const-string v1, "cartInfo"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 49
    .local v0, infoJson:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v0, :cond_0

    .line 50
    new-instance v1, Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {p0}, Lcom/jingdong/common/entity/cart/CartResponse;->getImageDomain()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/jingdong/common/entity/cart/CartResponseInfo;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/cart/CartResponse;->setInfo(Lcom/jingdong/common/entity/cart/CartResponseInfo;)V

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponse;->code:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 65
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponse;->code:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponse;->errorMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 102
    const-string v0, ""

    .line 104
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponse;->errorMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImageDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponse;->imageDomain:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 87
    const-string v0, ""

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponse;->imageDomain:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInfo()Lcom/jingdong/common/entity/cart/CartResponseInfo;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponse;->info:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponse;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 76
    const-string v0, ""

    .line 78
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCode(Ljava/lang/Integer;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponse;->code:Ljava/lang/Integer;

    .line 72
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMessage"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponse;->errorMessage:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setImageDomain(Ljava/lang/String;)V
    .locals 0
    .parameter "imageDomain"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponse;->imageDomain:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setInfo(Lcom/jingdong/common/entity/cart/CartResponseInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponse;->info:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    .line 61
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartResponse;->message:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartResponse [info="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponse;->info:Lcom/jingdong/common/entity/cart/CartResponseInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponse;->code:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponse;->imageDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartResponse;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
