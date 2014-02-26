.class public final Lcom/drew/metadata/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final directoryList:Ljava/util/ArrayList;

.field private final directoryMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/drew/metadata/Metadata;->directoryMap:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/drew/metadata/Metadata;->directoryList:Ljava/util/ArrayList;

    .line 61
    return-void
.end method


# virtual methods
.method public containsDirectory(Ljava/lang/Class;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/drew/metadata/Metadata;->directoryMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;
    .locals 5
    .parameter "type"

    .prologue
    .line 95
    const-class v2, Lcom/drew/metadata/Directory;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Class type passed to getDirectory must be an implementation of com.drew.metadata.Directory"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/drew/metadata/Metadata;->directoryMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/drew/metadata/Metadata;->directoryMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/drew/metadata/Directory;

    .line 111
    :goto_0
    return-object v2

    .line 104
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    .local v0, directory:Ljava/lang/Object;
    iget-object v2, p0, Lcom/drew/metadata/Metadata;->directoryMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v2, p0, Lcom/drew/metadata/Metadata;->directoryList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    check-cast v0, Lcom/drew/metadata/Directory;

    .end local v0           #directory:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot instantiate provided Directory type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDirectoryCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/drew/metadata/Metadata;->directoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDirectoryIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/drew/metadata/Metadata;->directoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
