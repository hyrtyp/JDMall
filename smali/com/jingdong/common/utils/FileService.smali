.class public Lcom/jingdong/common/utils/FileService;
.super Ljava/lang/Object;
.source "FileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/FileService$DeleteOverImageThread;,
        Lcom/jingdong/common/utils/FileService$Directory;,
        Lcom/jingdong/common/utils/FileService$DirectoryController;,
        Lcom/jingdong/common/utils/FileService$FileSorter;
    }
.end annotation


# static fields
.field public static final CACHE_EXT_NAME_IMAGE:Ljava/lang/String; = ".image"

.field public static final CACHE_EXT_NAME_JSON:Ljava/lang/String; = ".json"

.field private static final CAMERA_CHILD_DIR:Ljava/lang/String; = "/camera"

.field public static final CAMERA_DIR:I = 0x3

.field private static final CAMERA_SIZE_THRESHOLD:J = 0x1000000L

.field private static final ERROR:I = -0x1

.field private static final FILE_MODE_WORLD_ACCESS:Ljava/lang/String; = "755"

.field private static final FILE_MODE_WORLD_READABLE:Ljava/lang/String; = "644"

.field private static final FILE_MODE_WORLD_WRITEABLE:Ljava/lang/String; = "622"

.field private static final IMAGE_CHILD_DIR:Ljava/lang/String; = "/image"

.field public static final IMAGE_DIR:I = 0x1

.field public static final INTERNAL_TYPE_CACHE:I = 0x2

.field public static final INTERNAL_TYPE_FILE:I = 0x1

.field private static final JSON_CHILD_DIR:Ljava/lang/String; = "/json"

.field public static final JSON_DIR:I = 0x2

.field public static final JSON_DIR_SD:I = 0x5

.field private static final MAX_IMAGE_SAVE_NUM:I = 0x1000

.field private static final PERSIST_CHILD_DIR:Ljava/lang/String; = "/persist"

.field public static final PERSIST_DIR:I = 0x4

.field private static final PERSIST_FILE_SIZE:J = 0x800000L

.field private static final SHARE_IMAGE_NAME:Ljava/lang/String; = "shareimage.jpg"

.field public static final SYSTEM_OPERATOR:Ljava/lang/String; = "/"

.field private static final TAG:Ljava/lang/String; = "FileService"

.field private static final THRESHOLD_IMAGE_CLEAR_SIZE:J = 0x3200000L

.field private static final THRESHOLD_IMAGE_SIZE:J = 0x800000L

.field private static final THRESHOLD_JSON_SIZE:J = 0x100000L

.field private static final UN_KNOW:I = -0x14

.field private static final aplcationDir:Ljava/lang/String; = "/jingdong"

.field private static deleteOverImageThread:Lcom/jingdong/common/utils/FileService$DeleteOverImageThread;

.field private static imageDirCtrl:Lcom/jingdong/common/utils/FileService$DirectoryController;

.field private static jsonDirCtrl:Lcom/jingdong/common/utils/FileService$DirectoryController;

.field private static jsonSDDirCtrl:Lcom/jingdong/common/utils/FileService$DirectoryController;

.field private static phoneMemoryImageCacheNum:I

