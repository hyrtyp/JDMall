.class public Lcom/jingdong/app/mall/plug/utils/FilePathSelector;
.super Ljava/lang/Object;
.source "FilePathSelector.java"


# static fields
.field public static SPACE_ONLY_EXTERNAL:I

.field public static SPACE_ONLY_INTERNAL:I

.field public static SPACE_PRIORITY_EXTERNAL:I

.field public static SPACE_PRIORITY_INTERNAL:I


# instance fields
.field private AvailableSize:J

.field private TotalSize:J

.field private childDirName:Ljava/lang/String;

.field private currentSpacesad:I

.field private fileName:Ljava/lang/String;

.field private immutable:Z

.field private isPublicInternal:Z

.field private final root:Ljava/io/File;

.field private space:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput v0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->SPACE_ONLY_INTERNAL:I

    .line 15
    const/4 v0, 0x1

    sput v0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->SPACE_ONLY_EXTERNAL:I

    .line 16
    const/4 v0, 0x2

    sput v0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->SPACE_PRIORITY_INTERNAL:I

    .line 17
    const/4 v0, 0x3

    sput v0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->SPACE_PRIORITY_EXTERNAL:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "space"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->isPublicInternal:Z

    .line 36
    iput p1, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->space:I

    .line 37
    invoke-virtual {p0}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->getRoot()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->root:Ljava/io/File;

    .line 38
    return-void
.end method

.method public static externalMemoryAvailable()Z
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getAvailableExternalMemorySize()J
    .locals 8

    .prologue
    .line 185
    invoke-static {}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->externalMemoryAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 187
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 189
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 191
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 193
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 195
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    .line 199
    :goto_0
    return-wide v6

    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v4           #path:Ljava/io/File;
    .end local v5           #stat:Landroid/os/StatFs;
    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 159
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 161
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 163
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 165
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 167
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public static getPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "pace"
    .parameter "temp"
    .parameter "fileName"

    .prologue
    .line 227
    new-instance v1, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;-><init>(I)V

    .line 228
    .local v1, fileGuider:Lcom/jingdong/app/mall/plug/utils/FilePathSelector;
    invoke-virtual {v1, p1}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->setChildDirName(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1, p2}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->setFileName(Ljava/lang/String;)V

    .line 234
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    invoke-virtual {v1}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 244
    :goto_0
    return-object v2

    .line 238
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->getParentPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 244
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkParentPath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->getParentPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 108
    :cond_0
    return-void
.end method

.method public getAvailableSize()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->AvailableSize:J

    return-wide v0
.end method

.method public getChildDirName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->childDirName:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, file:Ljava/io/File;
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 211
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->checkParentPath()V

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->getParentPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 218
    :goto_0
    return-object v1

    .line 214
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 218
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParentPath()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->childDirName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->root:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->root:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->childDirName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRoot()Ljava/io/File;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, root:Ljava/io/File;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->getAvailableSize()J

    move-result-wide v0

    .line 113
    .local v0, availableSize:J
    sget v3, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->SPACE_ONLY_INTERNAL:I

    iget v4, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->space:I

    if-ne v3, v4, :cond_1

    .line 114
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 132
    :cond_0
    :goto_0
    return-object v2

    .line 115
    :cond_1
    sget v3, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->SPACE_ONLY_EXTERNAL:I

    iget v4, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->space:I

    if-ne v3, v4, :cond_2

    .line 116
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 117
    goto :goto_0

    :cond_2
    sget v3, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->SPACE_PRIORITY_INTERNAL:I

    iget v4, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->space:I

    if-ne v3, v4, :cond_4

    .line 118
    invoke-static {}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->getAvailableInternalMemorySize()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-lez v3, :cond_3

    .line 120
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 121
    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->externalMemoryAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->getAvailableExternalMemorySize()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    .line 123
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 125
    goto :goto_0

    :cond_4
    sget v3, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->SPACE_PRIORITY_EXTERNAL:I

    iget v4, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->space:I

    if-ne v3, v4, :cond_0

    .line 126
    invoke-static {}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->externalMemoryAvailable()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->getAvailableExternalMemorySize()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-lez v3, :cond_5

    .line 127
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 128
    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    invoke-static {}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->getAvailableInternalMemorySize()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    .line 129
    :cond_6
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    goto :goto_0
.end method

.method public getSpace()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->space:I

    return v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->TotalSize:J

    return-wide v0
.end method

.method public isImmutable()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->immutable:Z

    return v0
.end method

.method public setAvailableSize(J)V
    .locals 0
    .parameter "availableSize"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->AvailableSize:J

    .line 66
    return-void
.end method

.method public setChildDirName(Ljava/lang/String;)V
    .locals 0
    .parameter "childDirName"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->childDirName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->fileName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setImmutable(Z)V
    .locals 0
    .parameter "immutable"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->immutable:Z

    .line 50
    return-void
.end method

.method public setTotalSize(J)V
    .locals 0
    .parameter "totalSize"

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->TotalSize:J

    .line 58
    return-void
.end method
