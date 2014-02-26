.class Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4$1;
.super Ljava/lang/Object;
.source "HomeIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 529
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;)Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    const-class v3, Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 530
    .local v1, intentShake:Landroid/content/Intent;
    const-string v2, "com.360buy:navigationDisplayFlag"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 532
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 533
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "shake_type"

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;)Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->mShakeController:Lcom/jingdong/app/mall/shake/ShakeController;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$3(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/shake/ShakeController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shake/ShakeController;->getShakeBDInfo()Lcom/jingdong/common/entity/ShakeBDInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 534
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 535
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;)Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 536
    return-void
.end method
