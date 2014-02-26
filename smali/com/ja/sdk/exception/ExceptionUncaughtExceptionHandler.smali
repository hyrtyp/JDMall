.class public Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static FRIST_LINE:I = 0x0

.field private static KEYWORD:Ljava/lang/String; = null

.field private static final MAX_LOG_LENGTH:I = 0x1f4

.field public static final TAG:Ljava/lang/String; = "ExceptionUncaughtExceptionHandler"

.field private static bFindKeywords:Ljava/lang/Boolean;

.field private static errorDataBuffer:Ljava/lang/StringBuffer;

.field private static uncaughtExceptionHandler:Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUncuaghtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;

    invoke-direct {v0}, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;-><init>()V

    sput-object v0, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->uncaughtExceptionHandler:Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;

    .line 79
    const/4 v0, 0x3

    sput v0, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->FRIST_LINE:I

    .line 80
    const-string v0, "com.ja.sdk"

    sput-object v0, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->KEYWORD:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->errorDataBuffer:Ljava/lang/StringBuffer;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->mUncuaghtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 28
    iput-object v0, p0, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private static addExceptionString(I[Ljava/lang/StackTraceElement;Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "index"
    .parameter "stack"
    .parameter "sb"

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    aget-object v1, p1, p0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, p0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, p0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    return-void
.end method

.method public static getSingleInstance()Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->uncaughtExceptionHandler:Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;

    return-object v0
.end method

.method public static resolve(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .parameter "e"

    .prologue
    .line 89
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v1, exceptionString:Ljava/lang/StringBuffer;
    sget-object v3, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->errorDataBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->resolveCause(Ljava/lang/Throwable;Ljava/lang/StringBuffer;Z)V

    .line 95
    const-string v3, "ExceptionUncaughtExceptionHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "size = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v3, "ExceptionUncaughtExceptionHandler"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 102
    .end local v1           #exceptionString:Ljava/lang/StringBuffer;
    :goto_0
    return-object v3

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 101
    .local v2, w:Ljava/io/Writer;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 102
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static resolveCause(Ljava/lang/Throwable;Ljava/lang/StringBuffer;Z)V
    .locals 10
    .parameter "cause"
    .parameter "sb"
    .parameter "isFirst"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 108
    if-eqz p0, :cond_1

    .line 109
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v4, temp:Ljava/lang/StringBuffer;
    if-nez p2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 111
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v5, v4, v9}, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->resolveCause(Ljava/lang/Throwable;Ljava/lang/StringBuffer;Z)V

    .line 162
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    rsub-int v5, v5, 0x1f4

    add-int/lit8 v1, v5, -0x1

    .line 163
    .local v1, maxLenth:I
    if-ge v1, v7, :cond_9

    .line 173
    .end local v1           #maxLenth:I
    .end local v4           #temp:Ljava/lang/StringBuffer;
    :cond_1
    :goto_1
    return-void

    .line 113
    .restart local v4       #temp:Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 116
    .local v3, stack:[Ljava/lang/StackTraceElement;
    const/4 v2, -0x1

    .line 118
    .local v2, recordLine:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v5, v3

    if-lt v0, v5, :cond_4

    .line 150
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 151
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v5, v4, v9}, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->resolveCause(Ljava/lang/Throwable;Ljava/lang/StringBuffer;Z)V

    goto :goto_0

    .line 119
    :cond_4
    sget v5, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->FRIST_LINE:I

    if-ge v0, v5, :cond_6

    .line 120
    invoke-static {v0, v3, v4}, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->addExceptionString(I[Ljava/lang/StackTraceElement;Ljava/lang/StringBuffer;)V

    .line 122
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->KEYWORD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 123
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->bFindKeywords:Ljava/lang/Boolean;

    .line 124
    sget v2, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->FRIST_LINE:I

    .line 118
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 129
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_3

    .line 133
    if-ne v2, v8, :cond_7

    .line 134
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->KEYWORD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 135
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->bFindKeywords:Ljava/lang/Boolean;

    .line 136
    move v2, v0

    .line 137
    invoke-static {v0, v3, v4}, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->addExceptionString(I[Ljava/lang/StackTraceElement;Ljava/lang/StringBuffer;)V

    goto :goto_3

    .line 140
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_5

    .line 141
    if-lt v0, v2, :cond_5

    .line 142
    invoke-static {v0, v3, v4}, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->addExceptionString(I[Ljava/lang/StackTraceElement;Ljava/lang/StringBuffer;)V

    goto :goto_3

    .line 152
    :cond_8
    if-ne v2, v8, :cond_0

    .line 154
    const-string v5, "ExceptionUncaughtExceptionHandler"

    const-string v6, "recordLine == -1recordLine == -1"

    invoke-static {v5, v6}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget v5, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->FRIST_LINE:I

    add-int/lit8 v0, v5, -0x1

    :goto_4
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 157
    invoke-static {v0, v3, v4}, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->addExceptionString(I[Ljava/lang/StackTraceElement;Ljava/lang/StringBuffer;)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 167
    .end local v0           #i:I
    .end local v2           #recordLine:I
    .end local v3           #stack:[Ljava/lang/StackTraceElement;
    .restart local v1       #maxLenth:I
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-le v5, v1, :cond_a

    .line 168
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 170
    :cond_a
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method


# virtual methods
.method public setUncatchedExceptionHandler(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->mUncuaghtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->mUncuaghtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 47
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    .line 51
    :cond_1
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7
    .parameter "thread"
    .parameter "throwable"

    .prologue
    .line 56
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 57
    .local v3, stringwriter:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 58
    .local v0, printwriter:Ljava/io/PrintWriter;
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 60
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, s:Ljava/lang/String;
    invoke-static {p2}, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->resolve(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 63
    sget-object v4, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->bFindKeywords:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->bFindKeywords:Ljava/lang/Boolean;

    .line 67
    const-string v4, "ExceptionUncaughtExceptionHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5f02\u5e38\u6570\u636e:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lcom/ja/sdk/exception/ExceptionData;->getSingleInstance()Lcom/ja/sdk/exception/ExceptionData;

    move-result-object v4

    iget-object v5, p0, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    const-string v6, "0x2001"

    invoke-virtual {v4, v5, v6, v1}, Lcom/ja/sdk/exception/ExceptionData;->exceptionDataHandle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->getSignleInstance()Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->getUncaughtExceptionSendStrategy()Lcom/ja/sdk/framework/SendStrategyEnum;

    move-result-object v2

    .line 71
    .local v2, sendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/ja/sdk/framework/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IMMEDIATELY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 72
    iget-object v4, p0, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/ja/sdk/JaMobLogService;->sendExceptionData(Landroid/content/Context;)V

    .line 74
    :cond_2
    iget-object v4, p0, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->mUncuaghtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    iget-object v4, p0, Lcom/ja/sdk/exception/ExceptionUncaughtExceptionHandler;->mUncuaghtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v4, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
