.class public Lcom/drew/metadata/exif/CanonMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "CanonMakernoteDescriptor.java"


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
.method public getAfPointSelectedDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc113

    .line 403
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 417
    :goto_0
    return-object v1

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 405
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 417
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

    .line 407
    :pswitch_0
    const-string v1, "None (MF)"

    goto :goto_0

    .line 409
    :pswitch_1
    const-string v1, "Auto selected"

    goto :goto_0

    .line 411
    :pswitch_2
    const-string v1, "Right"

    goto :goto_0

    .line 413
    :pswitch_3
    const-string v1, "Centre"

    goto :goto_0

    .line 415
    :pswitch_4
    const-string v1, "Left"

    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x3000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getAfPointUsedDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc20e

    .line 282
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 291
    :goto_0
    return-object v1

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 284
    .local v0, value:I
    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_1

    .line 285
    const-string v1, "Right"

    goto :goto_0

    .line 286
    :cond_1
    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 287
    const-string v1, "Centre"

    goto :goto_0

    .line 288
    :cond_2
    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 289
    const-string v1, "Left"

    goto :goto_0

    .line 291
    :cond_3
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

.method public getAutoExposureBrackettingSequenceAndAutoCancellationDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc307

    .line 183
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 190
    :goto_0
    return-object v1

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 185
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 190
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

    .line 186
    :pswitch_0
    const-string v1, "0,-,+ / Enabled"

    goto :goto_0

    .line 187
    :pswitch_1
    const-string v1, "0,-,+ / Disabled"

    goto :goto_0

    .line 188
    :pswitch_2
    const-string v1, "-,0,+ / Enabled"

    goto :goto_0

    .line 189
    :pswitch_3
    const-string v1, "-,0,+ / Disabled"

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAutoFocusAssistLightDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc305

    .line 163
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 168
    :goto_0
    return-object v1

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 165
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 168
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

    .line 166
    :pswitch_0
    const-string v1, "On (Auto)"

    goto :goto_0

    .line 167
    :pswitch_1
    const-string v1, "Off"

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getContinuousDriveModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc105

    .line 584
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 596
    :goto_0
    return-object v1

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 586
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 596
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

    .line 588
    :pswitch_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    const v2, 0xc102

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 589
    const-string v1, "Single shot"

    goto :goto_0

    .line 591
    :cond_1
    const-string v1, "Single shot with self-timer"

    goto :goto_0

    .line 594
    :pswitch_1
    const-string v1, "Continuous"

    goto :goto_0

    .line 586
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
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
    const v2, 0xc10d

    .line 493
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 503
    :goto_0
    return-object v1

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 495
    .local v0, value:I
    sparse-switch v0, :sswitch_data_0

    .line 503
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

    .line 497
    :sswitch_0
    const-string v1, "Low"

    goto :goto_0

    .line 499
    :sswitch_1
    const-string v1, "Normal"

    goto :goto_0

    .line 501
    :sswitch_2
    const-string v1, "High"

    goto :goto_0

    .line 495
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0xffff -> :sswitch_0
    .end sparse-switch
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

    .line 115
    iget-object v0, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 37
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getFlashActivityDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getFocusTypeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getDigitalZoomDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getQualityDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getMacroModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getSelfTimerDelayDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getFlashModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getContinuousDriveModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getFocusMode1Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :sswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getImageSizeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :sswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getEasyShootingModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :sswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getContrastDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :sswitch_c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getSaturationDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :sswitch_d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getSharpnessDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :sswitch_e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getIsoDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :sswitch_f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getMeteringModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :sswitch_10
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getAfPointSelectedDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :sswitch_11
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getExposureModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :sswitch_12
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getLongFocalLengthDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :sswitch_13
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getShortFocalLengthDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :sswitch_14
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getFocalUnitsPerMillimetreDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :sswitch_15
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getFlashDetailsDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :sswitch_16
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getFocusMode2Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :sswitch_17
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :sswitch_18
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getAfPointUsedDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :sswitch_19
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getFlashBiasDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 89
    :sswitch_1a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getLongExposureNoiseReductionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 91
    :sswitch_1b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getShutterAutoExposureLockButtonDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 93
    :sswitch_1c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getMirrorLockupDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 95
    :sswitch_1d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getTvAndAvExposureLevelDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 97
    :sswitch_1e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getAutoFocusAssistLightDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 99
    :sswitch_1f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getShutterSpeedInAvModeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 101
    :sswitch_20
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getAutoExposureBrackettingSequenceAndAutoCancellationDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 103
    :sswitch_21
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getShutterCurtainSyncDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 105
    :sswitch_22
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getLensAutoFocusStopButtonDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 107
    :sswitch_23
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getFillFlashReductionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 109
    :sswitch_24
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getMenuButtonReturnPositionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 111
    :sswitch_25
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getSetButtonFunctionWhenShootingDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 113
    :sswitch_26
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getSensorCleaningDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 35
    nop

    :sswitch_data_0
    .sparse-switch
        0xc101 -> :sswitch_4
        0xc102 -> :sswitch_5
        0xc103 -> :sswitch_3
        0xc104 -> :sswitch_6
        0xc105 -> :sswitch_7
        0xc107 -> :sswitch_8
        0xc10a -> :sswitch_9
        0xc10b -> :sswitch_a
        0xc10c -> :sswitch_2
        0xc10d -> :sswitch_b
        0xc10e -> :sswitch_c
        0xc10f -> :sswitch_d
        0xc110 -> :sswitch_e
        0xc111 -> :sswitch_f
        0xc112 -> :sswitch_1
        0xc113 -> :sswitch_10
        0xc114 -> :sswitch_11
        0xc117 -> :sswitch_12
        0xc118 -> :sswitch_13
        0xc119 -> :sswitch_14
        0xc11c -> :sswitch_0
        0xc11d -> :sswitch_15
        0xc120 -> :sswitch_16
        0xc207 -> :sswitch_17
        0xc20e -> :sswitch_18
        0xc20f -> :sswitch_19
        0xc301 -> :sswitch_1a
        0xc302 -> :sswitch_1b
        0xc303 -> :sswitch_1c
        0xc304 -> :sswitch_1d
        0xc305 -> :sswitch_1e
        0xc306 -> :sswitch_1f
        0xc307 -> :sswitch_20
        0xc308 -> :sswitch_21
        0xc309 -> :sswitch_22
        0xc30a -> :sswitch_23
        0xc30b -> :sswitch_24
        0xc30c -> :sswitch_25
        0xc30d -> :sswitch_26
    .end sparse-switch
