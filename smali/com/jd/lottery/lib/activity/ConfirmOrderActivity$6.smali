.class Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;
.super Ljava/lang/Object;
.source "ConfirmOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 392
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    invoke-virtual {v2}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 393
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    invoke-virtual {v2}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "paymentMethodDialog"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 394
    .local v1, prev:Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 396
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 441
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    .line 399
    iget-object v3, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mMoney:I
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$15(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)I

    move-result v3

    int-to-double v3, v3

    iget-object v5, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPayType:Lcom/jd/lottery/lib/data/Constants$PayType;
    invoke-static {v5}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$12(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/data/Constants$PayType;

    move-result-object v5

    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mCouponIds:Ljava/lang/String;
    invoke-static {v6}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$16(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mTerm:I
    invoke-static {v7}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$17(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->newInstance(DLcom/jd/lottery/lib/data/Constants$PayType;Ljava/lang/String;I)Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    move-result-object v3

    .line 398
    iput-object v3, v2, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->paymentMethodDialogFragment:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    .line 400
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    iget-object v2, v2, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->paymentMethodDialogFragment:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    .line 401
    iget-object v3, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    invoke-virtual {v3}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 402
    const-string v4, "paymentMethodDialog"

    .line 400
    invoke-virtual {v2, v3, v4}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 403
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    iget-object v2, v2, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->paymentMethodDialogFragment:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    .line 404
    new-instance v3, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;

    invoke-direct {v3, p0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;-><init>(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)V

    invoke-virtual {v2, v3}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->setOnActionClickListener(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ActionClickListener;)V

    goto :goto_0
.end method
