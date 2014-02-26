.class Lcom/jingdong/common/MyApplication$3;
.super Ljava/lang/Object;
.source "MyApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/MyApplication;->exit(Lcom/jingdong/common/frame/IMyActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 353
    invoke-static {}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->quit()V

    .line 356
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/MyApplication;->submitTime()V

    .line 358
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 359
    .local v1, i:Landroid/content/Intent;
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    const-class v3, Lcom/jingdong/common/service/MessagePullService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 360
    const-string v2, "Action_Stop_Message_Service"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jingdong/common/MyApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 364
    invoke-static {}, Lcom/jingdong/common/MyApplication;->killStage()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 369
    .local v0, e:Ljava/lang/Throwable;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method
