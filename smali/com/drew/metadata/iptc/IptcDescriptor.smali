.class public Lcom/drew/metadata/iptc/IptcDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "IptcDescriptor.java"


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
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .parameter "tagType"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
