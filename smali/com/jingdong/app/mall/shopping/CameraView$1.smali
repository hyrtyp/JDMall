.class Lcom/jingdong/app/mall/shopping/CameraView$1;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/CameraView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CameraView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CameraView$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraView;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/CameraView$1;)Lcom/jingdong/app/mall/shopping/CameraView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraView;

    return-object v0
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 59
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/CameraView$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraView;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView;->mThreadLock:Z
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/CameraView;->access$0(Lcom/jingdong/app/mall/shopping/CameraView;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/CameraView$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraView;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraView;->mExtractColor:Z
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/CameraView;->access$1(Lcom/jingdong/app/mall/shopping/CameraView;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    iget v1, v4, Landroid/hardware/Camera$Size;->width:I

    .line 66
    .local v1, imageWidth:I
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    iget v0, v4, Landroid/hardware/Camera$Size;->height:I

    .line 67
    .local v0, imageHeight:I
    move-object v3, p1

    .line 69
    .local v3, yuv:[B
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/CameraView$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraView;

    const/4 v5, 0x1

    #setter for: Lcom/jingdong/app/mall/shopping/CameraView;->mThreadLock:Z
    invoke-static {v4, v5}, Lcom/jingdong/app/mall/shopping/CameraView;->access$2(Lcom/jingdong/app/mall/shopping/CameraView;Z)V

    .line 72
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/jingdong/app/mall/shopping/CameraView$1$1;

    invoke-direct {v4, p0, v1, v3, v0}, Lcom/jingdong/app/mall/shopping/CameraView$1$1;-><init>(Lcom/jingdong/app/mall/shopping/CameraView$1;I[BI)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    .local v2, t:Ljava/lang/Thread;
    const-string v4, "CameraView"

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
