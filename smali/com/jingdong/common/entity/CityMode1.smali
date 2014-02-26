.class public Lcom/jingdong/common/entity/CityMode1;
.super Ljava/lang/Object;
.source "CityMode1.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DIRECT_WARE:I = 0x0

.field private static final serialVersionUID:J = -0x59637d5abcefbdaL


# instance fields
.field private id:I

.field private name:Ljava/lang/String;

.field private parent:Lcom/jingdong/common/entity/ProvinceMode1;

.field private productId:J


# direct methods
.method private constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I[Ljava/lang/Object;)V
    .locals 5
    .parameter "jsonObject"
    .parameter "functionId"
    .parameter "varargs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    packed-switch p2, :pswitch_data_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 33
    :pswitch_0
    const/4 v0, 0x0

    .line 34
    .local v0, parent:Lcom/jingdong/common/entity/ProvinceMode1;
    if-eqz p3, :cond_1

    array-length v2, p3

    if-lez v2, :cond_1

    aget-object v2, p3, v4

    if-eqz v2, :cond_1

    aget-object v2, p3, v4

    instance-of v2, v2, Lcom/jingdong/common/entity/ProvinceMode1;

    if-eqz v2, :cond_1

    .line 35
    aget-object v0, p3, v4

    .end local v0           #parent:Lcom/jingdong/common/entity/ProvinceMode1;
    check-cast v0, Lcom/jingdong/common/entity/ProvinceMode1;

    .line 39
    .restart local v0       #parent:Lcom/jingdong/common/entity/ProvinceMode1;
    :cond_1
    const/4 v1, 0x0

    .line 40
    .local v1, product:Lcom/jingdong/common/entity/Product;
    if-eqz p3, :cond_2

    array-length v2, p3

    if-le v2, v3, :cond_2

    aget-object v2, p3, v3

    if-eqz v2, :cond_2

    aget-object v2, p3, v3

    instance-of v2, v2, Lcom/jingdong/common/entity/Product;

    if-eqz v2, :cond_2

    .line 41
    aget-object v1, p3, v3

    .end local v1           #product:Lcom/jingdong/common/entity/Product;
    check-cast v1, Lcom/jingdong/common/entity/Product;

    .line 44
    .restart local v1       #product:Lcom/jingdong/common/entity/Product;
    :cond_2
    const-string v2, "name"

    invoke-virtual {p1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jingdong/common/entity/CityMode1;->setName(Ljava/lang/String;)V

    .line 45
    const-string v2, "idCity"

    invoke-virtual {p1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jingdong/common/entity/CityMode1;->setId(I)V

    .line 46
    const-string v2, "skuid"

    invoke-virtual {p1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/jingdong/common/entity/CityMode1;->setProductId(J)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CityMode1;->setParent(Lcom/jingdong/common/entity/ProvinceMode1;)V

    .line 50
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/jingdong/common/entity/CityMode1;->getProductId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/jingdong/common/entity/Product;->putInCityMode1Map(Ljava/lang/Long;Lcom/jingdong/common/entity/CityMode1;)V

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "jsonArray"
    .parameter "functionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CityMode1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/jingdong/common/entity/CityMode1;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I[Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 6
    .parameter "jsonArray"
    .parameter "functionId"
    .parameter "varargs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            "I[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CityMode1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 v3, 0x0

    .line 88
    :goto_0
    return-object v3

    .line 72
    :cond_0
    const/4 v3, 0x0

    .line 76
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CityMode1;>;"
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CityMode1;>;"
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CityMode1;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lt v2, v5, :cond_1

    move-object v3, v4

    .line 84
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CityMode1;>;"
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CityMode1;>;"
    goto :goto_0

    .line 78
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CityMode1;>;"
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CityMode1;>;"
    :cond_1
    new-instance v0, Lcom/jingdong/common/entity/CityMode1;

    invoke-virtual {p0, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    invoke-direct {v0, v5, p1, p2}, Lcom/jingdong/common/entity/CityMode1;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I[Ljava/lang/Object;)V

    .line 79
    .local v0, city:Lcom/jingdong/common/entity/CityMode1;
    invoke-virtual {v0}, Lcom/jingdong/common/entity/CityMode1;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 80
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 84
    .end local v0           #city:Lcom/jingdong/common/entity/CityMode1;
    .end local v2           #i:I
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CityMode1;>;"
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CityMode1;>;"
    :catch_0
    move-exception v1

    .line 85
    .local v1, e:Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v1           #e:Lorg/json/JSONException;
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CityMode1;>;"
    .restart local v2       #i:I
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CityMode1;>;"
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CityMode1;>;"
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CityMode1;>;"
    goto :goto_2
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/jingdong/common/entity/CityMode1;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jingdong/common/entity/CityMode1;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 93
    const-string v0, ""

    .line 95
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/CityMode1;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getParent()Lcom/jingdong/common/entity/ProvinceMode1;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jingdong/common/entity/CityMode1;->parent:Lcom/jingdong/common/entity/ProvinceMode1;

    return-object v0
.end method

.method public getProductId()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/jingdong/common/entity/CityMode1;->productId:J

    return-wide v0
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 107
    iput p1, p0, Lcom/jingdong/common/entity/CityMode1;->id:I

    .line 108
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/jingdong/common/entity/CityMode1;->name:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setParent(Lcom/jingdong/common/entity/ProvinceMode1;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/jingdong/common/entity/CityMode1;->parent:Lcom/jingdong/common/entity/ProvinceMode1;

    .line 124
    return-void
.end method

.method public setProductId(J)V
    .locals 0
    .parameter "productId"

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/jingdong/common/entity/CityMode1;->productId:J

    .line 116
    return-void
.end method
