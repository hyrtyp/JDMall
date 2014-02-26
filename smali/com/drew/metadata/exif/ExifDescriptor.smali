.class public Lcom/drew/metadata/exif/ExifDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "ExifDescriptor.java"


# static fields
.field private static final SimpleDecimalFormatter:Ljava/text/DecimalFormat;


# instance fields
.field private _allowDecimalRepresentationOfRationals:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/drew/metadata/exif/ExifDescriptor;->SimpleDecimalFormatter:Ljava/text/DecimalFormat;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/drew/metadata/Directory;)V
    .locals 1
    .parameter "directory"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_allowDecimalRepresentationOfRationals:Z

    .line 47
    return-void
.end method

.method public static convertBytesToVersionString([I)Ljava/lang/String;
    .locals 4
    .parameter "components"

    .prologue
    .line 1070
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1071
    .local v2, version:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    array-length v3, p0

    if-lt v1, v3, :cond_1

    .line 1077
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1072
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1073
    :cond_2
    aget v3, p0, v1

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 1074
    .local v0, digit:Ljava/lang/String;
    if-nez v1, :cond_3

    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1071
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1075
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private getUnicodeDescription(I)Ljava/lang/String;
    .locals 5
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1085
    iget-object v3, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v3, p1}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1093
    :goto_0
    return-object v2

    .line 1086
    :cond_0
    iget-object v3, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v3, p1}, Lcom/drew/metadata/Directory;->getByteArray(I)[B

    move-result-object v0

    .line 1090
    .local v0, commentBytes:[B
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1092
    :catch_0
    move-exception v1

    .line 1093
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method


# virtual methods
.method public get35mmFilmEquivFocalLengthDescription()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa405

    .line 356
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 362
    :goto_0
    return-object v1

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 359
    .local v0, equivalentFocalLength:I
    if-nez v0, :cond_1

    .line 360
    const-string v1, "Unknown"

    goto :goto_0

    .line 362
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/drew/metadata/exif/ExifDescriptor;->SimpleDecimalFormatter:Ljava/text/DecimalFormat;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "mm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getApertureValueDescription()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v5, 0x9202

    .line 545
    iget-object v4, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v4, v5}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 548
    :goto_0
    return-object v4

    .line 546
    :cond_0
    iget-object v4, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v4, v5}, Lcom/drew/metadata/Directory;->getDouble(I)D

    move-result-wide v0

    .line 547
    .local v0, aperture:D
    invoke-static {v0, v1}, Lcom/drew/imaging/PhotographicConversions;->apertureToFStop(D)D

    move-result-wide v2

    .line 548
    .local v2, fStop:D
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "F"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/drew/metadata/exif/ExifDescriptor;->SimpleDecimalFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getBitsPerSampleDescription()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x102

    .line 680
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 681
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " bits/component/pixel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getColorSpaceDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa001

    .line 743
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 750
    :goto_0
    return-object v1

    .line 744
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 745
    .local v0, colorSpace:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 746
    const-string v1, "sRGB"

    goto :goto_0

    .line 747
    :cond_1
    const v1, 0xffff

    if-ne v0, v1, :cond_2

    .line 748
    const-string v1, "Undefined"

    goto :goto_0

    .line 750
    :cond_2
    const-string v1, "Unknown"

    goto :goto_0
.end method

