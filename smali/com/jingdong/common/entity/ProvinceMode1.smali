.class public Lcom/jingdong/common/entity/ProvinceMode1;
.super Ljava/lang/Object;
.source "ProvinceMode1.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DIRECT_WARE:I = 0x0

.field private static final serialVersionUID:J = -0x2c1418e13d26d53dL


# instance fields
.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CityMode1;",
            ">;"
        }
    .end annotation
.end field

.field private childrenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I[Ljava/lang/Object;)V
    .locals 4
    .parameter "jsonObject"
    .parameter "functionId"
    .parameter "varargs"

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    packed-switch p2, :pswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 32
    :pswitch_0
    const/4 v0, 0x0

    .line 33
    .local v0, product:Lcom/jingdong/common/entity/Product;
    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    aget-object v1, p3, v3

    if-eqz v1, :cond_0

    aget-object v1, p3, v3

    instance-of v1, v1, Lcom/jingdong/common/entity/Product;

    if-eqz v1, :cond_0

    .line 34
    aget-object v0, p3, v3

    .end local v0           #product:Lcom/jingdong/common/entity/Product;
    check-cast v0, Lcom/jingdong/common/entity/Product;

    .line 37
    .restart local v0       #product:Lcom/jingdong/common/entity/Product;
    :cond_0
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ProvinceMode1;->setName(Ljava/lang/String;)V

    .line 38
    const-string v1, "idProvince"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ProvinceMode1;->setId(I)V

    .line 39
    const-string v1, "idCityes"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, p2, v2}, Lcom/jingdong/common/entity/CityMode1;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ProvinceMode1;->setChildren(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 28
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
            "Lcom/jingdong/common/entity/ProvinceMode1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/jingdong/common/entity/ProvinceMode1;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I[Ljava/lang/Object;)Ljava/util/ArrayList;

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
            "Lcom/jingdong/common/entity/ProvinceMode1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v2, 0x0

    .line 73
    :goto_0
    return-object v2

    .line 59
    :cond_0
    const/4 v2, 0x0

    .line 63
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProvinceMode1;>;"
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProvinceMode1;>;"
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProvinceMode1;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lt v1, v5, :cond_1

    move-object v2, v3

    .line 69
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProvinceMode1;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProvinceMode1;>;"
    goto :goto_0

    .line 65
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProvinceMode1;>;"
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProvinceMode1;>;"
    :cond_1
    new-instance v4, Lcom/jingdong/common/entity/ProvinceMode1;

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    invoke-direct {v4, v5, p1, p2}, Lcom/jingdong/common/entity/ProvinceMode1;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I[Ljava/lang/Object;)V

    .line 66
    .local v4, province:Lcom/jingdong/common/entity/ProvinceMode1;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 69
    .end local v1           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProvinceMode1;>;"
    .end local v4           #province:Lcom/jingdong/common/entity/ProvinceMode1;
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProvinceMode1;>;"
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProvinceMode1;>;"
    .restart local v1       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProvinceMode1;>;"
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProvinceMode1;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProvinceMode1;>;"
    goto :goto_2
.end method


# virtual methods
.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CityMode1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jingdong/common/entity/ProvinceMode1;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCityMode1IndexById(I)Ljava/lang/Integer;
    .locals 2
    .parameter "id"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jingdong/common/entity/ProvinceMode1;->childrenMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/jingdong/common/entity/ProvinceMode1;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/common/entity/ProvinceMode1;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setChildren(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CityMode1;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CityMode1;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/ProvinceMode1;->children:Ljava/util/ArrayList;

    .line 99
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/jingdong/common/entity/ProvinceMode1;->childrenMap:Ljava/util/HashMap;

    .line 100
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 104
    return-void

    .line 101
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/CityMode1;

    .line 102
    .local v0, city:Lcom/jingdong/common/entity/CityMode1;
    iget-object v2, p0, Lcom/jingdong/common/entity/ProvinceMode1;->childrenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/CityMode1;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 89
    iput p1, p0, Lcom/jingdong/common/entity/ProvinceMode1;->id:I

    .line 90
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/jingdong/common/entity/ProvinceMode1;->name:Ljava/lang/String;

    .line 82
    return-void
.end method
