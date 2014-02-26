.class public Lcom/jingdong/common/utils/MyUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "MyUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static errorDataBuffer:Ljava/lang/StringBuffer;


# instance fields
.field private context:Landroid/content/Context;

.field private mOldUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/jingdong/common/utils/MyUncaughtExceptionHandler;->errorDataBuffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/jingdong/common/utils/MyUncaughtExceptionHandler;->context:Landroid/content/Context;

    .line 34
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/MyUncaughtExceptionHandler;->mOldUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 35
    return-void
.end method

.method public static appendErrorInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 29
    sget-object v0, Lcom/jingdong/common/utils/MyUncaughtExceptionHandler;->errorDataBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    return-void
.end method

.method private myUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 7
    .parameter "thread"
    .parameter "ex"

    .prologue
    const/4 v6, 0x1

    .line 84
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/MyApplication;->getCurrentMyActivity()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v3

    .line 85
    .local v3, myActivity:Lcom/jingdong/common/frame/IMyActivity;
    if-eqz v3, :cond_0

    .line 89
    invoke-interface {v3}, Lcom/jingdong/common/frame/IMyActivity;->finish()V

    .line 93
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/jingdong/common/utils/MyUncaughtExceptionHandler;->context:Landroid/content/Context;

    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/MyApplication;->getErrorActivityClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v2, i:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/jingdong/common/utils/MyUncaughtExceptionHandler;->errorDataBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "||"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lcom/jingdong/common/utils/ResolveException;->resolve(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, error:Ljava/lang/String;
    const-string v4, "user"

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getReportString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v4, "error"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v4, p0, Lcom/jingdong/common/utils/MyUncaughtExceptionHandler;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1           #error:Ljava/lang/String;
    :goto_0
    return v6

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public static resetErrorInfo(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 24
    sget-object v0, Lcom/jingdong/common/utils/MyUncaughtExceptionHandler;->errorDataBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 25
    sget-object v0, Lcom/jingdong/common/utils/MyUncaughtExceptionHandler;->errorDataBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 39
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/jingdong/common/utils/MyUncaughtExceptionHandler;->myUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/utils/MyUncaughtExceptionHandler;->mOldUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/jingdong/common/utils/MyUncaughtExceptionHandler;->mOldUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 49
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
