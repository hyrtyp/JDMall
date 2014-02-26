.class public Lcom/jingdong/common/entity/JdGiftCard;
.super Ljava/lang/Object;
.source "JdGiftCard.java"


# static fields
.field public static final GIFT_CARD:I


# instance fields
.field private balance:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private faceValue:Ljava/lang/String;

.field private fromTime:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private scope:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 1
    .parameter "jsonObjectProxy"
    .parameter "functionId"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 34
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 36
    :pswitch_0
    const-string v0, "cardNo"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JdGiftCard;->setId(Ljava/lang/String;)V

    .line 37
    const-string v0, "faceValue"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JdGiftCard;->setFaceValue(Ljava/lang/String;)V

    .line 38
    const-string v0, "balance"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JdGiftCard;->setBalance(Ljava/lang/String;)V

    .line 39
    const-string v0, "fromTime"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JdGiftCard;->setFromTime(Ljava/lang/String;)V

    .line 40
    const-string v0, "endTime"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JdGiftCard;->setEndTime(Ljava/lang/String;)V

    .line 41
    const-string v0, "scope"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/JdGiftCard;->setScope(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static isAdd(Lcom/jingdong/common/entity/JdGiftCard;)Z
    .locals 1
    .parameter "jdGiftCard"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/jingdong/common/entity/JdGiftCard;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;
    .locals 5
    .parameter "jsonArrayPoxy"
    .parameter "functionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/JdGiftCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    if-nez p0, :cond_1

    .line 52
    const/4 v3, 0x0

    .line 67
    :cond_0
    :goto_0
    return-object v3

    .line 54
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdGiftCard;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 58
    new-instance v2, Lcom/jingdong/common/entity/JdGiftCard;

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v2, v4, p1}, Lcom/jingdong/common/entity/JdGiftCard;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 59
    .local v2, jdGiftCard:Lcom/jingdong/common/entity/JdGiftCard;
    invoke-static {v2}, Lcom/jingdong/common/entity/JdGiftCard;->isAdd(Lcom/jingdong/common/entity/JdGiftCard;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 60
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 63
    .end local v2           #jdGiftCard:Lcom/jingdong/common/entity/JdGiftCard;
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jingdong/common/entity/JdGiftCard;->balance:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 101
    const-string v0, ""

    .line 103
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/JdGiftCard;->balance:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jingdong/common/entity/JdGiftCard;->endTime:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 123
    const-string v0, ""

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/JdGiftCard;->endTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFaceValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jingdong/common/entity/JdGiftCard;->faceValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    const-string v0, ""

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/JdGiftCard;->faceValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFromTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jingdong/common/entity/JdGiftCard;->fromTime:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 112
    const-string v0, ""

    .line 114
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/JdGiftCard;->fromTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jingdong/common/entity/JdGiftCard;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 79
    const-string v0, ""

    .line 81
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/JdGiftCard;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/jingdong/common/entity/JdGiftCard;->scope:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 134
    const-string v0, ""

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/JdGiftCard;->scope:Ljava/lang/String;

    goto :goto_0
.end method

.method public setBalance(Ljava/lang/String;)V
    .locals 0
    .parameter "balance"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/jingdong/common/entity/JdGiftCard;->balance:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .parameter "endTime"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/jingdong/common/entity/JdGiftCard;->endTime:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setFaceValue(Ljava/lang/String;)V
    .locals 0
    .parameter "faceValue"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/jingdong/common/entity/JdGiftCard;->faceValue:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setFromTime(Ljava/lang/String;)V
    .locals 0
    .parameter "fromTime"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/jingdong/common/entity/JdGiftCard;->fromTime:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/jingdong/common/entity/JdGiftCard;->id:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .parameter "scope"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/jingdong/common/entity/JdGiftCard;->scope:Ljava/lang/String;

    .line 141
    return-void
.end method
