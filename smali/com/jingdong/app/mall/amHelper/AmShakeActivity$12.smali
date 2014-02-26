.class Lcom/jingdong/app/mall/amHelper/AmShakeActivity$12;
.super Ljava/lang/Object;
.source "AmShakeActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$12;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 477
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$12;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->animEnable:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$19(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$12;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 480
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$12;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 473
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 468
    return-void
.end method
