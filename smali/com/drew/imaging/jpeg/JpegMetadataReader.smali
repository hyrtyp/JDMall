.class public Lcom/drew/imaging/jpeg/JpegMetadataReader;
.super Ljava/lang/Object;
.source "JpegMetadataReader.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public static extractMetadataFromJpegSegmentReader(Lcom/drew/imaging/jpeg/JpegSegmentReader;)Lcom/drew/metadata/Metadata;
    .locals 6
    .parameter "segmentReader"

    .prologue
    .line 58
    new-instance v4, Lcom/drew/metadata/Metadata;

    invoke-direct {v4}, Lcom/drew/metadata/Metadata;-><init>()V

    .line 60
    .local v4, metadata:Lcom/drew/metadata/Metadata;
    const/16 v5, -0x1f

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegment(B)[B

    move-result-object v0

    .line 61
    .local v0, exifSegment:[B
    new-instance v5, Lcom/drew/metadata/exif/ExifReader;

    invoke-direct {v5, v0}, Lcom/drew/metadata/exif/ExifReader;-><init>([B)V

    invoke-virtual {v5, v4}, Lcom/drew/metadata/exif/ExifReader;->extract(Lcom/drew/metadata/Metadata;)Lcom/drew/metadata/Metadata;
    :try_end_0
    .catch Lcom/drew/imaging/jpeg/JpegProcessingException; {:try_start_0 .. :try_end_0} :catch_3

    .line 68
    .end local v0           #exifSegment:[B
    :goto_0
    const/16 v5, -0x13

    :try_start_1
    invoke-virtual {p0, v5}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegment(B)[B

    move-result-object v1

    .line 69
    .local v1, iptcSegment:[B
    new-instance v5, Lcom/drew/metadata/iptc/IptcReader;

    invoke-direct {v5, v1}, Lcom/drew/metadata/iptc/IptcReader;-><init>([B)V

    invoke-virtual {v5, v4}, Lcom/drew/metadata/iptc/IptcReader;->extract(Lcom/drew/metadata/Metadata;)Lcom/drew/metadata/Metadata;
    :try_end_1
    .catch Lcom/drew/imaging/jpeg/JpegProcessingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 75
    .end local v1           #iptcSegment:[B
    :goto_1
    const/16 v5, -0x40

    :try_start_2
    invoke-virtual {p0, v5}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegment(B)[B

    move-result-object v3

    .line 76
    .local v3, jpegSegment:[B
    new-instance v5, Lcom/drew/metadata/jpeg/JpegReader;

    invoke-direct {v5, v3}, Lcom/drew/metadata/jpeg/JpegReader;-><init>([B)V

    invoke-virtual {v5, v4}, Lcom/drew/metadata/jpeg/JpegReader;->extract(Lcom/drew/metadata/Metadata;)Lcom/drew/metadata/Metadata;
    :try_end_2
    .catch Lcom/drew/imaging/jpeg/JpegProcessingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 82
    .end local v3           #jpegSegment:[B
    :goto_2
    const/4 v5, -0x2

    :try_start_3
    invoke-virtual {p0, v5}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegment(B)[B

    move-result-object v2

    .line 83
    .local v2, jpegCommentSegment:[B
    new-instance v5, Lcom/drew/metadata/jpeg/JpegCommentReader;

    invoke-direct {v5, v2}, Lcom/drew/metadata/jpeg/JpegCommentReader;-><init>([B)V

    invoke-virtual {v5, v4}, Lcom/drew/metadata/jpeg/JpegCommentReader;->extract(Lcom/drew/metadata/Metadata;)Lcom/drew/metadata/Metadata;
    :try_end_3
    .catch Lcom/drew/imaging/jpeg/JpegProcessingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 88
    .end local v2           #jpegCommentSegment:[B
    :goto_3
    return-object v4

    .line 84
    :catch_0
    move-exception v5

    goto :goto_3

    .line 77
    :catch_1
    move-exception v5

    goto :goto_2

    .line 70
    :catch_2
    move-exception v5

    goto :goto_1

    .line 62
    :catch_3
    move-exception v5

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 97
    const/4 v4, 0x0

    .line 99
    .local v4, metadata:Lcom/drew/metadata/Metadata;
    :try_start_0
    new-instance v7, Ljava/io/File;

    const/4 v8, 0x0

    aget-object v8, p0, v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->readMetadata(Ljava/io/File;)Lcom/drew/metadata/Metadata;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 106
    :goto_0
    invoke-virtual {v4}, Lcom/drew/metadata/Metadata;->getDirectoryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 107
    .local v0, directories:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 127
    array-length v7, p0

    if-le v7, v10, :cond_1

    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/thumb"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 129
    const-class v7, Lcom/drew/metadata/exif/ExifDirectory;

    invoke-virtual {v4, v7}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v1

    check-cast v1, Lcom/drew/metadata/exif/ExifDirectory;

    .line 130
    .local v1, directory:Lcom/drew/metadata/exif/ExifDirectory;
    invoke-virtual {v1}, Lcom/drew/metadata/exif/ExifDirectory;->containsThumbnail()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 132
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Writing thumbnail..."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v8, p0, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".thumb.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/drew/metadata/exif/ExifDirectory;->writeThumbnail(Ljava/lang/String;)V

    .line 140
    .end local v1           #directory:Lcom/drew/metadata/exif/ExifDirectory;
    :cond_1
    :goto_1
    return-void

    .line 100
    .end local v0           #directories:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 101
    .local v2, e:Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v7}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 102
    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 108
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #directories:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/drew/metadata/Directory;

    .line 109
    .local v1, directory:Lcom/drew/metadata/Directory;
    invoke-virtual {v1}, Lcom/drew/metadata/Directory;->getTagIterator()Ljava/util/Iterator;

    move-result-object v6

    .line 110
    .local v6, tags:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 119
    invoke-virtual {v1}, Lcom/drew/metadata/Directory;->hasErrors()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 120
    invoke-virtual {v1}, Lcom/drew/metadata/Directory;->getErrors()Ljava/util/Iterator;

    move-result-object v3

    .line 121
    .local v3, errors:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 122
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ERROR: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 111
    .end local v3           #errors:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/drew/metadata/Tag;

    .line 113
    .local v5, tag:Lcom/drew/metadata/Tag;
    :try_start_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/drew/metadata/Directory;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/drew/metadata/Tag;->getTagName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/drew/metadata/Tag;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/drew/metadata/MetadataException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 114
    :catch_1
    move-exception v2

    .line 115
    .local v2, e:Lcom/drew/metadata/MetadataException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lcom/drew/metadata/MetadataException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/drew/metadata/Tag;->getDirectoryName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/drew/metadata/Tag;->getTagName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (error)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 137
    .end local v2           #e:Lcom/drew/metadata/MetadataException;
    .end local v5           #tag:Lcom/drew/metadata/Tag;
    .end local v6           #tags:Ljava/util/Iterator;
    .local v1, directory:Lcom/drew/metadata/exif/ExifDirectory;
    :cond_4
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "No thumbnail data exists in this image"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static readMetadata(Ljava/io/File;)Lcom/drew/metadata/Metadata;
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentReader;

    invoke-direct {v0, p0}, Lcom/drew/imaging/jpeg/JpegSegmentReader;-><init>(Ljava/io/File;)V

    .line 53
    .local v0, segmentReader:Lcom/drew/imaging/jpeg/JpegSegmentReader;
    invoke-static {v0}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->extractMetadataFromJpegSegmentReader(Lcom/drew/imaging/jpeg/JpegSegmentReader;)Lcom/drew/metadata/Metadata;

    move-result-object v1

    return-object v1
.end method

.method public static readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentReader;

    invoke-direct {v0, p0}, Lcom/drew/imaging/jpeg/JpegSegmentReader;-><init>(Ljava/io/InputStream;)V

    .line 47
    .local v0, segmentReader:Lcom/drew/imaging/jpeg/JpegSegmentReader;
    invoke-static {v0}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->extractMetadataFromJpegSegmentReader(Lcom/drew/imaging/jpeg/JpegSegmentReader;)Lcom/drew/metadata/Metadata;

    move-result-object v1

    return-object v1
.end method
