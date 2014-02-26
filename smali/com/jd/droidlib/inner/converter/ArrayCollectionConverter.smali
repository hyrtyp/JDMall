.class public Lcom/jd/droidlib/inner/converter/ArrayCollectionConverter;
.super Lcom/jd/droidlib/inner/converter/Converter;
.source "ArrayCollectionConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jd/droidlib/inner/converter/Converter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final SEP:Ljava/lang/String; = "|\u001e"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/jd/droidlib/inner/converter/Converter;-><init>()V

    return-void
.end method

.method private arrOrCollToList(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2
    .parameter
    .parameter
    .parameter "val"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, valType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-static {p1}, Lcom/jd/droidlib/inner/TypeHelper;->isArray(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-static {p3}, Lcom/jd/droidlib/util/Arrays2;->toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 178
    .end local p3
    :goto_0
    return-object v0

    .line 176
    .restart local p3
    :cond_0
    check-cast p3, Ljava/util/Collection;

    .end local p3
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private final parseTypeArr(Lcom/jd/droidlib/inner/converter/Converter;Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter "arr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jd/droidlib/inner/converter/Converter",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, converter:Lcom/jd/droidlib/inner/converter/Converter;,"Lcom/jd/droidlib/inner/converter/Converter<TT;>;"
    .local p2, valType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    array-length v3, p3

    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 185
    .local v2, objArr:Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p3

    if-lt v0, v3, :cond_0

    .line 189
    return-object v2

    .line 186
    :cond_0
    const/4 v3, 0x0

    aget-object v4, p3, v0

    invoke-virtual {p1, p2, v3, v4}, Lcom/jd/droidlib/inner/converter/Converter;->parseFromString(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 187
    .local v1, item:Ljava/lang/Object;,"TT;"
    invoke-static {v2, v0, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final parseTypeColl(Lcom/jd/droidlib/inner/converter/Converter;Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)Ljava/util/Collection;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter "arr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jd/droidlib/inner/converter/Converter",
            "<TT;>;",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, converter:Lcom/jd/droidlib/inner/converter/Converter;,"Lcom/jd/droidlib/inner/converter/Converter<TT;>;"
    .local p2, collType:Ljava/lang/Class;,"Ljava/lang/Class<Ljava/lang/Object;>;"
    .local p3, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Lcom/jd/droidlib/inner/ReflectionUtils;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 196
    .local v0, coll:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p4

    if-lt v1, v3, :cond_0

    .line 200
    return-object v0

    .line 197
    :cond_0
    const/4 v3, 0x0

    aget-object v4, p4, v1

    invoke-virtual {p1, p3, v3, v4}, Lcom/jd/droidlib/inner/converter/Converter;->parseFromString(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 198
    .local v2, item:Ljava/lang/Object;,"TT;"
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public canHandle(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/jd/droidlib/inner/TypeHelper;->isArray(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/jd/droidlib/inner/TypeHelper;->isCollection(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDBColumnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, " TEXT"

    return-object v0
.end method

.method protected parseFromString(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 14
    .parameter
    .parameter
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, valType:Ljava/lang/Class;,"Ljava/lang/Class<Ljava/lang/Object;>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    :try_start_0
    new-instance v9, Lorg/json/JSONArray;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .local v9, jArr:Lorg/json/JSONArray;
    invoke-static {p1}, Lcom/jd/droidlib/inner/TypeHelper;->isArray(Ljava/lang/Class;)Z

    move-result v7

    .line 89
    .local v7, isArr:Z
    const/4 v1, 0x0

    .line 90
    .local v1, arr:[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 91
    .local v3, coll:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    if-eqz v7, :cond_1

    .line 92
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v1, v13, [Ljava/lang/Object;

    .line 96
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/jd/droidlib/inner/TypeHelper;->isModel(Ljava/lang/Class;)Z

    move-result v8

    .line 97
    .local v8, isModel:Z
    const/4 v12, 0x0

    .line 98
    .local v12, serializer:Lcom/jd/droidlib/persist/json/JSONSerializer;
    if-eqz v8, :cond_0

    .line 99
    new-instance v12, Lcom/jd/droidlib/persist/json/JSONSerializer;

    .end local v12           #serializer:Lcom/jd/droidlib/persist/json/JSONSerializer;
    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/jd/droidlib/persist/json/JSONSerializer;-><init>(Landroid/content/Context;)V

    .line 101
    .restart local v12       #serializer:Lcom/jd/droidlib/persist/json/JSONSerializer;
    :cond_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lt v6, v13, :cond_2

    .line 117
    if-eqz v7, :cond_8

    .line 118
    if-eqz v8, :cond_6

    .line 119
    array-length v13, v1

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v10

    .line 120
    .local v10, modelArr:Ljava/lang/Object;
    const/4 v6, 0x0

    :goto_2
    array-length v13, v1

    if-lt v6, v13, :cond_5

    .line 134
    .end local v10           #modelArr:Ljava/lang/Object;
    :goto_3
    return-object v10

    .line 85
    .end local v1           #arr:[Ljava/lang/Object;
    .end local v3           #coll:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v6           #i:I
    .end local v7           #isArr:Z
    .end local v8           #isModel:Z
    .end local v9           #jArr:Lorg/json/JSONArray;
    .end local v12           #serializer:Lcom/jd/droidlib/persist/json/JSONSerializer;
    :catch_0
    move-exception v5

    .line 86
    .local v5, e:Lorg/json/JSONException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 94
    .end local v5           #e:Lorg/json/JSONException;
    .restart local v1       #arr:[Ljava/lang/Object;
    .restart local v3       #coll:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v7       #isArr:Z
    .restart local v9       #jArr:Lorg/json/JSONArray;
    :cond_1
    invoke-static {p1}, Lcom/jd/droidlib/inner/ReflectionUtils;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #coll:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    check-cast v3, Ljava/util/Collection;

    .restart local v3       #coll:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    goto :goto_0

    .line 104
    .restart local v6       #i:I
    .restart local v8       #isModel:Z
    .restart local v12       #serializer:Lcom/jd/droidlib/persist/json/JSONSerializer;
    :cond_2
    :try_start_1
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 105
    .local v11, obj1:Ljava/lang/Object;
    if-eqz v8, :cond_3

    .line 106
    check-cast v11, Lorg/json/JSONObject;

    .end local v11           #obj1:Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-virtual {v12, v11, v0}, Lcom/jd/droidlib/persist/json/JSONSerializer;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/jd/droidlib/model/Model;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 111
    :cond_3
    if-eqz v7, :cond_4

    .line 112
    aput-object v11, v1, v6

    .line 101
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 108
    :catch_1
    move-exception v5

    .line 109
    .restart local v5       #e:Lorg/json/JSONException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 114
    .end local v5           #e:Lorg/json/JSONException;
    :cond_4
    invoke-interface {v3, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 121
    .restart local v10       #modelArr:Ljava/lang/Object;
    :cond_5
    aget-object v13, v1, v6

    invoke-static {v10, v6, v13}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 120
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 125
    .end local v10           #modelArr:Ljava/lang/Object;
    :cond_6
    array-length v13, v1

    new-array v2, v13, [Ljava/lang/String;

    .line 126
    .local v2, arr2:[Ljava/lang/String;
    const/4 v6, 0x0

    :goto_5
    array-length v13, v1

    if-lt v6, v13, :cond_7

    .line 130
    invoke-static/range {p2 .. p2}, Lcom/jd/droidlib/inner/ConverterRegistry;->getConverter(Ljava/lang/Class;)Lcom/jd/droidlib/inner/converter/Converter;

    move-result-object v4

    .line 131
    .local v4, converter:Lcom/jd/droidlib/inner/converter/Converter;,"Lcom/jd/droidlib/inner/converter/Converter<TV;>;"
    move-object/from16 v0, p2

    invoke-direct {p0, v4, v0, v2}, Lcom/jd/droidlib/inner/converter/ArrayCollectionConverter;->parseTypeArr(Lcom/jd/droidlib/inner/converter/Converter;Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_3

    .line 127
    .end local v4           #converter:Lcom/jd/droidlib/inner/converter/Converter;,"Lcom/jd/droidlib/inner/converter/Converter<TV;>;"
    :cond_7
    aget-object v13, v1, v6

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v6

    .line 126
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .end local v2           #arr2:[Ljava/lang/String;
    :cond_8
    move-object v10, v3

    .line 134
    goto :goto_3
.end method

.method public putToContentValues(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10
    .parameter
    .parameter
    .parameter "cv"
    .parameter "key"
    .parameter "val"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 142
    .local p1, valueType:Ljava/lang/Class;,"Ljava/lang/Class<Ljava/lang/Object;>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    invoke-static {p2}, Lcom/jd/droidlib/inner/ConverterRegistry;->getConverter(Ljava/lang/Class;)Lcom/jd/droidlib/inner/converter/Converter;

    move-result-object v0

    .line 143
    .local v0, converter:Lcom/jd/droidlib/inner/converter/Converter;,"Lcom/jd/droidlib/inner/converter/Converter<TV;>;"
    invoke-direct {p0, p1, p2, p5}, Lcom/jd/droidlib/inner/converter/ArrayCollectionConverter;->arrOrCollToList(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    .line 144
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TV;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v8, vals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 146
    .local v3, tmpCV:Landroid/content/ContentValues;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    const-string v1, "|\u001e"

    invoke-static {v8, v1}, Lcom/jd/droidlib/util/Strings;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, strVal:Ljava/lang/String;
    invoke-virtual {p3, p4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void

    .line 146
    .end local v7           #strVal:Ljava/lang/String;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Object;

    .line 148
    .local v5, obj:Ljava/lang/Object;,"TV;"
    const/4 v2, 0x0

    const-string v4, "key"

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jd/droidlib/inner/converter/Converter;->putToContentValues(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    const-string v1, "key"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public putToJSON(Ljava/lang/Class;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .parameter
    .parameter
    .parameter "obj"
    .parameter "key"
    .parameter "val"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 66
    .local p1, valType:Ljava/lang/Class;,"Ljava/lang/Class<Ljava/lang/Object;>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    invoke-static {p2}, Lcom/jd/droidlib/inner/ConverterRegistry;->getConverter(Ljava/lang/Class;)Lcom/jd/droidlib/inner/converter/Converter;

    move-result-object v0

    .line 67
    .local v0, converter:Lcom/jd/droidlib/inner/converter/Converter;,"Lcom/jd/droidlib/inner/converter/Converter<TV;>;"
    invoke-direct {p0, p1, p2, p5}, Lcom/jd/droidlib/inner/converter/ArrayCollectionConverter;->arrOrCollToList(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    .line 68
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TV;>;"
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 69
    .local v7, vals:Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .local v3, tmpObj:Lorg/json/JSONObject;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {p3, p4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    return-void

    .line 70
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Object;

    .line 71
    .local v5, value:Ljava/lang/Object;,"TV;"
    const/4 v2, 0x0

    const-string v4, "key"

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jd/droidlib/inner/converter/Converter;->putToJSON(Ljava/lang/Class;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    const-string v1, "key"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public readFromCursor(Ljava/lang/Class;Ljava/lang/Class;Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter "cursor"
    .parameter "columnIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Landroid/database/Cursor;",
            "I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, valType:Ljava/lang/Class;,"Ljava/lang/Class<Ljava/lang/Object;>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    invoke-static {p2}, Lcom/jd/droidlib/inner/ConverterRegistry;->getConverter(Ljava/lang/Class;)Lcom/jd/droidlib/inner/converter/Converter;

    move-result-object v0

    .line 159
    .local v0, converter:Lcom/jd/droidlib/inner/converter/Converter;,"Lcom/jd/droidlib/inner/converter/Converter<TV;>;"
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "\\|\u001e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, parts:[Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lcom/jd/droidlib/inner/TypeHelper;->isArray(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    invoke-direct {p0, v0, p2, v1}, Lcom/jd/droidlib/inner/converter/ArrayCollectionConverter;->parseTypeArr(Lcom/jd/droidlib/inner/converter/Converter;Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 165
    :goto_1
    return-object v3

    .line 161
    .end local v1           #parts:[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    new-array v1, v3, [Ljava/lang/String;

    goto :goto_0

    .line 165
    .restart local v1       #parts:[Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/jd/droidlib/inner/converter/ArrayCollectionConverter;->parseTypeColl(Lcom/jd/droidlib/inner/converter/Converter;Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    goto :goto_1
.end method

.method public readFromJSON(Ljava/lang/Class;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter "obj"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 60
    .local p1, valType:Ljava/lang/Class;,"Ljava/lang/Class<Ljava/lang/Object;>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jd/droidlib/inner/converter/ArrayCollectionConverter;->parseFromString(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
