.class public Lcom/jingdong/common/utils/FileGuider;
.super Ljava/lang/Object;
.source "FileGuider.java"


# instance fields
.field private AvailableSize:J

.field private TotalSize:J

.field private childDirName:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private immutable:Z

.field private internalType:I

.field private mode:I

.field private space:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableSize()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/jingdong/common/utils/FileGuider;->AvailableSize:J

    return-wide v0
.end method

.method public getChildDirName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/common/utils/FileGuider;->childDirName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/common/utils/FileGuider;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalType()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/jingdong/common/utils/FileGuider;->internalType:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/jingdong/common/utils/FileGuider;->mode:I

    return v0
.end method

.method public getSpace()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/jingdong/common/utils/FileGuider;->space:I

    return v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/jingdong/common/utils/FileGuider;->TotalSize:J

    return-wide v0
.end method

.method public isImmutable()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/jingdong/common/utils/FileGuider;->immutable:Z

    return v0
.end method

.method public setAvailableSize(J)V
    .locals 0
    .parameter "availableSize"

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/jingdong/common/utils/FileGuider;->AvailableSize:J

    .line 44
    return-void
.end method

.method public setChildDirName(Ljava/lang/String;)V
    .locals 0
    .parameter "childDirName"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/jingdong/common/utils/FileGuider;->childDirName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/jingdong/common/utils/FileGuider;->fileName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setImmutable(Z)V
    .locals 0
    .parameter "immutable"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/jingdong/common/utils/FileGuider;->immutable:Z

    .line 28
    return-void
.end method

.method public setInternalType(I)V
    .locals 0
    .parameter "internalType"

    .prologue
    .line 75
    iput p1, p0, Lcom/jingdong/common/utils/FileGuider;->internalType:I

    .line 76
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 67
    iput p1, p0, Lcom/jingdong/common/utils/FileGuider;->mode:I

    .line 68
    return-void
.end method

.method public setSpace(I)V
    .locals 0
    .parameter "space"

    .prologue
    .line 19
    iput p1, p0, Lcom/jingdong/common/utils/FileGuider;->space:I

    .line 20
    return-void
.end method

.method public setTotalSize(J)V
    .locals 0
    .parameter "totalSize"

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/jingdong/common/utils/FileGuider;->TotalSize:J

    .line 36
    return-void
.end method
