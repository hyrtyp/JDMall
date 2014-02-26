.class public Lcom/jingdong/common/entity/CacheFile;
.super Ljava/lang/Object;
.source "CacheFile.java"


# instance fields
.field private cleanTime:Ljava/util/Date;

.field private directory:Lcom/jingdong/common/utils/FileService$Directory;

.field private file:Ljava/io/File;

.field private firstName:Ljava/lang/String;

.field private lastName:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/jingdong/common/entity/CacheFile;->setFile(Ljava/io/File;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 3
    .parameter "name"
    .parameter "cacheTime"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Lcom/jingdong/common/entity/CacheFile;->setName(Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/jingdong/common/entity/CacheFile;->cleanTime:Ljava/util/Date;

    .line 28
    return-void
.end method


# virtual methods
.method public getCleanTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/common/entity/CacheFile;->cleanTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDirectory()Lcom/jingdong/common/utils/FileService$Directory;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/common/entity/CacheFile;->directory:Lcom/jingdong/common/utils/FileService$Directory;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jingdong/common/entity/CacheFile;->file:Ljava/io/File;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/common/entity/CacheFile;->getDirectory()Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/jingdong/common/entity/CacheFile;->getDirectory()Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/utils/FileService$Directory;->getDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jingdong/common/entity/CacheFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jingdong/common/entity/CacheFile;->file:Ljava/io/File;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/CacheFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jingdong/common/entity/CacheFile;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jingdong/common/entity/CacheFile;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jingdong/common/entity/CacheFile;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jingdong/common/entity/CacheFile;->firstName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/CacheFile;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/CacheFile;->name:Ljava/lang/String;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/CacheFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCleanTime(Ljava/util/Date;)V
    .locals 0
    .parameter "cleanTime"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/jingdong/common/entity/CacheFile;->cleanTime:Ljava/util/Date;

    .line 52
    return-void
.end method

.method public setDirectory(Lcom/jingdong/common/utils/FileService$Directory;)V
    .locals 0
    .parameter "directory"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/jingdong/common/entity/CacheFile;->directory:Lcom/jingdong/common/utils/FileService$Directory;

    .line 60
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/CacheFile;->setName(Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/jingdong/common/entity/CacheFile;->file:Ljava/io/File;

    .line 72
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .parameter "firstName"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/jingdong/common/entity/CacheFile;->firstName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .parameter "lastName"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/jingdong/common/entity/CacheFile;->lastName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jingdong/common/entity/CacheFile;->name:Ljava/lang/String;

    .line 83
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 84
    .local v0, index:I
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/CacheFile;->firstName:Ljava/lang/String;

    .line 85
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/entity/CacheFile;->lastName:Ljava/lang/String;

    .line 86
    return-void
.end method
