.class public Lcom/jingdong/common/entity/CouponInfo;
.super Ljava/lang/Object;
.source "CouponInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final CONSTANT_COUPON_STYLE_ENTITY:I = 0x1

.field private static final CONSTANT_COUPON_STYLE_INTERNET:I = 0x0

.field private static final CONSTANT_COUPON_TYPE_DONG:I = 0x1

.field private static final CONSTANT_COUPON_TYPE_JING:I = 0x0

.field public static final USED_ELEC_COUPONS:I = 0x0

.field private static final serialVersionUID:J = -0xa86096ee915187fL


# instance fields
.field private Pin:Ljava/lang/String;

.field private canUsed:Ljava/lang/Boolean;

.field private couponStyle:Ljava/lang/Integer;

.field private couponType:Ljava/lang/Integer;

.field private discount:Ljava/lang/Double;

.field private id:Ljava/lang/String;

.field private isModify:Z

.field private key:Ljava/lang/String;

.field private platform:Ljava/lang/Integer;

.field private quota:Ljava/lang/Float;

.field private scope:Ljava/lang/String;

.field private selected:Ljava/lang/Boolean;

.field private timeBegin:Ljava/lang/String;

.field private timeEnd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 0
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/jingdong/common/entity/CouponInfo;->update(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 67
    return-void
.end method

.method public static isSelectedDongForList(Ljava/util/ArrayList;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CouponInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    const/4 v0, 0x0

    .line 210
    .local v0, flag:Z
    if-nez p0, :cond_0

    move v1, v0

    .line 219
    .end local v0           #flag:Z
    .local v1, flag:I
    :goto_0
    return v1

    .line 213
    .end local v1           #flag:I
    .restart local v0       #flag:Z
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    move v1, v0

    .line 219
    .restart local v1       #flag:I
    goto :goto_0

    .line 213
    .end local v1           #flag:I
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/CouponInfo;

    .line 214
    .local v2, info:Lcom/jingdong/common/entity/CouponInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/jingdong/common/entity/CouponInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/jingdong/common/entity/CouponInfo;->getCouponType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 215
    const/4 v0, 0x1

    .line 216
    goto :goto_1
.end method

.method public static isSelectedJingForList(Ljava/util/ArrayList;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CouponInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    const/4 v0, 0x0

    .line 190
    .local v0, flag:Z
    if-nez p0, :cond_0

    move v1, v0

    .line 199
    .end local v0           #flag:Z
    .local v1, flag:I
    :goto_0
    return v1

    .line 193
    .end local v1           #flag:I
    .restart local v0       #flag:Z
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    move v1, v0

    .line 199
    .restart local v1       #flag:I
    goto :goto_0

    .line 193
    .end local v1           #flag:I
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/CouponInfo;

    .line 194
    .local v2, info:Lcom/jingdong/common/entity/CouponInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/jingdong/common/entity/CouponInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/jingdong/common/entity/CouponInfo;->getCouponType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    .line 195
    const/4 v0, 0x1

    .line 196
    goto :goto_1
.end method

.method public static lookupDongForList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CouponInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CouponInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v1, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    if-nez p0, :cond_1

    .line 141
    :cond_0
    return-object v1

    .line 136
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/CouponInfo;

    .line 137
    .local v0, info:Lcom/jingdong/common/entity/CouponInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jingdong/common/entity/CouponInfo;->getCouponType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 138
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static lookupJingForList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CouponInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CouponInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v1, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    if-nez p0, :cond_1

    .line 122
    :cond_0
    return-object v1

    .line 117
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/CouponInfo;

    .line 118
    .local v0, info:Lcom/jingdong/common/entity/CouponInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jingdong/common/entity/CouponInfo;->getCouponType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    .line 119
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static lookupSelectedForList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CouponInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CouponInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v1, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    if-nez p0, :cond_1

    .line 160
    :cond_0
    return-object v1

    .line 155
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/CouponInfo;

    .line 156
    .local v0, info:Lcom/jingdong/common/entity/CouponInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jingdong/common/entity/CouponInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static lookupSelectedOrModifyForList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CouponInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CouponInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v1, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    if-nez p0, :cond_1

    .line 178
    :cond_0
    return-object v1

    .line 173
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/CouponInfo;

    .line 174
    .local v0, info:Lcom/jingdong/common/entity/CouponInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jingdong/common/entity/CouponInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/jingdong/common/entity/CouponInfo;->isModify()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
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
            "Lcom/jingdong/common/entity/CouponInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    const/4 v2, 0x0

    .line 93
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    move-object v2, v3

    .line 103
    .end local v1           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    :goto_1
    return-object v2

    .line 95
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    .restart local v1       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    :cond_0
    new-instance v0, Lcom/jingdong/common/entity/CouponInfo;

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v0, v4, p1}, Lcom/jingdong/common/entity/CouponInfo;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 96
    .local v0, couponGiftInfo:Lcom/jingdong/common/entity/CouponInfo;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v0           #couponGiftInfo:Lcom/jingdong/common/entity/CouponInfo;
    .end local v1           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    :catch_0
    move-exception v4

    goto :goto_1

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    .restart local v1       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CouponInfo;>;"
    goto :goto_1
.end method


# virtual methods
.method public getCanUsed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->canUsed:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->canUsed:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getCouponStyle()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->couponStyle:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCouponType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->couponType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDiscount()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->discount:Ljava/lang/Double;

    return-object v0
.end method

.method public getDiscountName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 325
    const-string v0, ""

    .line 327
    .local v0, result:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/common/entity/CouponInfo;->couponType:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/common/entity/CouponInfo;->couponType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jingdong/common/entity/CouponInfo;->discount:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\u6ee1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/common/entity/CouponInfo;->quota:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u51cf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/common/entity/CouponInfo;->discount:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    .line 330
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jingdong/common/entity/CouponInfo;->discount:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 255
    const-string v0, ""

    .line 257
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->key:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->Pin:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 244
    const-string v0, ""

    .line 246
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->Pin:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlatform()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->platform:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuota()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->quota:Ljava/lang/Float;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->scope:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 362
    const-string v0, ""

    .line 364
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->scope:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSelected()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->selected:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 351
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 353
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->selected:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getTimeBegin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->timeBegin:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeEnd()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 292
    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->timeEnd:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->timeEnd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 293
    iget-object v0, p0, Lcom/jingdong/common/entity/CouponInfo;->timeEnd:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimeEndShow()Ljava/lang/String;
    .locals 3

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/jingdong/common/entity/CouponInfo;->getTimeEnd()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, endTime:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    const-string v1, ""

    .line 303
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u5230\u671f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isModify()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/jingdong/common/entity/CouponInfo;->isModify:Z

    return v0
.end method

.method public setCanUsed(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "canUsed"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/jingdong/common/entity/CouponInfo;->canUsed:Ljava/lang/Boolean;

    .line 273
    return-void
.end method

.method public setCouponStyle(Ljava/lang/Integer;)V
    .locals 0
    .parameter "couponStyle"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/jingdong/common/entity/CouponInfo;->couponStyle:Ljava/lang/Integer;

    .line 281
    return-void
.end method

.method public setCouponType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "couponType"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/jingdong/common/entity/CouponInfo;->couponType:Ljava/lang/Integer;

    .line 317
    return-void
.end method

.method public setDiscount(Ljava/lang/Double;)V
    .locals 0
    .parameter "discount"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/jingdong/common/entity/CouponInfo;->discount:Ljava/lang/Double;

    .line 393
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 376
    iput-object p1, p0, Lcom/jingdong/common/entity/CouponInfo;->id:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/jingdong/common/entity/CouponInfo;->key:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setModify(Z)V
    .locals 0
    .parameter "isModify"

    .prologue
    .line 400
    iput-boolean p1, p0, Lcom/jingdong/common/entity/CouponInfo;->isModify:Z

    .line 401
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0
    .parameter "pin"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/jingdong/common/entity/CouponInfo;->Pin:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setPlatform(Ljava/lang/Integer;)V
    .locals 0
    .parameter "platform"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/jingdong/common/entity/CouponInfo;->platform:Ljava/lang/Integer;

    .line 385
    return-void
.end method

.method public setQuota(Ljava/lang/Float;)V
    .locals 0
    .parameter "quota"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/jingdong/common/entity/CouponInfo;->quota:Ljava/lang/Float;

    .line 347
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .parameter "scope"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/jingdong/common/entity/CouponInfo;->scope:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public setSelected(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/jingdong/common/entity/CouponInfo;->selected:Ljava/lang/Boolean;

    .line 358
    return-void
.end method

.method public setTimeBegin(Ljava/lang/String;)V
    .locals 0
    .parameter "timeBegin"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/jingdong/common/entity/CouponInfo;->timeBegin:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setTimeEnd(Ljava/lang/String;)V
    .locals 0
    .parameter "timeEnd"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/jingdong/common/entity/CouponInfo;->timeEnd:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public toOrderJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 227
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 230
    .local v0, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "Id"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/CouponInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v1, "Key"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/CouponInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string v1, "Selected"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/CouponInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-object v0

    .line 234
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public update(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 1
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 70
    packed-switch p2, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 72
    :pswitch_0
    const-string v0, "platform"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CouponInfo;->setPlatform(Ljava/lang/Integer;)V

    .line 73
    const-string v0, "Quota"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CouponInfo;->setQuota(Ljava/lang/Float;)V

    .line 74
    const-string v0, "Pin"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CouponInfo;->setPin(Ljava/lang/String;)V

    .line 75
    const-string v0, "scope"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CouponInfo;->setScope(Ljava/lang/String;)V

    .line 76
    const-string v0, "Key"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CouponInfo;->setKey(Ljava/lang/String;)V

    .line 77
    const-string v0, "CouponType"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CouponInfo;->setCouponType(Ljava/lang/Integer;)V

    .line 78
    const-string v0, "CanUsed"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CouponInfo;->setCanUsed(Ljava/lang/Boolean;)V

    .line 79
    const-string v0, "Selected"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CouponInfo;->setSelected(Ljava/lang/Boolean;)V

    .line 80
    const-string v0, "TimeBegin"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CouponInfo;->setTimeBegin(Ljava/lang/String;)V

    .line 81
    const-string v0, "Discount"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CouponInfo;->setDiscount(Ljava/lang/Double;)V

    .line 82
    const-string v0, "Id"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CouponInfo;->setId(Ljava/lang/String;)V

    .line 83
    const-string v0, "CouponStyle"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CouponInfo;->setCouponStyle(Ljava/lang/Integer;)V

    .line 84
    const-string v0, "TimeEnd"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CouponInfo;->setTimeEnd(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
