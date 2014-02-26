.class Lcom/jingdong/app/mall/shopping/CaptchaDialogController$2;
.super Ljava/lang/Object;
.source "CaptchaDialogController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->findView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$2;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 94
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$2;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->currentMyActivity:Lcom/jingdong/common/frame/IMyActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->access$2(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;)Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, relativeLayout:Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$2;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->setView(Landroid/view/View;)V

    .line 96
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$2;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    const v2, 0x7f030034

    invoke-static {v2, v0}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->view:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->access$3(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;Landroid/view/View;)V

    .line 97
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$2;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$2;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->view:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->access$4(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0c014d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    #setter for: Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->captchaImage:Landroid/widget/ImageView;
    invoke-static {v2, v1}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->access$5(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;Landroid/widget/ImageView;)V

    .line 98
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$2;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$2;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->view:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->access$4(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0c014e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    #setter for: Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->captchaInput:Landroid/widget/EditText;
    invoke-static {v2, v1}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->access$6(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;Landroid/widget/EditText;)V

    .line 99
    return-void
.end method
