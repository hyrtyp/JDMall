.class public Lcom/jingdong/common/utils/BeanUtil;
.super Ljava/lang/Object;
.source "BeanUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .parameter "bean"
    .parameter "propertyName"

    .prologue
    const/4 v7, 0x0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 9
    .local v3, klass:Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    if-eqz v8, :cond_0

    const/4 v2, 0x1

    .line 10
    .local v2, includeSuperClass:Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 12
    .local v6, methods:[Ljava/lang/reflect/Method;
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v8, v6

    if-lt v1, v8, :cond_2

    .line 27
    :goto_3
    return-object v7

    .line 9
    .end local v1           #i:I
    .end local v2           #includeSuperClass:Z
    .end local v6           #methods:[Ljava/lang/reflect/Method;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 10
    .restart local v2       #includeSuperClass:Z
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    goto :goto_1

    .line 13
    .restart local v1       #i:I
    .restart local v6       #methods:[Ljava/lang/reflect/Method;
    :cond_2
    aget-object v4, v6, v1

    .line 14
    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 15
    .local v5, methodName:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "get"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 16
    :cond_3
    const/4 v7, 0x0

    .line 18
    .local v7, result:Ljava/lang/Object;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v4, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_3

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 12
    .end local v0           #e:Ljava/lang/Exception;
    .end local v7           #result:Ljava/lang/Object;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
