.class public Lcom/drew/metadata/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"

# interfaces
.implements Lcom/drew/metadata/MetadataReader;


# static fields
.field private static final BYTES_PER_FORMAT:[I = null

.field private static final FMT_BYTE:I = 0x1

.field private static final FMT_DOUBLE:I = 0xc

.field private static final FMT_SBYTE:I = 0x6

.field private static final FMT_SINGLE:I = 0xb

.field private static final FMT_SLONG:I = 0x9

.field private static final FMT_SRATIONAL:I = 0xa

.field private static final FMT_SSHORT:I = 0x8

.field private static final FMT_STRING:I = 0x2

.field private static final FMT_ULONG:I = 0x4

.field private static final FMT_UNDEFINED:I = 0x7

.field private static final FMT_URATIONAL:I = 0x5

.field private static final FMT_USHORT:I = 0x3

.field private static final MAX_FORMAT_CODE:I = 0xc

.field public static final TAG_EXIF_OFFSET:I = 0x8769

.field public static final TAG_GPS_INFO_OFFSET:I = 0x8825

.field public static final TAG_INTEROP_OFFSET:I = 0xa005

.field public static final TAG_MAKER_NOTE:I = 0x927c

.field public static final TIFF_HEADER_START_OFFSET:I = 0x6


# instance fields
.field private final _data:[B

.field private _isMotorollaByteOrder:Z

.field private _metadata:Lcom/drew/metadata/Metadata;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 87
    const/16 v0, 0xd

    new-array v0, v0, [I

    aput v2, v0, v2

    aput v2, v0, v5

    const/4 v1, 0x3

    aput v5, v0, v1

    aput v3, v0, v3

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    aput v5, v0, v4

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    const/16 v1, 0xc

    aput v4, v0, v1

    sput-object v0, Lcom/drew/metadata/exif/ExifReader;->BYTES_PER_FORMAT:[I

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/drew/imaging/jpeg/JpegSegmentData;)V
    .locals 1
    .parameter "segmentData"

    .prologue
    .line 123
    const/16 v0, -0x1f

    invoke-virtual {p1, v0}, Lcom/drew/imaging/jpeg/JpegSegmentData;->getSegment(B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifReader;-><init>([B)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/jpeg/JpegProcessingException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentReader;

    invoke-direct {v0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentReader;-><init>(Ljava/io/File;)V

    const/16 v1, -0x1f

    invoke-virtual {v0, v1}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegment(B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifReader;-><init>([B)V

    .line 134
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
    .line 142
    new-instance v0, Lcom/drew/imaging/jpeg/JpegSegmentReader;

    invoke-direct {v0, p1}, Lcom/drew/imaging/jpeg/JpegSegmentReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, -0x1f

    invoke-virtual {v0, v1}, Lcom/drew/imaging/jpeg/JpegSegmentReader;->readSegment(B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifReader;-><init>([B)V

    .line 143
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    .line 151
    return-void
.end method

.method private calculateTagOffset(II)I
    .locals 2
    .parameter "dirStartOffset"
    .parameter "entryNumber"

    .prologue
    .line 626
    add-int/lit8 v0, p1, 0x2

    mul-int/lit8 v1, p2, 0xc

    add-int/2addr v0, v1

    return v0
.end method

.method private calculateTagValueOffset(III)I
    .locals 3
    .parameter "byteCount"
    .parameter "dirEntryOffset"
    .parameter "tiffHeaderOffset"

    .prologue
    .line 588
    const/4 v1, 0x4

    if-le p1, v1, :cond_1

    .line 592
    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v1}, Lcom/drew/metadata/exif/ExifReader;->get32Bits(I)I

    move-result v0

    .line 593
    .local v0, offsetVal:I
    add-int v1, v0, p1

    iget-object v2, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 595
    const/4 v1, -0x1

    .line 600
    .end local v0           #offsetVal:I
    :goto_0
    return v1

    .line 597
    .restart local v0       #offsetVal:I
    :cond_0
    add-int v1, p3, v0

    goto :goto_0

    .line 600
    .end local v0           #offsetVal:I
    :cond_1
    add-int/lit8 v1, p2, 0x8

    goto :goto_0
.end method

.method private get16Bits(I)I
    .locals 3
    .parameter "offset"

    .prologue
    const v2, 0xff00

    .line 634
    if-ltz p1, :cond_0

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 635
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attempt to read data outside of exif segment (index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where max index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_1
    iget-boolean v0, p0, Lcom/drew/metadata/exif/ExifReader;->_isMotorollaByteOrder:Z

    if-eqz v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    aget-byte v0, v0, p1

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v2

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 642
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v2

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private get32Bits(I)I
    .locals 5
    .parameter "offset"

    .prologue
    const/high16 v4, 0xff

    const v3, 0xff00

    const/high16 v2, -0x100

    .line 651
    if-ltz p1, :cond_0

    add-int/lit8 v0, p1, 0x4

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 652
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attempt to read data outside of exif segment (index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where max index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_1
    iget-boolean v0, p0, Lcom/drew/metadata/exif/ExifReader;->_isMotorollaByteOrder:Z

    if-eqz v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    aget-byte v0, v0, p1

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v2

    .line 657
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v4

    .line 656
    or-int/2addr v0, v1

    .line 658
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    add-int/lit8 v2, p1, 0x2

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v3

    .line 656
    or-int/2addr v0, v1

    .line 659
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    add-int/lit8 v2, p1, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 656
    or-int/2addr v0, v1

    .line 662
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    add-int/lit8 v1, p1, 0x3

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v2

    .line 663
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    add-int/lit8 v2, p1, 0x2

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v4

    .line 662
    or-int/2addr v0, v1

    .line 664
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v3

    .line 662
    or-int/2addr v0, v1

    .line 665
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    .line 662
    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private isDirectoryLengthValid(II)Z
    .locals 4
    .parameter "dirStartOffset"
    .parameter "tiffHeaderOffset"

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcom/drew/metadata/exif/ExifReader;->get16Bits(I)I

    move-result v1

    .line 495
    .local v1, dirTagCount:I
    mul-int/lit8 v2, v1, 0xc

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, 0x4

    .line 496
    .local v0, dirLength:I
    add-int v2, v0, p1

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 498
    const/4 v2, 0x0

    .line 500
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V
    .locals 17
    .parameter "directory"
    .parameter "processedDirectoryOffsets"
    .parameter "dirStartOffset"
    .parameter "tiffHeaderOffset"

    .prologue
    .line 264
    new-instance v4, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    new-instance v4, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, "processed"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    array-length v4, v4

    move/from16 v0, p3

    if-ge v0, v4, :cond_2

    if-gez p3, :cond_3

    .line 271
    :cond_2
    const-string v4, "Ignored directory marked to start outside data segement"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/drew/metadata/exif/ExifReader;->isDirectoryLengthValid(II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 276
    const-string v4, "Illegally sized directory"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/drew/metadata/exif/ExifReader;->get16Bits(I)I

    move-result v11

    .line 284
    .local v11, dirTagCount:I
    const/4 v15, 0x0

    .local v15, tagNumber:I
    :goto_1
    if-lt v15, v11, :cond_5

    .line 343
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v11}, Lcom/drew/metadata/exif/ExifReader;->calculateTagOffset(II)I

    move-result v12

    .line 344
    .local v12, finalTagOffset:I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/drew/metadata/exif/ExifReader;->get32Bits(I)I

    move-result v13

    .line 345
    .local v13, nextDirectoryOffset:I
    if-eqz v13, :cond_0

    .line 346
    add-int v13, v13, p4

    .line 347
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    array-length v4, v4

    if-ge v13, v4, :cond_0

    .line 351
    move/from16 v0, p3

    if-lt v13, v0, :cond_0

    .line 356
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    goto :goto_0

    .line 286
    .end local v12           #finalTagOffset:I
    .end local v13           #nextDirectoryOffset:I
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v15}, Lcom/drew/metadata/exif/ExifReader;->calculateTagOffset(II)I

    move-result v16

    .line 289
    .local v16, tagOffset:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/drew/metadata/exif/ExifReader;->get16Bits(I)I

    move-result v6

    .line 292
    .local v6, tagType:I
    add-int/lit8 v4, v16, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/drew/metadata/exif/ExifReader;->get16Bits(I)I

    move-result v9

    .line 293
    .local v9, formatCode:I
    const/4 v4, 0x1

    if-lt v9, v4, :cond_6

    const/16 v4, 0xc

    if-le v9, v4, :cond_7

    .line 294
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid format code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    .line 284
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 299
    :cond_7
    add-int/lit8 v4, v16, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/drew/metadata/exif/ExifReader;->get32Bits(I)I

    move-result v8

    .line 300
    .local v8, componentCount:I
    if-gez v8, :cond_8

    .line 301
    const-string v4, "Negative component count in EXIF"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    goto :goto_2

    .line 305
    :cond_8
    sget-object v4, Lcom/drew/metadata/exif/ExifReader;->BYTES_PER_FORMAT:[I

    aget v4, v4, v9

    mul-int v10, v8, v4

    .line 306
    .local v10, byteCount:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p4

    invoke-direct {v0, v10, v1, v2}, Lcom/drew/metadata/exif/ExifReader;->calculateTagValueOffset(III)I

    move-result v7

    .line 307
    .local v7, tagValueOffset:I
    if-ltz v7, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    array-length v4, v4

    if-le v7, v4, :cond_a

    .line 308
    :cond_9
    const-string v4, "Illegal pointer offset value in EXIF"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    goto :goto_2

    .line 314
    :cond_a
    if-ltz v10, :cond_b

    add-int v4, v7, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    array-length v5, v5

    if-le v4, v5, :cond_c

    .line 316
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Illegal number of bytes: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    goto :goto_2

    .line 321
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/drew/metadata/exif/ExifReader;->get32Bits(I)I

    move-result v4

    add-int v14, p4, v4

    .line 323
    .local v14, subdirOffset:I
    sparse-switch v6, :sswitch_data_0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 337
    invoke-direct/range {v4 .. v9}, Lcom/drew/metadata/exif/ExifReader;->processTag(Lcom/drew/metadata/Directory;IIII)V

    goto :goto_2

    .line 325
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v5, Lcom/drew/metadata/exif/ExifDirectory;

    invoke-virtual {v4, v5}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {v0, v4, v1, v14, v2}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    goto :goto_2

    .line 328
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v5, Lcom/drew/metadata/exif/ExifInteropDirectory;

    invoke-virtual {v4, v5}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {v0, v4, v1, v14, v2}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    goto/16 :goto_2

    .line 331
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v5, Lcom/drew/metadata/exif/GpsDirectory;

    invoke-virtual {v4, v5}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {v0, v4, v1, v14, v2}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    goto/16 :goto_2

    .line 334
    :sswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {v0, v7, v1, v2}, Lcom/drew/metadata/exif/ExifReader;->processMakerNote(ILjava/util/HashMap;I)V

    goto/16 :goto_2

    .line 323
    :sswitch_data_0
    .sparse-switch
        0x8769 -> :sswitch_0
        0x8825 -> :sswitch_2
        0x927c -> :sswitch_3
        0xa005 -> :sswitch_1
    .end sparse-switch
.end method

.method private processMakerNote(ILjava/util/HashMap;I)V
    .locals 19
    .parameter "subdirOffset"
    .parameter "processedDirectoryOffsets"
    .parameter "tiffHeaderOffset"

    .prologue
    .line 363
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v16, Lcom/drew/metadata/exif/ExifDirectory;

    invoke-virtual/range {v15 .. v16}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v6

    .line 365
    .local v6, exifDirectory:Lcom/drew/metadata/Directory;
    if-nez v6, :cond_0

    .line 490
    :goto_0
    return-void

    .line 368
    :cond_0
    const/16 v15, 0x10f

    invoke-virtual {v6, v15}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 369
    .local v5, cameraModel:Ljava/lang/String;
    new-instance v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    const/16 v16, 0x2

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-direct {v13, v15, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 370
    .local v13, firstTwoChars:Ljava/lang/String;
    new-instance v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    const/16 v16, 0x3

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-direct {v12, v15, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 371
    .local v12, firstThreeChars:Ljava/lang/String;
    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    const/16 v16, 0x4

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-direct {v9, v15, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 372
    .local v9, firstFourChars:Ljava/lang/String;
    new-instance v8, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    const/16 v16, 0x5

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-direct {v8, v15, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 373
    .local v8, firstFiveChars:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    const/16 v16, 0x6

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-direct {v11, v15, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 374
    .local v11, firstSixChars:Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    const/16 v16, 0x7

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-direct {v10, v15, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 375
    .local v10, firstSevenChars:Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    const/16 v16, 0x8

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-direct {v7, v15, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 376
    .local v7, firstEightChars:Ljava/lang/String;
    const-string v15, "OLYMP"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "EPSON"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "AGFA"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 381
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v16, Lcom/drew/metadata/exif/OlympusMakernoteDirectory;

    invoke-virtual/range {v15 .. v16}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v15

    add-int/lit8 v16, p1, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    move/from16 v3, p3

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    goto/16 :goto_0

    .line 383
    :cond_2
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    const-string v16, "NIKON"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 385
    const-string v15, "Nikon"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 395
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    add-int/lit8 v16, p1, 0x6

    aget-byte v15, v15, v16

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 396
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v16, Lcom/drew/metadata/exif/NikonType1MakernoteDirectory;

    invoke-virtual/range {v15 .. v16}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v15

    add-int/lit8 v16, p1, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    move/from16 v3, p3

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    goto/16 :goto_0

    .line 397
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    add-int/lit8 v16, p1, 0x6

    aget-byte v15, v15, v16

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 398
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v16, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;

    invoke-virtual/range {v15 .. v16}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v15

    add-int/lit8 v16, p1, 0x12

    add-int/lit8 v17, p1, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    goto/16 :goto_0

    .line 400
    :cond_4
    const-string v15, "Unsupported makernote data ignored."

    invoke-virtual {v6, v15}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 405
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v16, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;

    invoke-virtual/range {v15 .. v16}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move/from16 v3, p3

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    goto/16 :goto_0

    .line 408
    :cond_6
    const-string v15, "SONY CAM"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "SONY DSC"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 410
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v16, Lcom/drew/metadata/exif/SonyMakernoteDirectory;

    invoke-virtual/range {v15 .. v16}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v15

    add-int/lit8 v16, p1, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    move/from16 v3, p3

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    goto/16 :goto_0

    .line 412
    :cond_8
    const-string v15, "KDK"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 414
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v16, Lcom/drew/metadata/exif/KodakMakernoteDirectory;

    invoke-virtual/range {v15 .. v16}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v15

    add-int/lit8 v16, p1, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    move/from16 v3, p3

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    goto/16 :goto_0

    .line 416
    :cond_9
    const-string v15, "Canon"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 418
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v16, Lcom/drew/metadata/exif/CanonMakernoteDirectory;

    invoke-virtual/range {v15 .. v16}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move/from16 v3, p3

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    goto/16 :goto_0

    .line 420
    :cond_a
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    const-string v16, "CASIO"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 422
    const-string v15, "QVC\u0000\u0000\u0000"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 423
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v16, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;

    invoke-virtual/range {v15 .. v16}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v15

    add-int/lit8 v16, p1, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    move/from16 v3, p3

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    goto/16 :goto_0

    .line 425
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v16, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;

    invoke-virtual/range {v15 .. v16}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move/from16 v3, p3

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    goto/16 :goto_0

    .line 427
    :cond_c
    const-string v15, "FUJIFILM"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    const-string v15, "Fujifilm"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 430
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/drew/metadata/exif/ExifReader;->_isMotorollaByteOrder:Z

    .line 432
    .local v4, byteOrderBefore:Z
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/drew/metadata/exif/ExifReader;->_isMotorollaByteOrder:Z

    .line 436
    add-int/lit8 v15, p1, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/drew/metadata/exif/ExifReader;->get32Bits(I)I

    move-result v15

    add-int v14, p1, v15

    .line 437
    .local v14, ifdStart:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v16, Lcom/drew/metadata/exif/FujifilmMakernoteDirectory;

    invoke-virtual/range {v15 .. v16}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v15, v1, v14, v2}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    .line 438
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/drew/metadata/exif/ExifReader;->_isMotorollaByteOrder:Z

    goto/16 :goto_0

    .line 440
    .end local v4           #byteOrderBefore:Z
    .end local v14           #ifdStart:I
    :cond_e
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    const-string v16, "MINOLTA"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 444
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v16, Lcom/drew/metadata/exif/OlympusMakernoteDirectory;

    invoke-virtual/range {v15 .. v16}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move/from16 v3, p3

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    goto/16 :goto_0

    .line 446
    :cond_f
    const-string v15, "KC"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    const-string v15, "MINOL"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    const-string v15, "MLY"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    const-string v15, "+M+M+M+M"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 451
    :cond_10
    const-string v15, "Unsupported Konica/Minolta data ignored."

    invoke-virtual {v6, v15}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :cond_11
    const-string v15, "KYOCERA"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 456
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v16, Lcom/drew/metadata/exif/KyoceraMakernoteDirectory;

    invoke-virtual/range {v15 .. v16}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v15

    add-int/lit8 v16, p1, 0x16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    move/from16 v3, p3

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    goto/16 :goto_0

    .line 458
    :cond_12
    const-string v15, "Panasonic\u0000\u0000\u0000"

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    move-object/from16 v17, v0

    const/16 v18, 0xc

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 463
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v16, Lcom/drew/metadata/exif/PanasonicMakernoteDirectory;

    invoke-virtual/range {v15 .. v16}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v15

    add-int/lit8 v16, p1, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    move/from16 v3, p3

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    goto/16 :goto_0

    .line 465
    :cond_13
    const-string v15, "AOC\u0000"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 472
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v16, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;

    invoke-virtual/range {v15 .. v16}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v15

    add-int/lit8 v16, p1, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    move/from16 v3, p1

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    goto/16 :goto_0

    .line 474
    :cond_14
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    const-string v16, "PENTAX"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_15

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    const-string v16, "ASAHI"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 482
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v16, Lcom/drew/metadata/exif/PentaxMakernoteDirectory;

    invoke-virtual/range {v15 .. v16}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move/from16 v3, p1

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    goto/16 :goto_0

    .line 488
    :cond_16
    const-string v15, "Unsupported makernote data ignored."

    invoke-virtual {v6, v15}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private processTag(Lcom/drew/metadata/Directory;IIII)V
    .locals 14
    .parameter "directory"
    .parameter "tagType"
    .parameter "tagValueOffset"
    .parameter "componentCount"
    .parameter "formatCode"

    .prologue
    .line 507
    packed-switch p5, :pswitch_data_0

    .line 582
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unknown format code "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for tag "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    .line 584
    :goto_0
    return-void

    .line 511
    :pswitch_0
    move/from16 v0, p4

    new-array v9, v0, [B

    .line 512
    .local v9, tagBytes:[B
    sget-object v10, Lcom/drew/metadata/exif/ExifReader;->BYTES_PER_FORMAT:[I

    aget v10, v10, p5

    mul-int v3, p4, v10

    .line 513
    .local v3, byteCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-lt v5, v3, :cond_0

    .line 515
    move/from16 v0, p2

    invoke-virtual {p1, v0, v9}, Lcom/drew/metadata/Directory;->setByteArray(I[B)V

    goto :goto_0

    .line 514
    :cond_0
    iget-object v10, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    add-int v11, p3, v5

    aget-byte v10, v10, v11

    aput-byte v10, v9, v5

    .line 513
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 518
    .end local v3           #byteCount:I
    .end local v5           #i:I
    .end local v9           #tagBytes:[B
    :pswitch_1
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcom/drew/metadata/exif/ExifReader;->readString(II)Ljava/lang/String;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {p1, v0, v10}, Lcom/drew/metadata/Directory;->setString(ILjava/lang/String;)V

    goto :goto_0

    .line 522
    :pswitch_2
    const/4 v10, 0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_1

    .line 523
    new-instance v7, Lcom/drew/lang/Rational;

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifReader;->get32Bits(I)I

    move-result v10

    add-int/lit8 v11, p3, 0x4

    invoke-direct {p0, v11}, Lcom/drew/metadata/exif/ExifReader;->get32Bits(I)I

    move-result v11

    invoke-direct {v7, v10, v11}, Lcom/drew/lang/Rational;-><init>(II)V

    .line 524
    .local v7, rational:Lcom/drew/lang/Rational;
    move/from16 v0, p2

    invoke-virtual {p1, v0, v7}, Lcom/drew/metadata/Directory;->setRational(ILcom/drew/lang/Rational;)V

    goto :goto_0

    .line 526
    .end local v7           #rational:Lcom/drew/lang/Rational;
    :cond_1
    move/from16 v0, p4

    new-array v8, v0, [Lcom/drew/lang/Rational;

    .line 527
    .local v8, rationals:[Lcom/drew/lang/Rational;
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    move/from16 v0, p4

    if-lt v5, v0, :cond_2

    .line 529
    move/from16 v0, p2

    invoke-virtual {p1, v0, v8}, Lcom/drew/metadata/Directory;->setRationalArray(I[Lcom/drew/lang/Rational;)V

    goto :goto_0

    .line 528
    :cond_2
    new-instance v10, Lcom/drew/lang/Rational;

    mul-int/lit8 v11, v5, 0x8

    add-int v11, v11, p3

    invoke-direct {p0, v11}, Lcom/drew/metadata/exif/ExifReader;->get32Bits(I)I

    move-result v11

    add-int/lit8 v12, p3, 0x4

    mul-int/lit8 v13, v5, 0x8

    add-int/2addr v12, v13

    invoke-direct {p0, v12}, Lcom/drew/metadata/exif/ExifReader;->get32Bits(I)I

    move-result v12

    invoke-direct {v10, v11, v12}, Lcom/drew/lang/Rational;-><init>(II)V

    aput-object v10, v8, v5

    .line 527
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 534
    .end local v5           #i:I
    .end local v8           #rationals:[Lcom/drew/lang/Rational;
    :pswitch_3
    const/4 v10, 0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_3

    .line 536
    iget-object v10, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    aget-byte v2, v10, p3

    .line 537
    .local v2, b:I
    move/from16 v0, p2

    invoke-virtual {p1, v0, v2}, Lcom/drew/metadata/Directory;->setInt(II)V

    goto/16 :goto_0

    .line 539
    .end local v2           #b:I
    :cond_3
    move/from16 v0, p4

    new-array v4, v0, [I

    .line 540
    .local v4, bytes:[I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    move/from16 v0, p4

    if-lt v5, v0, :cond_4

    .line 542
    move/from16 v0, p2

    invoke-virtual {p1, v0, v4}, Lcom/drew/metadata/Directory;->setIntArray(I[I)V

    goto/16 :goto_0

    .line 541
    :cond_4
    iget-object v10, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    add-int v11, p3, v5

    aget-byte v10, v10, v11

    aput v10, v4, v5

    .line 540
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 547
    .end local v4           #bytes:[I
    .end local v5           #i:I
    :pswitch_4
    const/4 v10, 0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_5

    .line 548
    iget-object v10, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    aget-byte v5, v10, p3

    .line 549
    .restart local v5       #i:I
    move/from16 v0, p2

    invoke-virtual {p1, v0, v5}, Lcom/drew/metadata/Directory;->setInt(II)V

    goto/16 :goto_0

    .line 551
    .end local v5           #i:I
    :cond_5
    move/from16 v0, p4

    new-array v6, v0, [I

    .line 552
    .local v6, ints:[I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_4
    move/from16 v0, p4

    if-lt v5, v0, :cond_6

    .line 554
    move/from16 v0, p2

    invoke-virtual {p1, v0, v6}, Lcom/drew/metadata/Directory;->setIntArray(I[I)V

    goto/16 :goto_0

    .line 553
    :cond_6
    iget-object v10, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    add-int v11, p3, v5

    aget-byte v10, v10, v11

    aput v10, v6, v5

    .line 552
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 559
    .end local v5           #i:I
    .end local v6           #ints:[I
    :pswitch_5
    const/4 v10, 0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_7

    .line 560
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifReader;->get16Bits(I)I

    move-result v5

    .line 561
    .restart local v5       #i:I
    move/from16 v0, p2

    invoke-virtual {p1, v0, v5}, Lcom/drew/metadata/Directory;->setInt(II)V

    goto/16 :goto_0

    .line 563
    .end local v5           #i:I
    :cond_7
    move/from16 v0, p4

    new-array v6, v0, [I

    .line 564
    .restart local v6       #ints:[I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_5
    move/from16 v0, p4

    if-lt v5, v0, :cond_8

    .line 566
    move/from16 v0, p2

    invoke-virtual {p1, v0, v6}, Lcom/drew/metadata/Directory;->setIntArray(I[I)V

    goto/16 :goto_0

    .line 565
    :cond_8
    mul-int/lit8 v10, v5, 0x2

    add-int v10, v10, p3

    invoke-direct {p0, v10}, Lcom/drew/metadata/exif/ExifReader;->get16Bits(I)I

    move-result v10

    aput v10, v6, v5

    .line 564
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 571
    .end local v5           #i:I
    .end local v6           #ints:[I
    :pswitch_6
    const/4 v10, 0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_9

    .line 572
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifReader;->get32Bits(I)I

    move-result v5

    .line 573
    .restart local v5       #i:I
    move/from16 v0, p2

    invoke-virtual {p1, v0, v5}, Lcom/drew/metadata/Directory;->setInt(II)V

    goto/16 :goto_0

    .line 575
    .end local v5           #i:I
    :cond_9
    move/from16 v0, p4

    new-array v6, v0, [I

    .line 576
    .restart local v6       #ints:[I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_6
    move/from16 v0, p4

    if-lt v5, v0, :cond_a

    .line 578
    move/from16 v0, p2

    invoke-virtual {p1, v0, v6}, Lcom/drew/metadata/Directory;->setIntArray(I[I)V

    goto/16 :goto_0

    .line 577
    :cond_a
    mul-int/lit8 v10, v5, 0x4

    add-int v10, v10, p3

    invoke-direct {p0, v10}, Lcom/drew/metadata/exif/ExifReader;->get32Bits(I)I

    move-result v10

    aput v10, v6, v5

    .line 576
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private readString(II)Ljava/lang/String;
    .locals 3
    .parameter "offset"
    .parameter "maxLength"

    .prologue
    .line 610
    const/4 v0, 0x0

    .line 611
    .local v0, length:I
    :goto_0
    add-int v1, p1, v0

    iget-object v2, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    add-int v2, p1, v0

    aget-byte v1, v1, v2

    if-eqz v1, :cond_0

    if-lt v0, p2, :cond_1

    .line 614
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    invoke-direct {v1, v2, p1, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v1

    .line 612
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setByteOrder(Ljava/lang/String;)Z
    .locals 3
    .parameter "byteOrderIdentifier"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 243
    const-string v2, "MM"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    iput-boolean v1, p0, Lcom/drew/metadata/exif/ExifReader;->_isMotorollaByteOrder:Z

    :goto_0
    move v0, v1

    .line 250
    :cond_0
    return v0

    .line 245
    :cond_1
    const-string v2, "II"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    iput-boolean v0, p0, Lcom/drew/metadata/exif/ExifReader;->_isMotorollaByteOrder:Z

    goto :goto_0
.end method

.method private storeThumbnailBytes(Lcom/drew/metadata/exif/ExifDirectory;I)V
    .locals 8
    .parameter "exifDirectory"
    .parameter "tiffHeaderOffset"

    .prologue
    const/16 v7, 0x202

    const/16 v6, 0x201

    .line 221
    const/16 v5, 0x103

    invoke-virtual {p1, v5}, Lcom/drew/metadata/exif/ExifDirectory;->containsTag(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {p1, v7}, Lcom/drew/metadata/exif/ExifDirectory;->containsTag(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 225
    invoke-virtual {p1, v6}, Lcom/drew/metadata/exif/ExifDirectory;->containsTag(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 229
    const/16 v5, 0x201

    :try_start_0
    invoke-virtual {p1, v5}, Lcom/drew/metadata/exif/ExifDirectory;->getInt(I)I

    move-result v3

    .line 230
    .local v3, offset:I
    const/16 v5, 0x202

    invoke-virtual {p1, v5}, Lcom/drew/metadata/exif/ExifDirectory;->getInt(I)I

    move-result v2

    .line 231
    .local v2, length:I
    new-array v4, v2, [B

    .line 232
    .local v4, result:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v4

    if-lt v1, v5, :cond_2

    .line 235
    const v5, 0xf001

    invoke-virtual {p1, v5, v4}, Lcom/drew/metadata/exif/ExifDirectory;->setByteArray(I[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #offset:I
    .end local v4           #result:[B
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to extract thumbnail: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/drew/metadata/exif/ExifDirectory;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v3       #offset:I
    .restart local v4       #result:[B
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    add-int v6, p2, v3

    add-int/2addr v6, v1

    aget-byte v5, v5, v6

    aput-byte v5, v4, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public extract()Lcom/drew/metadata/Metadata;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/drew/metadata/Metadata;

    invoke-direct {v0}, Lcom/drew/metadata/Metadata;-><init>()V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/ExifReader;->extract(Lcom/drew/metadata/Metadata;)Lcom/drew/metadata/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public extract(Lcom/drew/metadata/Metadata;)Lcom/drew/metadata/Metadata;
    .locals 9
    .parameter "metadata"

    .prologue
    const/4 v8, 0x6

    .line 167
    iput-object p1, p0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    .line 168
    iget-object v4, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    if-nez v4, :cond_0

    .line 169
    iget-object v4, p0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    .line 216
    :goto_0
    return-object v4

    .line 172
    :cond_0
    iget-object v4, p0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v5, Lcom/drew/metadata/exif/ExifDirectory;

    invoke-virtual {v4, v5}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v1

    check-cast v1, Lcom/drew/metadata/exif/ExifDirectory;

    .line 175
    .local v1, directory:Lcom/drew/metadata/exif/ExifDirectory;
    iget-object v4, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    array-length v4, v4

    const/16 v5, 0xe

    if-gt v4, v5, :cond_1

    .line 176
    const-string v4, "Exif data segment must contain at least 14 bytes"

    invoke-virtual {v1, v4}, Lcom/drew/metadata/exif/ExifDirectory;->addError(Ljava/lang/String;)V

    .line 177
    iget-object v4, p0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    goto :goto_0

    .line 181
    :cond_1
    const-string v4, "Exif\u0000\u0000"

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 182
    const-string v4, "Exif data segment doesn\'t begin with \'Exif\'"

    invoke-virtual {v1, v4}, Lcom/drew/metadata/exif/ExifDirectory;->addError(Ljava/lang/String;)V

    .line 183
    iget-object v4, p0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    goto :goto_0

    .line 187
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    const/4 v5, 0x2

    invoke-direct {v0, v4, v8, v5}, Ljava/lang/String;-><init>([BII)V

    .line 188
    .local v0, byteOrderIdentifier:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifReader;->setByteOrder(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unclear distinction between Motorola/Intel byte ordering: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/drew/metadata/exif/ExifDirectory;->addError(Ljava/lang/String;)V

    .line 190
    iget-object v4, p0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    goto :goto_0

    .line 194
    :cond_3
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/drew/metadata/exif/ExifReader;->get16Bits(I)I

    move-result v4

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_4

    .line 195
    const-string v4, "Invalid Exif start - should have 0x2A at offset 8 in Exif header"

    invoke-virtual {v1, v4}, Lcom/drew/metadata/exif/ExifDirectory;->addError(Ljava/lang/String;)V

    .line 196
    iget-object v4, p0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    goto :goto_0

    .line 199
    :cond_4
    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/drew/metadata/exif/ExifReader;->get32Bits(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x6

    .line 202
    .local v2, firstDirectoryOffset:I
    iget-object v4, p0, Lcom/drew/metadata/exif/ExifReader;->_data:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_5

    .line 203
    const-string v4, "First exif directory offset is beyond end of Exif data segment"

    invoke-virtual {v1, v4}, Lcom/drew/metadata/exif/ExifDirectory;->addError(Ljava/lang/String;)V

    .line 205
    const/16 v2, 0xe

    .line 208
    :cond_5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 211
    .local v3, processedDirectoryOffsets:Ljava/util/HashMap;
    invoke-direct {p0, v1, v3, v2, v8}, Lcom/drew/metadata/exif/ExifReader;->processDirectory(Lcom/drew/metadata/Directory;Ljava/util/HashMap;II)V

    .line 214
    invoke-direct {p0, v1, v8}, Lcom/drew/metadata/exif/ExifReader;->storeThumbnailBytes(Lcom/drew/metadata/exif/ExifDirectory;I)V

    .line 216
    iget-object v4, p0, Lcom/drew/metadata/exif/ExifReader;->_metadata:Lcom/drew/metadata/Metadata;

    goto/16 :goto_0
.end method
