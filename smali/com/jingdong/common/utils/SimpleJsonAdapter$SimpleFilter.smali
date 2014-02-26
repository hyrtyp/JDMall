.class Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;
.super Landroid/widget/Filter;
.source "SimpleJsonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/SimpleJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/SimpleJsonAdapter;


# direct methods
.method private constructor <init>(Lcom/jingdong/common/utils/SimpleJsonAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleJsonAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/utils/SimpleJsonAdapter;Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;-><init>(Lcom/jingdong/common/utils/SimpleJsonAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 19
    .parameter "prefix"

    .prologue
    .line 399
    new-instance v11, Landroid/widget/Filter$FilterResults;

    invoke-direct {v11}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 401
    .local v11, results:Landroid/widget/Filter$FilterResults;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleJsonAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/jingdong/common/utils/SimpleJsonAdapter;->mUnfilteredData:Lorg/json/JSONArray;
    invoke-static/range {v17 .. v17}, Lcom/jingdong/common/utils/SimpleJsonAdapter;->access$0(Lcom/jingdong/common/utils/SimpleJsonAdapter;)Lorg/json/JSONArray;

    move-result-object v17

    if-nez v17, :cond_0

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleJsonAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleJsonAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/jingdong/common/utils/SimpleJsonAdapter;->mData:Lorg/json/JSONArray;
    invoke-static/range {v18 .. v18}, Lcom/jingdong/common/utils/SimpleJsonAdapter;->access$1(Lcom/jingdong/common/utils/SimpleJsonAdapter;)Lorg/json/JSONArray;

    move-result-object v18

    #setter for: Lcom/jingdong/common/utils/SimpleJsonAdapter;->mUnfilteredData:Lorg/json/JSONArray;
    invoke-static/range {v17 .. v18}, Lcom/jingdong/common/utils/SimpleJsonAdapter;->access$2(Lcom/jingdong/common/utils/SimpleJsonAdapter;Lorg/json/JSONArray;)V

    .line 406
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-nez v17, :cond_2

    .line 407
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleJsonAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/jingdong/common/utils/SimpleJsonAdapter;->mUnfilteredData:Lorg/json/JSONArray;
    invoke-static/range {v17 .. v17}, Lcom/jingdong/common/utils/SimpleJsonAdapter;->access$0(Lcom/jingdong/common/utils/SimpleJsonAdapter;)Lorg/json/JSONArray;

    move-result-object v8

    .line 408
    .local v8, list:Lorg/json/JSONArray;
    iput-object v8, v11, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 409
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/Filter$FilterResults;->count:I

    .line 458
    .end local v8           #list:Lorg/json/JSONArray;
    :goto_0
    return-object v11

    .line 411
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 413
    .local v10, prefixString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleJsonAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/jingdong/common/utils/SimpleJsonAdapter;->mUnfilteredData:Lorg/json/JSONArray;
    invoke-static/range {v17 .. v17}, Lcom/jingdong/common/utils/SimpleJsonAdapter;->access$0(Lcom/jingdong/common/utils/SimpleJsonAdapter;)Lorg/json/JSONArray;

    move-result-object v13

    .line 414
    .local v13, unfilteredValues:Lorg/json/JSONArray;
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 416
    .local v1, count:I
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 420
    .local v9, newValues:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v1, :cond_3

    .line 454
    iput-object v9, v11, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 455
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0

    .line 421
    :cond_3
    const/4 v3, 0x0

    .line 423
    .local v3, h:Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v13, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 427
    if-eqz v3, :cond_4

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleJsonAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/jingdong/common/utils/SimpleJsonAdapter;->mTo:[I
    invoke-static/range {v17 .. v17}, Lcom/jingdong/common/utils/SimpleJsonAdapter;->access$3(Lcom/jingdong/common/utils/SimpleJsonAdapter;)[I

    move-result-object v17

    move-object/from16 v0, v17

    array-length v7, v0

    .line 431
    .local v7, len:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    if-lt v5, v7, :cond_5

    .line 420
    .end local v5           #j:I
    .end local v7           #len:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 424
    :catch_0
    move-exception v2

    .line 425
    .local v2, e:Lorg/json/JSONException;
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 432
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v5       #j:I
    .restart local v7       #len:I
    :cond_5
    const/4 v12, 0x0

    .line 434
    .local v12, str:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleJsonAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/jingdong/common/utils/SimpleJsonAdapter;->mFrom:[Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/jingdong/common/utils/SimpleJsonAdapter;->access$4(Lcom/jingdong/common/utils/SimpleJsonAdapter;)[Ljava/lang/String;

    move-result-object v17

    aget-object v17, v17, v5

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 439
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 440
    .local v16, words:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v15, v0

    .line 442
    .local v15, wordCount:I
    const/4 v6, 0x0

    .local v6, k:I
    :goto_3
    if-lt v6, v15, :cond_6

    .line 431
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 435
    .end local v6           #k:I
    .end local v15           #wordCount:I
    .end local v16           #words:[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 436
    .restart local v2       #e:Lorg/json/JSONException;
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 443
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v6       #k:I
    .restart local v15       #wordCount:I
    .restart local v16       #words:[Ljava/lang/String;
    :cond_6
    aget-object v14, v16, v6

    .line 445
    .local v14, word:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 446
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 442
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 465
    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleJsonAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    #setter for: Lcom/jingdong/common/utils/SimpleJsonAdapter;->mData:Lorg/json/JSONArray;
    invoke-static {v1, v0}, Lcom/jingdong/common/utils/SimpleJsonAdapter;->access$5(Lcom/jingdong/common/utils/SimpleJsonAdapter;Lorg/json/JSONArray;)V

    .line 466
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleJsonAdapter;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/SimpleJsonAdapter;->notifyDataSetChanged()V

    .line 471
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleJsonAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleJsonAdapter;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/SimpleJsonAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
