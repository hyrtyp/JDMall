.class public abstract Lcom/jd/droidlib/executor/service/IntentService;
.super Landroid/app/IntentService;
.source "IntentService.java"


# static fields
.field public static final EXTRA_ACTION:Ljava/lang/String; = "_action"

.field public static final EXTRA_EXCEPTION:Ljava/lang/String; = "_exception"

.field private static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "_result_receiver"

.field private static mServiceHandlerField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 5

    .prologue
    .line 103
    const/4 v2, 0x0

    .line 105
    .local v2, handler:Landroid/os/Handler;
    :try_start_0
    sget-object v3, Lcom/jd/droidlib/executor/service/IntentService;->mServiceHandlerField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_0

    .line 106
    const-class v3, Landroid/app/IntentService;

    .line 107
    const-string v4, "mServiceHandler"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 106
    sput-object v3, Lcom/jd/droidlib/executor/service/IntentService;->mServiceHandlerField:Ljava/lang/reflect/Field;

    .line 108
    sget-object v3, Lcom/jd/droidlib/executor/service/IntentService;->mServiceHandlerField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 110
    :cond_0
    sget-object v3, Lcom/jd/droidlib/executor/service/IntentService;->mServiceHandlerField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/Handler;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-object v2

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static final getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "ctx"
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/jd/droidlib/executor/service/IntentService;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/jd/droidlib/executor/service/IntentService;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    return-object v0
.end method

.method public static final getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;
    .locals 2
    .parameter "ctx"
    .parameter
    .parameter "action"
    .parameter "resultReceiver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/jd/droidlib/executor/service/IntentService;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/ResultReceiver;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/jd/droidlib/executor/service/IntentService;>;"
    invoke-static {p0, p1, p2}, Lcom/jd/droidlib/executor/service/IntentService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 52
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "_result_receiver"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 53
    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 63
    invoke-static {p0}, Lcom/jd/droidlib/Injector;->inject(Landroid/app/Service;)V

    .line 64
    return-void
.end method

.method protected abstract onExecute(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 70
    .local v1, data:Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 71
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #data:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 74
    .restart local v1       #data:Landroid/os/Bundle;
    :cond_0
    const-string v4, "_result_receiver"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 75
    .local v3, resultReceiver:Landroid/os/ResultReceiver;
    const-string v4, "_action"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/jd/droidlib/executor/service/IntentService;->onExecute(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 78
    if-eqz v3, :cond_1

    .line 79
    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, e:Ljava/lang/Exception;
    invoke-static {v2}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V

    .line 83
    if-eqz v3, :cond_1

    .line 84
    const-string v4, "_exception"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 85
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public removePendingIntents()V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/jd/droidlib/executor/service/IntentService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 92
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 95
    :cond_0
    return-void
.end method
