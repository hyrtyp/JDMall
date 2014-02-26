.class public Lcom/drew/metadata/exif/PanasonicMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "PanasonicMakernoteDescriptor.java"


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
    sparse-switch p1, :sswitch_data_0

    .line 45
    iget-object v0, p0, Lcom/drew/metadata/exif/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 39
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PanasonicMakernoteDescriptor;->getMacroModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PanasonicMakernoteDescriptor;->getRecordModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/PanasonicMakernoteDescriptor;->getPrintImageMatchingInfoDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    nop

    :sswitch_data_0
    .sparse-switch
        0x1c -> :sswitch_0
        0x1f -> :sswitch_1
        0xe00 -> :sswitch_2
    .end sparse-switch
.end method

.method public getMacroModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1c

    .line 58
    iget-object v1, p0, Lcom/drew/metadata/exif/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 66
    :goto_0
    return-object v1

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 60
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 66
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

    .line 62
    :pswitch_0
    const-string v1, "On"

    goto :goto_0

    .line 64
    :pswitch_1
    const-string v1, "Off"

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPrintImageMatchingInfoDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xe00

    .line 51
    iget-object v1, p0, Lcom/drew/metadata/exif/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 53
    :goto_0
    return-object v1

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getByteArray(I)[B

    move-result-object v0

    .line 53
    .local v0, bytes:[B
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRecordModeDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1f

    .line 72
    iget-object v1, p0, Lcom/drew/metadata/exif/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 82
    :goto_0
    return-object v1

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/PanasonicMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getInt(I)I

    move-result v0

    .line 74
    .local v0, value:I
    sparse-switch v0, :sswitch_data_0

    .line 82
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

    .line 76
    :sswitch_0
    const-string v1, "Normal"

    goto :goto_0

    .line 78
    :sswitch_1
    const-string v1, "Portrait"

    goto :goto_0

    .line 80
    :sswitch_2
    const-string v1, "Macro"

    goto :goto_0

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method
