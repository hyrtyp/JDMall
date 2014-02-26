.class public abstract Lcom/jd/droidlib/executor/task/AsyncTask;
.super Landroid/os/AsyncTask;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;",
        "Landroid/util/Pair",
        "<TResult;",
        "Ljava/lang/Exception;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final resultListener:Lcom/jd/droidlib/executor/task/AsyncTaskResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jd/droidlib/executor/task/AsyncTaskResultListener",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 31
    .local p0, this:Lcom/jd/droidlib/executor/task/AsyncTask;,"Lcom/jd/droidlib/executor/task/AsyncTask<TParams;TProgress;TResult;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jd/droidlib/executor/task/AsyncTask;-><init>(Landroid/content/Context;Lcom/jd/droidlib/executor/task/AsyncTaskResultListener;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jd/droidlib/executor/task/AsyncTaskResultListener;)V
    .locals 1
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/jd/droidlib/executor/task/AsyncTaskResultListener",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, this:Lcom/jd/droidlib/executor/task/AsyncTask;,"Lcom/jd/droidlib/executor/task/AsyncTask<TParams;TProgress;TResult;>;"
    .local p2, resultListener:Lcom/jd/droidlib/executor/task/AsyncTaskResultListener;,"Lcom/jd/droidlib/executor/task/AsyncTaskResultListener<TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    invoke-static {p1, p0}, Lcom/jd/droidlib/Injector;->inject(Landroid/content/Context;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/droidlib/executor/task/AsyncTask;->ctx:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/jd/droidlib/executor/task/AsyncTask;->resultListener:Lcom/jd/droidlib/executor/task/AsyncTaskResultListener;

    .line 38
    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Landroid/util/Pair;
    .locals 10
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Landroid/util/Pair",
            "<TResult;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lcom/jd/droidlib/executor/task/AsyncTask;,"Lcom/jd/droidlib/executor/task/AsyncTask<TParams;TProgress;TResult;>;"
    const/4 v2, 0x0

    .line 47
    .local v2, res:Ljava/lang/Object;,"TResult;"
    const/4 v1, 0x0

    .line 49
    .local v1, ex:Ljava/lang/Exception;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 50
    .local v3, start:J
    invoke-virtual {p0, p1}, Lcom/jd/droidlib/executor/task/AsyncTask;->onExecute([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 51
    const-string v5, "Executed %s in %d ms."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    .line 51
    invoke-static {v5, v6}, Lcom/jd/droidlib/util/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v2           #res:Ljava/lang/Object;,"TResult;"
    .end local v3           #start:J
    :goto_0
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V

    .line 55
    move-object v1, v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/jd/droidlib/executor/task/AsyncTask;->doInBackground([Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    .local p0, this:Lcom/jd/droidlib/executor/task/AsyncTask;,"Lcom/jd/droidlib/executor/task/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/jd/droidlib/executor/task/AsyncTask;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method protected varargs abstract onExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final onPostExecute(Landroid/util/Pair;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<TResult;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Lcom/jd/droidlib/executor/task/AsyncTask;,"Lcom/jd/droidlib/executor/task/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Landroid/util/Pair;,"Landroid/util/Pair<TResult;Ljava/lang/Exception;>;"
    :try_start_0
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/jd/droidlib/executor/task/AsyncTask;->resultListener:Lcom/jd/droidlib/executor/task/AsyncTaskResultListener;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/jd/droidlib/executor/task/AsyncTask;->resultListener:Lcom/jd/droidlib/executor/task/AsyncTaskResultListener;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/jd/droidlib/executor/task/AsyncTaskResultListener;->onAsyncTaskSuccess(Ljava/lang/Object;)V

    .line 68
    :cond_0
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/jd/droidlib/executor/task/AsyncTask;->onPostExecuteSuccess(Ljava/lang/Object;)V

    .line 79
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/jd/droidlib/executor/task/AsyncTask;->resultListener:Lcom/jd/droidlib/executor/task/AsyncTaskResultListener;

    if-eqz v1, :cond_2

    .line 71
    iget-object v2, p0, Lcom/jd/droidlib/executor/task/AsyncTask;->resultListener:Lcom/jd/droidlib/executor/task/AsyncTaskResultListener;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    invoke-interface {v2, v1}, Lcom/jd/droidlib/executor/task/AsyncTaskResultListener;->onAsyncTaskFailure(Ljava/lang/Exception;)V

    .line 73
    :cond_2
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {p0, v1}, Lcom/jd/droidlib/executor/task/AsyncTask;->onPostExecuteFailure(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, t:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V

    .line 77
    invoke-static {v0}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/jd/droidlib/executor/task/AsyncTask;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method

.method protected onPostExecuteFailure(Ljava/lang/Exception;)V
    .locals 0
    .parameter "exception"

    .prologue
    .line 87
    .local p0, this:Lcom/jd/droidlib/executor/task/AsyncTask;,"Lcom/jd/droidlib/executor/task/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onPostExecuteSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, this:Lcom/jd/droidlib/executor/task/AsyncTask;,"Lcom/jd/droidlib/executor/task/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    return-void
.end method
