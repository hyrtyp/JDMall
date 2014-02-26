.class public Lcom/jingdong/common/entity/DefaultAddressMode;
.super Ljava/lang/Object;
.source "DefaultAddressMode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DIRECT_WARE:I = 0x0

.field private static final serialVersionUID:J = -0x2181cb9fdc207f36L


# instance fields
.field private cityId:Ljava/lang/String;

.field private cityName:Ljava/lang/String;

.field private countyId:Ljava/lang/String;

.field private countyName:Ljava/lang/String;

.field private functionId:Ljava/lang/String;

.field private provinceId:Ljava/lang/String;

.field private provinceName:Ljava/lang/String;

.field private skuId:Ljava/lang/String;

.field private townId:Ljava/lang/String;

.field private townName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I[Ljava/lang/Object;)V
    .locals 1
    .parameter "jsonObject"
    .parameter "functionId"
    .parameter "varargs"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    packed-switch p2, :pswitch_data_0

    .line 70
    :goto_0
    :pswitch_0
    return-void

    .line 44
    :pswitch_1
    const-string v0, "provinceId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->setProvinceId(Ljava/lang/String;)V

    .line 45
    const-string v0, "provinceName"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->setProvinceName(Ljava/lang/String;)V

    .line 46
    const-string v0, "cityId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->setCityId(Ljava/lang/String;)V

    .line 47
    const-string v0, "cityName"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->setCityName(Ljava/lang/String;)V

    .line 48
    const-string v0, "countyId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->setCountyId(Ljava/lang/String;)V

    .line 49
    const-string v0, "countyName"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->setCountyName(Ljava/lang/String;)V

    .line 50
    const-string v0, "skuId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->setSkuId(Ljava/lang/String;)V

    .line 51
    const-string v0, "functionId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->setFunctionId(Ljava/lang/String;)V

    .line 52
    const-string v0, "townId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->setTownId(Ljava/lang/String;)V

    .line 53
    const-string v0, "townName"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->setTownName(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_2
    const-string v0, "provinceId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->setProvinceId(Ljava/lang/String;)V

    .line 57
    const-string v0, "provinceName"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->setProvinceName(Ljava/lang/String;)V

    .line 58
    const-string v0, "cityId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->setCityId(Ljava/lang/String;)V

    .line 59
    const-string v0, "cityName"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->setCityName(Ljava/lang/String;)V

    .line 60
    const-string v0, "countyId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->setCountyId(Ljava/lang/String;)V

    .line 61
    const-string v0, "countyName"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->setCountyName(Ljava/lang/String;)V

    .line 62
    const-string v0, "townId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->setTownId(Ljava/lang/String;)V

    .line 63
    const-string v0, "townName"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->setTownName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
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
            "Lcom/jingdong/common/entity/DefaultAddressMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I[Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 5
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
            "Lcom/jingdong/common/entity/DefaultAddressMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/DefaultAddressMode;>;"
    if-nez p0, :cond_1

    .line 79
    const/4 v3, 0x0

    .line 95
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/DefaultAddressMode;>;"
    :cond_0
    :goto_0
    return-object v3

    .line 84
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/DefaultAddressMode;>;"
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 85
    new-instance v0, Lcom/jingdong/common/entity/DefaultAddressMode;

    invoke-virtual {p0, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v0, v4, p1, p2}, Lcom/jingdong/common/entity/DefaultAddressMode;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I[Ljava/lang/Object;)V

    .line 86
    .local v0, defaultAddress:Lcom/jingdong/common/entity/DefaultAddressMode;
    invoke-virtual {v0}, Lcom/jingdong/common/entity/DefaultAddressMode;->getProvinceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 87
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    .end local v0           #defaultAddress:Lcom/jingdong/common/entity/DefaultAddressMode;
    :catch_0
    move-exception v1

    .line 92
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->cityId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "0"

    .line 126
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->cityId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->cityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, ""

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->cityName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCountyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->countyId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "0"

    .line 148
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->countyId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCountyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->countyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, ""

    .line 159
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->countyName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFunctionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->functionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, ""

    .line 181
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->functionId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getProvinceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->provinceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "0"

    .line 103
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->provinceId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getProvinceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->provinceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, ""

    .line 114
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->provinceName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSkuId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->skuId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const-string v0, ""

    .line 170
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->skuId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTownId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->townId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const-string v0, "0"

    .line 192
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->townId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTownName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->townName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string v0, ""

    .line 203
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->townName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCityId(Ljava/lang/String;)V
    .locals 0
    .parameter "cityId"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->cityId:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0
    .parameter "cityName"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->cityName:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setCountyId(Ljava/lang/String;)V
    .locals 0
    .parameter "countyId"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->countyId:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setCountyName(Ljava/lang/String;)V
    .locals 0
    .parameter "countyName"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->countyName:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setFunctionId(Ljava/lang/String;)V
    .locals 0
    .parameter "functionId"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->functionId:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setProvinceId(Ljava/lang/String;)V
    .locals 0
    .parameter "provinceId"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->provinceId:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setProvinceName(Ljava/lang/String;)V
    .locals 0
    .parameter "provinceName"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->provinceName:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setSkuId(Ljava/lang/String;)V
    .locals 0
    .parameter "skuId"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->skuId:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setTownId(Ljava/lang/String;)V
    .locals 0
    .parameter "townId"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->townId:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setTownName(Ljava/lang/String;)V
    .locals 0
    .parameter "townName"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/jingdong/common/entity/DefaultAddressMode;->townName:Ljava/lang/String;

    .line 208
    return-void
.end method
