.class public Lcom/jingdong/common/entity/JDColorProductModel;
.super Ljava/lang/Object;
.source "JDColorProductModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cateId:Ljava/lang/String;

.field private colorValue:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    :try_start_0
    const-string v1, "wareId"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JDColorProductModel;->setId(Ljava/lang/String;)V

    .line 27
    const-string v1, "imageUrl"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JDColorProductModel;->setImageUrl(Ljava/lang/String;)V

    .line 28
    const-string v1, "cateId"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JDColorProductModel;->setCateId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V
    .locals 2
    .parameter "jsonObject"
    .parameter "colorValue"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    :try_start_0
    const-string v1, "wareId"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JDColorProductModel;->setId(Ljava/lang/String;)V

    .line 38
    const-string v1, "imageUrl"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JDColorProductModel;->setImageUrl(Ljava/lang/String;)V

    .line 39
    const-string v1, "cateId"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JDColorProductModel;->setCateId(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/jingdong/common/entity/JDColorProductModel;->setColorValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
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
            "Lcom/jingdong/common/entity/JDColorProductModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDColorProductModel;>;"
    if-nez p0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object v3

    .line 103
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 104
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 105
    .local v1, jObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v1, :cond_2

    .line 106
    new-instance v2, Lcom/jingdong/common/entity/JDColorProductModel;

    invoke-direct {v2, v1}, Lcom/jingdong/common/entity/JDColorProductModel;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 107
    .local v2, jdOrderStat:Lcom/jingdong/common/entity/JDColorProductModel;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v2           #jdOrderStat:Lcom/jingdong/common/entity/JDColorProductModel;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    .end local v1           #jObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "jsonArray"
    .parameter "colorValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/JDColorProductModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDColorProductModel;>;"
    if-nez p0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-object v3

    .line 125
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 127
    .local v1, jObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v1, :cond_2

    .line 128
    new-instance v2, Lcom/jingdong/common/entity/JDColorProductModel;

    invoke-direct {v2, v1, p1}, Lcom/jingdong/common/entity/JDColorProductModel;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)V

    .line 129
    .local v2, jdOrderStat:Lcom/jingdong/common/entity/JDColorProductModel;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v2           #jdOrderStat:Lcom/jingdong/common/entity/JDColorProductModel;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    .end local v1           #jObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public getCateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jingdong/common/entity/JDColorProductModel;->cateId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, ""

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/JDColorProductModel;->cateId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getColorValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jingdong/common/entity/JDColorProductModel;->colorValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, ""

    .line 88
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/JDColorProductModel;->colorValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/common/entity/JDColorProductModel;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, ""

    .line 50
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/JDColorProductModel;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jingdong/common/entity/JDColorProductModel;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, ""

    .line 63
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/JDColorProductModel;->imageUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCateId(Ljava/lang/String;)V
    .locals 0
    .parameter "cateId"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/jingdong/common/entity/JDColorProductModel;->cateId:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setColorValue(Ljava/lang/String;)V
    .locals 0
    .parameter "colorValue"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/jingdong/common/entity/JDColorProductModel;->colorValue:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "wareId"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/jingdong/common/entity/JDColorProductModel;->id:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imageUrl"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/jingdong/common/entity/JDColorProductModel;->imageUrl:Ljava/lang/String;

    .line 69
    return-void
.end method
