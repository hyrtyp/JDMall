.class Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;
.super Ljava/lang/Object;
.source "HomeIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->gotoShakeActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;)Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;
    .locals 1
    .parameter

    .prologue
    .line 523
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 525
    new-instance v0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;)V

    .line 539
    .local v0, runnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    new-instance v2, Lcom/jingdong/app/mall/shake/ShakeController;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->group:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$4(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jingdong/app/mall/shake/ShakeController;-><init>(Lcom/jingdong/common/utils/HttpGroup;)V

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->mShakeController:Lcom/jingdong/app/mall/shake/ShakeController;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$5(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;Lcom/jingdong/app/mall/shake/ShakeController;)V

    .line 540
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->mShakeController:Lcom/jingdong/app/mall/shake/ShakeController;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$3(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/shake/ShakeController;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/jingdong/app/mall/shake/ShakeController;->queryShakeBDInfo(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;)V

    .line 541
    return-void
.end method
