.class public Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;
.super Ljava/lang/Object;
.source "NewCurrentOrderPriceItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1ac844b139dbe9b2L


# instance fields
.field private label:Ljava/lang/String;

.field private operator:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 1
    .parameter "jsonObject"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "label"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;->setLabel(Ljava/lang/String;)V

    .line 24
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;->setValue(Ljava/lang/String;)V

    .line 25
    const-string v0, "operator"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;->setOperator(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONObjectProxy;)Ljava/util/ArrayList;
    .locals 6
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONObjectProxy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    if-nez p0, :cond_1

    .line 30
    const/4 v2, 0x0

    .line 51
    :cond_0
    :goto_0
    return-object v2

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 34
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;>;"
    const-string v5, "yunfeeList"

    invoke-virtual {p0, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v4

    .line 35
    .local v4, priceItemsJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v4, :cond_0

    .line 38
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;>;"
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lt v0, v5, :cond_2

    move-object v2, v3

    .line 44
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;>;"
    goto :goto_0

    .line 40
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;>;"
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;>;"
    :cond_2
    new-instance v1, Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;

    invoke-virtual {v4, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 41
    .local v1, item:Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    .end local v0           #i:I
    .end local v1           #item:Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;>;"
    :catch_0
    move-exception v5

    goto :goto_0

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;>;"
    .restart local v0       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;>;"
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;>;"
    goto :goto_0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;->label:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0
    .parameter "operator"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;->operator:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/jingdong/common/entity/NewCurrentOrderPriceItem;->value:Ljava/lang/String;

    .line 68
    return-void
.end method
