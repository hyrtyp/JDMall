.class public Lcom/jingdong/common/utils/ImageUtil$InputWay;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/ImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputWay"
.end annotation


# instance fields
.field private byteArray:[B

.field private file:Ljava/io/File;

.field private inputStream:Ljava/io/InputStream;

.field private resourceId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInputWay(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Lcom/jingdong/common/utils/ImageUtil$InputWay;
    .locals 2
    .parameter "response"

    .prologue
    .line 448
    new-instance v0, Lcom/jingdong/common/utils/ImageUtil$InputWay;

    invoke-direct {v0}, Lcom/jingdong/common/utils/ImageUtil$InputWay;-><init>()V

    .line 449
    .local v0, inputWay:Lcom/jingdong/common/utils/ImageUtil$InputWay;
    if-eqz p0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getInputData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->setByteArray([B)V

    .line 451
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getSaveFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->setFile(Ljava/io/File;)V

    .line 453
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getByteArray()[B
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/jingdong/common/utils/ImageUtil$InputWay;->byteArray:[B

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/jingdong/common/utils/ImageUtil$InputWay;->file:Ljava/io/File;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/jingdong/common/utils/ImageUtil$InputWay;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/jingdong/common/utils/ImageUtil$InputWay;->resourceId:I

    return v0
.end method

.method public setByteArray([B)V
    .locals 0
    .parameter "byteArray"

    .prologue
    .line 485
    iput-object p1, p0, Lcom/jingdong/common/utils/ImageUtil$InputWay;->byteArray:[B

    .line 486
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 469
    iput-object p1, p0, Lcom/jingdong/common/utils/ImageUtil$InputWay;->file:Ljava/io/File;

    .line 470
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .parameter "inputStream"

    .prologue
    .line 477
    iput-object p1, p0, Lcom/jingdong/common/utils/ImageUtil$InputWay;->inputStream:Ljava/io/InputStream;

    .line 478
    return-void
.end method

.method public setResourceId(I)V
    .locals 0
    .parameter "resourceId"

    .prologue
    .line 461
    iput p1, p0, Lcom/jingdong/common/utils/ImageUtil$InputWay;->resourceId:I

    .line 462
    return-void
.end method
