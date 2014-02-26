.class public Lcom/drew/imaging/jpeg/JpegSegmentReader;
.super Ljava/lang/Object;
.source "JpegSegmentReader.java"


# static fields
.field private static final MARKER_EOI:B = -0x27t

.field public static final SEGMENT_APP0:B = -0x20t

.field public static final SEGMENT_APP1:B = -0x1ft

.field public static final SEGMENT_APP2:B = -0x1et

.field public static final SEGMENT_APP3:B = -0x1dt

.field public static final SEGMENT_APP4:B = -0x1ct

.field public static final SEGMENT_APP5:B = -0x1bt

.field public static final SEGMENT_APP6:B = -0x1at

.field public static final SEGMENT_APP7:B = -0x19t

.field public static final SEGMENT_APP8:B = -0x18t

.field public static final SEGMENT_APP9:B = -0x17t

.field public static final SEGMENT_APPA:B = -0x16t

.field public static final SEGMENT_APPB:B = -0x15t

.field public static final SEGMENT_APPC:B = -0x14t

.field public static final SEGMENT_APPD:B = -0x13t

.field public static final SEGMENT_APPE:B = -0x12t

.field public static final SEGMENT_APPF:B = -0x11t

.field public static final SEGMENT_COM:B = -0x2t

.field public static final SEGMENT_DHT:B = -0x3ct

.field public static final SEGMENT_DQT:B = -0x25t

.field public static final SEGMENT_SOF0:B = -0x40t

.field public static final SEGMENT_SOI:B = -0x28t

.field private static final SEGMENT_SOS:B = -0x26t


