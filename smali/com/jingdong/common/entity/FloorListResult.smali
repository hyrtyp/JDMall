.class public Lcom/jingdong/common/entity/FloorListResult;
.super Ljava/lang/Object;
.source "FloorListResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/entity/FloorListResult$Floor;
    }
.end annotation


# instance fields
.field public code:I

.field public floors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/FloorListResult$Floor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v6, p0, Lcom/jingdong/common/entity/FloorListResult;->code:I

    .line 27
    if-eqz p1, :cond_0

    .line 29
    :try_start_0
    const-string v5, "code"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/jingdong/common/entity/FloorListResult;->code:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/jingdong/common/entity/FloorListResult;->floors:Ljava/util/ArrayList;

    .line 35
    const-string v5, "floorList"

    invoke-virtual {p1, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 36
    .local v4, jsonArray:Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 37
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 46
    .end local v2           #index:I
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    :cond_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Lorg/json/JSONException;
    iput v6, p0, Lcom/jingdong/common/entity/FloorListResult;->code:I

    goto :goto_0

    .line 38
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v2       #index:I
    .restart local v4       #jsonArray:Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 39
    .local v3, jo:Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 40
    new-instance v1, Lcom/jingdong/common/entity/FloorListResult$Floor;

    invoke-direct {v1, p0, v3}, Lcom/jingdong/common/entity/FloorListResult$Floor;-><init>(Lcom/jingdong/common/entity/FloorListResult;Lorg/json/JSONObject;)V

    .line 41
    .local v1, floor:Lcom/jingdong/common/entity/FloorListResult$Floor;
    iget-object v5, p0, Lcom/jingdong/common/entity/FloorListResult;->floors:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .end local v1           #floor:Lcom/jingdong/common/entity/FloorListResult$Floor;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public hasFloor()Z
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/jingdong/common/entity/FloorListResult;->code:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/FloorListResult;->floors:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/FloorListResult;->floors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
