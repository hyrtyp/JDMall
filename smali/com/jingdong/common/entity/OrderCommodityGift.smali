.class public Lcom/jingdong/common/entity/OrderCommodityGift;
.super Ljava/lang/Object;
.source "OrderCommodityGift.java"


# static fields
.field private static final SYMBOL_BRACKET_LEFT:Ljava/lang/String; = "("

.field private static final SYMBOL_BRACKET_RIGHT:Ljava/lang/String; = ")"


# instance fields
.field public desc:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public num:Ljava/lang/String;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    :try_start_0
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/OrderCommodityGift;->setId(Ljava/lang/String;)V

    .line 44
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/OrderCommodityGift;->setName(Ljava/lang/String;)V

    .line 45
    const-string v1, "num"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/OrderCommodityGift;->setNum(Ljava/lang/String;)V

    .line 46
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/OrderCommodityGift;->setType(Ljava/lang/Integer;)V

    .line 47
    const-string v1, "desc"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/OrderCommodityGift;->setDesc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
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
            "Lcom/jingdong/common/entity/OrderCommodityGift;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/OrderCommodityGift;>;"
    if-nez p0, :cond_1

    .line 65
    :cond_0
    return-object v3

    .line 58
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 59
    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 60
    .local v2, jObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v2, :cond_2

    .line 61
    new-instance v0, Lcom/jingdong/common/entity/OrderCommodityGift;

    invoke-direct {v0, v2}, Lcom/jingdong/common/entity/OrderCommodityGift;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 62
    .local v0, gift:Lcom/jingdong/common/entity/OrderCommodityGift;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v0           #gift:Lcom/jingdong/common/entity/OrderCommodityGift;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodityGift;->desc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, ""

    .line 116
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/OrderCommodityGift;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodityGift;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 70
    const-string v0, ""

    .line 72
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodityGift;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodityGift;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 81
    const-string v0, ""

    .line 83
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodityGift;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodityGift;->num:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 103
    const-string v0, ""

    .line 105
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodityGift;->num:Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodityGift;->type:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 92
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/OrderCommodityGift;->type:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderCommodityGift;->desc:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderCommodityGift;->id:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderCommodityGift;->name:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setNum(Ljava/lang/String;)V
    .locals 0
    .parameter "num"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderCommodityGift;->num:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/jingdong/common/entity/OrderCommodityGift;->type:Ljava/lang/Integer;

    .line 99
    return-void
.end method
