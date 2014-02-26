.class public Lcom/drew/metadata/iptc/IptcProcessingException;
.super Lcom/drew/metadata/MetadataException;
.source "IptcProcessingException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method