.end method

.method public getDigitalZoomDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc10c

    .line 671
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 681
    :goto_0
    return-object v1

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 673
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 681
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

    .line 675
    :pswitch_0
    const-string v1, "No digital zoom"

    goto :goto_0

    .line 677
    :pswitch_1
    const-string v1, "2x"

    goto :goto_0

    .line 679
    :pswitch_2
    const-string v1, "4x"

    goto :goto_0

    .line 673
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getEasyShootingModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc10b

    .line 509
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 537
    :goto_0
    return-object v1

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 511
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 537
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

    .line 513
    :pswitch_0
    const-string v1, "Full auto"

    goto :goto_0

    .line 515
    :pswitch_1
    const-string v1, "Manual"

    goto :goto_0

    .line 517
    :pswitch_2
    const-string v1, "Landscape"

    goto :goto_0

    .line 519
    :pswitch_3
    const-string v1, "Fast shutter"

    goto :goto_0

    .line 521
    :pswitch_4
    const-string v1, "Slow shutter"

    goto :goto_0

    .line 523
    :pswitch_5
    const-string v1, "Night"

    goto :goto_0

    .line 525
    :pswitch_6
    const-string v1, "B&W"

    goto :goto_0

    .line 527
    :pswitch_7
    const-string v1, "Sepia"

    goto :goto_0

    .line 529
    :pswitch_8
    const-string v1, "Portrait"

    goto :goto_0

    .line 531
    :pswitch_9
    const-string v1, "Sports"

    goto :goto_0

    .line 533
    :pswitch_a
    const-string v1, "Macro / Closeup"

    goto :goto_0

    .line 535
    :pswitch_b
    const-string v1, "Pan focus"

    goto :goto_0

    .line 511
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getExposureModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc114

    .line 381
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 397
    :goto_0
    return-object v1

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 383
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 397
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

    .line 385
    :pswitch_0
    const-string v1, "Easy shooting"

    goto :goto_0

    .line 387
    :pswitch_1
    const-string v1, "Program"

    goto :goto_0

    .line 389
    :pswitch_2
    const-string v1, "Tv-priority"

    goto :goto_0

    .line 391
    :pswitch_3
    const-string v1, "Av-priority"

    goto :goto_0

    .line 393
    :pswitch_4
    const-string v1, "Manual"

    goto :goto_0

    .line 395
    :pswitch_5
    const-string v1, "A-DEP"

    goto :goto_0

    .line 383
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

