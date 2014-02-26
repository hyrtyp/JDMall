.class public final Lcom/jd/droidlib/inner/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildClassHierarchy(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, hierarhy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    const/4 v0, 0x0

    .line 83
    .local v0, enteredDroidLib:Z
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.jd.droidlib"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 85
    .local v2, inDroidLib:Z
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    .line 92
    :goto_0
    return-object v1

    .line 88
    :cond_1
    move v0, v2

    .line 89
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 91
    if-nez p0, :cond_0

    goto :goto_0
.end method

.method public static classForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "clsName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getArrayComponentType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, arrCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, [B

    if-ne p0, v1, :cond_0

    .line 97
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 116
    :goto_0
    return-object v1

    .line 98
    :cond_0
    const-class v1, [S

    if-ne p0, v1, :cond_1

    .line 99
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 100
    :cond_1
    const-class v1, [I

    if-ne p0, v1, :cond_2

    .line 101
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 102
    :cond_2
    const-class v1, [J

    if-ne p0, v1, :cond_3

    .line 103
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 104
    :cond_3
    const-class v1, [F

    if-ne p0, v1, :cond_4

    .line 105
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 106
    :cond_4
    const-class v1, [D

    if-ne p0, v1, :cond_5

    .line 107
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 108
    :cond_5
    const-class v1, [Z

    if-ne p0, v1, :cond_6

    .line 109
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 110
    :cond_6
    const-class v1, [C

    if-ne p0, v1, :cond_7

    .line 111
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 114
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, clsName:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/jd/droidlib/inner/ReflectionUtils;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFieldGenericArgs(Ljava/lang/reflect/Field;)[Ljava/lang/Class;
    .locals 8
    .parameter "field"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 122
    .local v2, genericType:Ljava/lang/reflect/Type;
    instance-of v6, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_1

    .line 123
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 124
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 125
    .local v5, typeArr:[Ljava/lang/reflect/Type;
    array-length v6, v5

    new-array v0, v6, [Ljava/lang/Class;

    .line 126
    .local v0, argsArr:[Ljava/lang/Class;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v5

    if-lt v3, v6, :cond_0

    .line 134
    .end local v0           #argsArr:[Ljava/lang/Class;
    .end local v3           #i:I
    .end local v5           #typeArr:[Ljava/lang/reflect/Type;
    :goto_1
    return-object v0

    .line 128
    .restart local v0       #argsArr:[Ljava/lang/Class;
    .restart local v3       #i:I
    .restart local v5       #typeArr:[Ljava/lang/reflect/Type;
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, nameParts:[Ljava/lang/String;
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v1, v4, v6

    .line 130
    .local v1, clsName:Ljava/lang/String;
    invoke-static {v1}, Lcom/jd/droidlib/inner/ReflectionUtils;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v0, v3

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    .end local v0           #argsArr:[Ljava/lang/Class;
    .end local v1           #clsName:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #nameParts:[Ljava/lang/String;
    .end local v5           #typeArr:[Ljava/lang/reflect/Type;
    .restart local v2       #genericType:Ljava/lang/reflect/Type;
    :cond_1
    const/4 v6, 0x0

    new-array v0, v6, [Ljava/lang/Class;

    goto :goto_1
.end method

.method public static getFieldVal(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3
    .parameter "obj"
    .parameter "field"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Field;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 35
    .local v1, val:Ljava/lang/Object;,"TT;"
    return-object v1

    .line 36
    .end local v1           #val:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static newEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 2
    .parameter
    .parameter "enumStr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, enumClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 76
    .local v0, en:Ljava/lang/Enum;
    return-object v0
.end method

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 67
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setFieldVal(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 6
    .parameter "obj"
    .parameter "field"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/Exception;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, valClsName:Ljava/lang/String;
    :goto_0
    const-string v2, "Error assigning <%s> %s to (%s) field %s#%s: %s."

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    .line 49
    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 50
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 48
    invoke-static {v2, v3}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 47
    .end local v1           #valClsName:Ljava/lang/String;
    :cond_0
    const-string v1, "?"

    goto :goto_0
.end method

.method public static varArgsHack([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .parameter "varArgs"

    .prologue
    .line 139
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 140
    const/4 v2, 0x0

    aget-object v0, p0, v2

    .line 141
    .local v0, firstArg:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 143
    .local v1, firstArgCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/jd/droidlib/inner/TypeHelper;->isArray(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-static {v0}, Lcom/jd/droidlib/util/Arrays2;->toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 148
    .end local v0           #firstArg:Ljava/lang/Object;
    .end local v1           #firstArgCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    return-object p0
.end method
