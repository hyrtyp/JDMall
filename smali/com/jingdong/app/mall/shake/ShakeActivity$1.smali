.class Lcom/jingdong/app/mall/shake/ShakeActivity$1;
.super Landroid/os/Handler;
.source "ShakeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shake/ShakeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$1;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    .line 803
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 805
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$1;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mHandAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$0(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$1;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mHandImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$1(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$1;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mHandImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$1(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$1;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mHandAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$0(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 808
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeIsStop:Z

    .line 811
    :cond_0
    return-void
.end method