.method public getFillFlashReductionDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc30a

    .line 216
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 221
    :goto_0
    return-object v1

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 218
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
    const-string v1, "Enabled"

    goto :goto_0

    .line 220
    :pswitch_1
    const-string v1, "Disabled"

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFlashActivityDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc11c

    .line 705
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 713
    :goto_0
    return-object v1

    .line 706
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 707
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 713
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

    .line 709
    :pswitch_0
    const-string v1, "Flash did not fire"

    goto :goto_0

    .line 711
    :pswitch_1
    const-string v1, "Flash fired"

    goto :goto_0

    .line 707
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFlashBiasDescription()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v3, 0xc20f

    .line 260
    iget-object v2, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 277
    :goto_0
    return-object v2

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    .line 264
    .local v1, value:I
    const/4 v0, 0x0

    .line 265
    .local v0, isNegative:Z
    const v2, 0xf000

    if-le v1, v2, :cond_1

    .line 267
    const/4 v0, 0x1

    .line 268
    const v2, 0xffff

    sub-int v1, v2, v1

    .line 269
    add-int/lit8 v1, v1, 0x1

    .line 277
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const-string v2, "-"

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v2, v1

    const/high16 v4, 0x4200

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EV"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method public getFlashDetailsDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc11d

    .line 335
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 349
    :goto_0
    return-object v1

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 337
    .local v0, value:I
    shl-int/lit8 v1, v0, 0xe

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_1

    .line 338
    const-string v1, "External E-TTL"

    goto :goto_0

    .line 340
    :cond_1
    shl-int/lit8 v1, v0, 0xd

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_2

    .line 341
    const-string v1, "Internal flash"

    goto :goto_0

    .line 343
    :cond_2
    shl-int/lit8 v1, v0, 0xb

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_3

    .line 344
    const-string v1, "FP sync used"

    goto :goto_0

    .line 346
    :cond_3
    shl-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_4

    .line 347
    const-string v1, "FP sync enabled"

    goto :goto_0

    .line 349
    :cond_4
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

.method public getFlashModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc104

    .line 602
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 623
    :goto_0
    return-object v1

    .line 603
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 604
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 623
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

    .line 606
    :pswitch_1
    const-string v1, "No flash fired"

    goto :goto_0

    .line 608
    :pswitch_2
    const-string v1, "Auto"

    goto :goto_0

    .line 610
    :pswitch_3
    const-string v1, "On"

    goto :goto_0

    .line 612
    :pswitch_4
    const-string v1, "Red-eye reduction"

    goto :goto_0

    .line 614
    :pswitch_5
    const-string v1, "Slow-synchro"

    goto :goto_0

    .line 616
    :pswitch_6
    const-string v1, "Auto and red-eye reduction"

    goto :goto_0

    .line 618
    :pswitch_7
    const-string v1, "On and red-eye reduction"

    goto :goto_0

    .line 621
    :pswitch_8
    const-string v1, "Extenal flash"

    goto :goto_0

    .line 604
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public getFocalUnitsPerMillimetreDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc119

    .line 354
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 359
    :goto_0
    return-object v1

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 356
    .local v0, value:I
    if-eqz v0, :cond_1

    .line 357
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 359
    :cond_1
    const-string v1, ""

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
    const v2, 0xc107

    .line 559
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 578
    :goto_0
    return-object v1

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 561
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 578
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

    .line 563
    :pswitch_0
    const-string v1, "One-shot"

    goto :goto_0

    .line 565
    :pswitch_1
    const-string v1, "AI Servo"

    goto :goto_0

    .line 567
    :pswitch_2
    const-string v1, "AI Focus"

    goto :goto_0

    .line 569
    :pswitch_3
    const-string v1, "Manual Focus"

    goto :goto_0

    .line 572
    :pswitch_4
    const-string v1, "Single"

    goto :goto_0

    .line 574
    :pswitch_5
    const-string v1, "Continuous"

    goto :goto_0

    .line 576
    :pswitch_6
    const-string v1, "Manual Focus"

    goto :goto_0

    .line 561
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

