.class public Lcom/drew/metadata/MetadataException;
.super Lcom/drew/lang/CompoundException;
.source "MetadataException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/drew/lang/CompoundException;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "innerException"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/drew/lang/CompoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "exception"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/drew/lang/CompoundException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method
