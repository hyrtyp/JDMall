.class public Lcom/jingdong/common/entity/FloorDetailsResult;
.super Ljava/lang/Object;
.source "FloorDetailsResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;,
        Lcom/jingdong/common/entity/FloorDetailsResult$FloorModel;
    }
.end annotation


# instance fields
.field public code:I

.field public floorCnt:I

.field public floorModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/FloorDetailsResult$FloorModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v7, -0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v7, p0, Lcom/jingdong/common/entity/FloorDetailsResult;->code:I

    .line 26
    const/4 v6, 0x0

    iput v6, p0, Lcom/jingdong/common/entity/FloorDetailsResult;->floorCnt:I

    .line 35
    if-eqz p1, :cond_0

    .line 37
    :try_start_0
    const-string v6, "code"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/jingdong/common/entity/FloorDetailsResult;->code:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    const-string v6, "floorCnt"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/jingdong/common/entity/FloorDetailsResult;->floorCnt:I

    .line 43
    iget v6, p0, Lcom/jingdong/common/entity/FloorDetailsResult;->floorCnt:I

    if-lez v6, :cond_0

    .line 44
    new-instance v6, Ljava/util/ArrayList;

    iget v7, p0, Lcom/jingdong/common/entity/FloorDetailsResult;->floorCnt:I

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/jingdong/common/entity/FloorDetailsResult;->floorModels:Ljava/util/ArrayList;

    .line 45
    const-string v6, "modelFloorList"

    invoke-virtual {p1, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 46
    .local v4, jsonArray:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 47
    .local v5, length:I
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 48
    iput v5, p0, Lcom/jingdong/common/entity/FloorDetailsResult;->floorCnt:I

    .line 50
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    iget v6, p0, Lcom/jingdong/common/entity/FloorDetailsResult;->floorCnt:I

    if-lt v2, v6, :cond_1

    .line 60
    .end local v2           #index:I
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    .end local v5           #length:I
    :cond_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Lorg/json/JSONException;
    iput v7, p0, Lcom/jingdong/common/entity/FloorDetailsResult;->code:I

    goto :goto_0

    .line 51
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v2       #index:I
    .restart local v4       #jsonArray:Lorg/json/JSONArray;
    .restart local v5       #length:I
    :cond_1
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 52
    .local v3, jo:Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 53
    new-instance v1, Lcom/jingdong/common/entity/FloorDetailsResult$FloorModel;

    invoke-direct {v1, p0, v3}, Lcom/jingdong/common/entity/FloorDetailsResult$FloorModel;-><init>(Lcom/jingdong/common/entity/FloorDetailsResult;Lorg/json/JSONObject;)V

    .line 54
    .local v1, fm:Lcom/jingdong/common/entity/FloorDetailsResult$FloorModel;
    iget-object v6, p0, Lcom/jingdong/common/entity/FloorDetailsResult;->floorModels:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v1           #fm:Lcom/jingdong/common/entity/FloorDetailsResult$FloorModel;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public hasDetails()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/jingdong/common/entity/FloorDetailsResult;->code:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jingdong/common/entity/FloorDetailsResult;->floorCnt:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
