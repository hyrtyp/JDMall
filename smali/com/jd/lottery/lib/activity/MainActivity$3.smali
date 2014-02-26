.class Lcom/jd/lottery/lib/activity/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/MainActivity$3;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 419
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/MainActivity$3;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #getter for: Lcom/jd/lottery/lib/activity/MainActivity;->mSecCount:I
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/MainActivity;->access$4(Lcom/jd/lottery/lib/activity/MainActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/jd/lottery/lib/activity/MainActivity;->mSecCount:I
    invoke-static {v1, v2}, Lcom/jd/lottery/lib/activity/MainActivity;->access$5(Lcom/jd/lottery/lib/activity/MainActivity;I)V

    const/16 v1, 0x1e

    if-le v2, v1, :cond_0

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/MainActivity$3;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #getter for: Lcom/jd/lottery/lib/activity/MainActivity;->mCanRefresh:Z
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/MainActivity;->access$6(Lcom/jd/lottery/lib/activity/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/MainActivity$3;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #setter for: Lcom/jd/lottery/lib/activity/MainActivity;->mSecCount:I
    invoke-static {v1, v3}, Lcom/jd/lottery/lib/activity/MainActivity;->access$5(Lcom/jd/lottery/lib/activity/MainActivity;I)V

    .line 421
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/MainActivity$3;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #setter for: Lcom/jd/lottery/lib/activity/MainActivity;->mCanRefresh:Z
    invoke-static {v1, v3}, Lcom/jd/lottery/lib/activity/MainActivity;->access$0(Lcom/jd/lottery/lib/activity/MainActivity;Z)V

    .line 422
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/MainActivity$3;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    .line 423
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/MainActivity$3;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #getter for: Lcom/jd/lottery/lib/activity/MainActivity;->refreshResultReceiver:Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;
    invoke-static {v2}, Lcom/jd/lottery/lib/activity/MainActivity;->access$7(Lcom/jd/lottery/lib/activity/MainActivity;)Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;

    move-result-object v2

    .line 422
    invoke-static {v1, v2}, Lcom/jd/lottery/lib/service/DataIntentService;->getAllLotteryIntent(Landroid/content/Context;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v0

    .line 424
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/MainActivity$3;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 426
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/MainActivity$3;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #getter for: Lcom/jd/lottery/lib/activity/MainActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/MainActivity;->access$1(Lcom/jd/lottery/lib/activity/MainActivity;)Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/MainActivity$3;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #getter for: Lcom/jd/lottery/lib/activity/MainActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/MainActivity;->access$1(Lcom/jd/lottery/lib/activity/MainActivity;)Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jd/lottery/lib/adapter/LotteryCategoryAdapter;->notifyDataSetChanged()V

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/MainActivity$3;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/activity/MainActivity;->setAdapter()V

    .line 430
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/MainActivity$3;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #getter for: Lcom/jd/lottery/lib/activity/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/MainActivity;->access$8(Lcom/jd/lottery/lib/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/jd/lottery/lib/activity/MainActivity$3;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #getter for: Lcom/jd/lottery/lib/activity/MainActivity;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/jd/lottery/lib/activity/MainActivity;->access$9(Lcom/jd/lottery/lib/activity/MainActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 431
    return-void
.end method
