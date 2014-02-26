.class public Lcom/jd/droidlib/inner/AnnotationElementsReader;
.super Ljava/lang/Object;
.source "AnnotationElementsReader.java"


# static fields
.field private static elementsField:Ljava/lang/reflect/Field;

.field private static nameField:Ljava/lang/reflect/Field;

.field private static validateValueMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getElements(Ljava/lang/annotation/Annotation;)Ljava/util/HashMap;
    .locals 13
    .parameter "annotation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 33
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v3

    .line 35
    .local v3, handler:Ljava/lang/reflect/InvocationHandler;
    sget-object v7, Lcom/jd/droidlib/inner/AnnotationElementsReader;->elementsField:Ljava/lang/reflect/Field;

    if-nez v7, :cond_0

    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v9, "elements"

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    sput-object v7, Lcom/jd/droidlib/inner/AnnotationElementsReader;->elementsField:Ljava/lang/reflect/Field;

    .line 37
    sget-object v7, Lcom/jd/droidlib/inner/AnnotationElementsReader;->elementsField:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 39
    :cond_0
    sget-object v7, Lcom/jd/droidlib/inner/AnnotationElementsReader;->elementsField:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 40
    .local v1, annotationMembers:[Ljava/lang/Object;
    array-length v9, v1

    move v7, v8

    :goto_0
    if-lt v7, v9, :cond_1

    .line 52
    return-object v4

    .line 40
    :cond_1
    aget-object v0, v1, v7

    .line 41
    .local v0, annotationMember:Ljava/lang/Object;
    sget-object v10, Lcom/jd/droidlib/inner/AnnotationElementsReader;->nameField:Ljava/lang/reflect/Field;

    if-nez v10, :cond_2

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 43
    .local v2, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v10, "name"

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    sput-object v10, Lcom/jd/droidlib/inner/AnnotationElementsReader;->nameField:Ljava/lang/reflect/Field;

    .line 44
    sget-object v10, Lcom/jd/droidlib/inner/AnnotationElementsReader;->nameField:Ljava/lang/reflect/Field;

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 45
    const-string v10, "validateValue"

    new-array v11, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    sput-object v10, Lcom/jd/droidlib/inner/AnnotationElementsReader;->validateValueMethod:Ljava/lang/reflect/Method;

    .line 46
    sget-object v10, Lcom/jd/droidlib/inner/AnnotationElementsReader;->validateValueMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 48
    .end local v2           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    sget-object v10, Lcom/jd/droidlib/inner/AnnotationElementsReader;->nameField:Ljava/lang/reflect/Field;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 49
    .local v5, name:Ljava/lang/String;
    sget-object v10, Lcom/jd/droidlib/inner/AnnotationElementsReader;->validateValueMethod:Ljava/lang/reflect/Method;

    new-array v11, v8, [Ljava/lang/Object;

    invoke-virtual {v10, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 50
    .local v6, val:Ljava/lang/Object;
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
