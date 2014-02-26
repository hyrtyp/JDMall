.class public Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "NikonType2MakernoteDescriptor.java"


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Directory;)V
    .locals 0
    .parameter "directory"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 33
    return-void
.end method

.method private getMakernoteDirectory()Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;

    return-object v0
.end method


# virtual methods
.method public getAutoFirmwareVersionDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 163
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    const/4 v1, 0x0

    .line 167
    :goto_0
    return-object v1

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v0

    .line 167
    .local v0, ints:[I
    invoke-static {v0}, Lcom/drew/metadata/exif/ExifDescriptor;->convertBytesToVersionString([I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAutoFlashCompensationDescription()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->getMakernoteDirectory()Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->getAutoFlashCompensation()Lcom/drew/lang/Rational;

    move-result-object v1

    .line 112
    .local v1, ev:Lcom/drew/lang/Rational;
    if-nez v1, :cond_0

    .line 113
    const-string v2, "Unknown"

    .line 116
    :goto_0
    return-object v2

    .line 115
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, decimalFormat:Ljava/text/DecimalFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/drew/lang/Rational;->floatValue()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " EV"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getAutoFocusPositionDescription()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x88

    .line 67
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v3}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 84
    :goto_0
    return-object v1

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v3}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v0

    .line 69
    .local v0, values:[I
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget v1, v0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    aget v1, v0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    aget v1, v0, v1

    if-eqz v1, :cond_2

    .line 70
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 72
    :cond_2
    aget v1, v0, v4

    packed-switch v1, :pswitch_data_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 74
    :pswitch_0
    const-string v1, "Centre"

    goto :goto_0

    .line 76
    :pswitch_1
    const-string v1, "Top"

    goto :goto_0

    .line 78
    :pswitch_2
    const-string v1, "Bottom"

    goto :goto_0

    .line 80
    :pswitch_3
    const-string v1, "Left"

    goto :goto_0

    .line 82
    :pswitch_4
    const-string v1, "Right"

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getColorModeDescription()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x8d

    .line 151
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    const/4 v0, 0x0

    .line 158
    :cond_0
    :goto_0
    return-object v0

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, raw:Ljava/lang/String;
    const-string v1, "MODE1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const-string v0, "Mode I (sRGB)"

    goto :goto_0
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 61
    iget-object v0, p0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 45
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->getLensDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->getHueAdjustmentDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->getColorModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->getAutoFlashCompensationDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->getIsoSettingDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->getDigitalZoomDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->getAutoFocusPositionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->getAutoFirmwareVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_4
        0x12 -> :sswitch_3
        0x84 -> :sswitch_0
        0x86 -> :sswitch_5
        0x88 -> :sswitch_6
        0x8d -> :sswitch_2
        0x92 -> :sswitch_1
    .end sparse-switch
.end method

.method public getDigitalZoomDescription()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x86

    const/4 v2, 0x1

    .line 90
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v3}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 95
    :goto_0
    return-object v1

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v3}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 92
    .local v0, rational:Lcom/drew/lang/Rational;
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 93
    const-string v1, "No digital zoom"

    goto :goto_0

    .line 95
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "x digital zoom"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHueAdjustmentDescription()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x92

    .line 143
    iget-object v0, p0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " degrees"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIsoSettingDescription()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 100
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v3}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 105
    :goto_0
    return-object v1

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v3}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v0

    .line 102
    .local v0, values:[I
    const/4 v1, 0x0

    aget v1, v0, v1

    if-nez v1, :cond_1

    aget v1, v0, v4

    if-nez v1, :cond_2

    .line 103
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 105
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ISO "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLensDescription()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2d

    const/16 v4, 0x84

    .line 121
    iget-object v2, p0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v4}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    const/4 v2, 0x0

    .line 138
    :goto_0
    return-object v2

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v4}, Lcom/drew/metadata/Directory;->getRationalArray(I)[Lcom/drew/lang/Rational;

    move-result-object v1

    .line 126
    .local v1, lensValues:[Lcom/drew/lang/Rational;
    array-length v2, v1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 127
    iget-object v2, p0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v4}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v0, description:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Lcom/drew/lang/Rational;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Lcom/drew/lang/Rational;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 133
    const-string v2, "mm f/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v2}, Lcom/drew/lang/Rational;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-virtual {v2}, Lcom/drew/lang/Rational;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
