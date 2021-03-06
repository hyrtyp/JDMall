.class public Lcom/jd/droidlib/persist/json/JSONSerializer2;
.super Ljava/lang/Object;
.source "JSONSerializer2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Lcom/jd/droidlib/model/Model;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final __:Ljava/lang/String; = "->\u001d"


# instance fields
.field private final cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TModelType;>;"
        }
    .end annotation
.end field

.field private ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Lcom/jd/droidlib/persist/json/JSONSerializer2;,"Lcom/jd/droidlib/persist/json/JSONSerializer2<TModelType;>;"
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<TModelType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/jd/droidlib/persist/json/JSONSerializer2;->cls:Ljava/lang/Class;

    .line 54
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/droidlib/persist/json/JSONSerializer2;->ctx:Landroid/content/Context;

    .line 56
    invoke-static {p2, p0}, Lcom/jd/droidlib/Injector;->inject(Landroid/content/Context;Ljava/lang/Object;)V

    .line 58
    :cond_0
    return-void
.end method

.method private getNestedKeyParts(Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, this:Lcom/jd/droidlib/persist/json/JSONSerializer2;,"Lcom/jd/droidlib/persist/json/JSONSerializer2<TModelType;>;"
    const-string v4, "->\u001d"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 197
    .local v0, firstSep:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 198
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, subKey:Ljava/lang/String;
    const-string v4, "->\u001d"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, leftKey:Ljava/lang/String;
    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 203
    .end local v1           #leftKey:Ljava/lang/String;
    .end local v3           #subKey:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readFromJSONAndSetFieldVal(Lcom/jd/droidlib/model/Model;Lcom/jd/droidlib/inner/ann/FieldSpec;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 11
    .parameter "model"
    .parameter
    .parameter "obj"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jd/droidlib/model/Model;",
            "Lcom/jd/droidlib/inner/ann/FieldSpec",
            "<",
            "Lcom/jd/droidlib/inner/ann/json/KeyAnn;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/jd/droidlib/persist/json/JSONSerializer2;,"Lcom/jd/droidlib/persist/json/JSONSerializer2<TModelType;>;"
    .local p2, spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/json/KeyAnn;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 162
    invoke-direct {p0, p4}, Lcom/jd/droidlib/persist/json/JSONSerializer2;->getNestedKeyParts(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 163
    .local v1, keyParts:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 164
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 165
    .local v2, subKey:Ljava/lang/String;
    invoke-virtual {p0, p3, v2}, Lcom/jd/droidlib/persist/json/JSONSerializer2;->hasNonNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 166
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 167
    .local v3, subObj:Lorg/json/JSONObject;
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v3, v5}, Lcom/jd/droidlib/persist/json/JSONSerializer2;->readFromJSONAndSetFieldVal(Lcom/jd/droidlib/model/Model;Lcom/jd/droidlib/inner/ann/FieldSpec;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 193
    .end local v2           #subKey:Ljava/lang/String;
    .end local v3           #subObj:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 169
    .restart local v2       #subKey:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2}, Lcom/jd/droidlib/persist/json/JSONSerializer2;->throwIfRequired(Lcom/jd/droidlib/inner/ann/FieldSpec;)V

    goto :goto_0

    .line 171
    .end local v2           #subKey:Ljava/lang/String;
    :cond_1
    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 173
    :try_start_0
    iget-object v5, p2, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 174
    iget-object v6, p2, Lcom/jd/droidlib/inner/ann/FieldSpec;->componentType:Ljava/lang/Class;

    .line 173
    invoke-virtual {p0, v5, v6, p3, p4}, Lcom/jd/droidlib/persist/json/JSONSerializer2;->readFromJSON(Ljava/lang/Class;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 175
    .local v4, val:Ljava/lang/Object;
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 176
    const-string v5, "[]"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 177
    const-string v4, ""

    .line 178
    .end local v4           #val:Ljava/lang/Object;
    :cond_2
    iget-object v5, p2, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-static {p1, v5, v4}, Lcom/jd/droidlib/inner/ReflectionUtils;->setFieldVal(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/Exception;
    iget-object v5, p2, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v5, Lcom/jd/droidlib/inner/ann/json/KeyAnn;

    iget-boolean v5, v5, Lcom/jd/droidlib/inner/ann/json/KeyAnn;->optional:Z

    if-eqz v5, :cond_4

    .line 184
    const-string v6, "Failed to deserialize \'%s\': %s."

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v5, Lcom/jd/droidlib/inner/ann/json/KeyAnn;

    iget-object v5, v5, Lcom/jd/droidlib/inner/ann/json/KeyAnn;->name:Ljava/lang/String;

    aput-object v5, v7, v9

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v10

    .line 184
    invoke-static {v6, v7}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 180
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #val:Ljava/lang/Object;
    :cond_3
    :try_start_1
    const-string v6, "Received NULL \'%s\', skipping."

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v5, p2, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v5, Lcom/jd/droidlib/inner/ann/json/KeyAnn;

    iget-object v5, v5, Lcom/jd/droidlib/inner/ann/json/KeyAnn;->name:Ljava/lang/String;

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Lcom/jd/droidlib/util/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 187
    .end local v4           #val:Ljava/lang/Object;
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_4
    new-instance v5, Lorg/json/JSONException;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 191
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    invoke-direct {p0, p2}, Lcom/jd/droidlib/persist/json/JSONSerializer2;->throwIfRequired(Lcom/jd/droidlib/inner/ann/FieldSpec;)V

    goto :goto_0
.end method

.method private readFromModelAndPutToJSON(Lcom/jd/droidlib/model/Model;Lcom/jd/droidlib/inner/ann/FieldSpec;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 10
    .parameter "item"
    .parameter
    .parameter "obj"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jd/droidlib/model/Model;",
            "Lcom/jd/droidlib/inner/ann/FieldSpec",
            "<",
            "Lcom/jd/droidlib/inner/ann/json/KeyAnn;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 131
    .local p0, this:Lcom/jd/droidlib/persist/json/JSONSerializer2;,"Lcom/jd/droidlib/persist/json/JSONSerializer2<TModelType;>;"
    .local p2, spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/json/KeyAnn;>;"
    invoke-direct {p0, p4}, Lcom/jd/droidlib/persist/json/JSONSerializer2;->getNestedKeyParts(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v7

    .line 132
    .local v7, keyParts:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v7, :cond_1

    .line 133
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 135
    .local v8, subKey:Ljava/lang/String;
    invoke-virtual {p0, p3, v8}, Lcom/jd/droidlib/persist/json/JSONSerializer2;->hasNonNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 141
    .local v9, subObj:Lorg/json/JSONObject;
    :goto_0
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v9, v0}, Lcom/jd/droidlib/persist/json/JSONSerializer2;->readFromModelAndPutToJSON(Lcom/jd/droidlib/model/Model;Lcom/jd/droidlib/inner/ann/FieldSpec;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 157
    .end local v8           #subKey:Ljava/lang/String;
    .end local v9           #subObj:Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 138
    .restart local v8       #subKey:Ljava/lang/String;
    :cond_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 139
    .restart local v9       #subObj:Lorg/json/JSONObject;
    invoke-virtual {p3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 143
    .end local v8           #subKey:Ljava/lang/String;
    .end local v9           #subObj:Lorg/json/JSONObject;
    :cond_1
    iget-object v0, p2, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-static {p1, v0}, Lcom/jd/droidlib/inner/ReflectionUtils;->getFieldVal(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v5

    .line 145
    .local v5, columnVal:Ljava/lang/Object;
    :try_start_0
    iget-object v0, p2, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 146
    iget-object v4, p2, Lcom/jd/droidlib/inner/ann/FieldSpec;->componentType:Ljava/lang/Class;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    .line 145
    invoke-virtual/range {v0 .. v5}, Lcom/jd/droidlib/persist/json/JSONSerializer2;->putToJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 147
    :catch_0
    move-exception v6

    .line 148
    .local v6, e:Ljava/lang/Exception;
    iget-object v0, p2, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v0, Lcom/jd/droidlib/inner/ann/json/KeyAnn;

    iget-boolean v0, v0, Lcom/jd/droidlib/inner/ann/json/KeyAnn;->optional:Z

    if-eqz v0, :cond_2

    .line 149
    const-string v0, "Failded to serialize %s.%s: %s."

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 150
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 151
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 149
    invoke-static {v0, v1}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 153
    :cond_2
    new-instance v0, Lorg/json/JSONException;

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfRequired(Lcom/jd/droidlib/inner/ann/FieldSpec;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jd/droidlib/inner/ann/FieldSpec",
            "<",
            "Lcom/jd/droidlib/inner/ann/json/KeyAnn;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 208
    .local p0, this:Lcom/jd/droidlib/persist/json/JSONSerializer2;,"Lcom/jd/droidlib/persist/json/JSONSerializer2<TModelType;>;"
    .local p1, spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/json/KeyAnn;>;"
    iget-object v0, p1, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v0, Lcom/jd/droidlib/inner/ann/json/KeyAnn;

    iget-boolean v0, v0, Lcom/jd/droidlib/inner/ann/json/KeyAnn;->optional:Z

    if-nez v0, :cond_0

    .line 209
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Required key \'"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v0, Lcom/jd/droidlib/inner/ann/json/KeyAnn;

    iget-object v0, v0, Lcom/jd/droidlib/inner/ann/json/KeyAnn;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    const-string v2, "\' not present."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_0
    return-void
.end method


# virtual methods
.method public deserialize(Lorg/json/JSONObject;)Lcom/jd/droidlib/model/Model;
    .locals 6
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TModelType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lcom/jd/droidlib/persist/json/JSONSerializer2;,"Lcom/jd/droidlib/persist/json/JSONSerializer2<TModelType;>;"
    iget-object v3, p0, Lcom/jd/droidlib/persist/json/JSONSerializer2;->cls:Ljava/lang/Class;

    invoke-static {v3}, Lcom/jd/droidlib/inner/ReflectionUtils;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jd/droidlib/model/Model;

    .line 77
    .local v1, model:Lcom/jd/droidlib/model/Model;,"TModelType;"
    iget-object v3, p0, Lcom/jd/droidlib/persist/json/JSONSerializer2;->cls:Ljava/lang/Class;

    invoke-static {v3}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getJsonKeySpecs(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/FieldSpec;

    move-result-object v0

    .line 78
    .local v0, keySpecs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    array-length v5, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_0

    .line 81
    return-object v1

    .line 78
    :cond_0
    aget-object v2, v0, v4

    .line 79
    .local v2, spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/json/KeyAnn;>;"
    iget-object v3, v2, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v3, Lcom/jd/droidlib/inner/ann/json/KeyAnn;

    iget-object v3, v3, Lcom/jd/droidlib/inner/ann/json/KeyAnn;->name:Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/jd/droidlib/persist/json/JSONSerializer2;->readFromJSONAndSetFieldVal(Lcom/jd/droidlib/model/Model;Lcom/jd/droidlib/inner/ann/FieldSpec;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 78
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0
.end method

.method public deserialize(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .parameter "arr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<TModelType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 93
    .local p0, this:Lcom/jd/droidlib/persist/json/JSONSerializer2;,"Lcom/jd/droidlib/persist/json/JSONSerializer2<TModelType;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TModelType;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 97
    return-object v1

    .line 95
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jd/droidlib/persist/json/JSONSerializer2;->deserialize(Lorg/json/JSONObject;)Lcom/jd/droidlib/model/Model;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    .local p0, this:Lcom/jd/droidlib/persist/json/JSONSerializer2;,"Lcom/jd/droidlib/persist/json/JSONSerializer2<TModelType;>;"
    iget-object v0, p0, Lcom/jd/droidlib/persist/json/JSONSerializer2;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method protected hasNonNull(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1
    .parameter "obj"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 126
    .local p0, this:Lcom/jd/droidlib/persist/json/JSONSerializer2;,"Lcom/jd/droidlib/persist/json/JSONSerializer2<TModelType;>;"
    invoke-static {p1, p2}, Lcom/jd/droidlib/inner/PersistUtils;->hasNonNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected putToJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 6
    .parameter "obj"
    .parameter "key"
    .parameter
    .parameter
    .parameter "val"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    .local p0, this:Lcom/jd/droidlib/persist/json/JSONSerializer2;,"Lcom/jd/droidlib/persist/json/JSONSerializer2<TModelType;>;"
    .local p3, valType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p4, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p5, :cond_0

    .line 105
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {p3}, Lcom/jd/droidlib/inner/ConverterRegistry;->getConverter(Ljava/lang/Class;)Lcom/jd/droidlib/inner/converter/Converter;

    move-result-object v0

    .local v0, converter:Lcom/jd/droidlib/inner/converter/Converter;,"Lcom/jd/droidlib/inner/converter/Converter<TT;>;"
    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    .line 108
    invoke-virtual/range {v0 .. v5}, Lcom/jd/droidlib/inner/converter/Converter;->putToJSON(Ljava/lang/Class;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected readFromJSON(Ljava/lang/Class;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter "obj"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
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
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    .local p0, this:Lcom/jd/droidlib/persist/json/JSONSerializer2;,"Lcom/jd/droidlib/persist/json/JSONSerializer2<TModelType;>;"
    .local p1, valType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 116
    .local v1, jsonVal:Ljava/lang/Object;
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    .end local v1           #jsonVal:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 119
    .restart local v1       #jsonVal:Ljava/lang/Object;
    :cond_0
    invoke-static {p1}, Lcom/jd/droidlib/inner/ConverterRegistry;->getConverter(Ljava/lang/Class;)Lcom/jd/droidlib/inner/converter/Converter;

    move-result-object v0

    .line 120
    .local v0, converter:Lcom/jd/droidlib/inner/converter/Converter;,"Lcom/jd/droidlib/inner/converter/Converter<TT;>;"
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jd/droidlib/inner/converter/Converter;->readFromJSON(Ljava/lang/Class;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public serialize(Ljava/util/Collection;)Lorg/json/JSONArray;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/jd/droidlib/model/Model;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lcom/jd/droidlib/persist/json/JSONSerializer2;,"Lcom/jd/droidlib/persist/json/JSONSerializer2<TModelType;>;"
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/jd/droidlib/model/Model;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 86
    .local v0, arr:Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    return-object v0

    .line 86
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jd/droidlib/model/Model;

    .line 87
    .local v1, item:Lcom/jd/droidlib/model/Model;
    invoke-virtual {p0, v1}, Lcom/jd/droidlib/persist/json/JSONSerializer2;->serialize(Lcom/jd/droidlib/model/Model;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public serialize(Lcom/jd/droidlib/model/Model;)Lorg/json/JSONObject;
    .locals 6
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/jd/droidlib/persist/json/JSONSerializer2;,"Lcom/jd/droidlib/persist/json/JSONSerializer2<TModelType;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 67
    .local v1, obj:Lorg/json/JSONObject;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 66
    invoke-static {v3}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getJsonKeySpecs(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/FieldSpec;

    move-result-object v0

    .line 68
    .local v0, keySpecs:[Lcom/jd/droidlib/inner/ann/FieldSpec;
    array-length v5, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_0

    .line 71
    return-object v1

    .line 68
    :cond_0
    aget-object v2, v0, v4

    .line 69
    .local v2, spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/json/KeyAnn;>;"
    iget-object v3, v2, Lcom/jd/droidlib/inner/ann/FieldSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v3, Lcom/jd/droidlib/inner/ann/json/KeyAnn;

    iget-object v3, v3, Lcom/jd/droidlib/inner/ann/json/KeyAnn;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v1, v3}, Lcom/jd/droidlib/persist/json/JSONSerializer2;->readFromModelAndPutToJSON(Lcom/jd/droidlib/model/Model;Lcom/jd/droidlib/inner/ann/FieldSpec;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 68
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0
.end method
