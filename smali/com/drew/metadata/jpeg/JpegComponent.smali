.class public Lcom/drew/metadata/jpeg/JpegComponent;
.super Ljava/lang/Object;
.source "JpegComponent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final _componentId:I

.field private final _quantizationTableNumber:I

.field private final _samplingFactorByte:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "componentId"
    .parameter "samplingFactorByte"
    .parameter "quantizationTableNumber"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/drew/metadata/jpeg/JpegComponent;->_componentId:I

    .line 39
    iput p2, p0, Lcom/drew/metadata/jpeg/JpegComponent;->_samplingFactorByte:I

    .line 40
    iput p3, p0, Lcom/drew/metadata/jpeg/JpegComponent;->_quantizationTableNumber:I

    .line 41
    return-void
.end method


# virtual methods
.method public getComponentId()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/drew/metadata/jpeg/JpegComponent;->_componentId:I

    return v0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 50
    iget v0, p0, Lcom/drew/metadata/jpeg/JpegComponent;->_componentId:I

    packed-switch v0, :pswitch_data_0

    .line 64
    new-instance v0, Lcom/drew/metadata/MetadataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported component id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/drew/metadata/jpeg/JpegComponent;->_componentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :pswitch_0
    const-string v0, "Y"

    .line 61
    :goto_0
    return-object v0

    .line 55
    :pswitch_1
    const-string v0, "Cb"

    goto :goto_0

    .line 57
    :pswitch_2
    const-string v0, "Cr"

    goto :goto_0

    .line 59
    :pswitch_3
    const-string v0, "I"

    goto :goto_0

    .line 61
    :pswitch_4
    const-string v0, "Q"

    goto :goto_0

    .line 50
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

.method public getHorizontalSamplingFactor()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/drew/metadata/jpeg/JpegComponent;->_samplingFactorByte:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getQuantizationTableNumber()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/drew/metadata/jpeg/JpegComponent;->_quantizationTableNumber:I

    return v0
.end method

.method public getVerticalSamplingFactor()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/drew/metadata/jpeg/JpegComponent;->_samplingFactorByte:I

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    return v0
.end method
