.class public Lcom/drew/imaging/jpeg/JpegProcessingException;
.super Lcom/drew/lang/CompoundException;
.source "JpegProcessingException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/drew/lang/CompoundException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/drew/lang/CompoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/drew/lang/CompoundException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method
