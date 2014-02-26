.class public Lcom/drew/metadata/exif/GpsDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "GpsDescriptor.java"


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

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 38
    :pswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/GpsDescriptor;->getGpsAltitudeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :pswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/GpsDescriptor;->getGpsAltitudeRefDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 42
    :pswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/GpsDescriptor;->getGpsStatusDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :pswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/GpsDescriptor;->getGpsMeasureModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :pswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/GpsDescriptor;->getGpsSpeedRefDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/GpsDescriptor;->getGpsDirectionReferenceDescription(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/drew/metadata/exif/GpsDescriptor;->getGpsDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/GpsDescriptor;->getGpsDestinationReferenceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :pswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/GpsDescriptor;->getGpsTimeStampDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :pswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/GpsDescriptor;->getGpsLongitudeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/GpsDescriptor;->getGpsLatitudeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_9
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getGpsAltitudeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 197
    iget-object v1, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 199
    :goto_0
    return-object v1

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, alititude:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " metres"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getGpsAltitudeRefDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x5

    .line 186
    iget-object v1, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 191
    :goto_0
    return-object v1

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 188
    .local v0, alititudeRef:I
    if-nez v0, :cond_1

    .line 189
    const-string v1, "Sea level"

    goto :goto_0

    .line 191
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

.method public getGpsDestinationReferenceDescription()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x19

    .line 110
    iget-object v1, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 119
    :goto_0
    return-object v1

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, destRef:Ljava/lang/String;
    const-string v1, "K"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    const-string v1, "kilometers"

    goto :goto_0

    .line 114
    :cond_1
    const-string v1, "M"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    const-string v1, "miles"

    goto :goto_0

    .line 116
    :cond_2
    const-string v1, "N"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    const-string v1, "knots"

    goto :goto_0

    .line 119
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getGpsDirectionDescription(I)Ljava/lang/String;
    .locals 3
    .parameter "tagType"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 127
    :goto_0
    return-object v1

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, gpsDirection:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " degrees"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getGpsDirectionReferenceDescription(I)Ljava/lang/String;
    .locals 3
    .parameter "tagType"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 139
    :goto_0
    return-object v1

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, gpsDistRef:Ljava/lang/String;
    const-string v1, "T"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    const-string v1, "True direction"

    goto :goto_0

    .line 136
    :cond_1
    const-string v1, "M"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    const-string v1, "Magnetic direction"

    goto :goto_0

    .line 139
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getGpsLatitudeDescription()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 71
    iget-object v0, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/drew/metadata/exif/GpsDescriptor;->getHoursMinutesSecondsDescription(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGpsLongitudeDescription()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 77
    iget-object v0, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/drew/metadata/exif/GpsDescriptor;->getHoursMinutesSecondsDescription(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGpsMeasureModeDescription()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 160
    iget-object v1, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 167
    :goto_0
    return-object v1

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, gpsSpeedMeasureMode:Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    const-string v1, "2-dimensional measurement"

    goto :goto_0

    .line 164
    :cond_1
    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    const-string v1, "3-dimensional measurement"

    goto :goto_0

    .line 167
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getGpsSpeedRefDescription()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 145
    iget-object v1, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 154
    :goto_0
    return-object v1

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, gpsSpeedRef:Ljava/lang/String;
    const-string v1, "K"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    const-string v1, "kph"

    goto :goto_0

    .line 149
    :cond_1
    const-string v1, "M"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    const-string v1, "mph"

    goto :goto_0

    .line 151
    :cond_2
    const-string v1, "N"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    const-string v1, "knots"

    goto :goto_0

    .line 154
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getGpsStatusDescription()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 173
    iget-object v1, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 180
    :goto_0
    return-object v1

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, gpsStatus:Ljava/lang/String;
    const-string v1, "A"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    const-string v1, "Measurement in progess"

    goto :goto_0

    .line 177
    :cond_1
    const-string v1, "V"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    const-string v1, "Measurement Interoperability"

    goto :goto_0

    .line 180
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getGpsTimeStampDescription()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x7

    .line 96
    iget-object v2, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 105
    :goto_0
    return-object v2

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v1

    .line 98
    .local v1, timeComponents:[I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 99
    .local v0, sbuffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 100
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    const/4 v2, 0x1

    aget v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 102
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const/4 v2, 0x2

    aget v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 104
    const-string v2, " UTC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getHoursMinutesSecondsDescription(I)Ljava/lang/String;
    .locals 6
    .parameter "tagType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v4, p0, Lcom/drew/metadata/exif/GpsDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v4, p1}, Lcom/drew/metadata/Directory;->getRationalArray(I)[Lcom/drew/lang/Rational;

    move-result-object v0

    .line 85
    .local v0, components:[Lcom/drew/lang/Rational;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v4}, Lcom/drew/lang/Rational;->intValue()I

    move-result v1

    .line 86
    .local v1, deg:I
    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v4}, Lcom/drew/lang/Rational;->floatValue()F

    move-result v2

    .line 87
    .local v2, min:F
    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v4}, Lcom/drew/lang/Rational;->floatValue()F

    move-result v3

    .line 89
    .local v3, sec:F
    const/high16 v4, 0x3f80

    rem-float v4, v2, v4

    const/high16 v5, 0x4270

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    float-to-int v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
