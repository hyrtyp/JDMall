.class Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9$1;
.super Ljava/lang/Object;
.source "AmShakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 286
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->access$0(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;)Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->hideLoadingView()V
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$13(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    .line 287
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->access$0(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;)Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->access$0(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;)Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->access$0(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;)Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->runnableServiceStart:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->access$0(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;)Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->runnableServiceStop:Ljava/lang/Runnable;

    invoke-static {v1, v2, v3}, Lcom/jingdong/common/utils/ShakeUtils;->shakeCallback(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 290
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->access$0(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;)Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 292
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->access$0(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;)Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    move-result-object v1

    const/16 v2, 0x7d0

    #calls: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->delayStartShakeListener(I)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$14(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;I)V

    .line 293
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->access$0(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;)Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->cancelVibrator()V
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$3(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    .line 294
    return-void
.end method
