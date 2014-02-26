.class public Lcom/drew/metadata/SampleUsage;
.super Ljava/lang/Object;
.source "SampleUsage.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .parameter "fileName"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v4, jpegFile:Ljava/io/File;
    :try_start_0
    invoke-static {v4}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->readMetadata(Ljava/io/File;)Lcom/drew/metadata/Metadata;

    move-result-object v5

    .line 50
    .local v5, metadata:Lcom/drew/metadata/Metadata;
    const/4 v7, 0x1

    invoke-direct {p0, v7, v5}, Lcom/drew/metadata/SampleUsage;->printImageTags(ILcom/drew/metadata/Metadata;)V
    :try_end_0
    .catch Lcom/drew/imaging/jpeg/JpegProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v5           #metadata:Lcom/drew/metadata/Metadata;
    :goto_0
    :try_start_1
    new-instance v5, Lcom/drew/metadata/Metadata;

    invoke-direct {v5}, Lcom/drew/metadata/Metadata;-><init>()V

    .line 61
    .restart local v5       #metadata:Lcom/drew/metadata/Metadata;
    new-instance v7, Lcom/drew/metadata/exif/ExifReader;

    invoke-direct {v7, v4}, Lcom/drew/metadata/exif/ExifReader;-><init>(Ljava/io/File;)V

    invoke-virtual {v7, v5}, Lcom/drew/metadata/exif/ExifReader;->extract(Lcom/drew/metadata/Metadata;)Lcom/drew/metadata/Metadata;

    .line 62
    new-instance v7, Lcom/drew/metadata/iptc/IptcReader;

    invoke-direct {v7, v4}, Lcom/drew/metadata/iptc/IptcReader;-><init>(Ljava/io/File;)V

    invoke-virtual {v7, v5}, Lcom/drew/metadata/iptc/IptcReader;->extract(Lcom/drew/metadata/Metadata;)Lcom/drew/metadata/Metadata;

    .line 63
    const/4 v7, 0x2

    invoke-direct {p0, v7, v5}, Lcom/drew/metadata/SampleUsage;->printImageTags(ILcom/drew/metadata/Metadata;)V
    :try_end_1
    .catch Lcom/drew/imaging/jpeg/JpegProcessingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .end local v5           #metadata:Lcom/drew/metadata/Metadata;
    :goto_1
    :try_start_2
    new-instance v6, Lcom/drew/imaging/jpeg/JpegSegmentReader;

    invoke-direct {v6, v4}, Lcom/drew/imaging/jpeg/JpegSegmentReader;-><init>(Ljava/io/File;)V

    .line 74
    .local v6, segmentReader:Lcom/drew/imaging/jpeg/JpegSegmentReader;
    const/16 v7, -0x1f

    invoke-virtual {v6, v7}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegment(B)[B

    move-result-object v1

    .line 75
    .local v1, exifSegment:[B
    const/16 v7, -0x13

    invoke-virtual {v6, v7}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegment(B)[B

    move-result-object v2

    .line 76
    .local v2, iptcSegment:[B
    new-instance v5, Lcom/drew/metadata/Metadata;

    invoke-direct {v5}, Lcom/drew/metadata/Metadata;-><init>()V

    .line 77
    .restart local v5       #metadata:Lcom/drew/metadata/Metadata;
    new-instance v7, Lcom/drew/metadata/exif/ExifReader;

    invoke-direct {v7, v1}, Lcom/drew/metadata/exif/ExifReader;-><init>([B)V

    invoke-virtual {v7, v5}, Lcom/drew/metadata/exif/ExifReader;->extract(Lcom/drew/metadata/Metadata;)Lcom/drew/metadata/Metadata;

    .line 78
    new-instance v7, Lcom/drew/metadata/iptc/IptcReader;

    invoke-direct {v7, v2}, Lcom/drew/metadata/iptc/IptcReader;-><init>([B)V

    invoke-virtual {v7, v5}, Lcom/drew/metadata/iptc/IptcReader;->extract(Lcom/drew/metadata/Metadata;)Lcom/drew/metadata/Metadata;

    .line 79
    const/4 v7, 0x3

    invoke-direct {p0, v7, v5}, Lcom/drew/metadata/SampleUsage;->printImageTags(ILcom/drew/metadata/Metadata;)V
    :try_end_2
    .catch Lcom/drew/imaging/jpeg/JpegProcessingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 84
    .end local v1           #exifSegment:[B
    .end local v2           #iptcSegment:[B
    .end local v5           #metadata:Lcom/drew/metadata/Metadata;
    .end local v6           #segmentReader:Lcom/drew/imaging/jpeg/JpegSegmentReader;
    :goto_2
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Lcom/drew/imaging/jpeg/JpegProcessingException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "error 1a"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    .end local v0           #e:Lcom/drew/imaging/jpeg/JpegProcessingException;
    :catch_1
    move-exception v3

    .line 65
    .local v3, jpe:Lcom/drew/imaging/jpeg/JpegProcessingException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "error 2a"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    .end local v3           #jpe:Lcom/drew/imaging/jpeg/JpegProcessingException;
    :catch_2
    move-exception v3

    .line 81
    .restart local v3       #jpe:Lcom/drew/imaging/jpeg/JpegProcessingException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "error 3a"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 115
    new-instance v0, Lcom/drew/metadata/SampleUsage;

    const-string v1, "src/com/drew/metadata/test/withIptcExifGps.jpg"

    invoke-direct {v0, v1}, Lcom/drew/metadata/SampleUsage;-><init>(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private printImageTags(ILcom/drew/metadata/Metadata;)V
    .locals 8
    .parameter "approachCount"
    .parameter "metadata"

    .prologue
    .line 88
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/io/PrintStream;->println()V

    .line 89
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "*** APPROACH "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ***"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/io/PrintStream;->println()V

    .line 92
    invoke-virtual {p2}, Lcom/drew/metadata/Metadata;->getDirectoryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 93
    .local v0, directories:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 107
    return-void

    .line 94
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/drew/metadata/Directory;

    .line 95
    .local v1, directory:Lcom/drew/metadata/Directory;
    invoke-virtual {v1}, Lcom/drew/metadata/Directory;->getTagIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 96
    .local v4, tags:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 100
    invoke-virtual {v1}, Lcom/drew/metadata/Directory;->hasErrors()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    invoke-virtual {v1}, Lcom/drew/metadata/Directory;->getErrors()Ljava/util/Iterator;

    move-result-object v2

    .line 102
    .local v2, errors:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ERROR: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    .end local v2           #errors:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/drew/metadata/Tag;

    .line 98
    .local v3, tag:Lcom/drew/metadata/Tag;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method
