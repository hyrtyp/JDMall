.class public Lcom/drew/metadata/DefaultTagDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "DefaultTagDescriptor.java"


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Directory;)V
    .locals 0
    .parameter "directory"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .parameter "tagType"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/drew/metadata/DefaultTagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagName(I)Ljava/lang/String;
    .locals 3
    .parameter "tagType"

    .prologue
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, hex:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown tag 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 32
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
