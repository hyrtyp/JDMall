.class public Lcom/jingdong/common/entity/GiftCartInfo;
.super Ljava/lang/Object;
.source "GiftCartInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final GET_GIFT_CART:I = 0x1

.field private static final serialVersionUID:J = 0x39918ab5be1a2fdbL


# instance fields
.field private discount:Ljava/lang/Double;

.field private discountBind:Ljava/lang/Integer;

.field private discountCurUsed:Ljava/lang/Double;

.field private discountUsed:Ljava/lang/Double;

.field private id:Ljava/lang/String;

.field private isModify:Z

.field private key:Ljava/lang/String;

.field private leaveMoney:Ljava/lang/Double;

.field private pin:Ljava/lang/String;

.field private selected:Ljava/lang/Boolean;

.field private timeBegin:Ljava/lang/String;

.field private timeEnd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 0
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/jingdong/common/entity/GiftCartInfo;->update(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 48
    return-void
.end method

.method public static lookupSelectedForList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/GiftCartInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/GiftCartInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v1, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    if-nez p0, :cond_1

    .line 100
    :cond_0
    return-object v1

    .line 95
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

    check-cast v0, Lcom/jingdong/common/entity/GiftCartInfo;

    .line 96
    .local v0, info:Lcom/jingdong/common/entity/GiftCartInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jingdong/common/entity/GiftCartInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
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
            "Lcom/jingdong/common/entity/GiftCartInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/GiftCartInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v1, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    if-nez p0, :cond_1

    .line 118
    :cond_0
    return-object v1

    .line 113
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

    check-cast v0, Lcom/jingdong/common/entity/GiftCartInfo;

    .line 114
    .local v0, info:Lcom/jingdong/common/entity/GiftCartInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jingdong/common/entity/GiftCartInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/jingdong/common/entity/GiftCartInfo;->isModify()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
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
            "Lcom/jingdong/common/entity/GiftCartInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v2, 0x0

    .line 71
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    move-object v2, v3

    .line 81
    .end local v1           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    :goto_1
    return-object v2

    .line 73
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    .restart local v1       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    :cond_0
    new-instance v0, Lcom/jingdong/common/entity/GiftCartInfo;

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v0, v4, p1}, Lcom/jingdong/common/entity/GiftCartInfo;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 74
    .local v0, couponGiftInfo:Lcom/jingdong/common/entity/GiftCartInfo;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v0           #couponGiftInfo:Lcom/jingdong/common/entity/GiftCartInfo;
    .end local v1           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    :catch_0
    move-exception v4

    goto :goto_1

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    .restart local v1       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/GiftCartInfo;>;"
    goto :goto_1
.end method


# virtual methods
.method public getDiscount()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/jingdong/common/entity/GiftCartInfo;->discount:Ljava/lang/Double;

    return-object v0
.end method

.method public getDiscountBind()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/jingdong/common/entity/GiftCartInfo;->discountBind:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDiscountCurUsed()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/jingdong/common/entity/GiftCartInfo;->discountCurUsed:Ljava/lang/Double;

    return-object v0
.end method

.method public getDiscountName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    const-string v0, ""

    .line 128
    .local v0, result:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jingdong/common/entity/GiftCartInfo;->discount:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 129
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getDiscountUsed()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/jingdong/common/entity/GiftCartInfo;->discountUsed:Ljava/lang/Double;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/jingdong/common/entity/GiftCartInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/jingdong/common/entity/GiftCartInfo;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 183
    const-string v0, ""

    .line 185
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/GiftCartInfo;->key:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLeaveMoney()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/jingdong/common/entity/GiftCartInfo;->leaveMoney:Ljava/lang/Double;

    return-object v0
.end method

.method public getLeaveMoneyShow()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/jingdong/common/entity/GiftCartInfo;->leaveMoney:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jingdong/common/entity/GiftCartInfo;->leaveMoney:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5143"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/jingdong/common/entity/GiftCartInfo;->pin:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 172
    const-string v0, ""

    .line 174
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/GiftCartInfo;->pin:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSelected()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/jingdong/common/entity/GiftCartInfo;->selected:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/GiftCartInfo;->selected:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getTimeBegin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/jingdong/common/entity/GiftCartInfo;->timeBegin:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeEnd()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 260
    iget-object v0, p0, Lcom/jingdong/common/entity/GiftCartInfo;->timeEnd:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/GiftCartInfo;->timeEnd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 261
    iget-object v0, p0, Lcom/jingdong/common/entity/GiftCartInfo;->timeEnd:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimeEndShow()Ljava/lang/String;
    .locals 3

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/jingdong/common/entity/GiftCartInfo;->getTimeEnd()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, endTime:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    const-string v1, ""

    .line 271
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
    .line 280
    iget-boolean v0, p0, Lcom/jingdong/common/entity/GiftCartInfo;->isModify:Z

    return v0
