.class public Lcom/jingdong/common/entity/UserAddress;
.super Ljava/lang/Object;
.source "UserAddress.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_ID_EASY_GO:I = 0x0

.field private static final serialVersionUID:J = -0x5b2b272333f44e62L


# instance fields
.field private addressDetail:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private idArea:Ljava/lang/Integer;

.field private idCity:Ljava/lang/Integer;

.field private idProvince:Ljava/lang/Integer;

.field private idTown:Ljava/lang/Integer;

.field private isNoIdTown:Ljava/lang/Boolean;

.field private message:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private pin:Ljava/lang/String;

.field private typeId:Ljava/lang/Integer;

.field private where:Ljava/lang/String;

.field private zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    :try_start_0
    const-string v1, "pin"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UserAddress;->setPin(Ljava/lang/String;)V

    .line 52
    const-string v1, "Id"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UserAddress;->setId(Ljava/lang/Integer;)V

    .line 53
    const-string v1, "IdCity"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UserAddress;->setIdCity(Ljava/lang/Integer;)V

    .line 54
    const-string v1, "IdTown"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UserAddress;->setIdTown(Ljava/lang/Integer;)V

    .line 55
    const-string v1, "IdArea"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UserAddress;->setIdArea(Ljava/lang/Integer;)V

    .line 56
    const-string v1, "IdProvince"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UserAddress;->setIdProvince(Ljava/lang/Integer;)V

    .line 57
    const-string v1, "Name"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UserAddress;->setName(Ljava/lang/String;)V

    .line 58
    const-string v1, "Where"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UserAddress;->setWhere(Ljava/lang/String;)V

    .line 59
    const-string v1, "TypeId"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UserAddress;->setTypeId(Ljava/lang/Integer;)V

    .line 60
    const-string v1, "Email"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UserAddress;->setEmail(Ljava/lang/String;)V

    .line 61
    const-string v1, "Mobile"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UserAddress;->setMobile(Ljava/lang/String;)V

    .line 62
    const-string v1, "Zip"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UserAddress;->setZip(Ljava/lang/String;)V

    .line 64
    const-string v1, "addressDetail"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UserAddress;->setAddressDetail(Ljava/lang/String;)V

    .line 66
    const-string v1, "isIdTown"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UserAddress;->setIsNoIdTown(Ljava/lang/Boolean;)V

    .line 67
    const-string v1, "Message"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/UserAddress;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;
    .locals 5
    .parameter "jsonArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/UserAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/UserAddress;>;"
    if-nez p0, :cond_1

    .line 89
    :cond_0
    return-object v2

    .line 82
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 83
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 84
    .local v1, jObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v1, :cond_2

    .line 85
    new-instance v3, Lcom/jingdong/common/entity/UserAddress;

    invoke-direct {v3, v1}, Lcom/jingdong/common/entity/UserAddress;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 86
    .local v3, userAddress:Lcom/jingdong/common/entity/UserAddress;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v3           #userAddress:Lcom/jingdong/common/entity/UserAddress;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 234
    if-ne p0, p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v1

    .line 236
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 237
    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 239
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 240
    check-cast v0, Lcom/jingdong/common/entity/UserAddress;

    .line 241
    .local v0, other:Lcom/jingdong/common/entity/UserAddress;
    invoke-virtual {p0}, Lcom/jingdong/common/entity/UserAddress;->getMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserAddress;->getMobile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 242
    goto :goto_0

    .line 243
    :cond_4
    invoke-virtual {p0}, Lcom/jingdong/common/entity/UserAddress;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserAddress;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 244
    goto :goto_0

    .line 245
    :cond_5
    invoke-virtual {p0}, Lcom/jingdong/common/entity/UserAddress;->getWhere()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserAddress;->getWhere()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 246
    goto :goto_0
.end method

