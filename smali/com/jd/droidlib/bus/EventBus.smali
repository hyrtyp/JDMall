.class public Lcom/jd/droidlib/bus/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/droidlib/bus/EventBus$PostEventRunnable;,
        Lcom/jd/droidlib/bus/EventBus$ReflectiveReceiver;
    }
.end annotation


# static fields
.field private static final ALL:Ljava/lang/String; = "_all_"

.field private static final eventNameToReceivers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/jd/droidlib/bus/EventReceiver",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private static handler:Landroid/os/Handler;

.field private static final stickyEvents:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/jd/droidlib/bus/EventBus;->eventNameToReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/jd/droidlib/bus/EventBus;->stickyEvents:Ljava/util/concurrent/ConcurrentHashMap;

    .line 165
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter

    .prologue
    .line 121
    invoke-static {p0}, Lcom/jd/droidlib/bus/EventBus;->receiversForEventName(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/jd/droidlib/bus/EventReceiver;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-static {p0, p1, p2}, Lcom/jd/droidlib/bus/EventBus;->notifyReceiver(Lcom/jd/droidlib/bus/EventReceiver;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static notifyReceiver(Lcom/jd/droidlib/bus/EventReceiver;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter "event"
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jd/droidlib/bus/EventReceiver",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, receiver:Lcom/jd/droidlib/bus/EventReceiver;,"Lcom/jd/droidlib/bus/EventReceiver<Ljava/lang/Object;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 134
    move-object v1, p2

    .line 135
    .local v1, realData:[Ljava/lang/Object;
    array-length v2, p2

    if-nez v2, :cond_1

    .line 136
    const/4 v1, 0x0

    .line 141
    .end local v1           #realData:[Ljava/lang/Object;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p0, p1, v1}, Lcom/jd/droidlib/bus/EventReceiver;->onEvent(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    :goto_1
    return-void

    .line 137
    .restart local v1       #realData:[Ljava/lang/Object;
    :cond_1
    array-length v2, p2

    if-ne v2, v5, :cond_0

    .line 138
    aget-object v1, p2, v4

    .local v1, realData:Ljava/lang/Object;
    goto :goto_0

    .line 142
    .end local v1           #realData:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Failed to deliver event %s to %s: %s."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 143
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V

    goto :goto_1

    .line 145
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V

    .line 147
    const-string v2, "Receiver unregistered."

    invoke-static {v2}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V

    .line 148
    invoke-static {p0}, Lcom/jd/droidlib/bus/EventBus;->unregisterReceiver(Lcom/jd/droidlib/bus/EventReceiver;)V

    goto :goto_1
.end method

.method public static varargs postEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "data"

    .prologue
    .line 41
    new-instance v0, Lcom/jd/droidlib/bus/EventBus$PostEventRunnable;

    invoke-direct {v0, p0, p1}, Lcom/jd/droidlib/bus/EventBus$PostEventRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/jd/droidlib/bus/EventBus;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method public static varargs postEventSticky(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "data"

    .prologue
    .line 45
    sget-object v0, Lcom/jd/droidlib/bus/EventBus;->stickyEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p0, p1}, Lcom/jd/droidlib/bus/EventBus;->postEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method private static receiversForEventName(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/jd/droidlib/bus/EventReceiver",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    sget-object v1, Lcom/jd/droidlib/bus/EventBus;->eventNameToReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 124
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 125
    .local v0, map:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Lcom/jd/droidlib/bus/EventReceiver<Ljava/lang/Object;>;Ljava/lang/Boolean;>;"
    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v0           #map:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Lcom/jd/droidlib/bus/EventReceiver<Ljava/lang/Object;>;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 127
    .restart local v0       #map:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Lcom/jd/droidlib/bus/EventReceiver<Ljava/lang/Object;>;Ljava/lang/Boolean;>;"
    sget-object v1, Lcom/jd/droidlib/bus/EventBus;->eventNameToReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    return-object v0
.end method

.method public static registerAnnotatedReceiver(Ljava/lang/Object;)V
    .locals 6
    .parameter "obj"

    .prologue
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 101
    invoke-static {v2}, Lcom/jd/droidlib/inner/ClassSpecRegistry;->getReceiveEventsSpecs(Ljava/lang/Class;)[Lcom/jd/droidlib/inner/ann/MethodSpec;

    move-result-object v1

    .line 103
    .local v1, specs:[Lcom/jd/droidlib/inner/ann/MethodSpec;
    array-length v4, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    .line 106
    return-void

    .line 103
    :cond_0
    aget-object v0, v1, v3

    .line 104
    .local v0, spec:Lcom/jd/droidlib/inner/ann/MethodSpec;,"Lcom/jd/droidlib/inner/ann/MethodSpec<Lcom/jd/droidlib/inner/ann/bus/ReceiveEventsAnn;>;"
    new-instance v5, Lcom/jd/droidlib/bus/EventBus$ReflectiveReceiver;

    invoke-direct {v5, p0, v0}, Lcom/jd/droidlib/bus/EventBus$ReflectiveReceiver;-><init>(Ljava/lang/Object;Lcom/jd/droidlib/inner/ann/MethodSpec;)V

    iget-object v2, v0, Lcom/jd/droidlib/inner/ann/MethodSpec;->ann:Lcom/jd/droidlib/inner/ann/Ann;

    check-cast v2, Lcom/jd/droidlib/inner/ann/bus/ReceiveEventsAnn;

    iget-object v2, v2, Lcom/jd/droidlib/inner/ann/bus/ReceiveEventsAnn;->names:[Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/jd/droidlib/bus/EventBus;->registerReceiver(Lcom/jd/droidlib/bus/EventReceiver;[Ljava/lang/String;)V

    .line 103
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0
.end method

.method public static varargs registerReceiver(Lcom/jd/droidlib/bus/EventReceiver;[Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter "eventNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jd/droidlib/bus/EventReceiver",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, receiver:Lcom/jd/droidlib/bus/EventReceiver;,"Lcom/jd/droidlib/bus/EventReceiver<*>;"
    const/4 v5, 0x0

    .line 68
    move-object v4, p0

    .line 69
    .local v4, rec:Lcom/jd/droidlib/bus/EventReceiver;,"Lcom/jd/droidlib/bus/EventReceiver<Ljava/lang/Object;>;"
    array-length v6, p1

    if-nez v6, :cond_1

    const/4 v1, 0x1

    .line 70
    .local v1, allEvents:Z
    :goto_0
    if-eqz v1, :cond_3

    .line 71
    sget-object v5, Lcom/jd/droidlib/bus/EventBus;->stickyEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 74
    const-string v5, "_all_"

    invoke-static {v5}, Lcom/jd/droidlib/bus/EventBus;->receiversForEventName(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    return-void

    .end local v1           #allEvents:Z
    :cond_1
    move v1, v5

    .line 69
    goto :goto_0

    .line 71
    .restart local v1       #allEvents:Z
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 72
    .local v3, name:Ljava/lang/String;
    sget-object v5, Lcom/jd/droidlib/bus/EventBus;->stickyEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/jd/droidlib/bus/EventBus;->notifyReceiver(Lcom/jd/droidlib/bus/EventReceiver;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 76
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    array-length v7, p1

    move v6, v5

    :goto_2
    if-lt v6, v7, :cond_4

    .line 82
    array-length v6, p1

    :goto_3
    if-ge v5, v6, :cond_0

    aget-object v0, p1, v5

    .line 83
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Lcom/jd/droidlib/bus/EventBus;->receiversForEventName(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v4, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 76
    .end local v0           #action:Ljava/lang/String;
    :cond_4
    aget-object v3, p1, v6

    .line 77
    .restart local v3       #name:Ljava/lang/String;
    sget-object v8, Lcom/jd/droidlib/bus/EventBus;->stickyEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 78
    .local v2, data:[Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 79
    invoke-static {v4, v3, v2}, Lcom/jd/droidlib/bus/EventBus;->notifyReceiver(Lcom/jd/droidlib/bus/EventReceiver;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 154
    sget-object v1, Lcom/jd/droidlib/bus/EventBus;->handler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/jd/droidlib/bus/EventBus;->handler:Landroid/os/Handler;

    .line 157
    :cond_0
    sget-object v1, Lcom/jd/droidlib/bus/EventBus;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    .line 159
    .local v0, success:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 163
    return-void

    .line 160
    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lcom/jd/droidlib/bus/EventBus;->handler:Landroid/os/Handler;

    .line 161
    invoke-static {p0}, Lcom/jd/droidlib/bus/EventBus;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static unregisterAnnotatedReceiver(Ljava/lang/Object;)V
    .locals 5
    .parameter "obj"

    .prologue
    .line 109
    sget-object v2, Lcom/jd/droidlib/bus/EventBus;->eventNameToReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 109
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 119
    return-void

    .line 110
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    .local v1, receivers:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Lcom/jd/droidlib/bus/EventReceiver<Ljava/lang/Object;>;Ljava/lang/Boolean;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/droidlib/bus/EventReceiver;

    .line 112
    .local v0, receiver:Lcom/jd/droidlib/bus/EventReceiver;,"Lcom/jd/droidlib/bus/EventReceiver<Ljava/lang/Object;>;"
    instance-of v2, v0, Lcom/jd/droidlib/bus/EventBus$ReflectiveReceiver;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 113
    check-cast v2, Lcom/jd/droidlib/bus/EventBus$ReflectiveReceiver;

    iget-object v2, v2, Lcom/jd/droidlib/bus/EventBus$ReflectiveReceiver;->objectRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne p0, v2, :cond_2

    .line 114
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static unregisterReceiver(Lcom/jd/droidlib/bus/EventReceiver;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jd/droidlib/bus/EventReceiver",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, receiver:Lcom/jd/droidlib/bus/EventReceiver;,"Lcom/jd/droidlib/bus/EventReceiver<*>;"
    const-string v2, "_all_"

    invoke-static {v2}, Lcom/jd/droidlib/bus/EventBus;->receiversForEventName(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v2, Lcom/jd/droidlib/bus/EventBus;->eventNameToReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    return-void

    .line 90
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, eventName:Ljava/lang/String;
    sget-object v3, Lcom/jd/droidlib/bus/EventBus;->eventNameToReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    .local v1, receivers:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Lcom/jd/droidlib/bus/EventReceiver<Ljava/lang/Object;>;Ljava/lang/Boolean;>;"
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    sget-object v3, Lcom/jd/droidlib/bus/EventBus;->eventNameToReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public varargs clearStickyEvents([Ljava/lang/String;)V
    .locals 5
    .parameter "eventNames"

    .prologue
    .line 50
    array-length v3, p1

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 51
    .local v0, allEvents:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 52
    sget-object v3, Lcom/jd/droidlib/bus/EventBus;->stickyEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 63
    :cond_0
    :goto_1
    return-void

    .line 50
    .end local v0           #allEvents:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    .restart local v0       #allEvents:Z
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    .line 55
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 54
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 56
    .local v2, nameSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v3, Lcom/jd/droidlib/bus/EventBus;->stickyEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    .local v1, eventName:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 58
    sget-object v3, Lcom/jd/droidlib/bus/EventBus;->stickyEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
