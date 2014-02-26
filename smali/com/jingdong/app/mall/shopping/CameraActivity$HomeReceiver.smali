.class public Lcom/jingdong/app/mall/shopping/CameraActivity$HomeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HomeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/shopping/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 826
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$HomeReceiver;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 829
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 831
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, reason:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 833
    const-string v2, "homekey"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 834
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$HomeReceiver;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/shopping/CameraActivity;->finish()V

    .line 840
    .end local v1           #reason:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 835
    .restart local v1       #reason:Ljava/lang/String;
    :cond_1
    const-string v2, "recentapps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 836
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$HomeReceiver;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/shopping/CameraActivity;->finish()V

    goto :goto_0
.end method
