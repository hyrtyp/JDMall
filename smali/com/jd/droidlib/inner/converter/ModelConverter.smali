.class public Lcom/jd/droidlib/inner/converter/ModelConverter;
.super Lcom/jd/droidlib/inner/converter/Converter;
.source "ModelConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jd/droidlib/inner/converter/Converter",
        "<",
        "Lcom/jd/droidlib/model/Model;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
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
    .line 31
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/jd/droidlib/inner/TypeHelper;->isModel(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/jd/droidlib/inner/TypeHelper;->isEntity(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDBColumnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected parseFromString(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/jd/droidlib/model/Model;
    .locals 3
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
            "Lcom/jd/droidlib/model/Model;",
            ">;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/jd/droidlib/model/Model;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, valType:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/jd/droidlib/model/Model;>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    :try_start_0
    new-instance v1, Lcom/jd/droidlib/persist/json/JSONSerializer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/jd/droidlib/persist/json/JSONSerializer;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Lcom/jd/droidlib/persist/json/JSONSerializer;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/jd/droidlib/model/Model;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/jd/droidlib/inner/converter/ModelConverter;->parseFromString(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/jd/droidlib/model/Model;

    move-result-object v0

    return-object v0
.end method

.method public putToContentValues(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;Lcom/jd/droidlib/model/Model;)V
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
            "Lcom/jd/droidlib/model/Model;",
            ">;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Lcom/jd/droidlib/model/Model;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, valueType:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/jd/droidlib/model/Model;>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    check-cast v5, Lcom/jd/droidlib/model/Model;

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jd/droidlib/inner/converter/ModelConverter;->putToContentValues(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;Lcom/jd/droidlib/model/Model;)V

    return-void
.end method

.method public putToJSON(Ljava/lang/Class;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/lang/String;Lcom/jd/droidlib/model/Model;)V
    .locals 4
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
            "Lcom/jd/droidlib/model/Model;",
            ">;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/jd/droidlib/model/Model;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 55
    .local p1, valType:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/jd/droidlib/model/Model;>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 56
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/jd/droidlib/model/Model;>;"
    new-instance v2, Lcom/jd/droidlib/persist/json/JSONSerializer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/jd/droidlib/persist/json/JSONSerializer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p5}, Lcom/jd/droidlib/persist/json/JSONSerializer;->serialize(Lcom/jd/droidlib/model/Model;)Lorg/json/JSONObject;

    move-result-object v1

    .line 57
    .local v1, valStr:Lorg/json/JSONObject;
    invoke-virtual {p3, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
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

    check-cast v5, Lcom/jd/droidlib/model/Model;

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jd/droidlib/inner/converter/ModelConverter;->putToJSON(Ljava/lang/Class;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/lang/String;Lcom/jd/droidlib/model/Model;)V

    return-void
.end method

.method public readFromCursor(Ljava/lang/Class;Ljava/lang/Class;Landroid/database/Cursor;I)Lcom/jd/droidlib/model/Model;
    .locals 1
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
            "Lcom/jd/droidlib/model/Model;",
            ">;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Landroid/database/Cursor;",
            "I)",
            "Lcom/jd/droidlib/model/Model;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, valType:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/jd/droidlib/model/Model;>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jd/droidlib/inner/converter/ModelConverter;->readFromCursor(Ljava/lang/Class;Ljava/lang/Class;Landroid/database/Cursor;I)Lcom/jd/droidlib/model/Model;

    move-result-object v0

    return-object v0
.end method

.method public readFromJSON(Ljava/lang/Class;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/jd/droidlib/model/Model;
    .locals 2
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
            "Lcom/jd/droidlib/model/Model;",
            ">;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/jd/droidlib/model/Model;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 63
    .local p1, valType:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/jd/droidlib/model/Model;>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    new-instance v0, Lcom/jd/droidlib/persist/json/JSONSerializer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jd/droidlib/persist/json/JSONSerializer;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1, p1}, Lcom/jd/droidlib/persist/json/JSONSerializer;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/jd/droidlib/model/Model;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jd/droidlib/inner/converter/ModelConverter;->readFromJSON(Ljava/lang/Class;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/jd/droidlib/model/Model;

    move-result-object v0

    return-object v0
.end method
