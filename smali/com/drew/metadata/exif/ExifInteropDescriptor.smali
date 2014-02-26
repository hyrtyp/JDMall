.class public Lcom/drew/metadata/exif/ExifInteropDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "ExifInteropDescriptor.java"


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

    .line 41
    iget-object v0, p0, Lcom/drew/metadata/exif/ExifInteropDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 37
    :pswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifInteropDescriptor;->getInteropIndexDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :pswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/ExifInteropDescriptor;->getInteropVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getInteropIndexDescription()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 54
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifInteropDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 59
    :goto_0
    return-object v1

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifInteropDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, interopIndex:Ljava/lang/String;
    const-string v1, "R98"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const-string v1, "Recommended Exif Interoperability Rules (ExifR98)"

    goto :goto_0

    .line 59
    :cond_1
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

.method public getInteropVersionDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 47
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifInteropDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 49
    :goto_0
    return-object v1

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/exif/ExifInteropDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getIntArray(I)[I

    move-result-object v0

    .line 49
    .local v0, ints:[I
    invoke-static {v0}, Lcom/drew/metadata/exif/ExifDescriptor;->convertBytesToVersionString([I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
