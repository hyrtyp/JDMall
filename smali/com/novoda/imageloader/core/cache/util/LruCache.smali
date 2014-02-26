.class public Lcom/novoda/imageloader/core/cache/util/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private missCount:I

.field private putCount:I

.field private size:J


# direct methods
.method public constructor <init>(J)V
    .locals 4
    .parameter "maxSize"

    .prologue
    .line 81
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iput-wide p1, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->maxSize:J

    .line 86
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->map:Ljava/util/LinkedHashMap;

    .line 87
    return-void
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)J"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1, p2}, Lcom/novoda/imageloader/core/cache/util/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0

    .line 259
    .local v0, result:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 260
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Negative size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    :cond_0
    return-wide v0
.end method

.method private trimToSize(J)V
    .locals 9
    .parameter "maxSize"

    .prologue
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    const-wide/16 v7, 0x0

    .line 175
    :goto_0
    monitor-enter p0

    .line 176
    :try_start_0
    iget-wide v3, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->size:J

    cmp-long v3, v3, v7

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->size:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_1

    .line 177
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 183
    :cond_1
    :try_start_1
    iget-wide v3, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->size:J

    cmp-long v3, v3, p1

    if-gtz v3, :cond_2

    .line 184
    monitor-exit p0

    .line 201
    :goto_1
    return-void

    .line 187
    :cond_2
    iget-object v3, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 188
    .local v1, toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v1, :cond_3

    .line 189
    monitor-exit p0

    goto :goto_1

    .line 192
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 193
    .local v0, key:Ljava/lang/Object;,"TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 194
    .local v2, value:Ljava/lang/Object;,"TV;"
    iget-object v3, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-wide v3, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->size:J

    invoke-direct {p0, v0, v2}, Lcom/novoda/imageloader/core/cache/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->size:J

    .line 196
    iget v3, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->evictionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->evictionCount:I

    .line 175
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v2, v4}, Lcom/novoda/imageloader/core/cache/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized createCount()I
    .locals 1

    .prologue
    .line 323
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->createCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "evicted"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    .local p3, oldValue:Ljava/lang/Object;,"TV;"
    .local p4, newValue:Ljava/lang/Object;,"TV;"
    return-void
.end method

.method public final evict(J)V
    .locals 0
    .parameter "maxSize"

    .prologue
    .line 287
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/novoda/imageloader/core/cache/util/LruCache;->trimToSize(J)V

    .line 288
    return-void
.end method

.method public final evictAll()V
    .locals 2

    .prologue
    .line 280
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/novoda/imageloader/core/cache/util/LruCache;->trimToSize(J)V

    .line 281
    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .locals 1

    .prologue
    .line 337
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->evictionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    if-nez p1, :cond_0

    .line 95
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_0
    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 100
    .local v1, mapValue:Ljava/lang/Object;,"TV;"
    if-eqz v1, :cond_1

    .line 101
    iget v2, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->hitCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->hitCount:I

    .line 102
    monitor-exit p0

    move-object v0, v1

    .line 136
    :goto_0
    return-object v0

    .line 104
    :cond_1
    iget v2, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->missCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->missCount:I

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-virtual {p0, p1}, Lcom/novoda/imageloader/core/cache/util/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    .local v0, createdValue:Ljava/lang/Object;,"TV;"
    if-nez v0, :cond_2

    .line 116
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    .end local v0           #createdValue:Ljava/lang/Object;,"TV;"
    .end local v1           #mapValue:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 119
    .restart local v0       #createdValue:Ljava/lang/Object;,"TV;"
    .restart local v1       #mapValue:Ljava/lang/Object;,"TV;"
    :cond_2
    monitor-enter p0

    .line 120
    :try_start_2
    iget v2, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->createCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->createCount:I

    .line 121
    iget-object v2, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_3

    .line 125
    iget-object v2, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    if-eqz v1, :cond_4

    .line 132
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/novoda/imageloader/core/cache/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 133
    goto :goto_0

    .line 127
    :cond_3
    :try_start_3
    iget-wide v2, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->size:J

    invoke-direct {p0, p1, v0}, Lcom/novoda/imageloader/core/cache/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->size:J

    goto :goto_1

    .line 119
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 135
    :cond_4
    iget-wide v2, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->maxSize:J

    invoke-direct {p0, v2, v3}, Lcom/novoda/imageloader/core/cache/util/LruCache;->trimToSize(J)V

    goto :goto_0
.end method

.method public final declared-synchronized hitCount()I
    .locals 1

    .prologue
    .line 309
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()J
    .locals 2

    .prologue
    .line 302
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .locals 1

    .prologue
    .line 316
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->missCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 147
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null || value == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_1
    monitor-enter p0

    .line 151
    :try_start_0
    iget v1, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->putCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->putCount:I

    .line 152
    iget-wide v1, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->size:J

    invoke-direct {p0, p1, p2}, Lcom/novoda/imageloader/core/cache/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->size:J

    .line 153
    iget-object v1, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 154
    .local v0, previous:Ljava/lang/Object;,"TV;"
    if-eqz v0, :cond_2

    .line 155
    iget-wide v1, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->size:J

    invoke-direct {p0, p1, v0}, Lcom/novoda/imageloader/core/cache/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->size:J

    .line 150
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    if-eqz v0, :cond_3

    .line 160
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/novoda/imageloader/core/cache/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    :cond_3
    iget-wide v1, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->maxSize:J

    invoke-direct {p0, v1, v2}, Lcom/novoda/imageloader/core/cache/util/LruCache;->trimToSize(J)V

    .line 164
    return-object v0

    .line 150
    .end local v0           #previous:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final declared-synchronized putCount()I
    .locals 1

    .prologue
    .line 330
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->putCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    if-nez p1, :cond_0

    .line 210
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_0
    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    .local v0, previous:Ljava/lang/Object;,"TV;"
    if-eqz v0, :cond_1

    .line 217
    iget-wide v1, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->size:J

    invoke-direct {p0, p1, v0}, Lcom/novoda/imageloader/core/cache/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->size:J

    .line 214
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    if-eqz v0, :cond_2

    .line 222
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/novoda/imageloader/core/cache/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    :cond_2
    return-object v0

    .line 214
    .end local v0           #previous:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final declared-synchronized size()J
    .locals 2

    .prologue
    .line 294
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)J"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 7

    .prologue
    .local p0, this:Lcom/novoda/imageloader/core/cache/util/LruCache;,"Lcom/novoda/imageloader/core/cache/util/LruCache<TK;TV;>;"
    const/4 v1, 0x0

    .line 349
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->hitCount:I

    iget v3, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->missCount:I

    add-int v0, v2, v3

    .line 350
    .local v0, accesses:I
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->hitCount:I

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v0

    .line 351
    .local v1, hitPercent:I
    :cond_0
    const-string v2, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->maxSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->hitCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/novoda/imageloader/core/cache/util/LruCache;->missCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 349
    .end local v0           #accesses:I
    .end local v1           #hitPercent:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
