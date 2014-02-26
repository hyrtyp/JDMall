.class Lcom/jingdong/common/utils/GlobalInitialization$4;
.super Ljava/lang/Object;
.source "GlobalInitialization.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/GlobalInitialization;->registerDevice(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/GlobalInitialization;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/GlobalInitialization;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/GlobalInitialization$4;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    const/4 v3, 0x1

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization$4;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    #getter for: Lcom/jingdong/common/utils/GlobalInitialization;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/jingdong/common/utils/GlobalInitialization;->access$4(Lcom/jingdong/common/utils/GlobalInitialization;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "registerDevice"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_0
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization$4;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    #setter for: Lcom/jingdong/common/utils/GlobalInitialization;->alreadyDevice:Z
    invoke-static {v0, v3}, Lcom/jingdong/common/utils/GlobalInitialization;->access$8(Lcom/jingdong/common/utils/GlobalInitialization;Z)V

    .line 440
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization$4;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    const-string v1, "BLOCK_TASK_TOKEN_REGISTER_DEVICE"

    #calls: Lcom/jingdong/common/utils/GlobalInitialization;->removeBlockTaskToken(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/common/utils/GlobalInitialization;->access$7(Lcom/jingdong/common/utils/GlobalInitialization;Ljava/lang/String;)V

    .line 441
    return-void

    .line 433
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/jingdong/common/utils/GlobalInitialization$4;->this$0:Lcom/jingdong/common/utils/GlobalInitialization;

    const-string v1, "BLOCK_TASK_TOKEN_REGISTER_DEVICE"

    #calls: Lcom/jingdong/common/utils/GlobalInitialization;->removeBlockTaskToken(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/common/utils/GlobalInitialization;->access$7(Lcom/jingdong/common/utils/GlobalInitialization;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 450
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 427
    return-void
.end method
