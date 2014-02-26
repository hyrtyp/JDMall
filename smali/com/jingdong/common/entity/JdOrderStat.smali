.class public Lcom/jingdong/common/entity/JdOrderStat;
.super Ljava/lang/Object;
.source "JdOrderStat.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private count:Ljava/lang/String;

.field private functionId:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    :try_start_0
    const-string v1, "icon"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JdOrderStat;->setIcon(Ljava/lang/String;)V

    .line 30
    const-string v1, "functionId"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JdOrderStat;->setFunctionId(Ljava/lang/String;)V

    .line 31
    const-string v1, "count"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JdOrderStat;->setCount(Ljava/lang/String;)V

    .line 32
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JdOrderStat;->setUrl(Ljava/lang/String;)V

    .line 33
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/JdOrderStat;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

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
            "Lcom/jingdong/common/entity/JdOrderStat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    const/4 v2, 0x0

    .line 95
    :goto_0
    return-object v2

    .line 83
    :cond_0
    const/4 v2, 0x0

    .line 85
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdOrderStat;>;"
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdOrderStat;>;"
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdOrderStat;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v0, v4, :cond_1

    move-object v2, v3

    .line 90
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdOrderStat;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdOrderStat;>;"
    goto :goto_0

    .line 87
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdOrderStat;>;"
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdOrderStat;>;"
    :cond_1
    new-instance v1, Lcom/jingdong/common/entity/JdOrderStat;

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/jingdong/common/entity/JdOrderStat;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 88
    .local v1, jdOrderStat:Lcom/jingdong/common/entity/JdOrderStat;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    .end local v0           #i:I
    .end local v1           #jdOrderStat:Lcom/jingdong/common/entity/JdOrderStat;
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdOrderStat;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdOrderStat;>;"
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdOrderStat;>;"
    .restart local v0       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdOrderStat;>;"
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdOrderStat;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdOrderStat;>;"
    goto :goto_0
.end method


# virtual methods
.method public getCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jingdong/common/entity/JdOrderStat;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getFunctionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jingdong/common/entity/JdOrderStat;->functionId:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jingdong/common/entity/JdOrderStat;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jingdong/common/entity/JdOrderStat;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jingdong/common/entity/JdOrderStat;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0
    .parameter "count"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/jingdong/common/entity/JdOrderStat;->count:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setFunctionId(Ljava/lang/String;)V
    .locals 0
    .parameter "functionId"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/jingdong/common/entity/JdOrderStat;->functionId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/jingdong/common/entity/JdOrderStat;->icon:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jingdong/common/entity/JdOrderStat;->name:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/jingdong/common/entity/JdOrderStat;->url:Ljava/lang/String;

    .line 69
    return-void
.end method
