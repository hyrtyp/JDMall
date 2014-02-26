.class public Lcom/jingdong/common/utils/DefaultEffectHttpListener;
.super Ljava/lang/Object;
.source "DefaultEffectHttpListener.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnStartListener;
.implements Lcom/jingdong/common/utils/HttpGroup$OnEndListener;
.implements Lcom/jingdong/common/utils/HttpGroup$OnErrorListener;
.implements Lcom/jingdong/common/frame/IDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultEffectHttpListener"

.field private static final stateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/jingdong/common/frame/IMyActivity;",
            "Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private onEndListener:Lcom/jingdong/common/utils/HttpGroup$OnEndListener;

.field private onErrorListener:Lcom/jingdong/common/utils/HttpGroup$OnErrorListener;

.field private onStartListener:Lcom/jingdong/common/utils/HttpGroup$OnStartListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->stateMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 1
    .parameter "httpSetting"
    .parameter "myActivity"

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    if-eqz p1, :cond_0

    .line 272
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getOnStartListener()Lcom/jingdong/common/utils/HttpGroup$OnStartListener;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->onStartListener:Lcom/jingdong/common/utils/HttpGroup$OnStartListener;

    .line 273
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getOnEndListener()Lcom/jingdong/common/utils/HttpGroup$OnEndListener;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->onEndListener:Lcom/jingdong/common/utils/HttpGroup$OnEndListener;

    .line 274
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getOnErrorListener()Lcom/jingdong/common/utils/HttpGroup$OnErrorListener;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->onErrorListener:Lcom/jingdong/common/utils/HttpGroup$OnErrorListener;

    .line 276
    :cond_0
    iput-object p2, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 277
    invoke-interface {p2, p0}, Lcom/jingdong/common/frame/IMyActivity;->addDestroyListener(Lcom/jingdong/common/frame/IDestroyListener;)V

    .line 278
    return-void
.end method

.method private missionBegins()V
    .locals 6

    .prologue
    .line 282
    const/4 v1, 0x0

    .line 284
    .local v1, state:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;
    sget-object v4, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->stateMap:Ljava/util/Map;

    monitor-enter v4

    .line 286
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    if-nez v3, :cond_0

    .line 287
    monitor-exit v4

    .line 306
    :goto_0
    return-void

    .line 293
    :cond_0
    sget-object v3, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->stateMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;

    move-object v1, v0

    .line 297
    if-nez v1, :cond_1

    .line 298
    new-instance v2, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;

    iget-object v3, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-direct {v2, p0, v3}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;-><init>(Lcom/jingdong/common/utils/DefaultEffectHttpListener;Lcom/jingdong/common/frame/IMyActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .end local v1           #state:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;
    .local v2, state:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;
    :try_start_1
    sget-object v3, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->stateMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 284
    .end local v2           #state:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;
    .restart local v1       #state:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;
    :cond_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    invoke-virtual {v1}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->addMission()Z

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v3

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .end local v1           #state:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;
    .restart local v2       #state:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #state:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;
    .restart local v1       #state:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;
    goto :goto_1
.end method

.method private missionComplete()V
    .locals 5

    .prologue
    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, state:Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;
    sget-object v3, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->stateMap:Ljava/util/Map;

    monitor-enter v3

    .line 312
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    if-nez v2, :cond_0

    .line 313
    monitor-exit v3

    .line 325
    :goto_0
    return-void

    .line 316
    :cond_0
    sget-object v2, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->stateMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;

    move-object v1, v0

    .line 318
    if-nez v1, :cond_1

    .line 319
    monitor-exit v3

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    invoke-virtual {v1}, Lcom/jingdong/common/utils/DefaultEffectHttpListener$State;->removeMission()Z

    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    .prologue
    .line 353
    sget-object v1, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->stateMap:Ljava/util/Map;

    monitor-enter v1

    .line 354
    :try_start_0
    sget-object v0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->stateMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 353
    monitor-exit v1

    .line 357
    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 1
    .parameter "httpResponse"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->onEndListener:Lcom/jingdong/common/utils/HttpGroup$OnEndListener;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->onEndListener:Lcom/jingdong/common/utils/HttpGroup$OnEndListener;

    invoke-interface {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$OnEndListener;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->missionComplete()V

    .line 341
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->onErrorListener:Lcom/jingdong/common/utils/HttpGroup$OnErrorListener;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->onErrorListener:Lcom/jingdong/common/utils/HttpGroup$OnErrorListener;

    invoke-interface {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$OnErrorListener;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->missionComplete()V

    .line 349
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->missionBegins()V

    .line 330
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->onStartListener:Lcom/jingdong/common/utils/HttpGroup$OnStartListener;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;->onStartListener:Lcom/jingdong/common/utils/HttpGroup$OnStartListener;

    invoke-interface {v0}, Lcom/jingdong/common/utils/HttpGroup$OnStartListener;->onStart()V

    .line 333
    :cond_0
    return-void
.end method
