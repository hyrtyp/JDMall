.class public Lcom/jingdong/common/entity/WareType;
.super Ljava/lang/Object;
.source "WareType.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private description:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private needDrawRect:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 1
    .parameter "jsonObject"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/WareType;->name:Ljava/lang/String;

    .line 30
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/WareType;->description:Ljava/lang/String;

    .line 31
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/WareType;->iconUrl:Ljava/lang/String;

    .line 32
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/WareType;->type:Ljava/lang/String;

    .line 33
    const-string v0, "needDrawRect"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/WareType;->needDrawRect:Ljava/lang/String;

    .line 34
    return-void
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
            "Lcom/jingdong/common/entity/WareType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 v2, 0x0

    .line 92
    :goto_0
    return-object v2

    .line 80
    :cond_0
    const/4 v2, 0x0

    .line 82
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/WareType;>;"
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/WareType;>;"
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/WareType;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v1, v4, :cond_1

    move-object v2, v3

    .line 87
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/WareType;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/WareType;>;"
    goto :goto_0

    .line 84
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/WareType;>;"
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/WareType;>;"
    :cond_1
    new-instance v0, Lcom/jingdong/common/entity/WareType;

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/jingdong/common/entity/WareType;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 85
    .local v0, commercial:Lcom/jingdong/common/entity/WareType;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    .end local v0           #commercial:Lcom/jingdong/common/entity/WareType;
    .end local v1           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/WareType;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/WareType;>;"
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/WareType;>;"
    .restart local v1       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/WareType;>;"
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/WareType;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/WareType;>;"
    goto :goto_0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jingdong/common/entity/WareType;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jingdong/common/entity/WareType;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jingdong/common/entity/WareType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedDrawRect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jingdong/common/entity/WareType;->needDrawRect:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jingdong/common/entity/WareType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/jingdong/common/entity/WareType;->description:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "iconUrl"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/jingdong/common/entity/WareType;->iconUrl:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/jingdong/common/entity/WareType;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setNeedDrawRect(Ljava/lang/String;)V
    .locals 0
    .parameter "needDrawRect"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/jingdong/common/entity/WareType;->needDrawRect:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/jingdong/common/entity/WareType;->type:Ljava/lang/String;

    .line 66
    return-void
.end method
