.class Lcom/jingdong/common/utils/FileService$DeleteOverImageThread;
.super Ljava/lang/Thread;
.source "FileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/FileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteOverImageThread"
.end annotation


# instance fields
.field private imageDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .parameter "imageDir"

    .prologue
    .line 1393
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1394
    iput-object p1, p0, Lcom/jingdong/common/utils/FileService$DeleteOverImageThread;->imageDir:Ljava/io/File;

    .line 1395
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, -0x14

    .line 1400
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/common/utils/FileService$DeleteOverImageThread;->imageDir:Ljava/io/File;

    #calls: Lcom/jingdong/common/utils/FileService;->deleteOverImageWithDir(Ljava/io/File;)V
    invoke-static {v0}, Lcom/jingdong/common/utils/FileService;->access$3(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1407
    :goto_0
    #calls: Lcom/jingdong/common/utils/FileService;->resetPhoneMemoryImageNum(I)V
    invoke-static {v1}, Lcom/jingdong/common/utils/FileService;->access$4(I)V

    .line 1408
    #calls: Lcom/jingdong/common/utils/FileService;->resetSdcardImageNum(I)V
    invoke-static {v1}, Lcom/jingdong/common/utils/FileService;->access$5(I)V

    .line 1410
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jingdong/common/utils/FileService;->access$6(Lcom/jingdong/common/utils/FileService$DeleteOverImageThread;)V

    .line 1411
    return-void

    .line 1401
    :catch_0
    move-exception v0

    goto :goto_0
.end method
