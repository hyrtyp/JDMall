.class public Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "FujifilmMakernoteDescriptor.java"


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Directory;)V
    .locals 0
    .parameter "directory"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getAutoExposureWarningDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1302

    .line 85
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 93
    :goto_0
    return-object v1

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 87
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 93
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

    .line 89
    :pswitch_0
    const-string v1, "AE good"

    goto :goto_0

    .line 91
    :pswitch_1
    const-string v1, "Over exposed (>1/1000s @ F11)"

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getBlurWarningDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1300

    .line 113
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 121
    :goto_0
    return-object v1

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 115
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 121
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

    .line 117
    :pswitch_0
    const-string v1, "No blur warning"

    goto :goto_0

    .line 119
    :pswitch_1
    const-string v1, "Blur warning"

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getColorDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1003

    .line 252
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 262
    :goto_0
    return-object v1

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 254
    .local v0, value:I
    sparse-switch v0, :sswitch_data_0

    .line 262
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

    .line 256
    :sswitch_0
    const-string v1, "Normal (STD)"

    goto :goto_0

    .line 258
    :sswitch_1
    const-string v1, "High"

    goto :goto_0

    .line 260
    :sswitch_2
    const-string v1, "Low (ORG)"

    goto :goto_0

    .line 254
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x100 -> :sswitch_1
        0x200 -> :sswitch_2
    .end sparse-switch
.end method

.method public getContinuousTakingOrAutoBrackettingDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1100

    .line 127
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 135
    :goto_0
    return-object v1

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 129
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 135
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

    .line 131
    :pswitch_0
    const-string v1, "Off"

    goto :goto_0

    .line 133
    :pswitch_1
    const-string v1, "On"

    goto :goto_0

    .line 129
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
    .line 49
    sparse-switch p1, :sswitch_data_0

    .line 79
    iget-object v0, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 51
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->getSharpnessDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->getColorDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->getToneDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->getFlashModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->getFlashStrengthDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->getMacroDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->getFocusModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->getSlowSyncDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :sswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->getPictureModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :sswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->getContinuousTakingOrAutoBrackettingDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :sswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->getBlurWarningDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :sswitch_c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->getFocusWarningDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :sswitch_d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->getAutoExposureWarningDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1002 -> :sswitch_1
        0x1003 -> :sswitch_2
        0x1004 -> :sswitch_3
        0x1010 -> :sswitch_4
        0x1011 -> :sswitch_5
        0x1020 -> :sswitch_6
        0x1021 -> :sswitch_7
        0x1030 -> :sswitch_8
        0x1031 -> :sswitch_9
        0x1100 -> :sswitch_a
        0x1300 -> :sswitch_b
        0x1301 -> :sswitch_c
        0x1302 -> :sswitch_d
    .end sparse-switch
.end method

