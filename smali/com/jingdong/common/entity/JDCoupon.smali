.class public Lcom/jingdong/common/entity/JDCoupon;
.super Ljava/lang/Object;
.source "JDCoupon.java"


# static fields
.field public static final COUPON:I


# instance fields
.field private agency:I

.field private consumption:Ljava/lang/String;

.field private couponCount:I

.field private couponId:I

.field private couponType:Ljava/lang/String;

.field private couponUuid:Ljava/lang/String;

.field private coupon_batch:I

.field private endTime:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private money:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private typeName:Ljava/lang/String;

.field private validDay:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 1
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sparse-switch p2, :sswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 47
    :sswitch_0
    const-string v0, "typeDescription"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JDCoupon;->setTypeName(Ljava/lang/String;)V

    .line 48
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JDCoupon;->setId(Ljava/lang/String;)V

    .line 49
    const-string v0, "faceValue"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JDCoupon;->setMoney(Ljava/lang/String;)V

    .line 50
    const-string v0, "amountMoney"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JDCoupon;->setConsumption(Ljava/lang/String;)V

    .line 51
    const-string v0, "scope"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JDCoupon;->setScope(Ljava/lang/String;)V

    .line 52
    const-string v0, "fromTime"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JDCoupon;->setStartTime(Ljava/lang/String;)V

    .line 53
    const-string v0, "endTime"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JDCoupon;->setEndTime(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :sswitch_1
    const-string v0, "couponTitle"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JDCoupon;->setTypeName(Ljava/lang/String;)V

    .line 58
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JDCoupon;->setId(Ljava/lang/String;)V

    .line 59
    const-string v0, "couponScope"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JDCoupon;->setScope(Ljava/lang/String;)V

    .line 60
    const-string v0, "couponStartTime"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JDCoupon;->setStartTime(Ljava/lang/String;)V

    .line 61
    const-string v0, "couponEndTime"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JDCoupon;->setEndTime(Ljava/lang/String;)V

    .line 63
    const-string v0, "couponUuid"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JDCoupon;->setCouponUuid(Ljava/lang/String;)V

    .line 64
    const-string v0, "couponType"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JDCoupon;->setCouponType(Ljava/lang/String;)V

    .line 65
    const-string v0, "validDay"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JDCoupon;->setValidDay(I)V

    .line 66
    const-string v0, "agency"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JDCoupon;->setAgency(I)V

    .line 67
    const-string v0, "coupon_batch"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JDCoupon;->setCouponBatch(I)V

    .line 68
    const-string v0, "couponCount"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JDCoupon;->setCouponCount(I)V

    goto/16 :goto_0

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1b -> :sswitch_1
    .end sparse-switch
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;
    .locals 6
    .parameter "jsonArray"
    .parameter "functionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/JDCoupon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    const/4 v3, 0x0

    .line 97
    :goto_0
    return-object v3

    .line 82
    :cond_0
    const/4 v3, 0x0

    .line 86
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDCoupon;>;"
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDCoupon;>;"
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDCoupon;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lt v1, v5, :cond_1

    move-object v3, v4

    .line 93
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDCoupon;>;"
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDCoupon;>;"
    goto :goto_0

    .line 89
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDCoupon;>;"
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDCoupon;>;"
    :cond_1
    new-instance v2, Lcom/jingdong/common/entity/JDCoupon;

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    invoke-direct {v2, v5, p1}, Lcom/jingdong/common/entity/JDCoupon;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 90
    .local v2, jdCoupon:Lcom/jingdong/common/entity/JDCoupon;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    .end local v1           #i:I
    .end local v2           #jdCoupon:Lcom/jingdong/common/entity/JDCoupon;
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDCoupon;>;"
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDCoupon;>;"
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 93
    .end local v0           #e:Lorg/json/JSONException;
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDCoupon;>;"
    .restart local v1       #i:I
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDCoupon;>;"
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDCoupon;>;"
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDCoupon;>;"
    goto :goto_2
.end method


# virtual methods
.method public getAgency()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/jingdong/common/entity/JDCoupon;->agency:I

    return v0
.end method

.method public getConsumption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/jingdong/common/entity/JDCoupon;->consumption:Ljava/lang/String;

    return-object v0
.end method

.method public getCouponBatch()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/jingdong/common/entity/JDCoupon;->coupon_batch:I

    return v0
.end method

.method public getCouponCount()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/jingdong/common/entity/JDCoupon;->couponCount:I

    return v0
.end method

.method public getCouponType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jingdong/common/entity/JDCoupon;->couponType:Ljava/lang/String;

    return-object v0
.end method

.method public getCouponUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/jingdong/common/entity/JDCoupon;->couponUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string v0, ""

    .line 164
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/JDCoupon;->couponUuid:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/jingdong/common/entity/JDCoupon;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jingdong/common/entity/JDCoupon;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMoney()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jingdong/common/entity/JDCoupon;->money:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/jingdong/common/entity/JDCoupon;->scope:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const-string v0, ""

    .line 153
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/JDCoupon;->scope:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/jingdong/common/entity/JDCoupon;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jingdong/common/entity/JDCoupon;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public getValidDay()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/jingdong/common/entity/JDCoupon;->validDay:I

    return v0
.end method

.method public setAgency(I)V
    .locals 0
    .parameter "agency"

    .prologue
    .line 193
    iput p1, p0, Lcom/jingdong/common/entity/JDCoupon;->agency:I

    .line 194
    return-void
.end method

.method public setConsumption(Ljava/lang/String;)V
    .locals 0
    .parameter "consumption"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/jingdong/common/entity/JDCoupon;->consumption:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setCouponBatch(I)V
    .locals 0
    .parameter "coupon_batch"

    .prologue
    .line 201
    iput p1, p0, Lcom/jingdong/common/entity/JDCoupon;->coupon_batch:I

    .line 202
    return-void
.end method

.method public setCouponCount(I)V
    .locals 0
    .parameter "couponCount"

    .prologue
    .line 209
    iput p1, p0, Lcom/jingdong/common/entity/JDCoupon;->couponCount:I

    .line 210
    return-void
.end method

.method public setCouponType(Ljava/lang/String;)V
    .locals 0
    .parameter "couponType"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/jingdong/common/entity/JDCoupon;->couponType:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setCouponUuid(Ljava/lang/String;)V
    .locals 0
    .parameter "couponUuid"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/jingdong/common/entity/JDCoupon;->couponUuid:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .parameter "endTime"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/jingdong/common/entity/JDCoupon;->endTime:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/jingdong/common/entity/JDCoupon;->id:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setMoney(Ljava/lang/String;)V
    .locals 0
    .parameter "money"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/jingdong/common/entity/JDCoupon;->money:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .parameter "scope"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/jingdong/common/entity/JDCoupon;->scope:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .parameter "startTime"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/jingdong/common/entity/JDCoupon;->startTime:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0
    .parameter "typeName"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/jingdong/common/entity/JDCoupon;->typeName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setValidDay(I)V
    .locals 0
    .parameter "validDay"

    .prologue
    .line 185
    iput p1, p0, Lcom/jingdong/common/entity/JDCoupon;->validDay:I

    .line 186
    return-void
.end method