# instance fields
.field private final _data:[B

.field private final _file:Ljava/io/File;

.field private _segmentData:Lcom/drew/imaging/jpeg/JpegSegmentData;

.field private final _stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/drew/imaging/jpeg/JpegSegmentData;)V
    .locals 1
    .parameter "segmentData"

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_file:Ljava/io/File;

    .line 137
    iput-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_data:[B

    .line 138
    iput-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_stream:Ljava/io/InputStream;

    .line 140
    iput-object p1, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_segmentData:Lcom/drew/imaging/jpeg/JpegSegmentData;

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_file:Ljava/io/File;

    .line 106
    iput-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_data:[B

    .line 107
    iput-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_stream:Ljava/io/InputStream;

    .line 109
    invoke-direct {p0}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegments()V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_stream:Ljava/io/InputStream;

    .line 128
    iput-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_file:Ljava/io/File;

    .line 129
    iput-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_data:[B

    .line 131
    invoke-direct {p0}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegments()V

    .line 132
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "fileContents"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_file:Ljava/io/File;

    .line 119
    iput-object p1, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_data:[B

    .line 120
    iput-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_stream:Ljava/io/InputStream;

    .line 122
    invoke-direct {p0}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegments()V

    .line 123
    return-void
.end method

.method private getJpegInputStream()Ljava/io/BufferedInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v2, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_stream:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 251
    iget-object v2, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_stream:Ljava/io/InputStream;

    instance-of v2, v2, Ljava/io/BufferedInputStream;

    if-eqz v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_stream:Ljava/io/InputStream;

    check-cast v2, Ljava/io/BufferedInputStream;

    .line 267
    :goto_0
    return-object v2

    .line 254
    :cond_0
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_stream:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_data:[B

    if-nez v2, :cond_2

    .line 260
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .local v1, inputStream:Ljava/io/InputStream;
    :goto_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 261
    .end local v1           #inputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/io/FileNotFoundException;
    new-instance v2, Lcom/drew/imaging/jpeg/JpegProcessingException;

    const-string v3, "Jpeg file does not exist"

    invoke-direct {v2, v3, v0}, Lcom/drew/imaging/jpeg/JpegProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 265
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_data:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_1
.end method

.method private isValidJpegHeaderBytes(Ljava/io/InputStream;)Z
    .locals 5
    .parameter "fileStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    new-array v0, v3, [B

    .line 280
    .local v0, header:[B
    invoke-virtual {p1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 281
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xff

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xd8

    if-ne v3, v4, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private readSegments()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v8, Lcom/drew/imaging/jpeg/JpegSegmentData;

    invoke-direct {v8}, Lcom/drew/imaging/jpeg/JpegSegmentData;-><init>()V

    iput-object v8, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_segmentData:Lcom/drew/imaging/jpeg/JpegSegmentData;

    .line 182
    invoke-direct {p0}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->getJpegInputStream()Ljava/io/BufferedInputStream;

    move-result-object v0

    .line 184
    .local v0, inStream:Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 186
    .local v2, offset:I
    :try_start_0
    invoke-direct {p0, v0}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->isValidJpegHeaderBytes(Ljava/io/InputStream;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 187
    new-instance v8, Lcom/drew/imaging/jpeg/JpegProcessingException;

    const-string v9, "not a jpeg file"

    invoke-direct {v8, v9}, Lcom/drew/imaging/jpeg/JpegProcessingException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :catch_0
    move-exception v1

    .line 229
    .local v1, ioe:Ljava/io/IOException;
    :try_start_1
    new-instance v8, Lcom/drew/imaging/jpeg/JpegProcessingException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "IOException processing Jpeg file: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lcom/drew/imaging/jpeg/JpegProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 232
    if-eqz v0, :cond_0

    .line 233
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 239
    :cond_0
    throw v8

    .line 189
    :cond_1
    add-int/lit8 v2, v2, 0x2

    .line 192
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v4, v8

    .line 193
    .local v4, segmentIdentifier:B
    and-int/lit16 v8, v4, 0xff

    const/16 v9, 0xff

    if-eq v8, v9, :cond_2

    .line 194
    new-instance v8, Lcom/drew/imaging/jpeg/JpegProcessingException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "expected jpeg segment start identifier 0xFF at offset "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", not 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    and-int/lit16 v10, v4, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/drew/imaging/jpeg/JpegProcessingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 196
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 198
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v7, v8

    .line 199
    .local v7, thisSegmentMarker:B
    add-int/lit8 v2, v2, 0x1

    .line 201
    const/4 v8, 0x2

    new-array v6, v8, [B

    .line 202
    .local v6, segmentLengthBytes:[B
    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v0, v6, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 203
    add-int/lit8 v2, v2, 0x2

    .line 204
    const/4 v8, 0x0

    aget-byte v8, v6, v8

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    const/4 v9, 0x1

    aget-byte v9, v6, v9

    and-int/lit16 v9, v9, 0xff

    or-int v5, v8, v9

    .line 206
    .local v5, segmentLength:I
    add-int/lit8 v5, v5, -0x2

    .line 207
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->available()I

    move-result v8

    if-le v5, v8, :cond_3

    .line 208
    new-instance v8, Lcom/drew/imaging/jpeg/JpegProcessingException;

    const-string v9, "segment size would extend beyond file stream length"

    invoke-direct {v8, v9}, Lcom/drew/imaging/jpeg/JpegProcessingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 209
    :cond_3
    if-gez v5, :cond_4

    .line 210
    new-instance v8, Lcom/drew/imaging/jpeg/JpegProcessingException;

    const-string v9, "segment size would be less than zero"

    invoke-direct {v8, v9}, Lcom/drew/imaging/jpeg/JpegProcessingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 211
    :cond_4
    new-array v3, v5, [B

    .line 212
    .local v3, segmentBytes:[B
    const/4 v8, 0x0

    invoke-virtual {v0, v3, v8, v5}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 213
    add-int/2addr v2, v5

    .line 214
    and-int/lit16 v8, v7, 0xff

    const/16 v9, 0xda

    if-ne v8, v9, :cond_7

    .line 232
    :cond_5
    if-eqz v0, :cond_6

    .line 233
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 218
    :cond_6
    return-void

    .line 235
    :catch_1
    move-exception v1

    .line 237
    .restart local v1       #ioe:Ljava/io/IOException;
    new-instance v8, Lcom/drew/imaging/jpeg/JpegProcessingException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "IOException processing Jpeg file: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lcom/drew/imaging/jpeg/JpegProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 219
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_7
    and-int/lit16 v8, v7, 0xff

    const/16 v9, 0xd9

    if-eq v8, v9, :cond_5

    .line 223
    :try_start_5
    iget-object v8, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_segmentData:Lcom/drew/imaging/jpeg/JpegSegmentData;

    invoke-virtual {v8, v7, v3}, Lcom/drew/imaging/jpeg/JpegSegmentData;->addSegment(B[B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 235
    .end local v3           #segmentBytes:[B
    .end local v4           #segmentIdentifier:B
    .end local v5           #segmentLength:I
    .end local v6           #segmentLengthBytes:[B
    .end local v7           #thisSegmentMarker:B
    :catch_2
    move-exception v1

    .line 237
    .restart local v1       #ioe:Ljava/io/IOException;
    new-instance v8, Lcom/drew/imaging/jpeg/JpegProcessingException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "IOException processing Jpeg file: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lcom/drew/imaging/jpeg/JpegProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method


# virtual methods
.method public final getSegmentCount(B)I
    .locals 1
    .parameter "segmentMarker"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_segmentData:Lcom/drew/imaging/jpeg/JpegSegmentData;

    invoke-virtual {v0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentData;->getSegmentCount(B)I

    move-result v0

    return v0
.end method

.method public final getSegmentData()Lcom/drew/imaging/jpeg/JpegSegmentData;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_segmentData:Lcom/drew/imaging/jpeg/JpegSegmentData;

    return-object v0
.end method

.method public readSegment(B)[B
    .locals 1
    .parameter "segmentMarker"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegment(BI)[B

    move-result-object v0

    return-object v0
.end method

.method public readSegment(BI)[B
    .locals 1
    .parameter "segmentMarker"
    .parameter "occurrence"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/drew/imaging/jpeg/JpegSegmentReader;->_segmentData:Lcom/drew/imaging/jpeg/JpegSegmentData;

    invoke-virtual {v0, p1, p2}, Lcom/drew/imaging/jpeg/JpegSegmentData;->getSegment(BI)[B

    move-result-object v0

    return-object v0
.end method
