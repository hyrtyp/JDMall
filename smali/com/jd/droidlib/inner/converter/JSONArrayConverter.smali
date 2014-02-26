.class public Lcom/jd/droidlib/inner/converter/JSONArrayConverter;
.super Lcom/jd/droidlib/inner/converter/Converter;
.source "JSONArrayConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jd/droidlib/inner/converter/Converter",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/jd/droidlib/inner/converter/Converter;-><init>()V

    return-void
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
    .line 30
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/jd/droidlib/inner/TypeHelper;->isJSONArray(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public getDBColumnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, " TEXT"

    return-object v0
.end method

.method protected bridge synthetic parseFromString(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Class;

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jd/droidlib/inner/converter/JSONArrayConverter;->parseFromString(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected parseFromString(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2
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
            "Lorg/json/JSONArray;",
            ">;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, valType:Ljava/lang/Class;,"Ljava/lang/Class<Lorg/json/JSONArray;>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic putToContentValues(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    move-object v2, p2

    check-cast v2, Ljava/lang/Class;

    move-object v5, p5

    check-cast v5, Lorg/json/JSONArray;

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jd/droidlib/inner/converter/JSONArrayConverter;->putToContentValues(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public putToContentValues(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1
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
            "Lorg/json/JSONArray;",
            ">;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, valueType:Ljava/lang/Class;,"Ljava/lang/Class<Lorg/json/JSONArray;>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    invoke-virtual {p5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public bridge synthetic putToJSON(Ljava/lang/Class;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1
    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    move-object v2, p2

    check-cast v2, Ljava/lang/Class;

    move-object v5, p5

    check-cast v5, Lorg/json/JSONArray;

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jd/droidlib/inner/converter/JSONArrayConverter;->putToJSON(Ljava/lang/Class;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public putToJSON(Ljava/lang/Class;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1
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
            "Lorg/json/JSONArray;",
            ">;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 41
    .local p1, valType:Ljava/lang/Class;,"Ljava/lang/Class<Lorg/json/JSONArray;>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    invoke-virtual {p5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    return-void
.end method

.method public bridge synthetic readFromCursor(Ljava/lang/Class;Ljava/lang/Class;Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Class;

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jd/droidlib/inner/converter/JSONArrayConverter;->readFromCursor(Ljava/lang/Class;Ljava/lang/Class;Landroid/database/Cursor;I)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public readFromCursor(Ljava/lang/Class;Ljava/lang/Class;Landroid/database/Cursor;I)Lorg/json/JSONArray;
    .locals 3
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
            "Lorg/json/JSONArray;",
            ">;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Landroid/database/Cursor;",
            "I)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, valType:Ljava/lang/Class;,"Ljava/lang/Class<Lorg/json/JSONArray;>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic readFromJSON(Ljava/lang/Class;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Class;

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jd/droidlib/inner/converter/JSONArrayConverter;->readFromJSON(Ljava/lang/Class;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public readFromJSON(Ljava/lang/Class;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
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
            "Lorg/json/JSONArray;",
            ">;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 48
    .local p1, valType:Ljava/lang/Class;,"Ljava/lang/Class<Lorg/json/JSONArray;>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jd/droidlib/inner/converter/JSONArrayConverter;->parseFromString(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method
