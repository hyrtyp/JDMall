.class public Lcom/jd/common/aop/TimeHandler;
.super Ljava/lang/Object;
.source "TimeHandler.java"

# interfaces
.implements Lorg/aopalliance/intercept/MethodInterceptor;


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private error:I

.field private info:I

.field private warn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/jd/common/aop/TimeHandler;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/jd/common/aop/TimeHandler;->log:Lorg/apache/commons/logging/Log;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0xc8

    iput v0, p0, Lcom/jd/common/aop/TimeHandler;->error:I

    .line 29
    const/16 v0, 0x64

    iput v0, p0, Lcom/jd/common/aop/TimeHandler;->warn:I

    .line 35
    const/16 v0, 0x32

    iput v0, p0, Lcom/jd/common/aop/TimeHandler;->info:I

    .line 13
    return-void
.end method


# virtual methods
.method public invoke(Lorg/aopalliance/intercept/MethodInvocation;)Ljava/lang/Object;
    .locals 6
    .parameter "methodInvocation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 47
    .local v1, procTime:J
    :try_start_0
    invoke-interface {p1}, Lorg/aopalliance/intercept/MethodInvocation;->proceed()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v1

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Process method "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/aopalliance/intercept/MethodInvocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " successful! Total time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " milliseconds!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, msg:Ljava/lang/String;
    iget v4, p0, Lcom/jd/common/aop/TimeHandler;->error:I

    int-to-long v4, v4

    cmp-long v4, v1, v4

    if-lez v4, :cond_1

    .line 53
    sget-object v4, Lcom/jd/common/aop/TimeHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/jd/common/aop/TimeHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 47
    :cond_0
    :goto_0
    return-object v3

    .line 54
    :cond_1
    iget v4, p0, Lcom/jd/common/aop/TimeHandler;->warn:I

    int-to-long v4, v4

    cmp-long v4, v1, v4

    if-lez v4, :cond_2

    .line 55
    sget-object v4, Lcom/jd/common/aop/TimeHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/jd/common/aop/TimeHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_2
    iget v4, p0, Lcom/jd/common/aop/TimeHandler;->info:I

    int-to-long v4, v4

    cmp-long v4, v1, v4

    if-lez v4, :cond_3

    .line 57
    sget-object v4, Lcom/jd/common/aop/TimeHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/jd/common/aop/TimeHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_3
    sget-object v4, Lcom/jd/common/aop/TimeHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/jd/common/aop/TimeHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    .end local v0           #msg:Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v1

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Process method "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/aopalliance/intercept/MethodInvocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " successful! Total time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " milliseconds!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .restart local v0       #msg:Ljava/lang/String;
    iget v4, p0, Lcom/jd/common/aop/TimeHandler;->error:I

    int-to-long v4, v4

    cmp-long v4, v1, v4

    if-lez v4, :cond_5

    .line 53
    sget-object v4, Lcom/jd/common/aop/TimeHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/jd/common/aop/TimeHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 61
    :cond_4
    :goto_1
    throw v3

    .line 54
    :cond_5
    iget v4, p0, Lcom/jd/common/aop/TimeHandler;->warn:I

    int-to-long v4, v4

    cmp-long v4, v1, v4

    if-lez v4, :cond_6

    .line 55
    sget-object v4, Lcom/jd/common/aop/TimeHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/jd/common/aop/TimeHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_1

    .line 56
    :cond_6
    iget v4, p0, Lcom/jd/common/aop/TimeHandler;->info:I

    int-to-long v4, v4

    cmp-long v4, v1, v4

    if-lez v4, :cond_7

    .line 57
    sget-object v4, Lcom/jd/common/aop/TimeHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/jd/common/aop/TimeHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_1

    .line 59
    :cond_7
    sget-object v4, Lcom/jd/common/aop/TimeHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/jd/common/aop/TimeHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setError(I)V
    .locals 0
    .parameter "error"

    .prologue
    .line 72
    iput p1, p0, Lcom/jd/common/aop/TimeHandler;->error:I

    .line 73
    return-void
.end method

.method public setInfo(I)V
    .locals 0
    .parameter "info"

    .prologue
    .line 94
    iput p1, p0, Lcom/jd/common/aop/TimeHandler;->info:I

    .line 95
    return-void
.end method

.method public setWarn(I)V
    .locals 0
    .parameter "warn"

    .prologue
    .line 83
    iput p1, p0, Lcom/jd/common/aop/TimeHandler;->warn:I

    .line 84
    return-void
.end method
