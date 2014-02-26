.class public Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "PentaxMakernoteDescriptor.java"


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Directory;)V
    .locals 0
    .parameter "directory"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getCaptureModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 198
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 206
    :goto_0
    return-object v1

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 200
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 206
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

    .line 202
    :pswitch_0
    const-string v1, "Auto"

    goto :goto_0

    .line 203
    :pswitch_1
    const-string v1, "Night-scene"

    goto :goto_0

    .line 204
    :pswitch_2
    const-string v1, "Manual"

    goto :goto_0

    .line 205
    :pswitch_3
    const-string v1, "Multiple"

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getColourDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x17

    .line 67
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 74
    :goto_0
    return-object v1

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 69
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 74
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

    .line 71
    :pswitch_0
    const-string v1, "Normal"

    goto :goto_0

    .line 72
    :pswitch_1
    const-string v1, "Black & White"

    goto :goto_0

    .line 73
    :pswitch_2
    const-string v1, "Sepia"

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getContrastDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xc

    .line 108
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 115
    :goto_0
    return-object v1

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 110
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 115
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

    .line 112
    :pswitch_0
    const-string v1, "Normal"

    goto :goto_0

    .line 113
    :pswitch_1
    const-string v1, "Low"

    goto :goto_0

    .line 114
    :pswitch_2
    const-string v1, "High"

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 36
    packed-switch p1, :pswitch_data_0

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 39
    :pswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->getCaptureModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->getQualityLevelDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :pswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->getFocusModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->getFlashModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->getDigitalZoomDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :pswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->getSharpnessDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :pswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->getContrastDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->getSaturationDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :pswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->getIsoSpeedDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->getColourDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
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

    .line 134
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 138
    :goto_0
    return-object v1

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getFloat(I)F

    move-result v0

    .line 136
    .local v0, value:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 137
    const-string v1, "Off"

    goto :goto_0

    .line 138
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFlashModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 159
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 167
    :goto_0
    return-object v1

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 161
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 167
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

    .line 163
    :pswitch_1
    const-string v1, "Auto"

    goto :goto_0

    .line 164
    :pswitch_2
    const-string v1, "Flash On"

    goto :goto_0

    .line 165
    :pswitch_3
    const-string v1, "Flash Off"

    goto :goto_0

    .line 166
    :pswitch_4
    const-string v1, "Red-eye Reduction"

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getFocusModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 173
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 179
    :goto_0
    return-object v1

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 175
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 179
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

    .line 177
    :pswitch_0
    const-string v1, "Custom"

    goto :goto_0

    .line 178
    :pswitch_1
    const-string v1, "Auto"

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getIsoSpeedDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x14

    .line 80
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 89
    :goto_0
    return-object v1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 82
    .local v0, value:I
    sparse-switch v0, :sswitch_data_0

    .line 89
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

    .line 85
    :sswitch_0
    const-string v1, "ISO 100"

    goto :goto_0

    .line 86
    :sswitch_1
    const-string v1, "ISO 200"

    goto :goto_0

    .line 87
    :sswitch_2
    const-string v1, "ISO 100"

    goto :goto_0

    .line 88
    :sswitch_3
    const-string v1, "ISO 200"

    goto :goto_0

    .line 82
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x10 -> :sswitch_1
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_3
    .end sparse-switch
.end method

.method public getQualityLevelDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 185
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 192
    :goto_0
    return-object v1

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 187
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 192
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

    .line 189
    :pswitch_0
    const-string v1, "Good"

    goto :goto_0

    .line 190
    :pswitch_1
    const-string v1, "Better"

    goto :goto_0

    .line 191
    :pswitch_2
    const-string v1, "Best"

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSaturationDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xd

    .line 95
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 102
    :goto_0
    return-object v1

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 97
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 102
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

    .line 99
    :pswitch_0
    const-string v1, "Normal"

    goto :goto_0

    .line 100
    :pswitch_1
    const-string v1, "Low"

    goto :goto_0

    .line 101
    :pswitch_2
    const-string v1, "High"

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    const/16 v2, 0xb

    .line 121
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 128
    :goto_0
    return-object v1

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 123
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 128
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

    .line 125
    :pswitch_0
    const-string v1, "Normal"

    goto :goto_0

    .line 126
    :pswitch_1
    const-string v1, "Soft"

    goto :goto_0

    .line 127
    :pswitch_2
    const-string v1, "Hard"

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
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

    .line 143
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 153
    :goto_0
    return-object v1

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/PentaxMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 145
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 153
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

    .line 147
    :pswitch_0
    const-string v1, "Auto"

    goto :goto_0

    .line 148
    :pswitch_1
    const-string v1, "Daylight"

    goto :goto_0

    .line 149
    :pswitch_2
    const-string v1, "Shade"

    goto :goto_0

    .line 150
    :pswitch_3
    const-string v1, "Tungsten"

    goto :goto_0

    .line 151
    :pswitch_4
    const-string v1, "Fluorescent"

    goto :goto_0

    .line 152
    :pswitch_5
    const-string v1, "Manual"

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
