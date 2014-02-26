.class public Lcom/drew/metadata/jpeg/JpegDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "JpegDescriptor.java"


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Directory;)V
    .locals 0
    .parameter "directory"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getComponentDataDescription(I)Ljava/lang/String;
    .locals 5
    .parameter "componentNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v2, p0, Lcom/drew/metadata/jpeg/JpegDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/jpeg/JpegDirectory;

    invoke-virtual {v2, p1}, Lcom/drew/metadata/jpeg/JpegDirectory;->getComponent(I)Lcom/drew/metadata/jpeg/JpegComponent;

    move-result-object v0

    .line 74
    .local v0, component:Lcom/drew/metadata/jpeg/JpegComponent;
    if-nez v0, :cond_0

    .line 75
    new-instance v2, Lcom/drew/metadata/MetadataException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No Jpeg component exists with number "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Lcom/drew/metadata/jpeg/JpegComponent;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v2, " component: Quantization table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v0}, Lcom/drew/metadata/jpeg/JpegComponent;->getQuantizationTableNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 81
    const-string v2, ", Sampling factors "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {v0}, Lcom/drew/metadata/jpeg/JpegComponent;->getHorizontalSamplingFactor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 83
    const-string v2, " horiz/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v0}, Lcom/drew/metadata/jpeg/JpegComponent;->getVerticalSamplingFactor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 85
    const-string v2, " vert"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDataPrecisionDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drew/metadata/jpeg/JpegDescriptor;->_directory:Lcom/drew/metadata/Directory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " bits"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 34
    packed-switch p1, :pswitch_data_0

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/drew/metadata/jpeg/JpegDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 37
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/drew/metadata/jpeg/JpegDescriptor;->getComponentDataDescription(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/drew/metadata/jpeg/JpegDescriptor;->getComponentDataDescription(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/drew/metadata/jpeg/JpegDescriptor;->getComponentDataDescription(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :pswitch_4
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/drew/metadata/jpeg/JpegDescriptor;->getComponentDataDescription(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/jpeg/JpegDescriptor;->getDataPrecisionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/jpeg/JpegDescriptor;->getImageHeightDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/jpeg/JpegDescriptor;->getImageWidthDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getImageHeightDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drew/metadata/jpeg/JpegDescriptor;->_directory:Lcom/drew/metadata/Directory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " pixels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageWidthDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drew/metadata/jpeg/JpegDescriptor;->_directory:Lcom/drew/metadata/Directory;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " pixels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
