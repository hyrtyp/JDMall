.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$3;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$3;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    .line 6627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6629
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v0

    const-string v1, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6630
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$3;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$7(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6631
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$3;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$7(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 6633
    :cond_0
    return-void
.end method
