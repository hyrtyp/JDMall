.class public Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "NikonType1MakernoteDescriptor.java"


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Directory;)V
    .locals 0
    .parameter "directory"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getCcdSensitivityDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 126
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 138
    :goto_0
    return-object v1

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 128
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 138
    :pswitch_0
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

    .line 130
    :pswitch_1
    const-string v1, "ISO80"

    goto :goto_0

    .line 132
    :pswitch_2
    const-string v1, "ISO160"

    goto :goto_0

    .line 134
    :pswitch_3
    const-string v1, "ISO320"

    goto :goto_0

    .line 136
    :pswitch_4
    const-string v1, "ISO100"

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getColorModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 164
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 172
    :goto_0
    return-object v1

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 166
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 172
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

    .line 168
    :pswitch_0
    const-string v1, "Color"

    goto :goto_0

    .line 170
    :pswitch_1
    const-string v1, "Monochrome"

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getConverterDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xb

    .line 68
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 76
    :goto_0
    return-object v1

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 70
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 76
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

    .line 72
    :pswitch_0
    const-string v1, "None"

    goto :goto_0

    .line 74
    :pswitch_1
    const-string v1, "Fisheye converter"

    goto :goto_0

    .line 70
    nop

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
    .line 44
    packed-switch p1, :pswitch_data_0

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 46
    :pswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->getQualityDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :pswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->getColorModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->getImageAdjustmentDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->getCcdSensitivityDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :pswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->getFocusDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :pswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->getDigitalZoomDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->getConverterDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getDigitalZoomDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xa

    .line 82
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 87
    :goto_0
    return-object v1

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 84
    .local v0, value:Lcom/drew/lang/Rational;
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getNumerator()I

    move-result v1

    if-nez v1, :cond_1

    .line 85
    const-string v1, "No digital zoom"

    goto :goto_0

    .line 87
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

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

.method public getFocusDescription()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 92
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v3}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 97
    :goto_0
    return-object v1

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v3}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 94
    .local v0, value:Lcom/drew/lang/Rational;
    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getNumerator()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/drew/lang/Rational;->getDenominator()I

    move-result v1

    if-nez v1, :cond_1

    .line 95
    const-string v1, "Infinite"

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v0, v2}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getImageAdjustmentDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x5

    .line 144
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 158
    :goto_0
    return-object v1

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 146
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 158
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

    .line 148
    :pswitch_0
    const-string v1, "Normal"

    goto :goto_0

    .line 150
    :pswitch_1
    const-string v1, "Bright +"

    goto :goto_0

    .line 152
    :pswitch_2
    const-string v1, "Bright -"

    goto :goto_0

    .line 154
    :pswitch_3
    const-string v1, "Contrast +"

    goto :goto_0

    .line 156
    :pswitch_4
    const-string v1, "Contrast -"

    goto :goto_0

    .line 146
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

.method public getQualityDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 178
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 194
    :goto_0
    return-object v1

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 180
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 194
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

    .line 182
    :pswitch_0
    const-string v1, "VGA Basic"

    goto :goto_0

    .line 184
    :pswitch_1
    const-string v1, "VGA Normal"

    goto :goto_0

    .line 186
    :pswitch_2
    const-string v1, "VGA Fine"

    goto :goto_0

    .line 188
    :pswitch_3
    const-string v1, "SXGA Basic"

    goto :goto_0

    .line 190
    :pswitch_4
    const-string v1, "SXGA Normal"

    goto :goto_0

    .line 192
    :pswitch_5
    const-string v1, "SXGA Fine"

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getWhiteBalanceDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x7

    .line 102
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 120
    :goto_0
    return-object v1

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 104
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 120
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

    .line 106
    :pswitch_0
    const-string v1, "Auto"

    goto :goto_0

    .line 108
    :pswitch_1
    const-string v1, "Preset"

    goto :goto_0

    .line 110
    :pswitch_2
    const-string v1, "Daylight"

    goto :goto_0

    .line 112
    :pswitch_3
    const-string v1, "Incandescense"

    goto :goto_0

    .line 114
    :pswitch_4
    const-string v1, "Flourescence"

    goto :goto_0

    .line 116
    :pswitch_5
    const-string v1, "Cloudy"

    goto :goto_0

    .line 118
    :pswitch_6
    const-string v1, "SpeedLight"

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
