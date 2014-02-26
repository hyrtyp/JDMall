.class public Lcom/jingdong/common/entity/HomeFloorModel;
.super Ljava/lang/Object;
.source "HomeFloorModel.java"


# static fields
.field public static final TYPE_HOME_CAROUSEL_FIGURE:Ljava/lang/String; = "201"

.field public static final TYPE_HOME_FOOLR_MODEL_1:Ljava/lang/String; = "401"

.field public static final TYPE_HOME_FOOLR_MODEL_2:Ljava/lang/String; = "402"

.field public static final TYPE_HOME_FOOLR_MODEL_3:Ljava/lang/String; = "403"

.field public static final TYPE_HOME_FOOLR_MODEL_4:Ljava/lang/String; = "404"

.field public static final TYPE_HOME_FOOLR_MODEL_5:Ljava/lang/String; = "405"

.field public static final TYPE_HOME_ICON:Ljava/lang/String; = "101"

.field public static final TYPE_HOME_LIMIT_BUY:Ljava/lang/String; = "301"


# instance fields
.field private functionId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private params:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v0, "functionId"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/HomeFloorModel;->setFunctionId(Ljava/lang/String;)V

    .line 84
    const-string v0, "param"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/HomeFloorModel;->setParams(Ljava/lang/String;)V

    .line 85
    const-string v0, "templateType"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/HomeFloorModel;->setType(Ljava/lang/String;)V

    .line 86
    const-string v0, "floorIntro"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/HomeFloorModel;->setName(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;
    .locals 4
    .parameter "tempList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/HomeFloorModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeFloorModel;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 99
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 107
    .end local v1           #i:I
    :cond_0
    return-object v0

    .line 100
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 101
    .local v2, object:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v2, :cond_2

    .line 102
    new-instance v3, Lcom/jingdong/common/entity/HomeFloorModel;

    invoke-direct {v3, v2}, Lcom/jingdong/common/entity/HomeFloorModel;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getFunctionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorModel;->functionId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 113
    const-string v0, ""

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorModel;->functionId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorModel;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 135
    const-string v0, ""

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorModel;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorModel;->params:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 146
    const-string v0, ""

    .line 148
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorModel;->params:Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorModel;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 124
    const-string v0, ""

    .line 126
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/HomeFloorModel;->type:Ljava/lang/String;

    goto :goto_0
.end method

.method public setFunctionId(Ljava/lang/String;)V
    .locals 0
    .parameter "functionId"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeFloorModel;->functionId:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeFloorModel;->name:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setParams(Ljava/lang/String;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeFloorModel;->params:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/jingdong/common/entity/HomeFloorModel;->type:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HomeFloorModel [functionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/HomeFloorModel;->functionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/HomeFloorModel;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/HomeFloorModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/HomeFloorModel;->params:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
