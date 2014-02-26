.class public Lcom/jingdong/common/entity/cart/CartPackSummary;
.super Ljava/lang/Object;
.source "CartPackSummary.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x40280df129530deL


# instance fields
.field protected gifts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<-",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;"
        }
    .end annotation
.end field

.field protected num:Ljava/lang/Integer;

.field protected packId:Ljava/lang/String;

.field protected sType:Ljava/lang/String;

.field protected skus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<-",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;"
        }
    .end annotation
.end field

.field protected ybPackId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->gifts:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->skus:Ljava/util/ArrayList;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->sType:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .parameter "packId"
    .parameter "num"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->gifts:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->skus:Ljava/util/ArrayList;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->sType:Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->packId:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->num:Ljava/lang/Integer;

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .parameter "packId"
    .parameter "num"
    .parameter "sType"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    iput-object p3, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->sType:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .parameter "packId"
    .parameter "num"
    .parameter
    .parameter "sType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p3, gifts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    invoke-direct {p0, p1, p2}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    iput-object p3, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->gifts:Ljava/util/ArrayList;

    .line 98
    iput-object p4, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->sType:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .parameter "packId"
    .parameter "ybPackId"
    .parameter "num"
    .parameter "sType"

    .prologue
    .line 83
    invoke-direct {p0, p1, p3}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    iput-object p2, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->ybPackId:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->sType:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public addGift(Lcom/jingdong/common/entity/cart/CartSkuSummary;)V
    .locals 1
    .parameter "gift"

    .prologue
    .line 158
    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    return-void
.end method

.method public addSku(Lcom/jingdong/common/entity/cart/CartSkuSummary;)V
    .locals 1
    .parameter "sku"

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->skus:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_0
    return-void
.end method

.method public getGifts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<-",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->gifts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNum()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->num:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->num:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getPackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->packId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 122
    const-string v0, ""

    .line 124
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->packId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSkus()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<-",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->skus:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getYbPackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->ybPackId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 187
    const-string v0, ""

    .line 189
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->ybPackId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->sType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 144
    const-string v0, ""

    .line 146
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->sType:Ljava/lang/String;

    goto :goto_0
.end method

.method public setGifts(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<-",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, gifts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<-Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->gifts:Ljava/util/ArrayList;

    .line 155
    return-void
.end method

.method public setNum(Ljava/lang/Integer;)V
    .locals 0
    .parameter "num"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->num:Ljava/lang/Integer;

    .line 140
    return-void
.end method

.method public setPackId(Ljava/lang/String;)V
    .locals 0
    .parameter "packId"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->packId:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setSkus(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<-",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, skus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<-Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->skus:Ljava/util/ArrayList;

    .line 175
    return-void
.end method

.method public setYbPackId(Ljava/lang/String;)V
    .locals 0
    .parameter "ybPackId"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->ybPackId:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setsType(Ljava/lang/String;)V
    .locals 0
    .parameter "sType"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->sType:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public toPack()Lcom/jingdong/common/entity/Pack;
    .locals 3

    .prologue
    .line 193
    new-instance v0, Lcom/jingdong/common/entity/Pack;

    invoke-direct {v0}, Lcom/jingdong/common/entity/Pack;-><init>()V

    .line 195
    .local v0, pack:Lcom/jingdong/common/entity/Pack;
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->packId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/Pack;->setId(Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->num:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/Pack;->setNum(Ljava/lang/Integer;)V

    .line 203
    return-object v0

    .line 196
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartPackSummary [packId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->packId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->num:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gifts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->skus:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->sType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSummaryParams()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 214
    .local v1, proxy:Lorg/json/JSONObject;
    const-string v3, "Id"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getPackId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    invoke-virtual {p0}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getYbPackId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    const-string v3, "ybPackId"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getYbPackId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    :cond_0
    const-string v3, "num"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getNum()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v3, ""

    invoke-virtual {p0}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getsType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getsType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "16"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->skus:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->skus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 221
    const-string v3, "sType"

    const-string v4, "13"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 227
    .local v0, packsProxy:Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->gifts:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 228
    new-instance v0, Lorg/json/JSONArray;

    .end local v0           #packsProxy:Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 229
    .restart local v0       #packsProxy:Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 233
    :cond_2
    iget-object v3, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->skus:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->skus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 234
    if-nez v0, :cond_3

    .line 235
    new-instance v0, Lorg/json/JSONArray;

    .end local v0           #packsProxy:Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 237
    .restart local v0       #packsProxy:Lorg/json/JSONArray;
    :cond_3
    iget-object v3, p0, Lcom/jingdong/common/entity/cart/CartPackSummary;->skus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    .line 241
    :cond_4
    if-eqz v0, :cond_5

    .line 242
    const-string v3, "TheSkus"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    :cond_5
    return-object v1

    .line 223
    .end local v0           #packsProxy:Lorg/json/JSONArray;
    :cond_6
    const-string v3, "sType"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getsType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 229
    .restart local v0       #packsProxy:Lorg/json/JSONArray;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 230
    .local v2, summary:Ljava/lang/Object;
    check-cast v2, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    .end local v2           #summary:Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->toSummaryParams()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 237
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 238
    .restart local v2       #summary:Ljava/lang/Object;
    check-cast v2, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    .end local v2           #summary:Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->toSummaryParams()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2
.end method
