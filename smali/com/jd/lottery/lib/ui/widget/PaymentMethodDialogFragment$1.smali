.class Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$1;
.super Landroid/os/Handler;
.source "PaymentMethodDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    .line 72
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 74
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v10, :cond_0

    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponAdapter:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;
    invoke-static {v4}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$0(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 75
    const/4 v3, 0x0

    .line 76
    .local v3, number:I
    const-wide/16 v0, 0x0

    .line 77
    .local v0, couponTotalMoney:D
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponPairs:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$1(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 83
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$2(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$2(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    sget v6, Lcom/jd/lottery/lib/R$string;->dialog_payment_coupon:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 85
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v10

    .line 84
    invoke-virtual {v5, v6, v7}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponAdapter:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;
    invoke-static {v4}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$0(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->notifyDataSetChanged()V

    .line 89
    .end local v0           #couponTotalMoney:D
    .end local v2           #i:I
    .end local v3           #number:I
    :cond_0
    return-void

    .line 78
    .restart local v0       #couponTotalMoney:D
    .restart local v2       #i:I
    .restart local v3       #number:I
    :cond_1
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponAdapter:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;
    invoke-static {v4}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$0(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->isSelected(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    iget-object v4, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$1;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponPairs:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$1(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jd/lottery/lib/model/Pair;

    iget-object v4, v4, Lcom/jd/lottery/lib/model/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/jd/lottery/lib/model/CouponInfo;

    invoke-virtual {v4}, Lcom/jd/lottery/lib/model/CouponInfo;->getDiscount()D

    move-result-wide v4

    add-double/2addr v0, v4

    .line 77
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
