.class Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;
.super Ljava/lang/Object;
.source "ConfirmOrderActivity.java"

# interfaces
.implements Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ActionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftClicked()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public onRightClicked(Lcom/jd/lottery/lib/data/Constants$PayType;DLjava/lang/String;)V
    .locals 7
    .parameter "payType"
    .parameter "couponMoney"
    .parameter "couponString"

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 412
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v0

    #setter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPayType:Lcom/jd/lottery/lib/data/Constants$PayType;
    invoke-static {v0, p1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$18(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;Lcom/jd/lottery/lib/data/Constants$PayType;)V

    .line 414
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v0

    #setter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mCouponIds:Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$19(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_payway:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$20(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v1

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPayType:Lcom/jd/lottery/lib/data/Constants$PayType;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$12(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/data/Constants$PayType;

    move-result-object v1

    .line 417
    invoke-virtual {v1}, Lcom/jd/lottery/lib/data/Constants$PayType;->getName()Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPayType:Lcom/jd/lottery/lib/data/Constants$PayType;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$12(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/data/Constants$PayType;

    move-result-object v0

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$PayType;->Balance:Lcom/jd/lottery/lib/data/Constants$PayType;

    if-ne v0, v1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->comfirm_order_pay_message:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$21(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->comfirm_order_pay_message:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$21(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v1

    sget v2, Lcom/jd/lottery/lib/R$string;->confirm_order_use_blance:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v4}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v4

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mMoney:I
    invoke-static {v4}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$15(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    :goto_0
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPayType:Lcom/jd/lottery/lib/data/Constants$PayType;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$12(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/data/Constants$PayType;

    move-result-object v0

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$PayType;->PayOnline:Lcom/jd/lottery/lib/data/Constants$PayType;

    if-ne v0, v1, :cond_3

    .line 432
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_payway_pwd_layout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$22(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 433
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 438
    :goto_1
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPayType:Lcom/jd/lottery/lib/data/Constants$PayType;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$12(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/data/Constants$PayType;

    move-result-object v0

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$PayType;->Score:Lcom/jd/lottery/lib/data/Constants$PayType;

    if-ne v0, v1, :cond_1

    .line 422
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->comfirm_order_pay_message:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$21(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->comfirm_order_pay_message:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$21(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v1

    sget v2, Lcom/jd/lottery/lib/R$string;->confirm_order_use_beans:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v4}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v4

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mMoney:I
    invoke-static {v4}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$15(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPayType:Lcom/jd/lottery/lib/data/Constants$PayType;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$12(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/data/Constants$PayType;

    move-result-object v0

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$PayType;->Coupon:Lcom/jd/lottery/lib/data/Constants$PayType;

    if-ne v0, v1, :cond_2

    .line 425
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->comfirm_order_pay_message:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$21(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->comfirm_order_pay_message:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$21(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v1

    sget v2, Lcom/jd/lottery/lib/R$string;->confirm_order_use_coupon:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 428
    :cond_2
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->comfirm_order_pay_message:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$21(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$6;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_payway_pwd_layout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$22(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 436
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method
