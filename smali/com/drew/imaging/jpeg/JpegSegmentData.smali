.class public Lcom/drew/imaging/jpeg/JpegSegmentData;
.super Ljava/lang/Object;
.source "JpegSegmentData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x62ac6ab02265562bL


# instance fields
.field private final _segmentDataMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentData;->_segmentDataMap:Ljava/util/HashMap;

    .line 37
    return-void
.end method

.method public static FromFile(Ljava/io/File;)Lcom/drew/imaging/jpeg/JpegSegmentData;
    .locals 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 123
    .local v0, inputStream:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v0           #inputStream:Ljava/io/ObjectInputStream;
    .local v1, inputStream:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/drew/imaging/jpeg/JpegSegmentData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 124
    :cond_0
    return-object v2

    .line 127
    .end local v1           #inputStream:Ljava/io/ObjectInputStream;
    .restart local v0       #inputStream:Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception v2

    .line 128
    :goto_0
    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    .line 130
    :cond_1
    throw v2

    .line 127
    .end local v0           #inputStream:Ljava/io/ObjectInputStream;
    .restart local v1       #inputStream:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #inputStream:Ljava/io/ObjectInputStream;
    .restart local v0       #inputStream:Ljava/io/ObjectInputStream;
    goto :goto_0
.end method

.method public static ToFile(Ljava/io/File;Lcom/drew/imaging/jpeg/JpegSegmentData;)V
    .locals 3
    .parameter "file"
    .parameter "segmentData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 108
    .local v0, outputStream:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v0           #outputStream:Ljava/io/ObjectOutputStream;
    .local v1, outputStream:Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 116
    :cond_0
    return-void

    .line 112
    .end local v1           #outputStream:Ljava/io/ObjectOutputStream;
    .restart local v0       #outputStream:Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v2

    .line 113
    :goto_0
    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 115
    :cond_1
    throw v2

    .line 112
    .end local v0           #outputStream:Ljava/io/ObjectOutputStream;
    .restart local v1       #outputStream:Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #outputStream:Ljava/io/ObjectOutputStream;
    .restart local v0       #outputStream:Ljava/io/ObjectOutputStream;
    goto :goto_0
.end method

.method private getOrCreateSegmentList(B)Ljava/util/List;
    .locals 3
    .parameter "segmentMarker"

    .prologue
    .line 88
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    .line 89
    .local v0, key:Ljava/lang/Byte;
    iget-object v2, p0, Lcom/drew/imaging/jpeg/JpegSegmentData;->_segmentDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/drew/imaging/jpeg/JpegSegmentData;->_segmentDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 95
    .local v1, segmentList:Ljava/util/List;
    :goto_0
    return-object v1

    .line 92
    .end local v1           #segmentList:Ljava/util/List;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .restart local v1       #segmentList:Ljava/util/List;
    iget-object v2, p0, Lcom/drew/imaging/jpeg/JpegSegmentData;->_segmentDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getSegmentList(B)Ljava/util/List;
    .locals 2
    .parameter "segmentMarker"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentData;->_segmentDataMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addSegment(B[B)V
    .locals 1
    .parameter "segmentMarker"
    .parameter "segmentBytes"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentData;->getOrCreateSegmentList(B)Ljava/util/List;

    move-result-object v0

    .line 42
    .local v0, segmentList:Ljava/util/List;
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public containsSegment(B)Z
    .locals 2
    .parameter "segmentMarker"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentData;->_segmentDataMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getSegment(B)[B
    .locals 1
    .parameter "segmentMarker"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/drew/imaging/jpeg/JpegSegmentData;->getSegment(BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getSegment(BI)[B
    .locals 2
    .parameter "segmentMarker"
    .parameter "occurrence"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentData;->getSegmentList(B)Ljava/util/List;

    move-result-object v0

    .line 54
    .local v0, segmentList:Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p2, :cond_1

    .line 55
    :cond_0
    const/4 v1, 0x0

    .line 57
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_0
.end method

.method public getSegmentCount(B)I
    .locals 2
    .parameter "segmentMarker"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentData;->getSegmentList(B)Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, segmentList:Ljava/util/List;
    if-nez v0, :cond_0

    .line 64
    const/4 v1, 0x0

    .line 66
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public removeSegment(B)V
    .locals 2
    .parameter "segmentMarker"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentData;->_segmentDataMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public removeSegmentOccurrence(BI)V
    .locals 3
    .parameter "segmentMarker"
    .parameter "occurrence"

    .prologue
    .line 71
    iget-object v1, p0, Lcom/drew/imaging/jpeg/JpegSegmentData;->_segmentDataMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 72
    .local v0, segmentList:Ljava/util/List;
    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 73
    return-void
.end method
