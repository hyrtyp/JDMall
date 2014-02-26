.class public Lcom/jingdong/common/entity/MiaoSha;
.super Ljava/lang/Object;
.source "MiaoSha.java"


# instance fields
.field private endRemainTime:Ljava/lang/Long;

.field private startRemainTime:Ljava/lang/Long;

.field private wareInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/MiaoSha;->wareInfoList:Ljava/util/List;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jingdong/common/entity/MiaoSha;->wareInfoList:Ljava/util/List;

    .line 31
    const-string v1, "startRemainTime"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/MiaoSha;->setStartRemainTime(Ljava/lang/Long;)V

    .line 32
    const-string v1, "endRemainTime"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/MiaoSha;->setEndRemainTime(Ljava/lang/Long;)V

    .line 33
    const-string v1, "wareInfoList"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 34
    .local v0, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/MiaoSha;->setWareInfoList(Ljava/util/List;)V

    .line 35
    return-void
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;
    .locals 6
    .parameter "jsonArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/MiaoSha;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v2, 0x0

    .line 84
    :goto_0
    return-object v2

    .line 70
    :cond_0
    const/4 v2, 0x0

    .line 74
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/MiaoSha;>;"
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/MiaoSha;>;"
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/MiaoSha;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lt v1, v5, :cond_1

    move-object v2, v3

    .line 80
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/MiaoSha;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/MiaoSha;>;"
    goto :goto_0

    .line 76
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/MiaoSha;>;"
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/MiaoSha;>;"
    :cond_1
    new-instance v4, Lcom/jingdong/common/entity/MiaoSha;

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jingdong/common/entity/MiaoSha;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 77
    .local v4, ms:Lcom/jingdong/common/entity/MiaoSha;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    .end local v1           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/MiaoSha;>;"
    .end local v4           #ms:Lcom/jingdong/common/entity/MiaoSha;
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/MiaoSha;>;"
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/MiaoSha;>;"
    .restart local v1       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/MiaoSha;>;"
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/MiaoSha;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/MiaoSha;>;"
    goto :goto_2
.end method


# virtual methods
.method public getEndRemainTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jingdong/common/entity/MiaoSha;->endRemainTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getStartRemainTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jingdong/common/entity/MiaoSha;->startRemainTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getWareInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jingdong/common/entity/MiaoSha;->wareInfoList:Ljava/util/List;

    return-object v0
.end method

.method public setEndRemainTime(Ljava/lang/Long;)V
    .locals 4
    .parameter "endRemainTime"

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/MiaoSha;->endRemainTime:Ljava/lang/Long;

    .line 56
    return-void
.end method

.method public setStartRemainTime(Ljava/lang/Long;)V
    .locals 4
    .parameter "startRemainTime"

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/MiaoSha;->startRemainTime:Ljava/lang/Long;

    .line 46
    return-void
.end method

.method public setWareInfoList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, wareInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Product;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/MiaoSha;->wareInfoList:Ljava/util/List;

    .line 62
    return-void
.end method
