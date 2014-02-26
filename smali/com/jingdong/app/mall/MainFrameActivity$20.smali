.class Lcom/jingdong/app/mall/MainFrameActivity$20;
.super Ljava/lang/Thread;
.source "MainFrameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainFrameActivity;->clearCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1795
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1799
    const-string v0, "MainFrameActivity_clearCache"

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/MainFrameActivity$20;->setName(Ljava/lang/String;)V

    .line 1800
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1803
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->clearCacheFiles()V

    .line 1804
    invoke-static {}, Lcom/jingdong/common/utils/FileService;->clearInternalCacheImages()V

    .line 1805
    return-void
.end method
