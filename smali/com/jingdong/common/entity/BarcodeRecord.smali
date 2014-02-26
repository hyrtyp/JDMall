.class public Lcom/jingdong/common/entity/BarcodeRecord;
.super Ljava/lang/Object;
.source "BarcodeRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x77ca31cfbad3342aL


# instance fields
.field private content:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private product:Lcom/jingdong/common/entity/Product;

.field private productName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "\u67e5\u8be2\u4e2d..."

    iput-object v0, p0, Lcom/jingdong/common/entity/BarcodeRecord;->productName:Ljava/lang/String;

    .line 5
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/jingdong/common/entity/BarcodeRecord;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jingdong/common/entity/BarcodeRecord;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct()Lcom/jingdong/common/entity/Product;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jingdong/common/entity/BarcodeRecord;->product:Lcom/jingdong/common/entity/Product;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jingdong/common/entity/BarcodeRecord;->product:Lcom/jingdong/common/entity/Product;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/BarcodeRecord;->product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/BarcodeRecord;->productName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/jingdong/common/entity/BarcodeRecord;->content:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/jingdong/common/entity/BarcodeRecord;->format:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setProduct(Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter "product"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/jingdong/common/entity/BarcodeRecord;->product:Lcom/jingdong/common/entity/Product;

    .line 42
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .parameter "productName"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jingdong/common/entity/BarcodeRecord;->productName:Ljava/lang/String;

    .line 46
    return-void
.end method
