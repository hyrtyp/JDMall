.class public Lcom/drew/metadata/jpeg/JpegCommentReader;
.super Ljava/lang/Object;
.source "JpegCommentReader.java"

# interfaces
.implements Lcom/drew/metadata/MetadataReader;


# instance fields
.field private final _data:[B


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .parameter "jpegFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentReader;

    invoke-direct {v0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentReader;-><init>(Ljava/io/File;)V

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegment(B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/drew/metadata/jpeg/JpegCommentReader;-><init>([B)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentReader;

    invoke-direct {v0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, -0x13

    invoke-virtual {v0, v1}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegment(B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/drew/metadata/jpeg/JpegCommentReader;-><init>([B)V

    .line 53
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/drew/metadata/jpeg/JpegCommentReader;->_data:[B

    .line 58
    return-void
.end method


# virtual methods
.method public extract()Lcom/drew/metadata/Metadata;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/drew/metadata/Metadata;

    invoke-direct {v0}, Lcom/drew/metadata/Metadata;-><init>()V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/jpeg/JpegCommentReader;->extract(Lcom/drew/metadata/Metadata;)Lcom/drew/metadata/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public extract(Lcom/drew/metadata/Metadata;)Lcom/drew/metadata/Metadata;
    .locals 4
    .parameter "metadata"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/drew/metadata/jpeg/JpegCommentReader;->_data:[B

    if-nez v1, :cond_0

    .line 82
    :goto_0
    return-object p1

    .line 78
    :cond_0
    const-class v1, Lcom/drew/metadata/jpeg/JpegCommentDirectory;

    invoke-virtual {p1, v1}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/jpeg/JpegCommentDirectory;

    .line 80
    .local v0, directory:Lcom/drew/metadata/jpeg/JpegCommentDirectory;
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/drew/metadata/jpeg/JpegCommentReader;->_data:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1, v2}, Lcom/drew/metadata/jpeg/JpegCommentDirectory;->setString(ILjava/lang/String;)V

    goto :goto_0
.end method
