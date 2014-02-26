.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$2;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->findView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    .line 6609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6611
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->currentMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$2(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 6612
    .local v0, relativeLayout:Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->setView(Landroid/view/View;)V

    .line 6613
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    const v2, 0x7f030034

    invoke-static {v2, v0}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->view:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$3(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;Landroid/view/View;)V

    .line 6614
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->view:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$4(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0c014d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    #setter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->captchaImage:Landroid/widget/ImageView;
    invoke-static {v2, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$5(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;Landroid/widget/ImageView;)V

    .line 6615
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->view:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$4(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0c014e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    #setter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->captchaInput:Landroid/widget/EditText;
    invoke-static {v2, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$6(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;Landroid/widget/EditText;)V

    .line 6616
    return-void
.end method
