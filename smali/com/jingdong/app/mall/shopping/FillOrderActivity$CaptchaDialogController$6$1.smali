.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6$1;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;

    .line 6690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6692
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->captchaImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$8(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->noDrawable:Lcom/jingdong/common/ui/ExceptionDrawable;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$13(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Lcom/jingdong/common/ui/ExceptionDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6693
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->switchButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$1(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6694
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6$1;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->switchButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$1(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 6696
    :cond_0
    return-void
.end method