.method public getFocusMode2Description()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc120

    .line 321
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 329
    :goto_0
    return-object v1

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 323
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 329
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

    .line 325
    :pswitch_0
    const-string v1, "Single"

    goto :goto_0

    .line 327
    :pswitch_1
    const-string v1, "Continuous"

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFocusTypeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc112

    .line 687
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 699
    :goto_0
    return-object v1

    .line 688
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 689
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 699
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

    .line 691
    :pswitch_1
    const-string v1, "Manual"

    goto :goto_0

    .line 693
    :pswitch_2
    const-string v1, "Auto"

    goto :goto_0

    .line 695
    :pswitch_3
    const-string v1, "Close-up (Macro)"

    goto :goto_0

    .line 697
    :pswitch_4
    const-string v1, "Locked (Pan Mode)"

    goto :goto_0

    .line 689
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getImageSizeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc10a

    .line 543
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 553
    :goto_0
    return-object v1

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 545
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 553
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

    .line 547
    :pswitch_0
    const-string v1, "Large"

    goto :goto_0

    .line 549
    :pswitch_1
    const-string v1, "Medium"

    goto :goto_0

    .line 551
    :pswitch_2
    const-string v1, "Small"

    goto :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getIsoDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc110

    .line 439
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 455
    :goto_0
    return-object v1

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 441
    .local v0, value:I
    sparse-switch v0, :sswitch_data_0

    .line 455
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

    .line 443
    :sswitch_0
    const-string v1, "Not specified (see ISOSpeedRatings tag)"

    goto :goto_0

    .line 445
    :sswitch_1
    const-string v1, "Auto"

    goto :goto_0

    .line 447
    :sswitch_2
    const-string v1, "50"

    goto :goto_0

    .line 449
    :sswitch_3
    const-string v1, "100"

    goto :goto_0

    .line 451
    :sswitch_4
    const-string v1, "200"

    goto :goto_0

    .line 453
    :sswitch_5
    const-string v1, "400"

    goto :goto_0

    .line 441
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xf -> :sswitch_1
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_4
        0x13 -> :sswitch_5
    .end sparse-switch
.end method

.method public getLensAutoFocusStopButtonDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc309

    .line 205
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 211
    :goto_0
    return-object v1

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 207
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 211
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

    .line 208
    :pswitch_0
    const-string v1, "AF stop"

    goto :goto_0

    .line 209
    :pswitch_1
    const-string v1, "Operate AF"

    goto :goto_0

    .line 210
    :pswitch_2
    const-string v1, "Lock AE and start timer"

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLongExposureNoiseReductionDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc301

    .line 121
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 126
    :goto_0
    return-object v1

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 123
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 126
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

    .line 124
    :pswitch_0
    const-string v1, "Off"

    goto :goto_0

    .line 125
    :pswitch_1
    const-string v1, "On"

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLongFocalLengthDescription()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v3, 0xc117

    .line 373
    iget-object v2, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 376
    :goto_0
    return-object v2

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    .line 375
    .local v1, value:I
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getFocalUnitsPerMillimetreDescription()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, units:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getMacroModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc101

    .line 641
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 649
    :goto_0
    return-object v1

    .line 642
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 643
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 649
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

    .line 645
    :pswitch_0
    const-string v1, "Macro"

    goto :goto_0

    .line 647
    :pswitch_1
    const-string v1, "Normal"

    goto :goto_0

    .line 643
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMenuButtonReturnPositionDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc30b

    .line 226
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 232
    :goto_0
    return-object v1

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 228
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 232
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

    .line 229
    :pswitch_0
    const-string v1, "Top"

    goto :goto_0

    .line 230
    :pswitch_1
    const-string v1, "Previous (volatile)"

    goto :goto_0

    .line 231
    :pswitch_2
    const-string v1, "Previous"

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMeteringModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc111

    .line 423
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 433
    :goto_0
    return-object v1

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 425
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 433
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

    .line 427
    :pswitch_0
    const-string v1, "Evaluative"

    goto :goto_0

    .line 429
    :pswitch_1
    const-string v1, "Partial"

    goto :goto_0

    .line 431
    :pswitch_2
    const-string v1, "Centre weighted"

    goto :goto_0

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMirrorLockupDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc303

    .line 143
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 148
    :goto_0
    return-object v1

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 145
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 148
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

    .line 146
    :pswitch_0
    const-string v1, "Disabled"

    goto :goto_0

    .line 147
    :pswitch_1
    const-string v1, "Enabled"

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
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
    const v2, 0xc103

    .line 655
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 665
    :goto_0
    return-object v1

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 657
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 665
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

    .line 659
    :pswitch_1
    const-string v1, "Normal"

    goto :goto_0

    .line 661
    :pswitch_2
    const-string v1, "Fine"

    goto :goto_0

    .line 663
    :pswitch_3
    const-string v1, "Superfine"

    goto :goto_0

    .line 657
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
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
    const v2, 0xc10e

    .line 477
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 487
    :goto_0
    return-object v1

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 479
    .local v0, value:I
    sparse-switch v0, :sswitch_data_0

    .line 487
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

    .line 481
    :sswitch_0
    const-string v1, "Low"

    goto :goto_0

    .line 483
    :sswitch_1
    const-string v1, "Normal"

    goto :goto_0

    .line 485
    :sswitch_2
    const-string v1, "High"

    goto :goto_0

    .line 479
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0xffff -> :sswitch_0
    .end sparse-switch
