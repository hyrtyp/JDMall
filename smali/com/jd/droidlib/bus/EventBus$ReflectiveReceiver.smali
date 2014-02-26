.class Lcom/jd/droidlib/bus/EventBus$ReflectiveReceiver;
.super Ljava/lang/Object;
.source "EventBus.java"

# interfaces
.implements Lcom/jd/droidlib/bus/EventReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/droidlib/bus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectiveReceiver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/jd/droidlib/bus/EventReceiver",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final objectRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final spec:Lcom/jd/droidlib/inner/ann/MethodSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jd/droidlib/inner/ann/MethodSpec",
            "<",
            "Lcom/jd/droidlib/inner/ann/bus/ReceiveEventsAnn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/jd/droidlib/inner/ann/MethodSpec;)V
    .locals 1
    .parameter "object"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/jd/droidlib/inner/ann/MethodSpec",
            "<",
            "Lcom/jd/droidlib/inner/ann/bus/ReceiveEventsAnn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, spec:Lcom/jd/droidlib/inner/ann/MethodSpec;,"Lcom/jd/droidlib/inner/ann/MethodSpec<Lcom/jd/droidlib/inner/ann/bus/ReceiveEventsAnn;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jd/droidlib/bus/EventBus$ReflectiveReceiver;->objectRef:Ljava/lang/ref/WeakReference;

    .line 195
    iput-object p2, p0, Lcom/jd/droidlib/bus/EventBus$ReflectiveReceiver;->spec:Lcom/jd/droidlib/inner/ann/MethodSpec;

    .line 196
    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .parameter "name"
    .parameter "data"

    .prologue
    .line 201
    :try_start_0
    iget-object v2, p0, Lcom/jd/droidlib/bus/EventBus$ReflectiveReceiver;->objectRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 202
    .local v1, obj:Ljava/lang/Object;
    iget-object v2, p0, Lcom/jd/droidlib/bus/EventBus$ReflectiveReceiver;->spec:Lcom/jd/droidlib/inner/ann/MethodSpec;

    iget-object v2, v2, Lcom/jd/droidlib/inner/ann/MethodSpec;->paramTypes:[Ljava/lang/Class;

    array-length v2, v2

    packed-switch v2, :pswitch_data_0

    .line 210
    iget-object v2, p0, Lcom/jd/droidlib/bus/EventBus$ReflectiveReceiver;->spec:Lcom/jd/droidlib/inner/ann/MethodSpec;

    iget-object v2, v2, Lcom/jd/droidlib/inner/ann/MethodSpec;->method:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :goto_0
    return-void

    .line 204
    :pswitch_0
    iget-object v2, p0, Lcom/jd/droidlib/bus/EventBus$ReflectiveReceiver;->spec:Lcom/jd/droidlib/inner/ann/MethodSpec;

    iget-object v2, v2, Lcom/jd/droidlib/inner/ann/MethodSpec;->method:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 212
    .end local v1           #obj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/IllegalArgumentException;
    throw v0

    .line 207
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #obj:Ljava/lang/Object;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/jd/droidlib/bus/EventBus$ReflectiveReceiver;->spec:Lcom/jd/droidlib/inner/ann/MethodSpec;

    iget-object v2, v2, Lcom/jd/droidlib/inner/ann/MethodSpec;->method:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 214
    .end local v1           #obj:Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