.field private static sdCardImageCacheNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, -0x14

    .line 54
    sput v0, Lcom/jingdong/common/utils/FileService;->sdCardImageCacheNum:I

    .line 59
    sput v0, Lcom/jingdong/common/utils/FileService;->phoneMemoryImageCacheNum:I

    .line 78
    new-instance v0, Lcom/jingdong/common/utils/FileService$DirectoryController;

    const/4 v1, 0x2

    const-string v2, "/json"

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/utils/FileService$DirectoryController;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/jingdong/common/utils/FileService;->jsonDirCtrl:Lcom/jingdong/common/utils/FileService$DirectoryController;

    .line 79
    new-instance v0, Lcom/jingdong/common/utils/FileService$DirectoryController;

    const/4 v1, 0x5

    const-string v2, "/json"

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/utils/FileService$DirectoryController;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/jingdong/common/utils/FileService;->jsonSDDirCtrl:Lcom/jingdong/common/utils/FileService$DirectoryController;

    .line 80
    new-instance v0, Lcom/jingdong/common/utils/FileService$DirectoryController;

    const/4 v1, 0x1

    const-string v2, "/image"

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/utils/FileService$DirectoryController;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/jingdong/common/utils/FileService;->imageDirCtrl:Lcom/jingdong/common/utils/FileService$DirectoryController;

    .line 811
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)Lcom/jingdong/common/utils/FileService$Directory;
    .locals 1
    .parameter

    .prologue
    .line 274
    invoke-static {p0}, Lcom/jingdong/common/utils/FileService;->getDirectoryByJsonSize(Ljava/lang/String;)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/String;)Lcom/jingdong/common/utils/FileService$Directory;
    .locals 1
    .parameter

    .prologue
    .line 322
    invoke-static {p0}, Lcom/jingdong/common/utils/FileService;->getDirectoryByImageSize(Ljava/lang/String;)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/String;)Lcom/jingdong/common/utils/FileService$Directory;
    .locals 1
    .parameter

    .prologue
    .line 298
    invoke-static {p0}, Lcom/jingdong/common/utils/FileService;->getDirectoryByJsonSizeSD(Ljava/lang/String;)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Ljava/io/File;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    invoke-static {p0}, Lcom/jingdong/common/utils/FileService;->deleteOverImageWithDir(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$4(I)V
    .locals 0
    .parameter

    .prologue
    .line 649
    invoke-static {p0}, Lcom/jingdong/common/utils/FileService;->resetPhoneMemoryImageNum(I)V

    return-void
.end method

.method static synthetic access$5(I)V
    .locals 0
    .parameter

    .prologue
    .line 640
    invoke-static {p0}, Lcom/jingdong/common/utils/FileService;->resetSdcardImageNum(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/common/utils/FileService$DeleteOverImageThread;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    sput-object p0, Lcom/jingdong/common/utils/FileService;->deleteOverImageThread:Lcom/jingdong/common/utils/FileService$DeleteOverImageThread;

    return-void
.end method

.method private static chModFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .parameter "mode"
    .parameter "file"

    .prologue
    .line 1307
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1314
    :goto_0
    return-void

    .line 1308
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static clearAllCacheImages()V
    .locals 4

    .prologue
    const/16 v3, -0x14

    .line 1101
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->externalMemoryAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1103
    new-instance v0, Lcom/jingdong/common/utils/FileService$Directory;

    const-string v1, "/image"

    invoke-static {v1}, Lcom/jingdong/common/utils/FileService;->getExternalDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/utils/FileService$Directory;-><init>(Ljava/io/File;I)V

    .line 1104
    .local v0, imageDir:Lcom/jingdong/common/utils/FileService$Directory;
    invoke-static {v0}, Lcom/jingdong/common/utils/FileService;->deleteAllFilseForDirectory(Lcom/jingdong/common/utils/FileService$Directory;)V

    .line 1106
    invoke-static {v3}, Lcom/jingdong/common/utils/FileService;->resetSdcardImageNum(I)V

    .line 1110
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/FileService$Directory;

    .end local v0           #imageDir:Lcom/jingdong/common/utils/FileService$Directory;
    const-string v1, "/image"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/FileService;->getInternalDirectory(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/utils/FileService$Directory;-><init>(Ljava/io/File;I)V

    .line 1111
    .restart local v0       #imageDir:Lcom/jingdong/common/utils/FileService$Directory;
    invoke-static {v0}, Lcom/jingdong/common/utils/FileService;->deleteAllFilseForDirectory(Lcom/jingdong/common/utils/FileService$Directory;)V

    .line 1113
    invoke-static {v3}, Lcom/jingdong/common/utils/FileService;->resetPhoneMemoryImageNum(I)V

    .line 1114
    return-void
.end method

.method public static clearCacheFiles()V
    .locals 9

    .prologue
    const/16 v8, -0x14

    .line 1049
    invoke-static {}, Lcom/jingdong/common/database/table/CacheFileTable;->getListByClean()Ljava/util/ArrayList;

    move-result-object v4

    .line 1050
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CacheFile;>;"
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->externalMemoryAvailable()Z

    move-result v2

    .line 1051
    .local v2, externalMemoryAvailable:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v3, v6, :cond_0

    .line 1076
    invoke-static {v8}, Lcom/jingdong/common/utils/FileService;->resetPhoneMemoryImageNum(I)V

    .line 1077
    invoke-static {v8}, Lcom/jingdong/common/utils/FileService;->resetSdcardImageNum(I)V

    .line 1079
    return-void

    .line 1052
    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/CacheFile;

    .line 1054
    .local v0, cacheFile:Lcom/jingdong/common/entity/CacheFile;
    if-nez v0, :cond_2

    .line 1051
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1058
    :cond_2
    invoke-virtual {v0}, Lcom/jingdong/common/entity/CacheFile;->getDirectory()Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v1

    .line 1060
    .local v1, directory:Lcom/jingdong/common/utils/FileService$Directory;
    if-eqz v1, :cond_1

    .line 1064
    invoke-virtual {v1}, Lcom/jingdong/common/utils/FileService$Directory;->getSpace()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    .line 1065
    invoke-virtual {v1}, Lcom/jingdong/common/utils/FileService$Directory;->getSpace()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    if-eqz v2, :cond_1

    .line 1066
    :cond_3
    invoke-virtual {v0}, Lcom/jingdong/common/entity/CacheFile;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v5

    .line 1070
    .local v5, result:Z
    if-eqz v5, :cond_1

    .line 1071
    invoke-static {v0}, Lcom/jingdong/common/database/table/CacheFileTable;->delete(Lcom/jingdong/common/entity/CacheFile;)V

    goto :goto_1
.end method

.method public static clearInternalCacheImages()V
    .locals 5

    .prologue
    .line 1085
    sget-object v1, Lcom/jingdong/common/utils/FileService;->imageDirCtrl:Lcom/jingdong/common/utils/FileService$DirectoryController;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/FileService$DirectoryController;->getDirectory()Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    .line 1086
    .local v0, imageDir:Lcom/jingdong/common/utils/FileService$Directory;
    if-eqz v0, :cond_0

    .line 1087
    invoke-virtual {v0}, Lcom/jingdong/common/utils/FileService$Directory;->getSpace()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1088
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->getAvailableInternalMemorySize()J

    move-result-wide v1

    const-wide/32 v3, 0x3200000

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 1090
    invoke-static {v0}, Lcom/jingdong/common/utils/FileService;->deleteAllFilseForDirectory(Lcom/jingdong/common/utils/FileService$Directory;)V

    .line 1092
    const/16 v1, -0x14

    invoke-static {v1}, Lcom/jingdong/common/utils/FileService;->resetPhoneMemoryImageNum(I)V

    .line 1094
    :cond_0
    return-void
.end method

.method private static deleteAllFilseForDirectory(Lcom/jingdong/common/utils/FileService$Directory;)V
    .locals 7
    .parameter "directory"

    .prologue
    .line 1123
    if-nez p0, :cond_1

    .line 1145
    :cond_0
    return-void

    .line 1127
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/FileService$Directory;->getDir()Ljava/io/File;

    move-result-object v0

    .line 1129
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1133
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 1135
    .local v3, names:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1139
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    .line 1140
    .local v2, name:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1141
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1142
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1139
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static deleteOverImageWithDir(Ljava/io/File;)V
    .locals 7
    .parameter "imageDir"

    .prologue
    .line 499
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 540
    :cond_0
    return-void

    .line 503
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 505
    .local v0, files:[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 509
    array-length v2, v0

    .line 511
    .local v2, length:I
    const/4 v5, 0x1

    if-lt v2, v5, :cond_0

    .line 515
    new-instance v5, Lcom/jingdong/common/utils/FileService$FileSorter;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/jingdong/common/utils/FileService$FileSorter;-><init>(Lcom/jingdong/common/utils/FileService$FileSorter;)V

    invoke-static {v0, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 517
    add-int/lit16 v3, v2, -0x800

    .line 523
    .local v3, needDeleteNum:I
    if-ltz v3, :cond_0

    .line 528
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    if-gt v1, v2, :cond_0

    .line 530
    aget-object v4, v0, v1

    .line 532
    .local v4, temp:Ljava/io/File;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 536
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 528
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static externalMemoryAvailable()Z
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static formatSize(J)Ljava/lang/String;
    .locals 6
    .parameter "size"

    .prologue
    const-wide/16 v4, 0x400

    .line 958
    const/4 v2, 0x0

    .line 960
    .local v2, suffix:Ljava/lang/String;
    cmp-long v3, p0, v4

    if-ltz v3, :cond_0

    .line 962
    const-string v2, "KiB"

    .line 964
    div-long/2addr p0, v4

    .line 966
    cmp-long v3, p0, v4

    if-ltz v3, :cond_0

    .line 968
    const-string v2, "MiB"

    .line 970
    div-long/2addr p0, v4

    .line 976
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 978
    .local v1, resultBuffer:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x3

    .line 980
    .local v0, commaOffset:I
    :goto_0
    if-gtz v0, :cond_2

    .line 988
    if-eqz v2, :cond_1

    .line 990
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 982
    :cond_2
    const/16 v3, 0x2c

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 984
    add-int/lit8 v0, v0, -0x3

    goto :goto_0
.end method

.method public static formatSize2(J)Ljava/lang/String;
    .locals 8
    .parameter "size"

    .prologue
    .line 1011
    const/4 v4, 0x0

    .line 1013
    .local v4, suffix:Ljava/lang/String;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->floatValue()F

    move-result v3

    .line 1015
    .local v3, sizeF:F
    const/high16 v5, 0x4480

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_0

    .line 1017
    const-string v4, "MB"

    .line 1019
    const/high16 v5, 0x4980

    div-float/2addr v3, v5

    .line 1023
    :cond_0
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "0.00"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 1025
    .local v1, format:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v2, resultBuffer:Ljava/lang/StringBuilder;
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v0, v5, -0x3

    .line 1029
    .local v0, commaOffset:I
    :goto_0
    if-gtz v0, :cond_2

    .line 1037
    if-eqz v4, :cond_1

    .line 1039
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1031
    :cond_2
    const/16 v5, 0x2c

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1033
    add-int/lit8 v0, v0, -0x3

    goto :goto_0
.end method

.method public static getAvailableExternalMemorySize()J
    .locals 8

    .prologue
    .line 885
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->externalMemoryAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 887
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 889
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 891
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 893
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 895
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    .line 899
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
    .line 827
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 829
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 831
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 833
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 835
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method private static getCameraDirectory()Lcom/jingdong/common/utils/FileService$Directory;
    .locals 4

    .prologue
    .line 381
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->getTotalExternalMemorySize()J

    move-result-wide v0

    const-wide/32 v2, 0x1000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 382
    new-instance v0, Lcom/jingdong/common/utils/FileService$Directory;

    const-string v1, "/camera"

    invoke-static {v1}, Lcom/jingdong/common/utils/FileService;->getExternalDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/utils/FileService$Directory;-><init>(Ljava/io/File;I)V

    .line 384
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDirectory(I)Lcom/jingdong/common/utils/FileService$Directory;
    .locals 1
    .parameter "dir"

    .prologue
    .line 358
    packed-switch p0, :pswitch_data_0

    .line 370
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 360
    :pswitch_0
    sget-object v0, Lcom/jingdong/common/utils/FileService;->jsonDirCtrl:Lcom/jingdong/common/utils/FileService$DirectoryController;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/FileService$DirectoryController;->getDirectory()Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    goto :goto_0

    .line 362
    :pswitch_1
    sget-object v0, Lcom/jingdong/common/utils/FileService;->imageDirCtrl:Lcom/jingdong/common/utils/FileService$DirectoryController;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/FileService$DirectoryController;->getDirectory()Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    goto :goto_0

    .line 364
    :pswitch_2
    sget-object v0, Lcom/jingdong/common/utils/FileService;->jsonSDDirCtrl:Lcom/jingdong/common/utils/FileService$DirectoryController;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/FileService$DirectoryController;->getDirectory()Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    goto :goto_0

    .line 366
    :pswitch_3
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->getCameraDirectory()Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    goto :goto_0

    .line 368
    :pswitch_4
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->getPersistDirectory()Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private static getDirectoryByImageSize(Ljava/lang/String;)Lcom/jingdong/common/utils/FileService$Directory;
    .locals 4
    .parameter "childDirName"

    .prologue
    .line 326
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->externalMemoryAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    new-instance v0, Lcom/jingdong/common/utils/FileService$Directory;

    invoke-static {p0}, Lcom/jingdong/common/utils/FileService;->getExternalDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/utils/FileService$Directory;-><init>(Ljava/io/File;I)V

    .line 337
    :goto_0
    return-object v0

    .line 331
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->getAvailableInternalMemorySize()J

    move-result-wide v0

    const-wide/32 v2, 0x800000

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 335
    new-instance v0, Lcom/jingdong/common/utils/FileService$Directory;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/jingdong/common/utils/FileService;->getInternalDirectory(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/utils/FileService$Directory;-><init>(Ljava/io/File;I)V

    goto :goto_0

    .line 337
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDirectoryByJsonSize(Ljava/lang/String;)Lcom/jingdong/common/utils/FileService$Directory;
    .locals 4
    .parameter "childDirName"

    .prologue
    const-wide/32 v2, 0x100000

    .line 278
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->getAvailableInternalMemorySize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 283
    new-instance v0, Lcom/jingdong/common/utils/FileService$Directory;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/jingdong/common/utils/FileService;->getInternalDirectory(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/utils/FileService$Directory;-><init>(Ljava/io/File;I)V

    .line 292
    :goto_0
    return-object v0

    .line 284
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->getAvailableExternalMemorySize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 290
    new-instance v0, Lcom/jingdong/common/utils/FileService$Directory;

    invoke-static {p0}, Lcom/jingdong/common/utils/FileService;->getExternalDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/utils/FileService$Directory;-><init>(Ljava/io/File;I)V

    goto :goto_0

    .line 292
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDirectoryByJsonSizeSD(Ljava/lang/String;)Lcom/jingdong/common/utils/FileService$Directory;
    .locals 4
    .parameter "childDirName"

    .prologue
    const-wide/32 v2, 0x100000

    .line 302
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->getAvailableExternalMemorySize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 308
    new-instance v0, Lcom/jingdong/common/utils/FileService$Directory;

    invoke-static {p0}, Lcom/jingdong/common/utils/FileService;->getExternalDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/utils/FileService$Directory;-><init>(Ljava/io/File;I)V

    .line 316
    :goto_0
    return-object v0

    .line 309
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->getAvailableInternalMemorySize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 314
    new-instance v0, Lcom/jingdong/common/utils/FileService$Directory;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/jingdong/common/utils/FileService;->getInternalDirectory(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/utils/FileService$Directory;-><init>(Ljava/io/File;I)V

    goto :goto_0

    .line 316
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDirectoryByPersistFileSize(Ljava/lang/String;)Lcom/jingdong/common/utils/FileService$Directory;
    .locals 4
    .parameter "childDirName"

    .prologue
    .line 341
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->getAvailableInternalMemorySize()J

    move-result-wide v0

    const-wide/32 v2, 0x800000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 346
    new-instance v0, Lcom/jingdong/common/utils/FileService$Directory;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/jingdong/common/utils/FileService;->getInternalDirectory(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/utils/FileService$Directory;-><init>(Ljava/io/File;I)V

    .line 348
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getExternalDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "childDirName"

    .prologue
    .line 196
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/jingdong"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .end local p0
    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 200
    :cond_0
    return-object v0

    .line 196
    .end local v0           #dir:Ljava/io/File;
    .restart local p0
    :cond_1
    const-string p0, ""

    goto :goto_0
.end method

.method public static getFileAbsolutePath(Lcom/jingdong/common/utils/FileGuider;)Ljava/lang/String;
    .locals 2
    .parameter "fileGuider"

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/MyApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jingdong/common/utils/FileGuider;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalDirectory(Ljava/lang/String;IZ)Ljava/io/File;
    .locals 5
    .parameter "childDirName"
    .parameter "internalType"
    .parameter "isWorldAccess"

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 223
    .local v1, typeDir:Ljava/io/File;
    packed-switch p1, :pswitch_data_0

    .line 235
    :goto_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/jingdong"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    .end local p0
    :goto_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 240
    :cond_0
    if-eqz p2, :cond_1

    .line 241
    const-string v2, "755"

    new-instance v3, Ljava/io/File;

    const-string v4, "/jingdong"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/jingdong/common/utils/FileService;->chModFile(Ljava/lang/String;Ljava/io/File;)V

    .line 242
    const-string v2, "755"

    invoke-static {v2, v0}, Lcom/jingdong/common/utils/FileService;->chModFile(Ljava/lang/String;Ljava/io/File;)V

    .line 252
    :cond_1
    return-object v0

    .line 226
    .end local v0           #dir:Ljava/io/File;
    .restart local p0
    :pswitch_0
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/MyApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 227
    goto :goto_0

    .line 230
    :pswitch_1
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/MyApplication;->getCacheDir()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    .line 235
    :cond_2
    const-string p0, ""

    goto :goto_1

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInternalDirectory(Ljava/lang/String;Z)Ljava/io/File;
    .locals 1
    .parameter "childDirName"
    .parameter "isWorldAccess"

    .prologue
    .line 268
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lcom/jingdong/common/utils/FileService;->getInternalDirectory(Ljava/lang/String;IZ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getPersistDirectory()Lcom/jingdong/common/utils/FileService$Directory;
    .locals 2

    .prologue
    .line 394
    const-string v1, "/persist"

    invoke-static {v1}, Lcom/jingdong/common/utils/FileService;->getDirectoryByPersistFileSize(Ljava/lang/String;)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v0

    .line 395
    .local v0, directory:Lcom/jingdong/common/utils/FileService$Directory;
    return-object v0
.end method

.method private static getSubFilesNum(Ljava/io/File;)I
    .locals 2
    .parameter "dir"

    .prologue
    .line 446
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, names:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 449
    array-length v1, v0

    .line 452
    .end local v0           #names:[Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x14

    goto :goto_0
.end method

.method public static getTotalExternalMemorySize()J
    .locals 9

    .prologue
    .line 919
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->externalMemoryAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 921
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 923
    .local v2, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 925
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v0, v8

    .line 927
    .local v0, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v6, v8

    .line 929
    .local v6, totalBlocks:J
    mul-long v3, v6, v0

    .line 938
    .local v3, result:J
    :goto_0
    return-wide v3

    .end local v0           #blockSize:J
    .end local v2           #path:Ljava/io/File;
    .end local v3           #result:J
    .end local v5           #stat:Landroid/os/StatFs;
    .end local v6           #totalBlocks:J
    :cond_0
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public static getTotalInternalMemorySize()J
    .locals 9

    .prologue
    .line 853
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 855
    .local v2, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 857
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v0, v8

    .line 859
    .local v0, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v6, v8

    .line 861
    .local v6, totalBlocks:J
    mul-long v3, v6, v0

    .line 867
    .local v3, result:J
    return-wide v3
.end method

.method private static declared-synchronized incrementImageNum(Lcom/jingdong/common/utils/FileService$Directory;)V
    .locals 4
    .parameter "directory"

    .prologue
    const/16 v3, -0x14

    .line 607
    const-class v2, Lcom/jingdong/common/utils/FileService;

    monitor-enter v2

    if-nez p0, :cond_1

    .line 633
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 611
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/FileService$Directory;->getDir()Ljava/io/File;

    move-result-object v0

    .line 613
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    #getter for: Lcom/jingdong/common/utils/FileService$Directory;->space:I
    invoke-static {p0}, Lcom/jingdong/common/utils/FileService$Directory;->access$0(Lcom/jingdong/common/utils/FileService$Directory;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 619
    :pswitch_0
    sget v1, Lcom/jingdong/common/utils/FileService;->phoneMemoryImageCacheNum:I

    if-ne v1, v3, :cond_2

    .line 620
    invoke-static {v0}, Lcom/jingdong/common/utils/FileService;->getSubFilesNum(Ljava/io/File;)I

    move-result v1

    sput v1, Lcom/jingdong/common/utils/FileService;->phoneMemoryImageCacheNum:I

    .line 622
    :cond_2
    sget v1, Lcom/jingdong/common/utils/FileService;->phoneMemoryImageCacheNum:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/jingdong/common/utils/FileService;->phoneMemoryImageCacheNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 607
    .end local v0           #dir:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 626
    .restart local v0       #dir:Ljava/io/File;
    :pswitch_1
    :try_start_1
    sget v1, Lcom/jingdong/common/utils/FileService;->sdCardImageCacheNum:I

    if-ne v1, v3, :cond_3

    .line 627
    invoke-static {v0}, Lcom/jingdong/common/utils/FileService;->getSubFilesNum(Ljava/io/File;)I

    move-result v1

    sput v1, Lcom/jingdong/common/utils/FileService;->sdCardImageCacheNum:I

    .line 629
    :cond_3
    sget v1, Lcom/jingdong/common/utils/FileService;->sdCardImageCacheNum:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/jingdong/common/utils/FileService;->sdCardImageCacheNum:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 617
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isReady()Z
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->externalMemoryAvailable()Z

    move-result v0

    return v0
.end method

.method public static needReSetupStorageState()V
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/jingdong/common/utils/FileService;->jsonDirCtrl:Lcom/jingdong/common/utils/FileService$DirectoryController;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/FileService$DirectoryController;->needReSetupStorageState()V

    .line 100
    sget-object v0, Lcom/jingdong/common/utils/FileService;->imageDirCtrl:Lcom/jingdong/common/utils/FileService$DirectoryController;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/FileService$DirectoryController;->needReSetupStorageState()V

    .line 101
    sget-object v0, Lcom/jingdong/common/utils/FileService;->jsonSDDirCtrl:Lcom/jingdong/common/utils/FileService$DirectoryController;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/FileService$DirectoryController;->needReSetupStorageState()V

    .line 102
    return-void
.end method

.method public static openFileOutput(Lcom/jingdong/common/utils/FileGuider;)Ljava/io/FileOutputStream;
    .locals 12
    .parameter "fileGuider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 129
    invoke-virtual {p0}, Lcom/jingdong/common/utils/FileGuider;->getAvailableSize()J

    move-result-wide v0

    .line 130
    .local v0, availableSize:J
    const-wide/16 v8, 0x0

    cmp-long v8, v8, v0

    if-eqz v8, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/jingdong/common/utils/FileGuider;->getSpace()I

    move-result v8

    if-ne v10, v8, :cond_1

    .line 132
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->getAvailableInternalMemorySize()J

    move-result-wide v8

    cmp-long v8, v8, v0

    if-gez v8, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-object v7

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/FileGuider;->getSpace()I

    move-result v8

    if-ne v11, v8, :cond_2

    .line 135
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->getAvailableExternalMemorySize()J

    move-result-wide v8

    cmp-long v8, v8, v0

    if-ltz v8, :cond_0

    .line 140
    :cond_2
    invoke-static {}, Lcom/jingdong/common/plug/MergeSwitcher;->isPlugOn()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 141
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/common/MyApplication;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, filePath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jingdong/common/utils/FileGuider;->getChildDirName()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, childDirName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 144
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 147
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v4, fileDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 150
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 153
    :cond_4
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/jingdong/common/utils/FileGuider;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    .local v3, file:Ljava/io/File;
    invoke-virtual {p0}, Lcom/jingdong/common/utils/FileGuider;->getMode()I

    move-result v6

    .line 157
    .local v6, mode:I
    if-ne v6, v10, :cond_6

    .line 158
    const-string v7, "644"

    invoke-static {v7, v3}, Lcom/jingdong/common/utils/FileService;->chModFile(Ljava/lang/String;Ljava/io/File;)V

    .line 163
    :cond_5
    :goto_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 159
    :cond_6
    if-ne v6, v11, :cond_5

    .line 160
    const-string v7, "622"

    invoke-static {v7, v3}, Lcom/jingdong/common/utils/FileService;->chModFile(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_1

    .line 165
    .end local v2           #childDirName:Ljava/lang/String;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fileDir:Ljava/io/File;
    .end local v5           #filePath:Ljava/lang/String;
    .end local v6           #mode:I
    :cond_7
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v7

    invoke-virtual {p0}, Lcom/jingdong/common/utils/FileGuider;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/jingdong/common/utils/FileGuider;->getMode()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/jingdong/common/MyApplication;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    goto/16 :goto_0
.end method

.method private static declared-synchronized resetPhoneMemoryImageNum(I)V
    .locals 2
    .parameter "resetNum"

    .prologue
    .line 650
    const-class v0, Lcom/jingdong/common/utils/FileService;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/jingdong/common/utils/FileService;->phoneMemoryImageCacheNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    monitor-exit v0

    return-void

    .line 650
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized resetSdcardImageNum(I)V
    .locals 2
    .parameter "resetNum"

    .prologue
    .line 641
    const-class v0, Lcom/jingdong/common/utils/FileService;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/jingdong/common/utils/FileService;->sdCardImageCacheNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    monitor-exit v0

    return-void

    .line 641
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static saveShareImage(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .parameter "imageFile"

    .prologue
    const/4 v6, 0x1

    .line 1323
    const/4 v3, 0x0

    .line 1324
    .local v3, result:Ljava/lang/String;
    new-instance v4, Lcom/jingdong/common/utils/FileGuider;

    invoke-direct {v4}, Lcom/jingdong/common/utils/FileGuider;-><init>()V

    .line 1325
    .local v4, savePath:Lcom/jingdong/common/utils/FileGuider;
    invoke-virtual {v4, v6}, Lcom/jingdong/common/utils/FileGuider;->setSpace(I)V

    .line 1326
    invoke-virtual {v4, v6}, Lcom/jingdong/common/utils/FileGuider;->setImmutable(Z)V

    .line 1327
    const-string v5, "shareimage.jpg"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/FileGuider;->setFileName(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {v4, v6}, Lcom/jingdong/common/utils/FileGuider;->setMode(I)V

    .line 1330
    const/4 v2, 0x0

    .line 1331
    .local v2, fileOutputStream:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 1333
    .local v0, fileInputStream:Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {v4}, Lcom/jingdong/common/utils/FileService;->openFileOutput(Lcom/jingdong/common/utils/FileGuider;)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1334
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1337
    .end local v0           #fileInputStream:Ljava/io/FileInputStream;
    .local v1, fileInputStream:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    :try_start_1
    new-instance v6, Lcom/jingdong/common/utils/FileService$1;

    invoke-direct {v6}, Lcom/jingdong/common/utils/FileService$1;-><init>()V

    invoke-static {v1, v2, v5, v6}, Lcom/jingdong/common/utils/IOUtil;->readAsFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;Lcom/jingdong/common/utils/IOUtil$ProgressListener;Lcom/jingdong/common/utils/HttpGroup$StopController;)V

    .line 1349
    invoke-static {v4}, Lcom/jingdong/common/utils/FileService;->getFileAbsolutePath(Lcom/jingdong/common/utils/FileGuider;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v0, v1

    .line 1356
    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v0       #fileInputStream:Ljava/io/FileInputStream;
    :goto_0
    return-object v3

    .line 1350
    :catch_0
    move-exception v5

    goto :goto_0

    .end local v0           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #fileInputStream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v5

    move-object v0, v1

    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v0       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public static saveToSDCard(Lcom/jingdong/common/utils/FileService$Directory;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "directory"
    .parameter "fileName"
    .parameter "content"

    .prologue
    .line 416
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/jingdong/common/utils/FileService;->saveToSDCard(Lcom/jingdong/common/utils/FileService$Directory;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static saveToSDCard(Lcom/jingdong/common/utils/FileService$Directory;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "directory"
    .parameter "fileName"
    .parameter "content"
    .parameter "mode"

    .prologue
    .line 423
    if-nez p2, :cond_0

    .line 424
    const/4 v0, 0x0

    .line 426
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/jingdong/common/utils/FileService;->saveToSDCard(Lcom/jingdong/common/utils/FileService$Directory;Ljava/lang/String;[BI)Z

    move-result v0

    goto :goto_0
.end method

.method public static saveToSDCard(Lcom/jingdong/common/utils/FileService$Directory;Ljava/lang/String;[B)Z
    .locals 1
    .parameter "directory"
    .parameter "fileName"
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 433
    if-nez p2, :cond_0

    .line 436
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2, v0}, Lcom/jingdong/common/utils/FileService;->saveToSDCard(Lcom/jingdong/common/utils/FileService$Directory;Ljava/lang/String;[BI)Z

    move-result v0

    goto :goto_0
.end method

.method public static saveToSDCard(Lcom/jingdong/common/utils/FileService$Directory;Ljava/lang/String;[BI)Z
    .locals 8
    .parameter "directory"
    .parameter "fileName"
    .parameter "data"
    .parameter "mode"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 659
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v5, v6

    .line 691
    :cond_1
    :goto_0
    return v5

    .line 663
    :cond_2
    invoke-virtual {p0}, Lcom/jingdong/common/utils/FileService$Directory;->getDir()Ljava/io/File;

    move-result-object v0

    .line 665
    .local v0, dir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 666
    .local v2, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 669
    .local v3, outStream:Ljava/io/FileOutputStream;
    if-ne p3, v5, :cond_5

    .line 670
    const-string v7, "644"

    invoke-static {v7, v2}, Lcom/jingdong/common/utils/FileService;->chModFile(Ljava/lang/String;Ljava/io/File;)V

    .line 676
    :cond_3
    :goto_1
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 677
    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .local v4, outStream:Ljava/io/FileOutputStream;
    if-eqz v4, :cond_4

    .line 678
    :try_start_1
    invoke-virtual {v4, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 684
    :cond_4
    if-eqz v4, :cond_1

    .line 686
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 687
    :catch_0
    move-exception v6

    goto :goto_0

    .line 671
    .end local v4           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #outStream:Ljava/io/FileOutputStream;
    :cond_5
    const/4 v7, 0x2

    if-ne p3, v7, :cond_3

    .line 672
    const-string v7, "622"

    invoke-static {v7, v2}, Lcom/jingdong/common/utils/FileService;->chModFile(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_1

    .line 680
    :catch_1
    move-exception v1

    .line 681
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 684
    if-eqz v3, :cond_6

    .line 686
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    :goto_3
    move v5, v6

    .line 682
    goto :goto_0

    .line 683
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 684
    :goto_4
    if-eqz v3, :cond_7

    .line 686
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 690
    :cond_7
    :goto_5
    throw v5

    .line 687
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_3

    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v6

    goto :goto_5

    .line 683
    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v4       #outStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #outStream:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 680
    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v4       #outStream:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #outStream:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static saveToSDCardWithType(Lcom/jingdong/common/utils/FileService$Directory;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "directory"
    .parameter "fileName"
    .parameter "content"
    .parameter "type"

    .prologue
    .line 552
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    const/4 v0, 0x0

    .line 555
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/jingdong/common/utils/FileService;->saveToSDCardWithType(Lcom/jingdong/common/utils/FileService$Directory;Ljava/lang/String;[BI)Z

    move-result v0

    goto :goto_0
.end method

.method public static saveToSDCardWithType(Lcom/jingdong/common/utils/FileService$Directory;Ljava/lang/String;[BI)Z
    .locals 3
    .parameter "directory"
    .parameter "fileName"
    .parameter "data"
    .parameter "type"

    .prologue
    .line 568
    if-eqz p2, :cond_0

    array-length v1, p2

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_2

    .line 569
    :cond_0
    const/4 v0, 0x0

    .line 596
    :cond_1
    :goto_0
    return v0

    .line 577
    :cond_2
    packed-switch p3, :pswitch_data_0

    .line 586
    :goto_1
    invoke-static {p0, p1, p2}, Lcom/jingdong/common/utils/FileService;->saveToSDCard(Lcom/jingdong/common/utils/FileService$Directory;Ljava/lang/String;[B)Z

    move-result v0

    .line 592
    .local v0, result:Z
    if-eqz v0, :cond_1

    add-int/lit8 v1, p3, -0x1

    if-nez v1, :cond_1

    .line 593
    invoke-static {p0}, Lcom/jingdong/common/utils/FileService;->incrementImageNum(Lcom/jingdong/common/utils/FileService$Directory;)V

    goto :goto_0

    .line 579
    .end local v0           #result:Z
    :pswitch_0
    invoke-static {p0}, Lcom/jingdong/common/utils/FileService;->tryCleanImageDir(Lcom/jingdong/common/utils/FileService$Directory;)V

    goto :goto_1

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static declared-synchronized tryCleanImageDir(Lcom/jingdong/common/utils/FileService$Directory;)V
    .locals 5
    .parameter "directory"

    .prologue
    const/16 v4, -0x14

    .line 462
    const-class v3, Lcom/jingdong/common/utils/FileService;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/FileService$Directory;->getDir()Ljava/io/File;

    move-result-object v1

    .line 464
    .local v1, imageDir:Ljava/io/File;
    const/4 v0, 0x0

    .line 466
    .local v0, currentNum:I
    #getter for: Lcom/jingdong/common/utils/FileService$Directory;->space:I
    invoke-static {p0}, Lcom/jingdong/common/utils/FileService$Directory;->access$0(Lcom/jingdong/common/utils/FileService$Directory;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 486
    :goto_0
    const/16 v2, 0x1000

    if-le v0, v2, :cond_0

    sget-object v2, Lcom/jingdong/common/utils/FileService;->deleteOverImageThread:Lcom/jingdong/common/utils/FileService$DeleteOverImageThread;

    if-nez v2, :cond_0

    .line 487
    new-instance v2, Lcom/jingdong/common/utils/FileService$DeleteOverImageThread;

    invoke-direct {v2, v1}, Lcom/jingdong/common/utils/FileService$DeleteOverImageThread;-><init>(Ljava/io/File;)V

    sput-object v2, Lcom/jingdong/common/utils/FileService;->deleteOverImageThread:Lcom/jingdong/common/utils/FileService$DeleteOverImageThread;

    .line 488
    sget-object v2, Lcom/jingdong/common/utils/FileService;->deleteOverImageThread:Lcom/jingdong/common/utils/FileService$DeleteOverImageThread;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/FileService$DeleteOverImageThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    :cond_0
    monitor-exit v3

    return-void

    .line 468
    :pswitch_0
    :try_start_1
    sget v2, Lcom/jingdong/common/utils/FileService;->phoneMemoryImageCacheNum:I

    if-ne v2, v4, :cond_1

    .line 469
    invoke-static {v1}, Lcom/jingdong/common/utils/FileService;->getSubFilesNum(Ljava/io/File;)I

    move-result v2

    sput v2, Lcom/jingdong/common/utils/FileService;->phoneMemoryImageCacheNum:I

    .line 471
    :cond_1
    sget v0, Lcom/jingdong/common/utils/FileService;->phoneMemoryImageCacheNum:I

    .line 472
    goto :goto_0

    .line 475
    :pswitch_1
    sget v2, Lcom/jingdong/common/utils/FileService;->sdCardImageCacheNum:I

    if-ne v2, v4, :cond_2

    .line 476
    invoke-static {v1}, Lcom/jingdong/common/utils/FileService;->getSubFilesNum(Ljava/io/File;)I

    move-result v2

    sput v2, Lcom/jingdong/common/utils/FileService;->sdCardImageCacheNum:I

    .line 478
    :cond_2
    sget v0, Lcom/jingdong/common/utils/FileService;->sdCardImageCacheNum:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 462
    .end local v0           #currentNum:I
    .end local v1           #imageDir:Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public read(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 779
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jingdong/common/MyApplication;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 780
    .local v1, inStream:Ljava/io/FileInputStream;
    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/FileService;->readInputStream(Ljava/io/FileInputStream;)[B

    move-result-object v0

    .line 781
    .local v0, data:[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public readAsByteArray(Ljava/lang/String;)[B
    .locals 2
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 793
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jingdong/common/MyApplication;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 794
    .local v0, inStream:Ljava/io/FileInputStream;
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/FileService;->readInputStream(Ljava/io/FileInputStream;)[B

    move-result-object v1

    return-object v1
.end method

.method public readInputStream(Ljava/io/FileInputStream;)[B
    .locals 4
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 800
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 801
    .local v2, outStream:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 802
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 803
    .local v1, len:I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 806
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 807
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 808
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 804
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "filename"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 705
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/jingdong/common/MyApplication;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 706
    .local v0, outStream:Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 707
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 708
    return-void
.end method

.method public saveAppend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "filename"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 720
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    const v2, 0x8000

    invoke-virtual {v1, p1, v2}, Lcom/jingdong/common/MyApplication;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 721
    .local v0, outStream:Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 722
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 723
    return-void
.end method

.method public saveReadable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "filename"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 735
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/jingdong/common/MyApplication;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 736
    .local v0, outStream:Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 737
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 738
    return-void
.end method

.method public saveReadableWriteable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "filename"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 765
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    const v2, 0x8003

    invoke-virtual {v1, p1, v2}, Lcom/jingdong/common/MyApplication;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 766
    .local v0, outStream:Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 767
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 768
    return-void
.end method

.method public saveToSDCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "filename"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcom/jingdong/common/utils/FileService;->saveToSDCard(Lcom/jingdong/common/utils/FileService$Directory;Ljava/lang/String;Ljava/lang/String;)Z

    .line 410
    return-void
.end method

.method public saveWriteable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "filename"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 750
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/jingdong/common/MyApplication;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 751
    .local v0, outStream:Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 752
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 753
    return-void
.end method
