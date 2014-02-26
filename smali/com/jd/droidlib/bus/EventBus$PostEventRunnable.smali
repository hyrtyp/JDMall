.class Lcom/jd/droidlib/bus/EventBus$PostEventRunnable;
.super Ljava/lang/Object;
.source "EventBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/droidlib/bus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostEventRunnable"
.end annotation


# instance fields
.field private final data:[Ljava/lang/Object;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "name"
    .parameter "data"

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/jd/droidlib/bus/EventBus$PostEventRunnable;->name:Ljava/lang/String;

    .line 174
    iput-object p2, p0, Lcom/jd/droidlib/bus/EventBus$PostEventRunnable;->data:[Ljava/lang/Object;

    .line 175
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 179
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 180
    .local v1, receivers:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/jd/droidlib/bus/EventReceiver<Ljava/lang/Object;>;>;"
    const-string v2, "_all_"

    #calls: Lcom/jd/droidlib/bus/EventBus;->receiversForEventName(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/jd/droidlib/bus/EventBus;->access$0(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 181
    iget-object v2, p0, Lcom/jd/droidlib/bus/EventBus$PostEventRunnable;->name:Ljava/lang/String;

    #calls: Lcom/jd/droidlib/bus/EventBus;->receiversForEventName(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/jd/droidlib/bus/EventBus;->access$0(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 182
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    return-void

    .line 182
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/droidlib/bus/EventReceiver;

    .line 183
    .local v0, rec:Lcom/jd/droidlib/bus/EventReceiver;,"Lcom/jd/droidlib/bus/EventReceiver<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/jd/droidlib/bus/EventBus$PostEventRunnable;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/jd/droidlib/bus/EventBus$PostEventRunnable;->data:[Ljava/lang/Object;

    #calls: Lcom/jd/droidlib/bus/EventBus;->notifyReceiver(Lcom/jd/droidlib/bus/EventReceiver;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v3, v4}, Lcom/jd/droidlib/bus/EventBus;->access$1(Lcom/jd/droidlib/bus/EventReceiver;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
