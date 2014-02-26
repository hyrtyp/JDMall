.class Lcom/jingdong/app/mall/shopping/CaptchaDialogController$1;
.super Ljava/lang/Object;
.source "CaptchaDialogController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CaptchaDialogController;-><init>(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$1;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$1;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->show()V

    .line 82
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$1;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$1;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->switchButton:Landroid/widget/Button;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->access$0(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;Landroid/widget/Button;)V

    .line 83
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$1;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->switchButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->access$1(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$1;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->switchButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->access$1(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 86
    :cond_0
    return-void
.end method
