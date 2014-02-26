.class public abstract Lcom/jd/droidlib/model/Model;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, eq:Z
    if-ne p0, p1, :cond_1

    .line 46
    const/4 v0, 0x1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/jd/droidlib/model/Model;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/jd/droidlib/model/Model;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toQueryString()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 90
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 91
    .local v3, fields:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getJsonKeySpecs(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/FieldSpec;

    move-result-object v9

    array-length v10, v9

    move v7, v8

    :goto_0
    if-lt v7, v10, :cond_1

    .line 94
    instance-of v7, p0, Lcom/jd/droidlib/model/Entity;

    if-eqz v7, :cond_0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getTableColumnSpecs(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/FieldSpec;

    move-result-object v9

    array-length v10, v9

    move v7, v8

    :goto_1
    if-lt v7, v10, :cond_2

    .line 99
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v4, sb:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v2, fieldVals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 112
    const-string v7, "&"

    invoke-static {v2, v7}, Lcom/jd/droidlib/util/Strings;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 91
    .end local v2           #fieldVals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_1
    aget-object v5, v9, v7

    .line 92
    .local v5, spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/json/KeyAnn;>;"
    iget-object v11, v5, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v11}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 95
    .end local v5           #spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/json/KeyAnn;>;"
    :cond_2
    aget-object v6, v9, v7

    .line 96
    .local v6, spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;"
    iget-object v11, v6, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v11}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 101
    .end local v6           #spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;"
    .restart local v2       #fieldVals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 102
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :try_start_0
    invoke-static {p0, v1}, Lcom/jd/droidlib/inner/ReflectionUtils;->getFieldVal(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "n/a"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 61
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 62
    .local v3, fields:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getJsonKeySpecs(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/FieldSpec;

    move-result-object v9

    array-length v10, v9

    move v7, v8

    :goto_0
    if-lt v7, v10, :cond_1

    .line 65
    instance-of v7, p0, Lcom/jd/droidlib/model/Entity;

    if-eqz v7, :cond_0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getTableColumnSpecs(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/FieldSpec;

    move-result-object v9

    array-length v10, v9

    move v7, v8

    :goto_1
    if-lt v7, v10, :cond_2

    .line 70
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v4, sb:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v2, fieldVals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v7, " ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v7, ", "

    invoke-static {v2, v7}, Lcom/jd/droidlib/util/Strings;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 62
    .end local v2           #fieldVals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_1
    aget-object v5, v9, v7

    .line 63
    .local v5, spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/json/KeyAnn;>;"
    iget-object v11, v5, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v11}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 66
    .end local v5           #spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/json/KeyAnn;>;"
    :cond_2
    aget-object v6, v9, v7

    .line 67
    .local v6, spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;"
    iget-object v11, v6, Lcom/jd/droidlib/inner/ann/FieldSpec;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v11}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 72
    .end local v6           #spec:Lcom/jd/droidlib/inner/ann/FieldSpec;,"Lcom/jd/droidlib/inner/ann/FieldSpec<Lcom/jd/droidlib/inner/ann/sql/ColumnAnn;>;"
    .restart local v2       #fieldVals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 73
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :try_start_0
    invoke-static {p0, v1}, Lcom/jd/droidlib/inner/ReflectionUtils;->getFieldVal(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "n/a"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method
