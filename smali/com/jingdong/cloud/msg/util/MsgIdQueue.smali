.class public Lcom/jingdong/cloud/msg/util/MsgIdQueue;
.super Ljava/lang/Object;
.source "MsgIdQueue.java"


# static fields
.field private static msgIdQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/jingdong/cloud/msg/util/MsgIdQueue;->msgIdQueue:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isContainId(Ljava/lang/String;)Z
    .locals 1
    .parameter "msgId"

    .prologue
    .line 42
    sget-object v0, Lcom/jingdong/cloud/msg/util/MsgIdQueue;->msgIdQueue:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pollQueue()V
    .locals 2

    .prologue
    .line 29
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "MainActivity"

    const-string v1, " pollQueue --->msgid : "

    invoke-static {v0, v1}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    sget-object v0, Lcom/jingdong/cloud/msg/util/MsgIdQueue;->msgIdQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public static pushQueue(Ljava/lang/String;)V
    .locals 3
    .parameter "msgId"

    .prologue
    .line 16
    sget-boolean v0, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v0, :cond_0

    .line 17
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " pushQueue --->msgid : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    sget-object v0, Lcom/jingdong/cloud/msg/util/MsgIdQueue;->msgIdQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 20
    invoke-static {}, Lcom/jingdong/cloud/msg/util/MsgIdQueue;->pollQueue()V

    .line 22
    :cond_1
    sget-object v0, Lcom/jingdong/cloud/msg/util/MsgIdQueue;->msgIdQueue:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method
