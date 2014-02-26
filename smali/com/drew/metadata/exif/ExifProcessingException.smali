.class public Lcom/drew/metadata/exif/ExifProcessingException;
.super Lcom/drew/metadata/MetadataException;
.source "ExifProcessingException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method
