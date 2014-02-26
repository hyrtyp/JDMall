.class public Lcom/jingdong/common/utils/cache/JsonCache;
.super Ljava/lang/Object;
.source "JsonCache.java"


# static fields
.field protected static jsonCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jingdong/common/utils/JSONObjectProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jingdong/common/utils/cache/JsonCache;->jsonCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 12
    const-class v1, Lcom/jingdong/common/utils/cache/JsonCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jingdong/common/utils/cache/JsonCache;->jsonCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized get(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;
    .locals 2
    .parameter "key"

    .prologue
    .line 16
    const-class v1, Lcom/jingdong/common/utils/cache/JsonCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jingdong/common/utils/cache/JsonCache;->jsonCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized put(Ljava/lang/String;Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 20
    const-class v1, Lcom/jingdong/common/utils/cache/JsonCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jingdong/common/utils/cache/JsonCache;->jsonCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v1

    return-void

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
