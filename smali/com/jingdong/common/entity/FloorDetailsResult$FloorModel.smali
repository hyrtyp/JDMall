.class public Lcom/jingdong/common/entity/FloorDetailsResult$FloorModel;
.super Ljava/lang/Object;
.source "FloorDetailsResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/entity/FloorDetailsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FloorModel"
.end annotation


# instance fields
.field public colCnt:I

.field public floorId:I

.field public floorName:Ljava/lang/String;

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jingdong/common/entity/FloorDetailsResult;


# direct methods
.method constructor <init>(Lcom/jingdong/common/entity/FloorDetailsResult;Lorg/json/JSONObject;)V
    .locals 17
    .parameter
    .parameter "json"

    .prologue
    .line 68
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/common/entity/FloorDetailsResult$FloorModel;->this$0:Lcom/jingdong/common/entity/FloorDetailsResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-eqz p2, :cond_0

    .line 71
    const-string v14, "floorId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/jingdong/common/entity/FloorDetailsResult$FloorModel;->floorId:I

    .line 72
    const-string v14, "floorName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/jingdong/common/entity/FloorDetailsResult$FloorModel;->floorName:Ljava/lang/String;

    .line 73
    const-string v14, "colCnt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/jingdong/common/entity/FloorDetailsResult$FloorModel;->colCnt:I

    .line 75
    move-object/from16 v0, p0

    iget v14, v0, Lcom/jingdong/common/entity/FloorDetailsResult$FloorModel;->colCnt:I

    if-lez v14, :cond_0

    .line 76
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jingdong/common/entity/FloorDetailsResult$FloorModel;->colCnt:I

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/jingdong/common/entity/FloorDetailsResult$FloorModel;->items:Ljava/util/ArrayList;

    .line 77
    const/4 v9, 0x0

    .line 78
    .local v9, item:Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;
    const/4 v2, 0x0

    .line 79
    .local v2, aColItem:[Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;
    const-string v14, "childModelList"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 80
    .local v11, jsonArray:Lorg/json/JSONArray;
    const/4 v12, 0x0

    .line 81
    .local v12, length:I
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 82
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .local v5, colItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-lt v7, v12, :cond_1

    .line 90
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 92
    const/4 v6, 0x0

    .line 93
    .local v6, colNum:I
    new-instance v13, Ljava/util/ArrayList;

    const/4 v14, 0x2

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .local v13, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_3

    .line 111
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_0

    .line 112
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v2, v14, [Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;

    .line 113
    const/4 v8, 0x0

    .line 114
    .local v8, index:I
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_7

    .line 118
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/common/entity/FloorDetailsResult$FloorModel;->items:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 125
    .end local v2           #aColItem:[Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;
    .end local v5           #colItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;>;"
    .end local v6           #colNum:I
    .end local v7           #i:I
    .end local v8           #index:I
    .end local v9           #item:Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;
    .end local v11           #jsonArray:Lorg/json/JSONArray;
    .end local v12           #length:I
    .end local v13           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;>;"
    :cond_0
    return-void

    .line 84
    .restart local v2       #aColItem:[Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;
    .restart local v5       #colItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;>;"
    .restart local v7       #i:I
    .restart local v9       #item:Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;
    .restart local v11       #jsonArray:Lorg/json/JSONArray;
    .restart local v12       #length:I
    :cond_1
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 85
    .local v10, jo:Lorg/json/JSONObject;
    if-eqz v10, :cond_2

    .line 86
    new-instance v9, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;

    .end local v9           #item:Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;
    move-object/from16 v0, p1

    invoke-direct {v9, v0, v10}, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;-><init>(Lcom/jingdong/common/entity/FloorDetailsResult;Lorg/json/JSONObject;)V

    .line 87
    .restart local v9       #item:Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 94
    .end local v10           #jo:Lorg/json/JSONObject;
    .restart local v6       #colNum:I
    .restart local v13       #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;>;"
    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;

    .line 95
    .local v4, colItem:Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;
    iget v15, v4, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->colNum:I

    if-eq v15, v6, :cond_5

    .line 96
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_4

    .line 97
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v2, v15, [Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;

    .line 98
    const/4 v8, 0x0

    .line 99
    .restart local v8       #index:I
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_6

    .line 103
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jingdong/common/entity/FloorDetailsResult$FloorModel;->items:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 106
    .end local v8           #index:I
    :cond_4
    iget v6, v4, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;->colNum:I

    .line 108
    :cond_5
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    .restart local v8       #index:I
    :cond_6
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;

    .line 100
    .local v3, citem:Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;
    aput-object v3, v2, v8

    .line 101
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 114
    .end local v3           #citem:Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;
    .end local v4           #colItem:Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;
    :cond_7
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;

    .line 115
    .restart local v3       #citem:Lcom/jingdong/common/entity/FloorDetailsResult$ColItem;
    aput-object v3, v2, v8

    .line 116
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method