.end method

.method public getSelfTimerDelayDescription()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc102

    .line 629
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 635
    :goto_0
    return-object v1

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 631
    .local v0, value:I
    if-nez v0, :cond_1

    .line 632
    const-string v1, "Self timer not used"

    goto :goto_0

    .line 635
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    int-to-double v2, v0

    const-wide v4, 0x3fb999999999999aL

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSensorCleaningDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc30d

    .line 249
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 254
    :goto_0
    return-object v1

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 251
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 254
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

    .line 252
    :pswitch_0
    const-string v1, "Disabled"

    goto :goto_0

    .line 253
    :pswitch_1
    const-string v1, "Enabled"

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSetButtonFunctionWhenShootingDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc30c

    .line 237
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 244
    :goto_0
    return-object v1

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 239
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 244
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

    .line 240
    :pswitch_0
    const-string v1, "Not Assigned"

    goto :goto_0

    .line 241
    :pswitch_1
    const-string v1, "Change Quality"

    goto :goto_0

    .line 242
    :pswitch_2
    const-string v1, "Change ISO Speed"

    goto :goto_0

    .line 243
    :pswitch_3
    const-string v1, "Select Parameters"

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    const v2, 0xc10f

    .line 461
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 471
    :goto_0
    return-object v1

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 463
    .local v0, value:I
    sparse-switch v0, :sswitch_data_0

    .line 471
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

    .line 465
    :sswitch_0
    const-string v1, "Low"

    goto :goto_0

    .line 467
    :sswitch_1
    const-string v1, "Normal"

    goto :goto_0

    .line 469
    :sswitch_2
    const-string v1, "High"

    goto :goto_0

    .line 463
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0xffff -> :sswitch_0
    .end sparse-switch
.end method

.method public getShortFocalLengthDescription()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v3, 0xc118

    .line 365
    iget-object v2, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 368
    :goto_0
    return-object v2

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v1

    .line 367
    .local v1, value:I
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->getFocalUnitsPerMillimetreDescription()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, units:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getShutterAutoExposureLockButtonDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc302

    .line 131
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 138
    :goto_0
    return-object v1

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 133
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 138
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

    .line 134
    :pswitch_0
    const-string v1, "AF/AE lock"

    goto :goto_0

    .line 135
    :pswitch_1
    const-string v1, "AE lock/AF"

    goto :goto_0

    .line 136
    :pswitch_2
    const-string v1, "AF/AF lock"

    goto :goto_0

    .line 137
    :pswitch_3
    const-string v1, "AE+release/AE+AF"

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getShutterCurtainSyncDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc308

    .line 195
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 200
    :goto_0
    return-object v1

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 197
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 200
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

    .line 198
    :pswitch_0
    const-string v1, "1st Curtain Sync"

    goto :goto_0

    .line 199
    :pswitch_1
    const-string v1, "2nd Curtain Sync"

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getShutterSpeedInAvModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc306

    .line 173
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 178
    :goto_0
    return-object v1

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 175
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 178
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

    .line 176
    :pswitch_0
    const-string v1, "Automatic"

    goto :goto_0

    .line 177
    :pswitch_1
    const-string v1, "1/200 (fixed)"

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTvAndAvExposureLevelDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const v2, 0xc304

    .line 153
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 158
    :goto_0
    return-object v1

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 155
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

    .line 156
    :pswitch_0
    const-string v1, "1/2 stop"

    goto :goto_0

    .line 157
    :pswitch_1
    const-string v1, "1/3 stop"

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
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
    const v2, 0xc207

    .line 297
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 315
    :goto_0
    return-object v1

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 299
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 315
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

    .line 301
    :pswitch_0
    const-string v1, "Auto"

    goto :goto_0

    .line 303
    :pswitch_1
    const-string v1, "Sunny"

    goto :goto_0

    .line 305
    :pswitch_2
    const-string v1, "Cloudy"

    goto :goto_0

    .line 307
    :pswitch_3
    const-string v1, "Tungsten"

    goto :goto_0

    .line 309
    :pswitch_4
    const-string v1, "Flourescent"

    goto :goto_0

    .line 311
    :pswitch_5
    const-string v1, "Flash"

    goto :goto_0

    .line 313
    :pswitch_6
    const-string v1, "Custom"

    goto :goto_0

    .line 299
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
