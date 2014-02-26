.class public Lcom/jingdong/cloud/msg/entity/Call;
.super Ljava/lang/Object;
.source "Call.java"


# instance fields
.field private opType:I

.field private reqId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "opType"
    .parameter "reqId"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/jingdong/cloud/msg/entity/Call;->opType:I

    .line 14
    iput-object p2, p0, Lcom/jingdong/cloud/msg/entity/Call;->reqId:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .parameter "args"

    .prologue
    const/4 v8, 0x1

    .line 36
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 37
    .local v2, q:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/jingdong/cloud/msg/entity/Call;>;"
    new-instance v5, Lcom/jingdong/cloud/msg/entity/Call;

    const-string v6, "111111"

    invoke-direct {v5, v8, v6}, Lcom/jingdong/cloud/msg/entity/Call;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v5, Lcom/jingdong/cloud/msg/entity/Call;

    const-string v6, "222222"

    invoke-direct {v5, v8, v6}, Lcom/jingdong/cloud/msg/entity/Call;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Lcom/jingdong/cloud/msg/entity/Call;

    const-string v7, "111111"

    invoke-direct {v6, v8, v7}, Lcom/jingdong/cloud/msg/entity/Call;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Z)V

    .line 40
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 41
    new-instance v5, Lcom/jingdong/cloud/msg/entity/Call;

    const-string v6, "111111"

    invoke-direct {v5, v8, v6}, Lcom/jingdong/cloud/msg/entity/Call;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 42
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 45
    .local v3, s:J
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v3, v4}, Ljava/io/PrintStream;->println(J)V

    .line 47
    const-wide/16 v5, 0x3e8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 53
    .local v0, e:J
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v0, v1}, Ljava/io/PrintStream;->println(J)V

    .line 54
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sub-long v6, v0, v3

    long-to-double v6, v6

    const-wide v8, 0x412e848000000000L

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->println(D)V

    .line 55
    return-void

    .line 48
    .end local v0           #e:J
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 26
    move-object v0, p1

    check-cast v0, Lcom/jingdong/cloud/msg/entity/Call;

    .line 27
    .local v0, other:Lcom/jingdong/cloud/msg/entity/Call;
    iget v1, p0, Lcom/jingdong/cloud/msg/entity/Call;->opType:I

    iget v2, v0, Lcom/jingdong/cloud/msg/entity/Call;->opType:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/jingdong/cloud/msg/entity/Call;->reqId:Ljava/lang/String;

    iget-object v2, v0, Lcom/jingdong/cloud/msg/entity/Call;->reqId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOpType()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/jingdong/cloud/msg/entity/Call;->opType:I

    return v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/jingdong/cloud/msg/entity/Call;->reqId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/jingdong/cloud/msg/entity/Call;->opType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/cloud/msg/entity/Call;->reqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
