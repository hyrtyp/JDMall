.class public Lcom/jingdong/cloud/msg/util/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# static fields
.field private static final TASKS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jingdong/cloud/msg/entity/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 18
    sput-object v0, Lcom/jingdong/cloud/msg/util/RequestQueue;->TASKS:Ljava/util/Map;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized contains(Ljava/lang/Integer;)Z
    .locals 6
    .parameter "opType"

    .prologue
    .line 42
    const-class v4, Lcom/jingdong/cloud/msg/util/RequestQueue;

    monitor-enter v4

    const/4 v1, 0x0

    .line 43
    .local v1, isContained:Z
    :try_start_0
    sget-object v3, Lcom/jingdong/cloud/msg/util/RequestQueue;->TASKS:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 44
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jingdong/cloud/msg/entity/Call;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 51
    :goto_0
    monitor-exit v4

    return v1

    .line 45
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 46
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jingdong/cloud/msg/entity/Call;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/cloud/msg/entity/Call;

    invoke-virtual {v3}, Lcom/jingdong/cloud/msg/entity/Call;->getOpType()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-ne v3, v5, :cond_0

    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_0

    .line 42
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jingdong/cloud/msg/entity/Call;>;"
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jingdong/cloud/msg/entity/Call;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized discard(Ljava/lang/String;)V
    .locals 2
    .parameter "reqId"

    .prologue
    .line 34
    const-class v1, Lcom/jingdong/cloud/msg/util/RequestQueue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jingdong/cloud/msg/util/RequestQueue;->TASKS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit v1

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getTasks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jingdong/cloud/msg/entity/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    sget-object v0, Lcom/jingdong/cloud/msg/util/RequestQueue;->TASKS:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized peek(Ljava/lang/String;)Lcom/jingdong/cloud/msg/entity/Call;
    .locals 2
    .parameter "reqId"

    .prologue
    .line 38
    const-class v1, Lcom/jingdong/cloud/msg/util/RequestQueue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jingdong/cloud/msg/util/RequestQueue;->TASKS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/cloud/msg/entity/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized purge(J)I
    .locals 9
    .parameter "timeoutNano"

    .prologue
    .line 60
    const-class v6, Lcom/jingdong/cloud/msg/util/RequestQueue;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/jingdong/cloud/msg/util/RequestQueue;->TASKS:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 61
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jingdong/cloud/msg/entity/Call;>;>;"
    const/4 v0, 0x0

    .line 62
    .local v0, count:I
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 72
    monitor-exit v6

    return v0

    .line 63
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 64
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jingdong/cloud/msg/entity/Call;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 65
    .local v3, time:J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long v7, v3, v7

    cmp-long v5, v7, p0

    if-lez v5, :cond_0

    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 67
    const-class v5, Lcom/jingdong/cloud/msg/util/RequestQueue;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v5, "Purge request: opType = "

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/cloud/msg/entity/Call;

    invoke-virtual {v5}, Lcom/jingdong/cloud/msg/entity/Call;->getOpType()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", reqId = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/cloud/msg/entity/Call;

    invoke-virtual {v5}, Lcom/jingdong/cloud/msg/entity/Call;->getReqId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-static {v7, v5}, Lcom/jingdong/cloud/msg/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    .end local v0           #count:I
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jingdong/cloud/msg/entity/Call;>;"
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jingdong/cloud/msg/entity/Call;>;>;"
    .end local v3           #time:J
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static declared-synchronized put(Lcom/jingdong/cloud/msg/entity/Call;)V
    .locals 3
    .parameter "call"

    .prologue
    .line 26
    const-class v1, Lcom/jingdong/cloud/msg/util/RequestQueue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jingdong/cloud/msg/util/RequestQueue;->TASKS:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/jingdong/cloud/msg/entity/Call;->getReqId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v1

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized take(Ljava/lang/String;)Lcom/jingdong/cloud/msg/entity/Call;
    .locals 2
    .parameter "reqId"

    .prologue
    .line 30
    const-class v1, Lcom/jingdong/cloud/msg/util/RequestQueue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jingdong/cloud/msg/util/RequestQueue;->TASKS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/cloud/msg/entity/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
