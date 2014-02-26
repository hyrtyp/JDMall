.class Lcom/jingdong/app/mall/search/CameraPurchaseActivity$4;
.super Ljava/lang/Object;
.source "CameraPurchaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$4;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, temp:Ljava/io/File;
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$4;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->cameraRebootPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$9(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/File;

    .end local v0           #temp:Ljava/io/File;
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$4;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->cameraRebootPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$9(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #temp:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$4;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->uri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$10(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;Landroid/net/Uri;)V

    .line 455
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$4;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    #setter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->cameraRebootPath:Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$11(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$4;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    const/16 v2, 0xb

    #calls: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->goEditor(Landroid/content/Intent;I)V
    invoke-static {v1, v5, v2}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$12(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;Landroid/content/Intent;I)V

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$4;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->galleryRebootData:Landroid/content/Intent;
    invoke-static {v1}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$13(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$4;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    const/16 v2, 0xc

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$4;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->galleryRebootData:Landroid/content/Intent;
    invoke-static {v4}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$13(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 460
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$4;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    #setter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->galleryRebootData:Landroid/content/Intent;
    invoke-static {v1, v5}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$14(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;Landroid/content/Intent;)V

    .line 462
    :cond_1
    return-void
.end method