.method public getFlashModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1010

    .line 218
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 230
    :goto_0
    return-object v1

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 220
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 230
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

    .line 222
    :pswitch_0
    const-string v1, "Auto"

    goto :goto_0

    .line 224
    :pswitch_1
    const-string v1, "On"

    goto :goto_0

    .line 226
    :pswitch_2
    const-string v1, "Off"

    goto :goto_0

    .line 228
    :pswitch_3
    const-string v1, "Red-eye reduction"

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getFlashStrengthDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1011

    .line 211
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 213
    :goto_0
    return-object v1

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    .line 213
    .local v0, value:Lcom/drew/lang/Rational;
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " EV (Apex)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFocusModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1021

    .line 183
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 191
    :goto_0
    return-object v1

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 185
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 191
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

    .line 187
    :pswitch_0
    const-string v1, "Auto focus"

    goto :goto_0

    .line 189
    :pswitch_1
    const-string v1, "Manual focus"

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFocusWarningDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1301

    .line 99
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 107
    :goto_0
    return-object v1

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 101
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 107
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
    const-string v1, "Auto focus good"

    goto :goto_0

    .line 105
    :pswitch_1
    const-string v1, "Out of focus"

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMacroDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1020

    .line 197
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 205
    :goto_0
    return-object v1

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 199
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 205
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

    .line 201
    :pswitch_0
    const-string v1, "Off"

    goto :goto_0

    .line 203
    :pswitch_1
    const-string v1, "On"

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPictureModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1031

    .line 141
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 163
    :goto_0
    return-object v1

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 143
    .local v0, value:I
    sparse-switch v0, :sswitch_data_0

    .line 163
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

    .line 145
    :sswitch_0
    const-string v1, "Auto"

    goto :goto_0

    .line 147
    :sswitch_1
    const-string v1, "Portrait scene"

    goto :goto_0

    .line 149
    :sswitch_2
    const-string v1, "Landscape scene"

    goto :goto_0

    .line 151
    :sswitch_3
    const-string v1, "Sports scene"

    goto :goto_0

    .line 153
    :sswitch_4
    const-string v1, "Night scene"

    goto :goto_0

    .line 155
    :sswitch_5
    const-string v1, "Program AE"

    goto :goto_0

    .line 157
    :sswitch_6
    const-string v1, "Aperture priority AE"

    goto :goto_0

    .line 159
    :sswitch_7
    const-string v1, "Shutter priority AE"

    goto :goto_0

    .line 161
    :sswitch_8
    const-string v1, "Manual exposure"

    goto :goto_0

    .line 143
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x100 -> :sswitch_6
        0x200 -> :sswitch_7
        0x300 -> :sswitch_8
    .end sparse-switch
.end method

.method public getSharpnessDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1001

    .line 294
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 308
    :goto_0
    return-object v1

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 296
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 308
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

    .line 298
    :pswitch_0
    const-string v1, "Softest"

    goto :goto_0

    .line 300
    :pswitch_1
    const-string v1, "Soft"

    goto :goto_0

    .line 302
    :pswitch_2
    const-string v1, "Normal"

    goto :goto_0

    .line 304
    :pswitch_3
    const-string v1, "Hard"

    goto :goto_0

    .line 306
    :pswitch_4
    const-string v1, "Hardest"

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSlowSyncDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1030

    .line 169
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 177
    :goto_0
    return-object v1

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 171
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 177
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

    .line 173
    :pswitch_0
    const-string v1, "Off"

    goto :goto_0

    .line 175
    :pswitch_1
    const-string v1, "On"

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getToneDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1004

    .line 236
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 246
    :goto_0
    return-object v1

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 238
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

    .line 240
    :sswitch_0
    const-string v1, "Normal (STD)"

    goto :goto_0

    .line 242
    :sswitch_1
    const-string v1, "High (HARD)"

    goto :goto_0

    .line 244
    :sswitch_2
    const-string v1, "Low (ORG)"

    goto :goto_0

    .line 238
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x100 -> :sswitch_1
        0x200 -> :sswitch_2
    .end sparse-switch
.end method

.method public getWhiteBalanceDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1002

    .line 268
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 288
    :goto_0
    return-object v1

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 270
    .local v0, value:I
    sparse-switch v0, :sswitch_data_0

    .line 288
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

    .line 272
    :sswitch_0
    const-string v1, "Auto"

    goto :goto_0

    .line 274
    :sswitch_1
    const-string v1, "Daylight"

    goto :goto_0

    .line 276
    :sswitch_2
    const-string v1, "Cloudy"

    goto :goto_0

    .line 278
    :sswitch_3
    const-string v1, "DaylightColor-fluorescence"

    goto :goto_0

    .line 280
    :sswitch_4
    const-string v1, "DaywhiteColor-fluorescence"

    goto :goto_0

    .line 282
    :sswitch_5
    const-string v1, "White-fluorescence"

    goto :goto_0

    .line 284
    :sswitch_6
    const-string v1, "Incandenscense"

    goto :goto_0

    .line 286
    :sswitch_7
    const-string v1, "Custom white balance"

    goto :goto_0

    .line 270
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x100 -> :sswitch_1
        0x200 -> :sswitch_2
        0x300 -> :sswitch_3
        0x301 -> :sswitch_4
        0x302 -> :sswitch_5
        0x400 -> :sswitch_6
        0xf00 -> :sswitch_7
    .end sparse-switch
.end method
