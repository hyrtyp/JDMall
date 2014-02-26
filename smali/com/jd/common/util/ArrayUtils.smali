.class public Lcom/jd/common/util/ArrayUtils;
.super Lorg/apache/commons/lang/ArrayUtils;
.source "ArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/apache/commons/lang/ArrayUtils;-><init>()V

    return-void
.end method

.method public static join([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .parameter "ints"

    .prologue
    .line 56
    const-string v0, ","

    invoke-static {p0, v0}, Lcom/jd/common/util/ArrayUtils;->join([Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "ints"
    .parameter "delim"

    .prologue
    .line 78
    if-eqz p0, :cond_2

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v1, builder:Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 85
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    .end local v1           #builder:Ljava/lang/StringBuilder;
    :goto_1
    return-object v2

    .line 80
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    :cond_0
    aget-object v0, p0, v2

    .line 81
    .local v0, anInt:Ljava/lang/Integer;
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v0           #anInt:Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 89
    .end local v1           #builder:Ljava/lang/StringBuilder;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static join([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "objs"

    .prologue
    .line 66
    const-string v0, ","

    invoke-static {p0, v0}, Lcom/jd/common/util/ArrayUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "objs"
    .parameter "delim"

    .prologue
    .line 93
    if-eqz p0, :cond_2

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v1, builder:Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 100
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    .end local v1           #builder:Ljava/lang/StringBuilder;
    :goto_1
    return-object v2

    .line 95
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    :cond_0
    aget-object v0, p0, v2

    .line 96
    .local v0, anObj:Ljava/lang/Object;
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v0           #anObj:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 104
    .end local v1           #builder:Ljava/lang/StringBuilder;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static splitInt(Ljava/lang/String;)[Ljava/lang/Integer;
    .locals 1
    .parameter "str"

    .prologue
    .line 22
    const-string v0, ","

    invoke-static {p0, v0}, Lcom/jd/common/util/ArrayUtils;->splitInt(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static splitInt(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Integer;
    .locals 5
    .parameter "str"
    .parameter "delim"

    .prologue
    .line 32
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v0, integers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/Integer;

    .line 43
    .local v1, rc:[Ljava/lang/Integer;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 46
    .end local v0           #integers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1           #rc:[Ljava/lang/Integer;
    .end local v3           #tokenizer:Ljava/util/StringTokenizer;
    :goto_1
    return-object v1

    .line 35
    .restart local v0       #integers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3       #tokenizer:Ljava/util/StringTokenizer;
    :cond_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, s:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v4

    goto :goto_0

    .line 46
    .end local v0           #integers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2           #s:Ljava/lang/String;
    .end local v3           #tokenizer:Ljava/util/StringTokenizer;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
