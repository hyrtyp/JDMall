.class Lcom/jingdong/app/mall/shopping/CaptchaDialogController$4;
.super Ljava/lang/Object;
.source "CaptchaDialogController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->onClick(Landroid/content/DialogInterface;I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$4;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$4;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->access$7(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$4;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->access$7(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 136
    :cond_0
    return-void
.end method
