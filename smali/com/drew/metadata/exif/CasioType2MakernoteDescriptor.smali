.class public Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "CasioType2MakernoteDescriptor.java"


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Directory;)V
    .locals 0
    .parameter "directory"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getBestShotModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3007

    .line 149
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 153
    :goto_0
    return-object v1

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 153
    .local v0, value:I
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

.method public getCasioPreviewThumbnailDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x2000

    .line 258
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 260
    :goto_0
    return-object v1

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getByteArray(I)[B

    move-result-object v0

    .line 260
    .local v0, bytes:[B
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes of image data>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCcdIsoSensitivityDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3014

    .line 135
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 143
    :goto_0
    return-object v1

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 137
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 143
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

    .line 139
    :pswitch_0
    const-string v1, "Off"

    goto :goto_0

    .line 141
    :pswitch_1
    const-string v1, "On"

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getColourModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3015

    .line 123
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 129
    :goto_0
    return-object v1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 125
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 129
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

    .line 127
    :pswitch_0
    const-string v1, "Off"

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
    const/16 v2, 0x20

    .line 288
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 298
    :goto_0
    return-object v1

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 290
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 298
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

    .line 292
    :pswitch_0
    const-string v1, "-1"

    goto :goto_0

    .line 294
    :pswitch_1
    const-string v1, "Normal"

    goto :goto_0

    .line 296
    :pswitch_2
    const-string v1, "+1"

    goto :goto_0

    .line 290
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
    .line 35
    sparse-switch p1, :sswitch_data_0

    .line 93
    iget-object v0, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 37
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getThumbnailDimensionsDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getThumbnailSizeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getThumbnailOffsetDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getQualityModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getImageSizeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getFocusMode1Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getIsoSensitivityDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getWhiteBalance1Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getFocalLengthDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :sswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getSaturationDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :sswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getContrastDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :sswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getSharpnessDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :sswitch_c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getPrintImageMatchingInfoDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :sswitch_d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getCasioPreviewThumbnailDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :sswitch_e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getWhiteBalanceBiasDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :sswitch_f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getWhiteBalance2Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :sswitch_10
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getObjectDistanceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :sswitch_11
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getFlashDistanceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :sswitch_12
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getRecordModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :sswitch_13
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getSelfTimerDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :sswitch_14
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getQualityDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :sswitch_15
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getFocusMode2Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :sswitch_16
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getTimeZoneDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :sswitch_17
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getBestShotModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :sswitch_18
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getCcdIsoSensitivityDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :sswitch_19
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getColourModeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 89
    :sswitch_1a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getEnhancementDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 91
    :sswitch_1b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->getFilterDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 35
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x9 -> :sswitch_4
        0xd -> :sswitch_5
        0x14 -> :sswitch_6
        0x19 -> :sswitch_7
        0x1d -> :sswitch_8
        0x1f -> :sswitch_9
        0x20 -> :sswitch_a
        0x21 -> :sswitch_b
        0xe00 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x2011 -> :sswitch_e
        0x2012 -> :sswitch_f
        0x2022 -> :sswitch_10
        0x2034 -> :sswitch_11
        0x3000 -> :sswitch_12
        0x3001 -> :sswitch_13
        0x3002 -> :sswitch_14
        0x3003 -> :sswitch_15
        0x3006 -> :sswitch_16
        0x3007 -> :sswitch_17
        0x3014 -> :sswitch_18
        0x3015 -> :sswitch_19
        0x3016 -> :sswitch_1a
        0x3017 -> :sswitch_1b
    .end sparse-switch
.end method

.method public getEnhancementDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3016

    .line 111
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 117
    :goto_0
    return-object v1

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 113
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 117
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

    .line 115
    :pswitch_0
    const-string v1, "Off"

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getFilterDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3017

    .line 99
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 105
    :goto_0
    return-object v1

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 101
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 105
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

    .line 103
    :pswitch_0
    const-string v1, "Off"

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getFlashDistanceDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x2034

    .line 215
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 221
    :goto_0
    return-object v1

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 217
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 221
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

    .line 219
    :pswitch_0
    const-string v1, "Off"

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getFocalLengthDescription()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1d

    .line 320
    iget-object v2, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 322
    :goto_0
    return-object v2

    .line 321
    :cond_0
    iget-object v2, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->getDouble(I)D

    move-result-wide v0

    .line 322
    .local v0, value:D
    new-instance v2, Ljava/lang/StringBuilder;

    const-wide/high16 v3, 0x4024

    div-double v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

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

.method public getFocusMode1Description()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xd

    .line 367
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 375
    :goto_0
    return-object v1

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 369
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 375
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

    .line 371
    :pswitch_0
    const-string v1, "Normal"

    goto :goto_0

    .line 373
    :pswitch_1
    const-string v1, "Macro"

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFocusMode2Description()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3003

    .line 165
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 173
    :goto_0
    return-object v1

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 167
    .local v0, value:I
    sparse-switch v0, :sswitch_data_0

    .line 173
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

    .line 169
    :sswitch_0
    const-string v1, "Fixation"

    goto :goto_0

    .line 171
    :sswitch_1
    const-string v1, "Multi-Area Focus"

    goto :goto_0

    .line 167
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public getImageSizeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x9

    .line 381
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 391
    :goto_0
    return-object v1

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 383
    .local v0, value:I
    sparse-switch v0, :sswitch_data_0

    .line 391
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

    .line 384
    :sswitch_0
    const-string v1, "640 x 480 pixels"

    goto :goto_0

    .line 385
    :sswitch_1
    const-string v1, "1600 x 1200 pixels"

    goto :goto_0

    .line 386
    :sswitch_2
    const-string v1, "2048 x 1536 pixels"

    goto :goto_0

    .line 387
    :sswitch_3
    const-string v1, "2288 x 1712 pixels"

    goto :goto_0

    .line 388
    :sswitch_4
    const-string v1, "2592 x 1944 pixels"

    goto :goto_0

    .line 389
    :sswitch_5
    const-string v1, "2304 x 1728 pixels"

    goto :goto_0

    .line 390
    :sswitch_6
    const-string v1, "3008 x 2008 pixels"

    goto :goto_0

    .line 383
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x24 -> :sswitch_6
    .end sparse-switch
.end method

.method public getIsoSensitivityDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x14

    .line 349
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 361
    :goto_0
    return-object v1

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 351
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 361
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

    .line 353
    :pswitch_1
    const-string v1, "50"

    goto :goto_0

    .line 355
    :pswitch_2
    const-string v1, "64"

    goto :goto_0

    .line 357
    :pswitch_3
    const-string v1, "100"

    goto :goto_0

    .line 359
    :pswitch_4
    const-string v1, "200"

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getObjectDistanceDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x2022

    .line 227
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 229
    :goto_0
    return-object v1

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 229
    .local v0, value:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " mm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPrintImageMatchingInfoDescription()Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0xe00

    .line 266
    iget-object v0, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQualityDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3002

    .line 179
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 185
    :goto_0
    return-object v1

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 181
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 185
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

    .line 183
    :pswitch_0
    const-string v1, "Fine"

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getQualityModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 397
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 405
    :goto_0
    return-object v1

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 399
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 405
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

    .line 401
    :pswitch_0
    const-string v1, "Fine"

    goto :goto_0

    .line 403
    :pswitch_1
    const-string v1, "Super Fine"

    goto :goto_0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRecordModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3000

    .line 203
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 209
    :goto_0
    return-object v1

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 205
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 209
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

    .line 207
    :pswitch_0
    const-string v1, "Normal"

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
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
    const/16 v2, 0x1f

    .line 304
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 314
    :goto_0
    return-object v1

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 306
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 314
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

    .line 308
    :pswitch_0
    const-string v1, "-1"

    goto :goto_0

    .line 310
    :pswitch_1
    const-string v1, "Normal"

    goto :goto_0

    .line 312
    :pswitch_2
    const-string v1, "+1"

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSelfTimerDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3001

    .line 191
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 197
    :goto_0
    return-object v1

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 193
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 197
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

    .line 195
    :pswitch_0
    const-string v1, "Off"

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    const/16 v2, 0x21

    .line 272
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 282
    :goto_0
    return-object v1

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 274
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 282
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

    .line 276
    :pswitch_0
    const-string v1, "-1"

    goto :goto_0

    .line 278
    :pswitch_1
    const-string v1, "Normal"

    goto :goto_0

    .line 280
    :pswitch_2
    const-string v1, "+1"

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getThumbnailDimensionsDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 424
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 428
    :goto_0
    return-object v1

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v0

    .line 426
    .local v0, dimensions:[I
    array-length v1, v0

    if-eq v1, v2, :cond_1

    .line 427
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 428
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pixels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getThumbnailOffsetDescription()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 411
    iget-object v0, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 412
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getThumbnailSizeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 417
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 419
    :goto_0
    return-object v1

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 419
    .local v0, value:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTimeZoneDescription()Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x3006

    .line 159
    iget-object v0, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getWhiteBalance1Description()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x19

    .line 327
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 343
    :goto_0
    return-object v1

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 329
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 343
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

    .line 331
    :pswitch_0
    const-string v1, "Auto"

    goto :goto_0

    .line 333
    :pswitch_1
    const-string v1, "Daylight"

    goto :goto_0

    .line 335
    :pswitch_2
    const-string v1, "Shade"

    goto :goto_0

    .line 337
    :pswitch_3
    const-string v1, "Tungsten"

    goto :goto_0

    .line 339
    :pswitch_4
    const-string v1, "Flourescent"

    goto :goto_0

    .line 341
    :pswitch_5
    const-string v1, "Manual"

    goto :goto_0

    .line 329
    nop

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

.method public getWhiteBalance2Description()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x2012

    .line 234
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 246
    :goto_0
    return-object v1

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 236
    .local v0, value:I
    sparse-switch v0, :sswitch_data_0

    .line 246
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

    .line 238
    :sswitch_0
    const-string v1, "Manual"

    goto :goto_0

    .line 240
    :sswitch_1
    const-string v1, "Auto"

    goto :goto_0

    .line 242
    :sswitch_2
    const-string v1, "Flash"

    goto :goto_0

    .line 244
    :sswitch_3
    const-string v1, "Flash"

    goto :goto_0

    .line 236
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0xc -> :sswitch_3
    .end sparse-switch
.end method

.method public getWhiteBalanceBiasDescription()Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x2011

    .line 252
    iget-object v0, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
