.class public Lcom/jingdong/common/utils/URLParamMap;
.super Ljava/lang/Object;
.source "URLParamMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "URLParamMap"


# instance fields
.field private final charset:Ljava/lang/String;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/URLParamMap;->map:Ljava/util/Map;

    .line 25
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/jingdong/common/utils/URLParamMap;->charset:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "charset"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/URLParamMap;->map:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/jingdong/common/utils/URLParamMap;->charset:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jingdong/common/utils/URLParamMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 34
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jingdong/common/utils/URLParamMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t use putAll method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jingdong/common/utils/URLParamMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jingdong/common/utils/URLParamMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/jingdong/common/utils/URLParamMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jingdong/common/utils/URLParamMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/common/utils/URLParamMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jingdong/common/utils/URLParamMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jingdong/common/utils/URLParamMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/common/utils/URLParamMap;->charset:Ljava/lang/String;

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 74
    iget-object v1, p0, Lcom/jingdong/common/utils/URLParamMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public put(Landroid/net/Uri;)V
    .locals 8
    .parameter "uri"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, url:Ljava/lang/String;
    new-instance v5, Landroid/net/UrlQuerySanitizer;

    invoke-direct {v5, v4}, Landroid/net/UrlQuerySanitizer;-><init>(Ljava/lang/String;)V

    .line 99
    .local v5, urlQuerySanitizer:Landroid/net/UrlQuerySanitizer;
    invoke-virtual {v5}, Landroid/net/UrlQuerySanitizer;->getParameterList()Ljava/util/List;

    move-result-object v2

    .line 103
    .local v2, parameterList:Ljava/util/List;,"Ljava/util/List<Landroid/net/UrlQuerySanitizer$ParameterValuePair;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/UrlQuerySanitizer$ParameterValuePair;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 112
    return-void

    .line 104
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/UrlQuerySanitizer$ParameterValuePair;

    .line 105
    .local v3, parameterValuePair:Landroid/net/UrlQuerySanitizer$ParameterValuePair;
    iget-object v1, v3, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mParameter:Ljava/lang/String;

    .line 106
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, value:Ljava/lang/String;
    invoke-virtual {p0, v1, v6}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, arg0:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/String;+Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t use putAll method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/jingdong/common/utils/URLParamMap;->remove(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jingdong/common/utils/URLParamMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jingdong/common/utils/URLParamMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jingdong/common/utils/URLParamMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
