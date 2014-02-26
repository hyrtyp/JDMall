.class public Lcom/jd/droidlib/net/http/HTTPResponse;
.super Ljava/lang/Object;
.source "HTTPResponse.java"


# instance fields
.field public body:Ljava/lang/String;

.field public code:I

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public inputStream:Lcom/jd/droidlib/net/http/worker/HTTPInputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    if-ne p1, p0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    instance-of v2, p1, Lcom/jd/droidlib/net/http/HTTPResponse;

    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/jd/droidlib/net/http/HTTPResponse;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 83
    goto :goto_0
.end method

.method public getHeaderDate(Ljava/lang/String;)J
    .locals 4
    .parameter "name"

    .prologue
    .line 35
    const-wide/16 v1, 0x0

    .line 36
    .local v1, val:J
    invoke-virtual {p0, p1}, Lcom/jd/droidlib/net/http/HTTPResponse;->getHeaderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, valStr:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 39
    :try_start_0
    invoke-static {v3}, Ljava/util/Date;->parse(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 44
    :cond_0
    :goto_0
    return-wide v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getHeaderInt(Ljava/lang/String;)I
    .locals 4
    .parameter "name"

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, val:I
    invoke-virtual {p0, p1}, Lcom/jd/droidlib/net/http/HTTPResponse;->getHeaderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, valStr:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 52
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 57
    :cond_0
    :goto_0
    return v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getHeaderString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, val:Ljava/lang/String;
    iget-object v2, p0, Lcom/jd/droidlib/net/http/HTTPResponse;->headers:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/jd/droidlib/net/http/HTTPResponse;->headers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 64
    .local v1, vals:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 65
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #val:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 68
    .end local v1           #vals:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0       #val:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jd/droidlib/net/http/HTTPResponse;->code:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jd/droidlib/net/http/HTTPResponse;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/jd/droidlib/net/http/HTTPResponse;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jd/droidlib/net/http/HTTPResponse;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
