.class Lcom/jingdong/app/mall/MainFrameActivity$7;
.super Ljava/lang/Object;
.source "MainFrameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainFrameActivity;->toTargetActivity(Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/MainFrameActivity;

.field private final synthetic val$tempBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/MainFrameActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/MainFrameActivity$7;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/MainFrameActivity$7;->val$tempBundle:Landroid/os/Bundle;

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity$7;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/MainFrameActivity$7;->val$tempBundle:Landroid/os/Bundle;

    #calls: Lcom/jingdong/app/mall/MainFrameActivity;->showSearchActivity(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->access$10(Lcom/jingdong/app/mall/MainFrameActivity;Landroid/os/Bundle;)V

    .line 917
    return-void
.end method
