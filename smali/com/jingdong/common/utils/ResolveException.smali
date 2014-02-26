.class public Lcom/jingdong/common/utils/ResolveException;
.super Ljava/lang/Object;
.source "ResolveException.java"


# static fields
.field private static FRIST_LINE:I

.field private static KEYWORD:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "ResolveException"

    sput-object v0, Lcom/jingdong/common/utils/ResolveException;->TAG:Ljava/lang/String;

    .line 10
    const/4 v0, 0x3

    sput v0, Lcom/jingdong/common/utils/ResolveException;->FRIST_LINE:I

    .line 12
    const-string v0, "com.jingdong"

    sput-object v0, Lcom/jingdong/common/utils/ResolveException;->KEYWORD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addExceptionString(I[Ljava/lang/StackTraceElement;Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "index"
    .parameter "stack"
    .parameter "sb"

    .prologue
    .line 90
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

    .line 91
    return-void
.end method

.method public static resolve(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .parameter "e"

    .prologue
    .line 16
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    .local v1, exceptionString:Ljava/lang/StringBuffer;
    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Lcom/jingdong/common/utils/ResolveException;->resolveCause(Ljava/lang/Throwable;Ljava/lang/StringBuffer;Z)V

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 29
    .end local v1           #exceptionString:Ljava/lang/StringBuffer;
    :goto_0
    return-object v3

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 28
    .local v2, w:Ljava/io/Writer;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static resolveCause(Ljava/lang/Throwable;Ljava/lang/StringBuffer;Z)V
    .locals 7
    .parameter "cause"
    .parameter "sb"
    .parameter "isFirst"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 36
    if-eqz p0, :cond_0

    .line 37
    if-nez p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 38
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v3, p1, v6}, Lcom/jingdong/common/utils/ResolveException;->resolveCause(Ljava/lang/Throwable;Ljava/lang/StringBuffer;Z)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "------"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 42
    .local v2, stack:[Ljava/lang/StackTraceElement;
    const/4 v1, -0x1

    .line 44
    .local v1, recordLine:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_3

    .line 74
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 75
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v3, p1, v6}, Lcom/jingdong/common/utils/ResolveException;->resolveCause(Ljava/lang/Throwable;Ljava/lang/StringBuffer;Z)V

    goto :goto_0

    .line 45
    :cond_3
    sget v3, Lcom/jingdong/common/utils/ResolveException;->FRIST_LINE:I

    if-ge v0, v3, :cond_5

    .line 46
    invoke-static {v0, v2, p1}, Lcom/jingdong/common/utils/ResolveException;->addExceptionString(I[Ljava/lang/StackTraceElement;Ljava/lang/StringBuffer;)V

    .line 48
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/jingdong/common/utils/ResolveException;->KEYWORD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 49
    sget v1, Lcom/jingdong/common/utils/ResolveException;->FRIST_LINE:I

    .line 44
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_2

    .line 58
    if-ne v1, v5, :cond_6

    .line 59
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/jingdong/common/utils/ResolveException;->KEYWORD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 60
    move v1, v0

    .line 61
    invoke-static {v0, v2, p1}, Lcom/jingdong/common/utils/ResolveException;->addExceptionString(I[Ljava/lang/StackTraceElement;Ljava/lang/StringBuffer;)V

    goto :goto_2

    .line 64
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_4

    .line 65
    if-lt v0, v1, :cond_4

    .line 66
    invoke-static {v0, v2, p1}, Lcom/jingdong/common/utils/ResolveException;->addExceptionString(I[Ljava/lang/StackTraceElement;Ljava/lang/StringBuffer;)V

    goto :goto_2

    .line 76
    :cond_7
    if-ne v1, v5, :cond_0

    .line 80
    sget v3, Lcom/jingdong/common/utils/ResolveException;->FRIST_LINE:I

    add-int/lit8 v0, v3, -0x1

    :goto_3
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 81
    invoke-static {v0, v2, p1}, Lcom/jingdong/common/utils/ResolveException;->addExceptionString(I[Ljava/lang/StackTraceElement;Ljava/lang/StringBuffer;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
