.class Lcom/jingdong/app/mall/shopping/CaptchaDialogController$5;
.super Ljava/lang/Object;
.source "CaptchaDialogController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->bindImage()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$5;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$5;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->captchaImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->access$8(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CaptchaDialogController$5;->this$0:Lcom/jingdong/app/mall/shopping/CaptchaDialogController;

    #getter for: Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->loadingDrawable:Lcom/jingdong/common/ui/ExceptionDrawable;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;->access$9(Lcom/jingdong/app/mall/shopping/CaptchaDialogController;)Lcom/jingdong/common/ui/ExceptionDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    return-void
.end method
