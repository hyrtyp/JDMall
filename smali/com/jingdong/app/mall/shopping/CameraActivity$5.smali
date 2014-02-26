.class Lcom/jingdong/app/mall/shopping/CameraActivity$5;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 351
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mAutoFocusBlock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$26(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :try_start_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mAutoFocusBlock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$26(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 351
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    :try_start_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->hasFinished:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$27(Lcom/jingdong/app/mall/shopping/CameraActivity;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    return-void

    .line 351
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 362
    :catch_0
    move-exception v0

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCameraView:Lcom/jingdong/app/mall/shopping/CameraView;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/CameraView;->autoFocus()V

    .line 360
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mAutoFocusTime:J
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$28(Lcom/jingdong/app/mall/shopping/CameraActivity;J)V

    .line 361
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mThreadBlock:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$29(Lcom/jingdong/app/mall/shopping/CameraActivity;Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method
