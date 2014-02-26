.class Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3$1;
.super Ljava/lang/Object;
.source "QuickRegisterLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;)Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->registerResendButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->access$5(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;)Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->timeTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->access$6(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    return-void
.end method
