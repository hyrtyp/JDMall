.class Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1$2;
.super Ljava/lang/Object;
.source "QuickRegisterLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1$2;->this$2:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1$2;->this$2:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;)Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;)Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->registerResendButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->access$5(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 198
    return-void
.end method
