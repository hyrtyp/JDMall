.class public Lcom/drew/metadata/jpeg/JpegReader;
.super Ljava/lang/Object;
.source "JpegReader.java"

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
    .line 44
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentReader;

    invoke-direct {v0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentReader;-><init>(Ljava/io/File;)V

    const/16 v1, -0x40

    invoke-virtual {v0, v1}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegment(B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/drew/metadata/jpeg/JpegReader;-><init>([B)V

    .line 45
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
    .line 53
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentReader;

    invoke-direct {v0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, -0x13

    invoke-virtual {v0, v1}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegment(B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/drew/metadata/jpeg/JpegReader;-><init>([B)V

    .line 54
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/drew/metadata/jpeg/JpegReader;->_data:[B

    .line 59
    return-void
.end method

.method private get16Bits(I)I
    .locals 2
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/drew/metadata/jpeg/JpegReader;->_data:[B

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 141
    new-instance v0, Lcom/drew/metadata/MetadataException;

    const-string v1, "Attempt to read bytes from outside Jpeg segment data buffer"

    invoke-direct {v0, v1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/jpeg/JpegReader;->_data:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
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
    .line 126
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/drew/metadata/jpeg/JpegReader;->_data:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 127
    new-instance v0, Lcom/drew/metadata/MetadataException;

    const-string v1, "Attempt to read bytes from outside Jpeg segment data buffer"

    invoke-direct {v0, v1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/jpeg/JpegReader;->_data:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/drew/metadata/jpeg/JpegReader;->_data:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public extract()Lcom/drew/metadata/Metadata;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/drew/metadata/Metadata;

    invoke-direct {v0}, Lcom/drew/metadata/Metadata;-><init>()V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/jpeg/JpegReader;->extract(Lcom/drew/metadata/Metadata;)Lcom/drew/metadata/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public extract(Lcom/drew/metadata/Metadata;)Lcom/drew/metadata/Metadata;
    .locals 16
    .parameter "metadata"

    .prologue
    .line 75
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/drew/metadata/jpeg/JpegReader;->_data:[B

    if-nez v14, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-object p1

    .line 79
    :cond_1
    const-class v14, Lcom/drew/metadata/jpeg/JpegDirectory;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v4

    check-cast v4, Lcom/drew/metadata/jpeg/JpegDirectory;

    .line 83
    .local v4, directory:Lcom/drew/metadata/jpeg/JpegDirectory;
    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/drew/metadata/jpeg/JpegReader;->get16Bits(I)I

    move-result v3

    .line 84
    .local v3, dataPrecision:I
    const/4 v14, 0x0

    invoke-virtual {v4, v14, v3}, Lcom/drew/metadata/jpeg/JpegDirectory;->setInt(II)V

    .line 87
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/drew/metadata/jpeg/JpegReader;->get32Bits(I)I

    move-result v5

    .line 88
    .local v5, height:I
    const/4 v14, 0x1

    invoke-virtual {v4, v14, v5}, Lcom/drew/metadata/jpeg/JpegDirectory;->setInt(II)V

    .line 91
    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/drew/metadata/jpeg/JpegReader;->get32Bits(I)I

    move-result v13

    .line 92
    .local v13, width:I
    const/4 v14, 0x3

    invoke-virtual {v4, v14, v13}, Lcom/drew/metadata/jpeg/JpegDirectory;->setInt(II)V

    .line 95
    const/4 v14, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/drew/metadata/jpeg/JpegReader;->get16Bits(I)I

    move-result v8

    .line 96
    .local v8, numberOfComponents:I
    const/4 v14, 0x5

    invoke-virtual {v4, v14, v8}, Lcom/drew/metadata/jpeg/JpegDirectory;->setInt(II)V

    .line 102
    const/4 v9, 0x6

    .line 103
    .local v9, offset:I
    const/4 v6, 0x0

    .local v6, i:I
    move v10, v9

    .end local v9           #offset:I
    .local v10, offset:I
    :goto_1
    if-ge v6, v8, :cond_0

    .line 105
    add-int/lit8 v9, v10, 0x1

    .end local v10           #offset:I
    .restart local v9       #offset:I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/drew/metadata/jpeg/JpegReader;->get16Bits(I)I

    move-result v2

    .line 106
    .local v2, componentId:I
    add-int/lit8 v10, v9, 0x1

    .end local v9           #offset:I
    .restart local v10       #offset:I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/drew/metadata/jpeg/JpegReader;->get16Bits(I)I

    move-result v12

    .line 107
    .local v12, samplingFactorByte:I
    add-int/lit8 v9, v10, 0x1

    .end local v10           #offset:I
    .restart local v9       #offset:I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/drew/metadata/jpeg/JpegReader;->get16Bits(I)I

    move-result v11

    .line 108
    .local v11, quantizationTableNumber:I
    new-instance v1, Lcom/drew/metadata/jpeg/JpegComponent;

    invoke-direct {v1, v2, v12, v11}, Lcom/drew/metadata/jpeg/JpegComponent;-><init>(III)V

    .line 109
    .local v1, component:Lcom/drew/metadata/jpeg/JpegComponent;
    add-int/lit8 v14, v6, 0x6

    invoke-virtual {v4, v14, v1}, Lcom/drew/metadata/jpeg/JpegDirectory;->setObject(ILjava/lang/Object;)V
    :try_end_0
    .catch Lcom/drew/metadata/MetadataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    add-int/lit8 v6, v6, 0x1

    move v10, v9

    .end local v9           #offset:I
    .restart local v10       #offset:I
    goto :goto_1

    .line 112
    .end local v1           #component:Lcom/drew/metadata/jpeg/JpegComponent;
    .end local v2           #componentId:I
    .end local v3           #dataPrecision:I
    .end local v5           #height:I
    .end local v6           #i:I
    .end local v8           #numberOfComponents:I
    .end local v10           #offset:I
    .end local v11           #quantizationTableNumber:I
    .end local v12           #samplingFactorByte:I
    .end local v13           #width:I
    :catch_0
    move-exception v7

    .line 113
    .local v7, me:Lcom/drew/metadata/MetadataException;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "MetadataException: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/drew/metadata/jpeg/JpegDirectory;->addError(Ljava/lang/String;)V

    goto :goto_0
.end method
