.class public Lcom/ja/sdk/utils/BackgroundExcutor;
.super Ljava/lang/Object;
.source "BackgroundExcutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundAsynTask;,
        Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundTask;
    }
.end annotation


# static fields
.field private static excutor:Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundAsynTask;

.field private static taskQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    sput-object v0, Lcom/ja/sdk/utils/BackgroundExcutor;->taskQueue:Ljava/util/PriorityQueue;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/PriorityQueue;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/ja/sdk/utils/BackgroundExcutor;->taskQueue:Ljava/util/PriorityQueue;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundAsynTask;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    sput-object p0, Lcom/ja/sdk/utils/BackgroundExcutor;->excutor:Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundAsynTask;

    return-void
.end method

.method public static run(Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundTask;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 24
    sget-object v0, Lcom/ja/sdk/utils/BackgroundExcutor;->taskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/ja/sdk/utils/BackgroundExcutor;->excutor:Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundAsynTask;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundAsynTask;

    invoke-direct {v0}, Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundAsynTask;-><init>()V

    sput-object v0, Lcom/ja/sdk/utils/BackgroundExcutor;->excutor:Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundAsynTask;

    .line 28
    sget-object v0, Lcom/ja/sdk/utils/BackgroundExcutor;->excutor:Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundAsynTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundAsynTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    :cond_0
    return-void
.end method
