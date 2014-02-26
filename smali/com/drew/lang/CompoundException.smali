.class public Lcom/drew/lang/CompoundException;
.super Ljava/lang/Exception;
.source "CompoundException.java"


# instance fields
.field private final _innnerException:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/drew/lang/CompoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "innerException"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p2, p0, Lcom/drew/lang/CompoundException;->_innnerException:Ljava/lang/Throwable;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/drew/lang/CompoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getInnerException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/drew/lang/CompoundException;->_innnerException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    iget-object v0, p0, Lcom/drew/lang/CompoundException;->_innnerException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "--- inner exception ---"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/drew/lang/CompoundException;->_innnerException:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 65
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 66
    iget-object v0, p0, Lcom/drew/lang/CompoundException;->_innnerException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "--- inner exception ---"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/drew/lang/CompoundException;->_innnerException:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 70
    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 74
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 75
    iget-object v0, p0, Lcom/drew/lang/CompoundException;->_innnerException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "--- inner exception ---"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/drew/lang/CompoundException;->_innnerException:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 79
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    .local v0, sbuffer:Ljava/lang/StringBuffer;
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    iget-object v1, p0, Lcom/drew/lang/CompoundException;->_innnerException:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v1, "--- inner exception ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    iget-object v1, p0, Lcom/drew/lang/CompoundException;->_innnerException:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
