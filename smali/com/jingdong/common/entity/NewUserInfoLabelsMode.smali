.class public Lcom/jingdong/common/entity/NewUserInfoLabelsMode;
.super Ljava/lang/Object;
.source "NewUserInfoLabelsMode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DIRECT_LABELS:I = 0x0

.field private static final serialVersionUID:J = 0x12dc5443a48c8accL


# instance fields
.field private amount:Ljava/lang/Double;

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I[Ljava/lang/Object;)V
    .locals 2
    .parameter "jsonObject"
    .parameter "functionId"
    .parameter "varargs"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    packed-switch p2, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 65
    :pswitch_0
    const-string v0, "key"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->setKey(Ljava/lang/String;)V

    .line 66
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->setName(Ljava/lang/String;)V

    .line 68
    :try_start_0
    const-string v0, "amount"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->setAmount(Ljava/lang/Double;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0

    .line 62
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
            "Lcom/jingdong/common/entity/NewUserInfoLabelsMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I[Ljava/lang/Object;)Ljava/util/ArrayList;

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
            "Lcom/jingdong/common/entity/NewUserInfoLabelsMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/NewUserInfoLabelsMode;>;"
    if-nez p0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v3

    .line 94
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 95
    new-instance v0, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;

    invoke-virtual {p0, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v0, v4, p1, p2}, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I[Ljava/lang/Object;)V

    .line 96
    .local v0, base:Lcom/jingdong/common/entity/NewUserInfoLabelsMode;
    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 97
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 101
    .end local v0           #base:Lcom/jingdong/common/entity/NewUserInfoLabelsMode;
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAmount()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->amount:Ljava/lang/Double;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->name:Ljava/lang/String;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/Double;)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->amount:Ljava/lang/Double;

    .line 58
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string p1, ""

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->key:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/jingdong/common/entity/NewUserInfoLabelsMode;->name:Ljava/lang/String;

    .line 50
    return-void
.end method
