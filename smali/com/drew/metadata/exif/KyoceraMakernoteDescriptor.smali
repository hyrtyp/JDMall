.class public Lcom/drew/metadata/exif/KyoceraMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "KyoceraMakernoteDescriptor.java"


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Directory;)V
    .locals 0
    .parameter "directory"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 36
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
    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 46
    iget-object v0, p0, Lcom/drew/metadata/exif/KyoceraMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 42
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/KyoceraMakernoteDescriptor;->getPrintImageMatchingInfoDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/KyoceraMakernoteDescriptor;->getProprietaryThumbnailDataDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xe00 -> :sswitch_0
    .end sparse-switch
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

    .line 52
    iget-object v1, p0, Lcom/drew/metadata/exif/KyoceraMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 54
    :goto_0
    return-object v1

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/KyoceraMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getByteArray(I)[B

    move-result-object v0

    .line 54
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

.method public getProprietaryThumbnailDataDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 59
    iget-object v1, p0, Lcom/drew/metadata/exif/KyoceraMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 61
    :goto_0
    return-object v1

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/KyoceraMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getByteArray(I)[B

    move-result-object v0

    .line 61
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
