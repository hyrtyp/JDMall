.class Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundAsynTask;
.super Landroid/os/AsyncTask;
.source "BackgroundExcutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ja/sdk/utils/BackgroundExcutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackgroundAsynTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundAsynTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 45
    :goto_0
    invoke-static {}, Lcom/ja/sdk/utils/BackgroundExcutor;->access$0()Ljava/util/PriorityQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundTask;

    .local v0, runnable:Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundTask;
    if-nez v0, :cond_0

    .line 49
    invoke-static {v2}, Lcom/ja/sdk/utils/BackgroundExcutor;->access$1(Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundAsynTask;)V

    .line 51
    return-object v2

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundTask;->run()V

    goto :goto_0
.end method