.method public getAddressDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->addressDetail:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 286
    const-string v0, ""

    .line 288
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->addressDetail:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->email:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 190
    const-string v0, ""

    .line 192
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->email:Ljava/lang/String;

    goto :goto_0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdArea()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->idArea:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 135
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->idArea:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getIdCity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->idCity:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->idCity:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getIdProvince()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->idProvince:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 146
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->idProvince:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getIdTown()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->idTown:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 124
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->idTown:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getIsNoIdTown()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->isNoIdTown:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->isNoIdTown:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 275
    const-string v0, ""

    .line 277
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->mobile:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 201
    const-string v0, ""

    .line 203
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->mobile:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 157
    const-string v0, ""

    .line 159
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->pin:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 94
    const-string v0, ""

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->pin:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTypeId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->typeId:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 179
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->typeId:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->where:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 168
    const-string v0, ""

    .line 170
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->where:Ljava/lang/String;

    goto :goto_0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->zip:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 212
    const-string v0, ""

    .line 214
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/UserAddress;->zip:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 223
    const/16 v0, 0x1f

    .line 224
    .local v0, prime:I
    const/4 v1, 0x1

    .line 225
    .local v1, result:I
    iget-object v2, p0, Lcom/jingdong/common/entity/UserAddress;->mobile:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 226
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/jingdong/common/entity/UserAddress;->name:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 227
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/jingdong/common/entity/UserAddress;->where:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 229
    return v1

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/jingdong/common/entity/UserAddress;->mobile:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/jingdong/common/entity/UserAddress;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 227
    :cond_2
    iget-object v3, p0, Lcom/jingdong/common/entity/UserAddress;->where:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setAddressDetail(Ljava/lang/String;)V
    .locals 0
    .parameter "addressDetail"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/jingdong/common/entity/UserAddress;->addressDetail:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/jingdong/common/entity/UserAddress;->email:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/jingdong/common/entity/UserAddress;->id:Ljava/lang/Integer;

    .line 109
    return-void
.end method

.method public setIdArea(Ljava/lang/Integer;)V
    .locals 0
    .parameter "idArea"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/jingdong/common/entity/UserAddress;->idArea:Ljava/lang/Integer;

    .line 142
    return-void
.end method

.method public setIdCity(Ljava/lang/Integer;)V
    .locals 0
    .parameter "idCity"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jingdong/common/entity/UserAddress;->idCity:Ljava/lang/Integer;

    .line 120
    return-void
.end method

.method public setIdProvince(Ljava/lang/Integer;)V
    .locals 0
    .parameter "idProvince"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/jingdong/common/entity/UserAddress;->idProvince:Ljava/lang/Integer;

    .line 153
    return-void
.end method

.method public setIdTown(Ljava/lang/Integer;)V
    .locals 0
    .parameter "idTown"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/jingdong/common/entity/UserAddress;->idTown:Ljava/lang/Integer;

    .line 131
    return-void
.end method

.method public setIsNoIdTown(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isIdTown"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/jingdong/common/entity/UserAddress;->isNoIdTown:Ljava/lang/Boolean;

    .line 271
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/jingdong/common/entity/UserAddress;->message:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .parameter "mobile"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/jingdong/common/entity/UserAddress;->mobile:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/jingdong/common/entity/UserAddress;->name:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0
    .parameter "pin"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/jingdong/common/entity/UserAddress;->pin:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setTypeId(Ljava/lang/Integer;)V
    .locals 0
    .parameter "typeId"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/jingdong/common/entity/UserAddress;->typeId:Ljava/lang/Integer;

    .line 186
    return-void
.end method

.method public setWhere(Ljava/lang/String;)V
    .locals 0
    .parameter "where"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/jingdong/common/entity/UserAddress;->where:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0
    .parameter "zip"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/jingdong/common/entity/UserAddress;->zip:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserAddress [pin="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/UserAddress;->pin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/UserAddress;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idCity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/UserAddress;->idCity:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idTown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/UserAddress;->idTown:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/UserAddress;->idArea:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idProvince="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/UserAddress;->idProvince:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/UserAddress;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", where="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/UserAddress;->where:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/UserAddress;->typeId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/UserAddress;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mobile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/UserAddress;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/UserAddress;->zip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", addressDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/UserAddress;->addressDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNoIdTown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/UserAddress;->isNoIdTown:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/UserAddress;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
