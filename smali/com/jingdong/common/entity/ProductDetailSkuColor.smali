.class public Lcom/jingdong/common/entity/ProductDetailSkuColor;
.super Ljava/lang/Object;
.source "ProductDetailSkuColor.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x191ffc21dc9fea54L


# instance fields
.field private color:Ljava/lang/String;

.field private skuId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 1
    .parameter "jsObject"
    .parameter "functionId"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    packed-switch p2, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 48
    :pswitch_0
    const-string v0, "skuId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailSkuColor;->setSkuId(Ljava/lang/String;)V

    .line 49
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailSkuColor;->setColor(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;
    .locals 5
    .parameter "jsonArray"
    .parameter "functionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/ProductDetailSkuColor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProductDetailSkuColor;>;"
    if-nez p0, :cond_1

    .line 60
    const/4 v2, 0x0

    .line 72
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProductDetailSkuColor;>;"
    :cond_0
    :goto_0
    return-object v2

    .line 64
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProductDetailSkuColor;>;"
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 65
    new-instance v3, Lcom/jingdong/common/entity/ProductDetailSkuColor;

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/jingdong/common/entity/ProductDetailSkuColor;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 66
    .local v3, skuColor:Lcom/jingdong/common/entity/ProductDetailSkuColor;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68
    .end local v3           #skuColor:Lcom/jingdong/common/entity/ProductDetailSkuColor;
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailSkuColor;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, ""

    .line 35
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailSkuColor;->color:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSkuId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailSkuColor;->skuId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const-string v0, ""

    .line 26
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailSkuColor;->skuId:Ljava/lang/String;

    goto :goto_0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0
    .parameter "color"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailSkuColor;->color:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setSkuId(Ljava/lang/String;)V
    .locals 0
    .parameter "skuId"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailSkuColor;->skuId:Ljava/lang/String;

    .line 30
    return-void
.end method
