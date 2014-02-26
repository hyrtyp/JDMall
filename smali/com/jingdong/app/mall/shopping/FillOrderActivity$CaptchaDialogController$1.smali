.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$1;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;-><init>(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    .line 6596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6598
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->show()V

    .line 6599
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->switchButton:Landroid/widget/Button;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;Landroid/widget/Button;)V

    .line 6600
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->switchButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$1(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6601
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->switchButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$1(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 6603
    :cond_0
    return-void
.end method
