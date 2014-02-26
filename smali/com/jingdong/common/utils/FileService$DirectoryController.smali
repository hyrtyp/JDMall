.class public Lcom/jingdong/common/utils/FileService$DirectoryController;
.super Ljava/lang/Object;
.source "FileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/FileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectoryController"
.end annotation


# instance fields
.field private childDirName:Ljava/lang/String;

.field private dir:Lcom/jingdong/common/utils/FileService$Directory;

.field private dirState:I

.field private dirType:I

.field public isNeedReSetupStorageState:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "dirType"
    .parameter "childDirName"

    .prologue
    .line 1229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/FileService$DirectoryController;->isNeedReSetupStorageState:Z

    .line 1230
    iput p1, p0, Lcom/jingdong/common/utils/FileService$DirectoryController;->dirType:I

    .line 1231
    iput-object p2, p0, Lcom/jingdong/common/utils/FileService$DirectoryController;->childDirName:Ljava/lang/String;

    .line 1232
    return-void
.end method

.method private createDirectory()Lcom/jingdong/common/utils/FileService$Directory;
    .locals 2

    .prologue
    .line 1244
    iget v0, p0, Lcom/jingdong/common/utils/FileService$DirectoryController;->dirType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/jingdong/common/utils/FileService$DirectoryController;->childDirName:Ljava/lang/String;

    #calls: Lcom/jingdong/common/utils/FileService;->getDirectoryByJsonSize(Ljava/lang/String;)Lcom/jingdong/common/utils/FileService$Directory;
    invoke-static {v0}, Lcom/jingdong/common/utils/FileService;->access$0(Ljava/lang/String;)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    .line 1251
    :goto_0
    return-object v0

    .line 1246
    :cond_0
    iget v0, p0, Lcom/jingdong/common/utils/FileService$DirectoryController;->dirType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1247
    iget-object v0, p0, Lcom/jingdong/common/utils/FileService$DirectoryController;->childDirName:Ljava/lang/String;

    #calls: Lcom/jingdong/common/utils/FileService;->getDirectoryByImageSize(Ljava/lang/String;)Lcom/jingdong/common/utils/FileService$Directory;
    invoke-static {v0}, Lcom/jingdong/common/utils/FileService;->access$1(Ljava/lang/String;)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    goto :goto_0

    .line 1248
    :cond_1
    iget v0, p0, Lcom/jingdong/common/utils/FileService$DirectoryController;->dirType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1249
    iget-object v0, p0, Lcom/jingdong/common/utils/FileService$DirectoryController;->childDirName:Ljava/lang/String;

    #calls: Lcom/jingdong/common/utils/FileService;->getDirectoryByJsonSizeSD(Ljava/lang/String;)Lcom/jingdong/common/utils/FileService$Directory;
    invoke-static {v0}, Lcom/jingdong/common/utils/FileService;->access$2(Ljava/lang/String;)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    goto :goto_0

    .line 1251
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupStorageState()Lcom/jingdong/common/utils/FileService$Directory;
    .locals 2

    .prologue
    .line 1260
    invoke-direct {p0}, Lcom/jingdong/common/utils/FileService$DirectoryController;->createDirectory()Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    .line 1261
    .local v0, directory:Lcom/jingdong/common/utils/FileService$Directory;
    if-nez v0, :cond_0

    .line 1265
    const/4 v1, -0x1

    iput v1, p0, Lcom/jingdong/common/utils/FileService$DirectoryController;->dirState:I

    .line 1267
    const/4 v1, 0x0

    .line 1275
    :goto_0
    return-object v1

    .line 1272
    :cond_0
    iput-object v0, p0, Lcom/jingdong/common/utils/FileService$DirectoryController;->dir:Lcom/jingdong/common/utils/FileService$Directory;

    .line 1273
    invoke-virtual {v0}, Lcom/jingdong/common/utils/FileService$Directory;->getSpace()I

    move-result v1

    iput v1, p0, Lcom/jingdong/common/utils/FileService$DirectoryController;->dirState:I

    .line 1274
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jingdong/common/utils/FileService$DirectoryController;->isNeedReSetupStorageState:Z

    .line 1275
    iget-object v1, p0, Lcom/jingdong/common/utils/FileService$DirectoryController;->dir:Lcom/jingdong/common/utils/FileService$Directory;

    goto :goto_0
.end method


# virtual methods
.method public getDirectory()Lcom/jingdong/common/utils/FileService$Directory;
    .locals 1

    .prologue
    .line 1284
    iget-boolean v0, p0, Lcom/jingdong/common/utils/FileService$DirectoryController;->isNeedReSetupStorageState:Z

    if-eqz v0, :cond_0

    .line 1285
    invoke-direct {p0}, Lcom/jingdong/common/utils/FileService$DirectoryController;->setupStorageState()Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    .line 1291
    :goto_0
    return-object v0

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/FileService$DirectoryController;->dir:Lcom/jingdong/common/utils/FileService$Directory;

    if-eqz v0, :cond_1

    .line 1288
    iget-object v0, p0, Lcom/jingdong/common/utils/FileService$DirectoryController;->dir:Lcom/jingdong/common/utils/FileService$Directory;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/FileService$Directory;->checkExists()V

    .line 1289
    iget-object v0, p0, Lcom/jingdong/common/utils/FileService$DirectoryController;->dir:Lcom/jingdong/common/utils/FileService$Directory;

    goto :goto_0

    .line 1291
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needReSetupStorageState()V
    .locals 1

    .prologue
    .line 1235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/FileService$DirectoryController;->isNeedReSetupStorageState:Z

    .line 1236
    return-void
.end method
