.class public Lcom/drew/metadata/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final _directory:Lcom/drew/metadata/Directory;

.field private final _tagType:I


# direct methods
.method public constructor <init>(ILcom/drew/metadata/Directory;)V
    .locals 0
    .parameter "tagType"
    .parameter "directory"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/drew/metadata/Tag;->_tagType:I

    .line 32
    iput-object p2, p0, Lcom/drew/metadata/Tag;->_directory:Lcom/drew/metadata/Directory;

    .line 33
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/drew/metadata/Tag;->_directory:Lcom/drew/metadata/Directory;

    iget v1, p0, Lcom/drew/metadata/Tag;->_tagType:I

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirectoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/drew/metadata/Tag;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0}, Lcom/drew/metadata/Directory;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/drew/metadata/Tag;->_directory:Lcom/drew/metadata/Directory;

    iget v1, p0, Lcom/drew/metadata/Tag;->_tagType:I

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagType()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/drew/metadata/Tag;->_tagType:I

    return v0
.end method

.method public getTagTypeHex()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    iget v1, p0, Lcom/drew/metadata/Tag;->_tagType:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, hex:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 52
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

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/drew/metadata/Tag;->getDescription()Ljava/lang/String;
    :try_end_0
    .catch Lcom/drew/metadata/MetadataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    .local v0, description:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/drew/metadata/Tag;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v3}, Lcom/drew/metadata/Directory;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/drew/metadata/Tag;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 96
    .end local v0           #description:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Lcom/drew/metadata/MetadataException;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/drew/metadata/Tag;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {p0}, Lcom/drew/metadata/Tag;->getTagType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " (unable to formulate description)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #description:Ljava/lang/String;
    goto :goto_0
.end method