.end method

.method public setDiscount(Ljava/lang/Double;)V
    .locals 0
    .parameter "discount"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/jingdong/common/entity/GiftCartInfo;->discount:Ljava/lang/Double;

    .line 241
    return-void
.end method

.method public setDiscountBind(Ljava/lang/Integer;)V
    .locals 0
    .parameter "discountBind"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/jingdong/common/entity/GiftCartInfo;->discountBind:Ljava/lang/Integer;

    .line 168
    return-void
.end method

.method public setDiscountCurUsed(Ljava/lang/Double;)V
    .locals 0
    .parameter "discountCurUsed"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/jingdong/common/entity/GiftCartInfo;->discountCurUsed:Ljava/lang/Double;

    .line 257
    return-void
.end method

.method public setDiscountUsed(Ljava/lang/Double;)V
    .locals 0
    .parameter "discountUsed"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/jingdong/common/entity/GiftCartInfo;->discountUsed:Ljava/lang/Double;

    .line 198
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/jingdong/common/entity/GiftCartInfo;->id:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/jingdong/common/entity/GiftCartInfo;->key:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setLeaveMoney(Ljava/lang/Double;)V
    .locals 0
    .parameter "leaveMoney"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/jingdong/common/entity/GiftCartInfo;->leaveMoney:Ljava/lang/Double;

    .line 214
    return-void
.end method

.method public setModify(Z)V
    .locals 0
    .parameter "isModify"

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/jingdong/common/entity/GiftCartInfo;->isModify:Z

    .line 285
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0
    .parameter "pin"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/jingdong/common/entity/GiftCartInfo;->pin:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setSelected(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/jingdong/common/entity/GiftCartInfo;->selected:Ljava/lang/Boolean;

    .line 225
    return-void
.end method

.method public setTimeBegin(Ljava/lang/String;)V
    .locals 0
    .parameter "timeBegin"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/jingdong/common/entity/GiftCartInfo;->timeBegin:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setTimeEnd(Ljava/lang/String;)V
    .locals 0
    .parameter "timeEnd"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/jingdong/common/entity/GiftCartInfo;->timeEnd:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public toOrderJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 143
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 146
    .local v0, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "Id"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/GiftCartInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v1, "Key"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/GiftCartInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v1, "Selected"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/GiftCartInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v1, "DiscountUsed"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/GiftCartInfo;->getDiscountUsed()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v1, "DiscountBind"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/GiftCartInfo;->getDiscountBind()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v1, "DiscountCurUsed"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/GiftCartInfo;->getDiscountCurUsed()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-object v0

    .line 154
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public update(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 1
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 51
    packed-switch p2, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 53
    :pswitch_0
    const-string v0, "DiscountBind"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/GiftCartInfo;->setDiscountBind(Ljava/lang/Integer;)V

    .line 54
    const-string v0, "Pin"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/GiftCartInfo;->setPin(Ljava/lang/String;)V

    .line 55
    const-string v0, "Key"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/GiftCartInfo;->setKey(Ljava/lang/String;)V

    .line 56
    const-string v0, "DiscountUsed"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/GiftCartInfo;->setDiscountUsed(Ljava/lang/Double;)V

    .line 57
    const-string v0, "LeaveMoney"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/GiftCartInfo;->setLeaveMoney(Ljava/lang/Double;)V

    .line 58
    const-string v0, "Selected"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/GiftCartInfo;->setSelected(Ljava/lang/Boolean;)V

    .line 59
    const-string v0, "TimeBegin"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/GiftCartInfo;->setTimeBegin(Ljava/lang/String;)V

    .line 60
    const-string v0, "Discount"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/GiftCartInfo;->setDiscount(Ljava/lang/Double;)V

    .line 61
    const-string v0, "Id"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/GiftCartInfo;->setId(Ljava/lang/String;)V

    .line 62
    const-string v0, "DiscountCurUsed"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/GiftCartInfo;->setDiscountCurUsed(Ljava/lang/Double;)V

    .line 63
    const-string v0, "TimeEnd"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/GiftCartInfo;->setTimeEnd(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
