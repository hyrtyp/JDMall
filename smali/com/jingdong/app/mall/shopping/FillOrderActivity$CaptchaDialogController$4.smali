.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$4;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->onClick(Landroid/content/DialogInterface;I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$4;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    .line 6648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6650
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$4;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$7(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6651
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$4;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$7(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 6653
    :cond_0
    return-void
.end method
