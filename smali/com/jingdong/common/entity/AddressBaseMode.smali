.class public Lcom/jingdong/common/entity/AddressBaseMode;
.super Ljava/lang/Object;
.source "AddressBaseMode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DIRECT_WARE:I = 0x0

.field private static final serialVersionUID:J = -0x238c42ba62a7bb17L


# instance fields
.field private action:Ljava/lang/String;

.field private flag:Ljava/lang/String;

.field private functionId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private skuId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I[Ljava/lang/Object;)V
    .locals 1
    .parameter "jsonObject"
    .parameter "functionId"
    .parameter "varargs"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    packed-switch p2, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 36
    :pswitch_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/AddressBaseMode;->setId(Ljava/lang/String;)V

    .line 37
    const-string v0, "flag"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/AddressBaseMode;->setFlag(Ljava/lang/String;)V

    .line 38
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/AddressBaseMode;->setName(Ljava/lang/String;)V

    .line 39
    const-string v0, "action"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/AddressBaseMode;->setAction(Ljava/lang/String;)V

    .line 40
    const-string v0, "skuId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/AddressBaseMode;->setSkuId(Ljava/lang/String;)V

    .line 41
    const-string v0, "functionId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/AddressBaseMode;->setFunctionId(Ljava/lang/String;)V

    goto :goto_0

    .line 33
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
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/jingdong/common/entity/AddressBaseMode;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I[Ljava/lang/Object;)Ljava/util/ArrayList;

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
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/AddressBaseMode;>;"
    if-nez p0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-object v3

    .line 62
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 63
    new-instance v0, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {p0, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v0, v4, p1, p2}, Lcom/jingdong/common/entity/AddressBaseMode;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I[Ljava/lang/Object;)V

    .line 64
    .local v0, base:Lcom/jingdong/common/entity/AddressBaseMode;
    invoke-virtual {v0}, Lcom/jingdong/common/entity/AddressBaseMode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 65
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    .end local v0           #base:Lcom/jingdong/common/entity/AddressBaseMode;
    :catch_0
    move-exception v1

    .line 70
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jingdong/common/entity/AddressBaseMode;->action:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, ""

    .line 114
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/AddressBaseMode;->action:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jingdong/common/entity/AddressBaseMode;->flag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, ""

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/AddressBaseMode;->flag:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFunctionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/jingdong/common/entity/AddressBaseMode;->functionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, ""

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/AddressBaseMode;->functionId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jingdong/common/entity/AddressBaseMode;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, ""

    .line 81
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/AddressBaseMode;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jingdong/common/entity/AddressBaseMode;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, ""

    .line 103
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/AddressBaseMode;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSkuId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jingdong/common/entity/AddressBaseMode;->skuId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string v0, ""

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/AddressBaseMode;->skuId:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/jingdong/common/entity/AddressBaseMode;->action:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/jingdong/common/entity/AddressBaseMode;->flag:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setFunctionId(Ljava/lang/String;)V
    .locals 0
    .parameter "functionId"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/jingdong/common/entity/AddressBaseMode;->functionId:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/jingdong/common/entity/AddressBaseMode;->id:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/jingdong/common/entity/AddressBaseMode;->name:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setSkuId(Ljava/lang/String;)V
    .locals 0
    .parameter "skuId"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/jingdong/common/entity/AddressBaseMode;->skuId:Ljava/lang/String;

    .line 130
    return-void
.end method
