.class public Lcom/drew/metadata/iptc/IptcReader;
.super Ljava/lang/Object;
.source "IptcReader.java"

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
    .line 58
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentReader;

    invoke-direct {v0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentReader;-><init>(Ljava/io/File;)V

    const/16 v1, -0x13

    invoke-virtual {v0, v1}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegment(B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/drew/metadata/iptc/IptcReader;-><init>([B)V

    .line 59
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
    .line 67
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentReader;

    invoke-direct {v0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, -0x13

    invoke-virtual {v0, v1}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegment(B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/drew/metadata/iptc/IptcReader;-><init>([B)V

    .line 68
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/drew/metadata/iptc/IptcReader;->_data:[B

    .line 73
    return-void
.end method

.method private get32Bits(I)I
    .locals 3
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcReader;->_data:[B

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 151
    new-instance v0, Lcom/drew/metadata/MetadataException;

    const-string v1, "Attempt to read bytes from outside Iptc data buffer"

    invoke-direct {v0, v1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcReader;->_data:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/drew/metadata/iptc/IptcReader;->_data:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private processTag(Lcom/drew/metadata/Directory;IIII)V
    .locals 17
    .parameter "directory"
    .parameter "directoryType"
    .parameter "tagType"
    .parameter "offset"
    .parameter "tagByteCount"

    .prologue
    .line 162
    shl-int/lit8 v14, p2, 0x8

    or-int v12, p3, v14

    .line 164
    .local v12, tagIdentifier:I
    sparse-switch v12, :sswitch_data_0

    .line 198
    :cond_0
    :goto_0
    const/4 v14, 0x1

    move/from16 v0, p5

    if-ge v0, v14, :cond_2

    .line 199
    const-string v11, ""

    .line 203
    .local v11, str:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 207
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/drew/metadata/Directory;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/drew/metadata/MetadataException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 211
    .local v9, oldStrings:[Ljava/lang/String;
    :goto_2
    if-nez v9, :cond_3

    .line 212
    const/4 v14, 0x1

    new-array v8, v14, [Ljava/lang/String;

    .line 219
    .local v8, newStrings:[Ljava/lang/String;
    :cond_1
    array-length v14, v8

    add-int/lit8 v14, v14, -0x1

    aput-object v11, v8, v14

    .line 220
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v8}, Lcom/drew/metadata/Directory;->setStringArray(I[Ljava/lang/String;)V

    .line 224
    .end local v8           #newStrings:[Ljava/lang/String;
    .end local v9           #oldStrings:[Ljava/lang/String;
    .end local v11           #str:Ljava/lang/String;
    :goto_3
    return-void

    .line 167
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/drew/metadata/iptc/IptcReader;->_data:[B

    aget-byte v14, v14, p4

    shl-int/lit8 v14, v14, 0x8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/iptc/IptcReader;->_data:[B

    add-int/lit8 v16, p4, 0x1

    aget-byte v15, v15, v16

    or-int/2addr v14, v15

    int-to-short v10, v14

    .line 168
    .local v10, shortValue:S
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v10}, Lcom/drew/metadata/Directory;->setInt(II)V

    goto :goto_3

    .line 172
    .end local v10           #shortValue:S
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/drew/metadata/iptc/IptcReader;->_data:[B

    aget-byte v14, v14, p4

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v14}, Lcom/drew/metadata/Directory;->setInt(II)V

    goto :goto_3

    .line 177
    :sswitch_2
    const/16 v14, 0x8

    move/from16 v0, p5

    if-lt v0, v14, :cond_0

    .line 178
    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/drew/metadata/iptc/IptcReader;->_data:[B

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v3, v14, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 180
    .local v3, dateStr:Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x4

    :try_start_1
    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 181
    .local v13, year:I
    const/4 v14, 0x4

    const/4 v15, 0x6

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v7, v14, -0x1

    .line 182
    .local v7, month:I
    const/4 v14, 0x6

    const/16 v15, 0x8

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 183
    .local v4, day:I
    new-instance v14, Ljava/util/GregorianCalendar;

    invoke-direct {v14, v13, v7, v4}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v14}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 184
    .local v2, date:Ljava/util/Date;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Lcom/drew/metadata/Directory;->setDate(ILjava/util/Date;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 186
    .end local v2           #date:Ljava/util/Date;
    .end local v4           #day:I
    .end local v7           #month:I
    .end local v13           #year:I
    :catch_0
    move-exception v14

    goto/16 :goto_0

    .line 201
    .end local v3           #dateStr:Ljava/lang/String;
    :cond_2
    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/drew/metadata/iptc/IptcReader;->_data:[B

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v11, v14, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .restart local v11       #str:Ljava/lang/String;
    goto/16 :goto_1

    .line 208
    :catch_1
    move-exception v5

    .line 209
    .local v5, e:Lcom/drew/metadata/MetadataException;
    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/String;

    .restart local v9       #oldStrings:[Ljava/lang/String;
    goto/16 :goto_2

    .line 214
    .end local v5           #e:Lcom/drew/metadata/MetadataException;
    :cond_3
    array-length v14, v9

    add-int/lit8 v14, v14, 0x1

    new-array v8, v14, [Ljava/lang/String;

    .line 215
    .restart local v8       #newStrings:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    array-length v14, v9

    if-ge v6, v14, :cond_1

    .line 216
    aget-object v14, v9, v6

    aput-object v14, v8, v6

    .line 215
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 222
    .end local v6           #i:I
    .end local v8           #newStrings:[Ljava/lang/String;
    .end local v9           #oldStrings:[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v11}, Lcom/drew/metadata/Directory;->setString(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 164
    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_0
        0x20a -> :sswitch_1
        0x21e -> :sswitch_2
        0x237 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public extract()Lcom/drew/metadata/Metadata;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/drew/metadata/Metadata;

    invoke-direct {v0}, Lcom/drew/metadata/Metadata;-><init>()V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/iptc/IptcReader;->extract(Lcom/drew/metadata/Metadata;)Lcom/drew/metadata/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public extract(Lcom/drew/metadata/Metadata;)Lcom/drew/metadata/Metadata;
    .locals 9
    .parameter "metadata"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcReader;->_data:[B

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-object p1

    .line 93
    :cond_1
    const-class v0, Lcom/drew/metadata/iptc/IptcDirectory;

    invoke-virtual {p1, v0}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v1

    .line 96
    .local v1, directory:Lcom/drew/metadata/Directory;
    const/4 v4, 0x0

    .line 98
    .local v4, offset:I
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcReader;->_data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_2

    invoke-direct {p0, v4}, Lcom/drew/metadata/iptc/IptcReader;->get32Bits(I)I
    :try_end_0
    .catch Lcom/drew/metadata/MetadataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v8, 0x1c02

    if-ne v0, v8, :cond_3

    .line 107
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcReader;->_data:[B

    array-length v0, v0

    if-ge v4, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcReader;->_data:[B

    aget-byte v0, v0, v4

    const/16 v8, 0x1c

    if-ne v0, v8, :cond_0

    .line 113
    add-int/lit8 v0, v4, 0x5

    iget-object v8, p0, Lcom/drew/metadata/iptc/IptcReader;->_data:[B

    array-length v8, v8

    if-ge v0, v8, :cond_0

    .line 117
    add-int/lit8 v4, v4, 0x1

    .line 123
    :try_start_1
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcReader;->_data:[B
    :try_end_1
    .catch Lcom/drew/metadata/MetadataException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v7, v4, 0x1

    .end local v4           #offset:I
    .local v7, offset:I
    :try_start_2
    aget-byte v2, v0, v4

    .line 124
    .local v2, directoryType:I
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcReader;->_data:[B
    :try_end_2
    .catch Lcom/drew/metadata/MetadataException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v4, v7, 0x1

    .end local v7           #offset:I
    .restart local v4       #offset:I
    :try_start_3
    aget-byte v3, v0, v7

    .line 125
    .local v3, tagType:I
    invoke-direct {p0, v4}, Lcom/drew/metadata/iptc/IptcReader;->get32Bits(I)I
    :try_end_3
    .catch Lcom/drew/metadata/MetadataException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v5

    .line 130
    .local v5, tagByteCount:I
    add-int/lit8 v4, v4, 0x2

    .line 131
    add-int v0, v4, v5

    iget-object v8, p0, Lcom/drew/metadata/iptc/IptcReader;->_data:[B

    array-length v8, v8

    if-le v0, v8, :cond_4

    .line 132
    const-string v0, "data for tag extends beyond end of iptc segment"

    invoke-virtual {v1, v0}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    .end local v2           #directoryType:I
    .end local v3           #tagType:I
    .end local v5           #tagByteCount:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 101
    :catch_0
    move-exception v6

    .line 102
    .local v6, e:Lcom/drew/metadata/MetadataException;
    const-string v0, "Couldn\'t find start of Iptc data (invalid segment)"

    invoke-virtual {v1, v0}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v6           #e:Lcom/drew/metadata/MetadataException;
    :catch_1
    move-exception v6

    .line 127
    .restart local v6       #e:Lcom/drew/metadata/MetadataException;
    :goto_3
    const-string v0, "Iptc data segment ended mid-way through tag descriptor"

    invoke-virtual {v1, v0}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    goto :goto_0

    .end local v6           #e:Lcom/drew/metadata/MetadataException;
    .restart local v2       #directoryType:I
    .restart local v3       #tagType:I
    .restart local v5       #tagByteCount:I
    :cond_4
    move-object v0, p0

    .line 136
    invoke-direct/range {v0 .. v5}, Lcom/drew/metadata/iptc/IptcReader;->processTag(Lcom/drew/metadata/Directory;IIII)V

    .line 137
    add-int/2addr v4, v5

    goto :goto_2

    .line 126
    .end local v2           #directoryType:I
    .end local v3           #tagType:I
    .end local v4           #offset:I
    .end local v5           #tagByteCount:I
    .restart local v7       #offset:I
    :catch_2
    move-exception v6

    move v4, v7

    .end local v7           #offset:I
    .restart local v4       #offset:I
    goto :goto_3
.end method