.method public getComponentConfigurationDescription()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    .line 1050
    iget-object v5, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    const v6, 0x9101

    invoke-virtual {v5, v6}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v2

    .line 1051
    .local v2, components:[I
    const/4 v5, 0x7

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-string v6, "Y"

    aput-object v6, v1, v5

    const/4 v5, 0x2

    const-string v6, "Cb"

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const-string v6, "Cr"

    aput-object v6, v1, v5

    const-string v5, "R"

    aput-object v5, v1, v7

    const/4 v5, 0x5

    const-string v6, "G"

    aput-object v6, v1, v5

    const/4 v5, 0x6

    const-string v6, "B"

    aput-object v6, v1, v5

    .line 1052
    .local v1, componentStrings:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1053
    .local v0, componentConfig:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v2

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 1059
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1054
    :cond_0
    aget v4, v2, v3

    .line 1055
    .local v4, j:I
    if-lez v4, :cond_1

    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 1056
    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1053
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getCompressionDescription()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x103

    .line 644
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 674
    :goto_0
    return-object v0

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 674
    const-string v0, "Unknown compression"

    goto :goto_0

    .line 646
    :sswitch_0
    const-string v0, "Uncompressed"

    goto :goto_0

    .line 647
    :sswitch_1
    const-string v0, "CCITT 1D"

    goto :goto_0

    .line 648
    :sswitch_2
    const-string v0, "T4/Group 3 Fax"

    goto :goto_0

    .line 649
    :sswitch_3
    const-string v0, "T6/Group 4 Fax"

    goto :goto_0

    .line 650
    :sswitch_4
    const-string v0, "LZW"

    goto :goto_0

    .line 651
    :sswitch_5
    const-string v0, "JPEG (old-style)"

    goto :goto_0

    .line 652
    :sswitch_6
    const-string v0, "JPEG"

    goto :goto_0

    .line 653
    :sswitch_7
    const-string v0, "Adobe Deflate"

    goto :goto_0

    .line 654
    :sswitch_8
    const-string v0, "JBIG B&W"

    goto :goto_0

    .line 655
    :sswitch_9
    const-string v0, "JBIG Color"

    goto :goto_0

    .line 656
    :sswitch_a
    const-string v0, "Next"

    goto :goto_0

    .line 657
    :sswitch_b
    const-string v0, "CCIRLEW"

    goto :goto_0

    .line 658
    :sswitch_c
    const-string v0, "PackBits"

    goto :goto_0

    .line 659
    :sswitch_d
    const-string v0, "Thunderscan"

    goto :goto_0

    .line 660
    :sswitch_e
    const-string v0, "IT8CTPAD"

    goto :goto_0

    .line 661
    :sswitch_f
    const-string v0, "IT8LW"

    goto :goto_0

    .line 662
    :sswitch_10
    const-string v0, "IT8MP"

    goto :goto_0

    .line 663
    :sswitch_11
    const-string v0, "IT8BL"

    goto :goto_0

    .line 664
    :sswitch_12
    const-string v0, "PixarFilm"

    goto :goto_0

    .line 665
    :sswitch_13
    const-string v0, "PixarLog"

    goto :goto_0

    .line 666
    :sswitch_14
    const-string v0, "Deflate"

    goto :goto_0

    .line 667
    :sswitch_15
    const-string v0, "DCS"

    goto :goto_0

    .line 668
    :sswitch_16
    const-string v0, "JBIG"

    goto :goto_0

    .line 669
    :sswitch_17
    const-string v0, "SGILog"

    goto :goto_0

    .line 670
    :sswitch_18
    const-string v0, "SGILog24"

    goto :goto_0

    .line 671
    :sswitch_19
    const-string v0, "JPEG 2000"

    goto :goto_0

    .line 672
    :sswitch_1a
    const-string v0, "Nikon NEF Compressed"

    goto :goto_0

    .line 645
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0x7f95 -> :sswitch_16
        0x7fa4 -> :sswitch_17
        0x7fa5 -> :sswitch_18
        0x7fc8 -> :sswitch_19
        0x7fc9 -> :sswitch_1a
        0x7ffe -> :sswitch_a
        0x8003 -> :sswitch_b
        0x8005 -> :sswitch_c
        0x8029 -> :sswitch_d
        0x807f -> :sswitch_e
        0x8080 -> :sswitch_f
        0x8081 -> :sswitch_10
        0x8082 -> :sswitch_11
        0x808c -> :sswitch_12
        0x808d -> :sswitch_13
        0x80b2 -> :sswitch_14
        0x80b3 -> :sswitch_15
    .end sparse-switch
.end method

.method public getCompressionLevelDescription()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v3, 0x9102

    .line 878
    iget-object v2, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 884
    :goto_0
    return-object v2

    .line 879
    :cond_0
    iget-object v2, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 880
    .local v0, compressionRatio:Lcom/drew/lang/Rational;
    iget-boolean v2, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_allowDecimalRepresentationOfRationals:Z

    invoke-virtual {v0, v2}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v1

    .line 881
    .local v1, ratio:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->isInteger()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " bit/pixel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 884
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " bits/pixel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getContrastDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa408

    .line 305
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 314
    :goto_0
    return-object v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 308
    :pswitch_0
    const-string v0, "None"

    goto :goto_0

    .line 310
    :pswitch_1
    const-string v0, "Soft"

    goto :goto_0

    .line 312
    :pswitch_2
    const-string v0, "Hard"

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCustomRenderedDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa401

    .line 405
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 412
    :goto_0
    return-object v0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 408
    :pswitch_0
    const-string v0, "Normal process"

    goto :goto_0

    .line 410
    :pswitch_1
    const-string v0, "Custom process"

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .parameter "tagType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 66
    sparse-switch p1, :sswitch_data_0

    .line 201
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 68
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getOrientationDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getNewSubfileTypeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getSubfileTypeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getThresholdingDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getFillOrderDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getResolutionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getYCbCrPositioningDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 82
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getExposureTimeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getShutterSpeedDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :sswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getFNumberDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :sswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getXResolutionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :sswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getYResolutionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :sswitch_c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getThumbnailOffsetDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :sswitch_d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getThumbnailLengthDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :sswitch_e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getCompressionLevelDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :sswitch_f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getSubjectDistanceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :sswitch_10
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getMeteringModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :sswitch_11
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :sswitch_12
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getFlashDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :sswitch_13
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getFocalLengthDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :sswitch_14
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getColorSpaceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 110
    :sswitch_15
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getExifImageWidthDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :sswitch_16
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getExifImageHeightDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :sswitch_17
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getFocalPlaneResolutionUnitDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :sswitch_18
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getFocalPlaneXResolutionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 118
    :sswitch_19
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getFocalPlaneYResolutionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 120
    :sswitch_1a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getThumbnailImageWidthDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 122
    :sswitch_1b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getThumbnailImageHeightDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 124
    :sswitch_1c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getBitsPerSampleDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 126
    :sswitch_1d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getCompressionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 128
    :sswitch_1e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getPhotometricInterpretationDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 130
    :sswitch_1f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getRowsPerStripDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 132
    :sswitch_20
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getStripByteCountsDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 134
    :sswitch_21
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getSamplesPerPixelDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 136
    :sswitch_22
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getPlanarConfigurationDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 138
    :sswitch_23
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getYCbCrSubsamplingDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 140
    :sswitch_24
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getExposureProgramDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 142
    :sswitch_25
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getApertureValueDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 144
    :sswitch_26
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getMaxApertureValueDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 146
    :sswitch_27
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getSensingMethodDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 148
    :sswitch_28
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getExposureBiasDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 150
    :sswitch_29
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getFileSourceDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 152
    :sswitch_2a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getSceneTypeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 154
    :sswitch_2b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getComponentConfigurationDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 156
    :sswitch_2c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getExifVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 158
    :sswitch_2d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getFlashPixVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 160
    :sswitch_2e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getReferenceBlackWhiteDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 162
    :sswitch_2f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getIsoEquivalentDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 164
    :sswitch_30
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getThumbnailDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 166
    :sswitch_31
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getUserCommentDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 168
    :sswitch_32
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getCustomRenderedDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 170
    :sswitch_33
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getExposureModeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 172
    :sswitch_34
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getWhiteBalanceModeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 174
    :sswitch_35
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getDigitalZoomRatioDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 176
    :sswitch_36
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->get35mmFilmEquivFocalLengthDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 178
    :sswitch_37
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getSceneCaptureTypeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 180
    :sswitch_38
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getGainControlDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 182
    :sswitch_39
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getContrastDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 184
    :sswitch_3a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getSaturationDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 186
    :sswitch_3b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getSharpnessDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 188
    :sswitch_3c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getSubjectDistanceRangeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 191
    :sswitch_3d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getWindowsAuthorDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 193
    :sswitch_3e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getWindowsCommentDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 195
    :sswitch_3f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getWindowsKeywordsDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 197
    :sswitch_40
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getWindowsSubjectDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 199
    :sswitch_41
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getWindowsTitleDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 66
    nop

    :sswitch_data_0
    .sparse-switch
        0xfe -> :sswitch_1
        0xff -> :sswitch_2
        0x100 -> :sswitch_1a
        0x101 -> :sswitch_1b
        0x102 -> :sswitch_1c
        0x103 -> :sswitch_1d
        0x106 -> :sswitch_1e
        0x107 -> :sswitch_3
        0x10a -> :sswitch_4
        0x112 -> :sswitch_0
        0x115 -> :sswitch_21
        0x116 -> :sswitch_1f
        0x117 -> :sswitch_20
        0x11a -> :sswitch_a
        0x11b -> :sswitch_b
        0x11c -> :sswitch_22
        0x128 -> :sswitch_5
        0x201 -> :sswitch_c
        0x202 -> :sswitch_d
        0x212 -> :sswitch_23
        0x213 -> :sswitch_6
        0x214 -> :sswitch_2e
        0x829a -> :sswitch_7
        0x829d -> :sswitch_9
        0x8822 -> :sswitch_24
        0x8827 -> :sswitch_2f
        0x9000 -> :sswitch_2c
        0x9101 -> :sswitch_2b
        0x9102 -> :sswitch_e
        0x9201 -> :sswitch_8
        0x9202 -> :sswitch_25
        0x9204 -> :sswitch_28
        0x9205 -> :sswitch_26
        0x9206 -> :sswitch_f
        0x9207 -> :sswitch_10
        0x9208 -> :sswitch_11
        0x9209 -> :sswitch_12
        0x920a -> :sswitch_13
        0x9286 -> :sswitch_31
        0x9c9b -> :sswitch_41
        0x9c9c -> :sswitch_3e
        0x9c9d -> :sswitch_3d
        0x9c9e -> :sswitch_3f
        0x9c9f -> :sswitch_40
        0xa000 -> :sswitch_2d
        0xa001 -> :sswitch_14
        0xa002 -> :sswitch_15
        0xa003 -> :sswitch_16
        0xa20e -> :sswitch_18
        0xa20f -> :sswitch_19
        0xa210 -> :sswitch_17
        0xa217 -> :sswitch_27
        0xa300 -> :sswitch_29
        0xa301 -> :sswitch_2a
        0xa401 -> :sswitch_32
        0xa402 -> :sswitch_33
        0xa403 -> :sswitch_34
        0xa404 -> :sswitch_35
        0xa405 -> :sswitch_36
        0xa406 -> :sswitch_37
        0xa407 -> :sswitch_38
        0xa408 -> :sswitch_39
        0xa409 -> :sswitch_3a
        0xa40a -> :sswitch_3b
        0xa40c -> :sswitch_3c
        0xf001 -> :sswitch_30
    .end sparse-switch
.end method

.method public getDigitalZoomRatioDescription()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa404

    .line 367
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 372
    :goto_0
    return-object v1

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 369
    .local v0, rational:Lcom/drew/lang/Rational;
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getNumerator()I

    move-result v1

    if-nez v1, :cond_1

    .line 370
    const-string v1, "Digital zoom not used."

    goto :goto_0

    .line 372
    :cond_1
    sget-object v1, Lcom/drew/metadata/exif/ExifDescriptor;->SimpleDecimalFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExifImageHeightDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa003

    .line 737
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 738
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " pixels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExifImageWidthDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa002

    .line 731
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 732
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " pixels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExifVersionDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0x9000

    .line 494
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 496
    :goto_0
    return-object v1

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v0

    .line 496
    .local v0, ints:[I
    invoke-static {v0}, Lcom/drew/metadata/exif/ExifDescriptor;->convertBytesToVersionString([I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExposureBiasDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0x9204

    .line 530
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 532
    :goto_0
    return-object v1

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 532
    .local v0, exposureBias:Lcom/drew/lang/Rational;
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " EV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExposureModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa402

    .line 390
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 399
    :goto_0
    return-object v0

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 393
    :pswitch_0
    const-string v0, "Auto exposure"

    goto :goto_0

    .line 395
    :pswitch_1
    const-string v0, "Manual exposure"

    goto :goto_0

    .line 397
    :pswitch_2
    const-string v0, "Auto bracket"

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getExposureProgramDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0x8822

    .line 553
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 567
    :goto_0
    return-object v0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown program ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 558
    :pswitch_0
    const-string v0, "Manual control"

    goto :goto_0

    .line 559
    :pswitch_1
    const-string v0, "Program normal"

    goto :goto_0

    .line 560
    :pswitch_2
    const-string v0, "Aperture priority"

    goto :goto_0

    .line 561
    :pswitch_3
    const-string v0, "Shutter priority"

    goto :goto_0

    .line 562
    :pswitch_4
    const-string v0, "Program creative (slow program)"

    goto :goto_0

    .line 563
    :pswitch_5
    const-string v0, "Program action (high-speed program)"

    goto :goto_0

    .line 564
    :pswitch_6
    const-string v0, "Portrait mode"

    goto :goto_0

    .line 565
    :pswitch_7
    const-string v0, "Landscape mode"

    goto :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getExposureTimeDescription()Ljava/lang/String;
    .locals 3

    .prologue
    const v2, 0x829a

    .line 920
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 921
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " sec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFNumberDescription()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0x829d

    .line 972
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 974
    :goto_0
    return-object v1

    .line 973
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 974
    .local v0, fNumber:Lcom/drew/lang/Rational;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "F"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/drew/metadata/exif/ExifDescriptor;->SimpleDecimalFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFileSourceDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa300

    .line 519
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 524
    :goto_0
    return-object v1

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 521
    .local v0, fileSource:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 522
    const-string v1, "Digital Still Camera (DSC)"

    goto :goto_0

    .line 524
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFillOrderDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x10a

    .line 247
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 252
    :goto_0
    return-object v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 249
    :pswitch_0
    const-string v0, "Normal"

    goto :goto_0

    .line 250
    :pswitch_1
    const-string v0, "Reversed"

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFlashDescription()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v3, 0x9209

    .line 764
    iget-object v2, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 801
    :goto_0
    return-object v2

    .line 777
    :cond_0
    iget-object v2, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    .line 779
    .local v1, val:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 781
    .local v0, sb:Ljava/lang/StringBuffer;
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_4

    .line 782
    const-string v2, "Flash fired"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 787
    :goto_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    .line 789
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_5

    .line 790
    const-string v2, ", return detected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 795
    :cond_1
    :goto_2
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_2

    .line 796
    const-string v2, ", auto"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 798
    :cond_2
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_3

    .line 799
    const-string v2, ", red-eye reduction"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 801
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 784
    :cond_4
    const-string v2, "Flash did not fire"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 792
    :cond_5
    const-string v2, ", return not detected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public getFlashPixVersionDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa000

    .line 501
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 503
    :goto_0
    return-object v1

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v0

    .line 503
    .local v0, ints:[I
    invoke-static {v0}, Lcom/drew/metadata/exif/ExifDescriptor;->convertBytesToVersionString([I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFocalLengthDescription()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v3, 0x920a

    .line 756
    iget-object v2, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 759
    :goto_0
    return-object v2

    .line 757
    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.0##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 758
    .local v1, formatter:Ljava/text/DecimalFormat;
    iget-object v2, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 759
    .local v0, focalLength:Lcom/drew/lang/Rational;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " mm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getFocalPlaneResolutionUnitDescription()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v1, 0xa210

    .line 714
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 725
    :goto_0
    return-object v0

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 725
    const-string v0, ""

    goto :goto_0

    .line 719
    :pswitch_0
    const-string v0, "(No unit)"

    goto :goto_0

    .line 721
    :pswitch_1
    const-string v0, "Inches"

    goto :goto_0

    .line 723
    :pswitch_2
    const-string v0, "cm"

    goto :goto_0

    .line 717
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFocalPlaneXResolutionDescription()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa20e

    .line 698
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 700
    :goto_0
    return-object v1

    .line 699
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 700
    .local v0, rational:Lcom/drew/lang/Rational;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getReciprocal()Lcom/drew/lang/Rational;

    move-result-object v2

    iget-boolean v3, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_allowDecimalRepresentationOfRationals:Z

    invoke-virtual {v2, v3}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 701
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getFocalPlaneResolutionUnitDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 700
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFocalPlaneYResolutionDescription()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa20f

    .line 706
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 708
    :goto_0
    return-object v1

    .line 707
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 708
    .local v0, rational:Lcom/drew/lang/Rational;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getReciprocal()Lcom/drew/lang/Rational;

    move-result-object v2

    iget-boolean v3, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_allowDecimalRepresentationOfRationals:Z

    invoke-virtual {v2, v3}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 709
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getFocalPlaneResolutionUnitDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 708
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getGainControlDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa407

    .line 320
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 333
    :goto_0
    return-object v0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 323
    :pswitch_0
    const-string v0, "None"

    goto :goto_0

    .line 325
    :pswitch_1
    const-string v0, "Low gain up"

    goto :goto_0

    .line 327
    :pswitch_2
    const-string v0, "Low gain down"

    goto :goto_0

    .line 329
    :pswitch_3
    const-string v0, "High gain up"

    goto :goto_0

    .line 331
    :pswitch_4
    const-string v0, "High gain down"

    goto :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getIsoEquivalentDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0x8827

    .line 469
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 474
    :goto_0
    return-object v1

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 471
    .local v0, isoEquiv:I
    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 472
    mul-int/lit16 v0, v0, 0xc8

    .line 474
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMaxApertureValueDescription()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v5, 0x9205

    .line 537
    iget-object v4, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v4, v5}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 540
    :goto_0
    return-object v4

    .line 538
    :cond_0
    iget-object v4, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v4, v5}, Lcom/drew/metadata/Directory;->getDouble(I)D

    move-result-wide v0

    .line 539
    .local v0, aperture:D
    invoke-static {v0, v1}, Lcom/drew/imaging/PhotographicConversions;->apertureToFStop(D)D

    move-result-wide v2

    .line 540
    .local v2, fStop:D
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "F"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/drew/metadata/exif/ExifDescriptor;->SimpleDecimalFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getMeteringModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0x9207

    .line 842
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 864
    :goto_0
    return-object v1

    .line 845
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 846
    .local v0, meteringMode:I
    sparse-switch v0, :sswitch_data_0

    .line 864
    const-string v1, ""

    goto :goto_0

    .line 848
    :sswitch_0
    const-string v1, "Unknown"

    goto :goto_0

    .line 850
    :sswitch_1
    const-string v1, "Average"

    goto :goto_0

    .line 852
    :sswitch_2
    const-string v1, "Center weighted average"

    goto :goto_0

    .line 854
    :sswitch_3
    const-string v1, "Spot"

    goto :goto_0

    .line 856
    :sswitch_4
    const-string v1, "Multi-spot"

    goto :goto_0

    .line 858
    :sswitch_5
    const-string v1, "Multi-segment"

    goto :goto_0

    .line 860
    :sswitch_6
    const-string v1, "Partial"

    goto :goto_0

    .line 862
    :sswitch_7
    const-string v1, "(Other)"

    goto :goto_0

    .line 846
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0xff -> :sswitch_7
    .end sparse-switch
.end method

.method public getNewSubfileTypeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xfe

    .line 207
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 209
    :pswitch_0
    const-string v0, "Full-resolution image"

    goto :goto_0

    .line 210
    :pswitch_1
    const-string v0, "Reduced-resolution image"

    goto :goto_0

    .line 211
    :pswitch_2
    const-string v0, "Single page of multi-page reduced-resolution image"

    goto :goto_0

    .line 212
    :pswitch_3
    const-string v0, "Transparency mask"

    goto :goto_0

    .line 213
    :pswitch_4
    const-string v0, "Transparency mask of reduced-resolution image"

    goto :goto_0

    .line 214
    :pswitch_5
    const-string v0, "Transparency mask of multi-page image"

    goto :goto_0

    .line 215
    :pswitch_6
    const-string v0, "Transparency mask of reduced-resolution multi-page image"

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getOrientationDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x112

    .line 991
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1003
    :goto_0
    return-object v1

    .line 992
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 993
    .local v0, orientation:I
    packed-switch v0, :pswitch_data_0

    .line 1003
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 994
    :pswitch_0
    const-string v1, "Top, left side (Horizontal / normal)"

    goto :goto_0

    .line 995
    :pswitch_1
    const-string v1, "Top, right side (Mirror horizontal)"

    goto :goto_0

    .line 996
    :pswitch_2
    const-string v1, "Bottom, right side (Rotate 180)"

    goto :goto_0

    .line 997
    :pswitch_3
    const-string v1, "Bottom, left side (Mirror vertical)"

    goto :goto_0

    .line 998
    :pswitch_4
    const-string v1, "Left side, top (Mirror horizontal and rotate 270 CW)"

    goto :goto_0

    .line 999
    :pswitch_5
    const-string v1, "Right side, top (Rotate 90 CW)"

    goto :goto_0

    .line 1000
    :pswitch_6
    const-string v1, "Right side, bottom (Mirror horizontal and rotate 90 CW)"

    goto :goto_0

    .line 1001
    :pswitch_7
    const-string v1, "Left side, bottom (Rotate 270 CW)"

    goto :goto_0

    .line 993
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getPhotometricInterpretationDescription()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x106

    .line 620
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 638
    :goto_0
    return-object v0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 638
    const-string v0, "Unknown colour space"

    goto :goto_0

    .line 623
    :sswitch_0
    const-string v0, "WhiteIsZero"

    goto :goto_0

    .line 624
    :sswitch_1
    const-string v0, "BlackIsZero"

    goto :goto_0

    .line 625
    :sswitch_2
    const-string v0, "RGB"

    goto :goto_0

    .line 626
    :sswitch_3
    const-string v0, "RGB Palette"

    goto :goto_0

    .line 627
    :sswitch_4
    const-string v0, "Transparency Mask"

    goto :goto_0

    .line 628
    :sswitch_5
    const-string v0, "CMYK"

    goto :goto_0

    .line 629
    :sswitch_6
    const-string v0, "YCbCr"

    goto :goto_0

    .line 630
    :sswitch_7
    const-string v0, "CIELab"

    goto :goto_0

    .line 631
    :sswitch_8
    const-string v0, "ICCLab"

    goto :goto_0

    .line 632
    :sswitch_9
    const-string v0, "ITULab"

    goto :goto_0

    .line 633
    :sswitch_a
    const-string v0, "Color Filter Array"

    goto :goto_0

    .line 634
    :sswitch_b
    const-string v0, "Pixar LogL"

    goto :goto_0

    .line 635
    :sswitch_c
    const-string v0, "Pixar LogLuv"

    goto :goto_0

    .line 636
    :sswitch_d
    const-string v0, "Linear Raw"

    goto :goto_0

    .line 622
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0x8023 -> :sswitch_a
        0x804c -> :sswitch_b
        0x804d -> :sswitch_c
        0x807c -> :sswitch_d
    .end sparse-switch
.end method

.method public getPlanarConfigurationDescription()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x11c

    .line 586
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 596
    :goto_0
    return-object v0

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 596
    const-string v0, "Unknown configuration"

    goto :goto_0

    .line 593
    :pswitch_0
    const-string v0, "Chunky (contiguous for each subsampling pixel)"

    goto :goto_0

    .line 594
    :pswitch_1
    const-string v0, "Separate (Y-plane/Cb-plane/Cr-plane format)"

    goto :goto_0

    .line 592
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getReferenceBlackWhiteDescription()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x214

    .line 479
    iget-object v8, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v8, v9}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v4, 0x0

    .line 489
    :goto_0
    return-object v4

    .line 480
    :cond_0
    iget-object v8, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v8, v9}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v3

    .line 481
    .local v3, ints:[I
    const/4 v8, 0x0

    aget v2, v3, v8

    .line 482
    .local v2, blackR:I
    const/4 v8, 0x1

    aget v7, v3, v8

    .line 483
    .local v7, whiteR:I
    const/4 v8, 0x2

    aget v1, v3, v8

    .line 484
    .local v1, blackG:I
    const/4 v8, 0x3

    aget v6, v3, v8

    .line 485
    .local v6, whiteG:I
    const/4 v8, 0x4

    aget v0, v3, v8

    .line 486
    .local v0, blackB:I
    const/4 v8, 0x5

    aget v5, v3, v8

    .line 487
    .local v5, whiteB:I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 488
    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 487
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 489
    .local v4, pos:Ljava/lang/String;
    goto :goto_0
.end method

.method public getResolutionDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x128

    .line 1009
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 1017
    :goto_0
    return-object v1

    .line 1011
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 1012
    .local v0, resolutionUnit:I
    packed-switch v0, :pswitch_data_0

    .line 1017
    const-string v1, ""

    goto :goto_0

    .line 1013
    :pswitch_0
    const-string v1, "(No unit)"

    goto :goto_0

    .line 1014
    :pswitch_1
    const-string v1, "Inch"

    goto :goto_0

    .line 1015
    :pswitch_2
    const-string v1, "cm"

    goto :goto_0

    .line 1012
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getRowsPerStripDescription()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x116

    .line 608
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 609
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " rows/strip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSamplesPerPixelDescription()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x115

    .line 602
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 603
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " samples/pixel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSaturationDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa409

    .line 290
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 299
    :goto_0
    return-object v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 293
    :pswitch_0
    const-string v0, "None"

    goto :goto_0

    .line 295
    :pswitch_1
    const-string v0, "Low saturation"

    goto :goto_0

    .line 297
    :pswitch_2
    const-string v0, "High saturation"

    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSceneCaptureTypeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa406

    .line 339
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 350
    :goto_0
    return-object v0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 342
    :pswitch_0
    const-string v0, "Standard"

    goto :goto_0

    .line 344
    :pswitch_1
    const-string v0, "Landscape"

    goto :goto_0

    .line 346
    :pswitch_2
    const-string v0, "Portrait"

    goto :goto_0

    .line 348
    :pswitch_3
    const-string v0, "Night scene"

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSceneTypeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa301

    .line 508
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 513
    :goto_0
    return-object v1

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 510
    .local v0, sceneType:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 511
    const-string v1, "Directly photographed image"

    goto :goto_0

    .line 513
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSensingMethodDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa217

    .line 1023
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1044
    :goto_0
    return-object v1

    .line 1027
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 1028
    .local v0, sensingMethod:I
    packed-switch v0, :pswitch_data_0

    .line 1044
    :pswitch_0
    const-string v1, ""

    goto :goto_0

    .line 1030
    :pswitch_1
    const-string v1, "(Not defined)"

    goto :goto_0

    .line 1032
    :pswitch_2
    const-string v1, "One-chip color area sensor"

    goto :goto_0

    .line 1034
    :pswitch_3
    const-string v1, "Two-chip color area sensor"

    goto :goto_0

    .line 1036
    :pswitch_4
    const-string v1, "Three-chip color area sensor"

    goto :goto_0

    .line 1038
    :pswitch_5
    const-string v1, "Color sequential area sensor"

    goto :goto_0

    .line 1040
    :pswitch_6
    const-string v1, "Trilinear sensor"

    goto :goto_0

    .line 1042
    :pswitch_7
    const-string v1, "Color sequential linear sensor"

    goto :goto_0

    .line 1028
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getSharpnessDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa40a

    .line 275
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 284
    :goto_0
    return-object v0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 278
    :pswitch_0
    const-string v0, "None"

    goto :goto_0

    .line 280
    :pswitch_1
    const-string v0, "Low"

    goto :goto_0

    .line 282
    :pswitch_2
    const-string v0, "Hard"

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getShutterSpeedDescription()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v6, 0x9201

    const-wide/high16 v9, 0x4000

    .line 929
    iget-object v5, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v5, v6}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 945
    :goto_0
    return-object v5

    .line 937
    :cond_0
    iget-object v5, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v5, v6}, Lcom/drew/metadata/Directory;->getFloat(I)F

    move-result v3

    .line 938
    .local v3, apexValue:F
    const/high16 v5, 0x3f80

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_1

    .line 939
    const-wide/high16 v5, 0x3ff0

    float-to-double v7, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    double-to-float v0, v5

    .line 940
    .local v0, apexPower:F
    float-to-double v5, v0

    const-wide/high16 v7, 0x4024

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    .line 941
    .local v1, apexPower10:J
    long-to-float v5, v1

    const/high16 v6, 0x4120

    div-float v4, v5, v6

    .line 942
    .local v4, fApexPower:F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " sec"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 944
    .end local v0           #apexPower:F
    .end local v1           #apexPower10:J
    .end local v4           #fApexPower:F
    :cond_1
    float-to-double v5, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 945
    .local v0, apexPower:I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "1/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sec"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public getStripByteCountsDescription()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x117

    .line 614
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 615
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubfileTypeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xff

    .line 223
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 229
    :goto_0
    return-object v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 225
    :pswitch_0
    const-string v0, "Full-resolution image"

    goto :goto_0

    .line 226
    :pswitch_1
    const-string v0, "Reduced-resolution image"

    goto :goto_0

    .line 227
    :pswitch_2
    const-string v0, "Single page of multi-page image"

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSubjectDistanceDescription()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v3, 0x9206

    .line 870
    iget-object v2, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 873
    :goto_0
    return-object v2

    .line 871
    :cond_0
    iget-object v2, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 872
    .local v0, distance:Lcom/drew/lang/Rational;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.0##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 873
    .local v1, formatter:Ljava/text/DecimalFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " metres"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getSubjectDistanceRangeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa40c

    .line 258
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 269
    :goto_0
    return-object v0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 263
    :pswitch_1
    const-string v0, "Macro"

    goto :goto_0

    .line 265
    :pswitch_2
    const-string v0, "Close view"

    goto :goto_0

    .line 267
    :pswitch_3
    const-string v0, "Distant view"

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getThresholdingDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x107

    .line 235
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 241
    :goto_0
    return-object v0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 237
    :pswitch_0
    const-string v0, "No dithering or halftoning"

    goto :goto_0

    .line 238
    :pswitch_1
    const-string v0, "Ordered dither or halftone"

    goto :goto_0

    .line 239
    :pswitch_2
    const-string v0, "Randomized dither"

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getThumbnailDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xf001

    .line 462
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 464
    :goto_0
    return-object v1

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v0

    .line 464
    .local v0, thumbnailBytes:[I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes of thumbnail data]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getThumbnailImageHeightDescription()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x101

    .line 692
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 693
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " pixels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getThumbnailImageWidthDescription()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x100

    .line 686
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 687
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " pixels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getThumbnailLengthDescription()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x202

    .line 890
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 891
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getThumbnailOffsetDescription()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x201

    .line 896
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 897
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserCommentDescription()Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const v10, 0x9286

    const/4 v12, 0x0

    const/16 v11, 0xa

    .line 418
    iget-object v9, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v9, v10}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 457
    :goto_0
    return-object v8

    .line 420
    :cond_0
    iget-object v9, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v9, v10}, Lcom/drew/metadata/Directory;->getByteArray(I)[B

    move-result-object v1

    .line 422
    .local v1, commentBytes:[B
    array-length v9, v1

    if-nez v9, :cond_1

    .line 423
    const-string v8, ""

    goto :goto_0

    .line 425
    :cond_1
    const/4 v9, 0x3

    new-array v3, v9, [Ljava/lang/String;

    const-string v9, "ASCII"

    aput-object v9, v3, v12

    const/4 v9, 0x1

    const-string v10, "UNICODE"

    aput-object v10, v3, v9

    const/4 v9, 0x2

    const-string v10, "JIS"

    aput-object v10, v3, v9

    .line 427
    .local v3, encodingNames:[Ljava/lang/String;
    array-length v9, v1

    if-lt v9, v11, :cond_2

    .line 429
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v12, v11}, Ljava/lang/String;-><init>([BII)V

    .line 432
    .local v4, encodingRegion:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v9, v3

    if-lt v6, v9, :cond_3

    .line 457
    .end local v4           #encodingRegion:Ljava/lang/String;
    .end local v6           #i:I
    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 433
    .restart local v4       #encodingRegion:Ljava/lang/String;
    .restart local v6       #i:I
    :cond_3
    aget-object v2, v3, v6

    .line 434
    .local v2, encodingName:Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 437
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, j:I
    :goto_2
    if-lt v7, v11, :cond_4

    .line 451
    new-instance v8, Ljava/lang/String;

    array-length v9, v1

    add-int/lit8 v9, v9, -0xa

    invoke-direct {v8, v1, v11, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 438
    :cond_4
    aget-byte v0, v1, v7

    .line 439
    .local v0, b:B
    if-eqz v0, :cond_6

    const/16 v9, 0x20

    if-eq v0, v9, :cond_6

    .line 440
    const-string v9, "UNICODE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 442
    :try_start_0
    new-instance v9, Ljava/lang/String;

    array-length v10, v1

    sub-int/2addr v10, v7

    const-string v11, "UTF-16LE"

    invoke-direct {v9, v1, v7, v10, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 444
    :catch_0
    move-exception v5

    .line 445
    .local v5, ex:Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 448
    .end local v5           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_5
    new-instance v8, Ljava/lang/String;

    array-length v9, v1

    sub-int/2addr v9, v7

    invoke-direct {v8, v1, v7, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 437
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 432
    .end local v0           #b:B
    .end local v7           #j:I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public getWhiteBalanceDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0x9208

    .line 806
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 836
    :goto_0
    return-object v0

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 812
    :sswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 814
    :sswitch_1
    const-string v0, "Daylight"

    goto :goto_0

    .line 816
    :sswitch_2
    const-string v0, "Flourescent"

    goto :goto_0

    .line 818
    :sswitch_3
    const-string v0, "Tungsten"

    goto :goto_0

    .line 820
    :sswitch_4
    const-string v0, "Flash"

    goto :goto_0

    .line 822
    :sswitch_5
    const-string v0, "Standard light"

    goto :goto_0

    .line 824
    :sswitch_6
    const-string v0, "Standard light (B)"

    goto :goto_0

    .line 826
    :sswitch_7
    const-string v0, "Standard light (C)"

    goto :goto_0

    .line 828
    :sswitch_8
    const-string v0, "D55"

    goto :goto_0

    .line 830
    :sswitch_9
    const-string v0, "D65"

    goto :goto_0

    .line 832
    :sswitch_a
    const-string v0, "D75"

    goto :goto_0

    .line 834
    :sswitch_b
    const-string v0, "(Other)"

    goto :goto_0

    .line 810
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0xa -> :sswitch_4
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x13 -> :sswitch_7
        0x14 -> :sswitch_8
        0x15 -> :sswitch_9
        0x16 -> :sswitch_a
        0xff -> :sswitch_b
    .end sparse-switch
.end method

.method public getWhiteBalanceModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xa403

    .line 377
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 384
    :goto_0
    return-object v0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 380
    :pswitch_0
    const-string v0, "Auto white balance"

    goto :goto_0

    .line 382
    :pswitch_1
    const-string v0, "Manual white balance"

    goto :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getWindowsAuthorDescription()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 1099
    const v0, 0x9c9d

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifDescriptor;->getUnicodeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowsCommentDescription()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 1104
    const v0, 0x9c9c

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifDescriptor;->getUnicodeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowsKeywordsDescription()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 1109
    const v0, 0x9c9e

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifDescriptor;->getUnicodeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowsSubjectDescription()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 1119
    const v0, 0x9c9f

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifDescriptor;->getUnicodeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowsTitleDescription()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 1114
    const v0, 0x9c9b

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/ExifDescriptor;->getUnicodeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXResolutionDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x11a

    .line 911
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 913
    :goto_0
    return-object v1

    .line 912
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 913
    .local v0, resolution:Lcom/drew/lang/Rational;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_allowDecimalRepresentationOfRationals:Z

    invoke-virtual {v0, v2}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 914
    const-string v2, " dots per "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 915
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getResolutionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 913
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getYCbCrPositioningDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x213

    .line 979
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 985
    :goto_0
    return-object v1

    .line 980
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 981
    .local v0, yCbCrPosition:I
    packed-switch v0, :pswitch_data_0

    .line 985
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 982
    :pswitch_0
    const-string v1, "Center of pixel array"

    goto :goto_0

    .line 983
    :pswitch_1
    const-string v1, "Datum point"

    goto :goto_0

    .line 981
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getYCbCrSubsamplingDescription()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x212

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 573
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v5}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 580
    :goto_0
    return-object v1

    .line 574
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v5}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v0

    .line 575
    .local v0, positions:[I
    aget v1, v0, v4

    if-ne v1, v3, :cond_1

    aget v1, v0, v2

    if-ne v1, v2, :cond_1

    .line 576
    const-string v1, "YCbCr4:2:2"

    goto :goto_0

    .line 577
    :cond_1
    aget v1, v0, v4

    if-ne v1, v3, :cond_2

    aget v1, v0, v2

    if-ne v1, v3, :cond_2

    .line 578
    const-string v1, "YCbCr4:2:0"

    goto :goto_0

    .line 580
    :cond_2
    const-string v1, "(Unknown)"

    goto :goto_0
.end method

.method public getYResolutionDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x11b

    .line 902
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 904
    :goto_0
    return-object v1

    .line 903
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 904
    .local v0, resolution:Lcom/drew/lang/Rational;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/drew/metadata/exif/ExifDescriptor;->_allowDecimalRepresentationOfRationals:Z

    invoke-virtual {v0, v2}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 905
    const-string v2, " dots per "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 906
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifDescriptor;->getResolutionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 904
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
