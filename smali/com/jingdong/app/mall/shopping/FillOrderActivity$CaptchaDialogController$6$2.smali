.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6$2;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;

.field private final synthetic val$httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6$2;->val$httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    .line 6702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6704
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6$2;->val$httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-static {v1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->createInputWay(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Lcom/jingdong/common/utils/ImageUtil$InputWay;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6705
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->captchaImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$8(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6706
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->switchButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$1(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6707
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6$2;->this$2:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController$6;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->switchButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;->access$1(Lcom/jingdong/app/mall/shopping/FillOrderActivity$CaptchaDialogController;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 6709
    :cond_0
    return-void
.end method
