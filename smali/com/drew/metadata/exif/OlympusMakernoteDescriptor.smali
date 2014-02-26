.class public Lcom/drew/metadata/exif/OlympusMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "OlympusMakernoteDescriptor.java"


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Directory;)V
    .locals 0
    .parameter "directory"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .parameter "tagType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 33
    packed-switch p1, :pswitch_data_0

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/drew/metadata/exif/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 35
    :pswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/OlympusMakernoteDescriptor;->getSpecialModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 37
    :pswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/OlympusMakernoteDescriptor;->getJpegQualityDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :pswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/OlympusMakernoteDescriptor;->getMacroModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/OlympusMakernoteDescriptor;->getDigiZoomRatioDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getDigiZoomRatioDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x204

    .line 49
    iget-object v1, p0, Lcom/drew/metadata/exif/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 57
    :goto_0
    return-object v1

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 51
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 57
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

    .line 53
    :pswitch_1
    const-string v1, "Normal"

    goto :goto_0

    .line 55
    :pswitch_2
    const-string v1, "Digital 2x Zoom"

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getJpegQualityDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x201

    .line 77
    iget-object v1, p0, Lcom/drew/metadata/exif/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 87
    :goto_0
    return-object v1

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 79
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 87
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

    .line 81
    :pswitch_0
    const-string v1, "SQ"

    goto :goto_0

    .line 83
    :pswitch_1
    const-string v1, "HQ"

    goto :goto_0

    .line 85
    :pswitch_2
    const-string v1, "SHQ"

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMacroModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x202

    .line 63
    iget-object v1, p0, Lcom/drew/metadata/exif/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 71
    :goto_0
    return-object v1

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 65
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 71
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

    .line 67
    :pswitch_0
    const-string v1, "Normal (no macro)"

    goto :goto_0

    .line 69
    :pswitch_1
    const-string v1, "Macro"

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSpecialModeDescription()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x200

    const/4 v3, 0x1

    .line 93
    iget-object v2, p0, Lcom/drew/metadata/exif/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v4}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 146
    :goto_0
    return-object v2

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/drew/metadata/exif/OlympusMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v4}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v1

    .line 95
    .local v1, values:[I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v0, desc:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    aget v2, v1, v2

    packed-switch v2, :pswitch_data_0

    .line 110
    const-string v2, "Unknown picture taking mode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    :goto_1
    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    aget v2, v1, v3

    packed-switch v2, :pswitch_data_1

    .line 128
    aget v2, v1, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 129
    const-string v2, "th in a sequence"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    :goto_2
    const/4 v2, 0x2

    aget v2, v1, v2

    packed-switch v2, :pswitch_data_2

    .line 146
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 98
    :pswitch_0
    const-string v2, "Normal picture taking mode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 101
    :pswitch_1
    const-string v2, "Unknown picture taking mode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 104
    :pswitch_2
    const-string v2, "Fast picture taking mode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 107
    :pswitch_3
    const-string v2, "Panorama picture taking mode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 116
    :pswitch_4
    const-string v2, "Unknown sequence number"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 119
    :pswitch_5
    const-string v2, "1st in a sequnce"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 122
    :pswitch_6
    const-string v2, "2nd in a sequence"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 125
    :pswitch_7
    const-string v2, "3rd in a sequence"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 134
    :pswitch_8
    const-string v2, "Left to right panorama direction"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 137
    :pswitch_9
    const-string v2, "Right to left panorama direction"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 140
    :pswitch_a
    const-string v2, "Bottom to top panorama direction"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 143
    :pswitch_b
    const-string v2, "Top to bottom panorama direction"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 114
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 132
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
