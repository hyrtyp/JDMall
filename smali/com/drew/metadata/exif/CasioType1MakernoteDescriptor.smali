.class public Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "CasioType1MakernoteDescriptor.java"


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
.method public getCcdSensitivityDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x14

    .line 67
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 85
    :goto_0
    return-object v1

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 69
    .local v0, value:I
    sparse-switch v0, :sswitch_data_0

    .line 85
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
    :sswitch_0
    const-string v1, "Normal"

    goto :goto_0

    .line 74
    :sswitch_1
    const-string v1, "+1.0"

    goto :goto_0

    .line 76
    :sswitch_2
    const-string v1, "+2.0"

    goto :goto_0

    .line 78
    :sswitch_3
    const-string v1, "+3.0"

    goto :goto_0

    .line 81
    :sswitch_4
    const-string v1, "Normal (ISO 80 equivalent)"

    goto :goto_0

    .line 83
    :sswitch_5
    const-string v1, "High"

    goto :goto_0

    .line 69
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x50 -> :sswitch_4
        0x64 -> :sswitch_5
        0x7d -> :sswitch_1
        0xf4 -> :sswitch_3
        0xfa -> :sswitch_2
    .end sparse-switch
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

    .line 107
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 117
    :goto_0
    return-object v1

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 109
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

    .line 111
    :pswitch_0
    const-string v1, "Normal"

    goto :goto_0

    .line 113
    :pswitch_1
    const-string v1, "Low"

    goto :goto_0

    .line 115
    :pswitch_2
    const-string v1, "High"

    goto :goto_0

    .line 109
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
    packed-switch p1, :pswitch_data_0

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 37
    :pswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->getRecordingModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :pswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->getQualityDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->getFocusingModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :pswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->getFlashModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->getFlashIntensityDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->getObjectDistanceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :pswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->getDigitalZoomDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :pswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->getSharpnessDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->getContrastDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :pswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->getSaturationDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->getCcdSensitivityDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
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

    .line 139
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 151
    :goto_0
    return-object v1

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 141
    .local v0, value:I
    sparse-switch v0, :sswitch_data_0

    .line 151
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

    .line 143
    :sswitch_0
    const-string v1, "No digital zoom"

    goto :goto_0

    .line 145
    :sswitch_1
    const-string v1, "2x digital zoom"

    goto :goto_0

    .line 147
    :sswitch_2
    const-string v1, "2x digital zoom"

    goto :goto_0

    .line 149
    :sswitch_3
    const-string v1, "4x digital zoom"

    goto :goto_0

    .line 141
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x10001 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_3
    .end sparse-switch
.end method

.method public getFlashIntensityDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x5

    .line 186
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 196
    :goto_0
    return-object v1

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 188
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 196
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

    .line 190
    :pswitch_1
    const-string v1, "Weak"

    goto :goto_0

    .line 192
    :pswitch_2
    const-string v1, "Normal"

    goto :goto_0

    .line 194
    :pswitch_3
    const-string v1, "Strong"

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
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

    .line 202
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 216
    :goto_0
    return-object v1

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 204
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 216
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

    .line 206
    :pswitch_0
    const-string v1, "Auto"

    goto :goto_0

    .line 208
    :pswitch_1
    const-string v1, "On"

    goto :goto_0

    .line 210
    :pswitch_2
    const-string v1, "Off"

    goto :goto_0

    .line 214
    :pswitch_3
    const-string v1, "Red eye reduction"

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getFocusingModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 222
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 234
    :goto_0
    return-object v1

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 224
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 234
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

    .line 226
    :pswitch_0
    const-string v1, "Macro"

    goto :goto_0

    .line 228
    :pswitch_1
    const-string v1, "Auto focus"

    goto :goto_0

    .line 230
    :pswitch_2
    const-string v1, "Manual focus"

    goto :goto_0

    .line 232
    :pswitch_3
    const-string v1, "Infinity"

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    const/4 v2, 0x6

    .line 179
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 181
    :goto_0
    return-object v1

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 181
    .local v0, value:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " mm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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
    const/4 v2, 0x2

    .line 240
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 250
    :goto_0
    return-object v1

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 242
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 250
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

    .line 244
    :pswitch_0
    const-string v1, "Economy"

    goto :goto_0

    .line 246
    :pswitch_1
    const-string v1, "Normal"

    goto :goto_0

    .line 248
    :pswitch_2
    const-string v1, "Fine"

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getRecordingModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 256
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 270
    :goto_0
    return-object v1

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 258
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 270
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

    .line 260
    :pswitch_0
    const-string v1, "Single shutter"

    goto :goto_0

    .line 262
    :pswitch_1
    const-string v1, "Panorama"

    goto :goto_0

    .line 264
    :pswitch_2
    const-string v1, "Night scene"

    goto :goto_0

    .line 266
    :pswitch_3
    const-string v1, "Portrait"

    goto :goto_0

    .line 268
    :pswitch_4
    const-string v1, "Landscape"

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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

    .line 91
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 101
    :goto_0
    return-object v1

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 93
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 101
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

    .line 95
    :pswitch_0
    const-string v1, "Normal"

    goto :goto_0

    .line 97
    :pswitch_1
    const-string v1, "Low"

    goto :goto_0

    .line 99
    :pswitch_2
    const-string v1, "High"

    goto :goto_0

    .line 93
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

    .line 123
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 133
    :goto_0
    return-object v1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 125
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 133
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
    const-string v1, "Normal"

    goto :goto_0

    .line 129
    :pswitch_1
    const-string v1, "Soft"

    goto :goto_0

    .line 131
    :pswitch_2
    const-string v1, "Hard"

    goto :goto_0

    .line 125
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

    .line 157
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 173
    :goto_0
    return-object v1

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 159
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

    .line 161
    :sswitch_0
    const-string v1, "Auto"

    goto :goto_0

    .line 163
    :sswitch_1
    const-string v1, "Tungsten"

    goto :goto_0

    .line 165
    :sswitch_2
    const-string v1, "Daylight"

    goto :goto_0

    .line 167
    :sswitch_3
    const-string v1, "Flourescent"

    goto :goto_0

    .line 169
    :sswitch_4
    const-string v1, "Shade"

    goto :goto_0

    .line 171
    :sswitch_5
    const-string v1, "Manual"

    goto :goto_0

    .line 159
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x81 -> :sswitch_5
    .end sparse-switch
.end method
