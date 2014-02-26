.class Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;
.super Ljava/lang/Object;
.source "PaymentMethodDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;->this$1:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    iput p2, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;->val$position:I

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 543
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;->this$1:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    iget v6, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;->val$position:I

    invoke-virtual {v3, v6}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->isSelected(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 544
    const-wide/16 v0, 0x0

    .line 545
    .local v0, couponTotalMoney:D
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;->this$1:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;
    invoke-static {v3}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->access$1(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;)Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    move-result-object v3

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponPairs:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$1(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 550
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;->this$1:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;
    invoke-static {v3}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->access$1(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;)Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    move-result-object v3

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->totalMoney:D
    invoke-static {v3}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$3(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)D

    move-result-wide v6

    cmpg-double v3, v0, v6

    if-gez v3, :cond_3

    .line 551
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;->this$1:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    iget-object v6, v3, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->isSelected:Ljava/util/HashMap;

    iget v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;->val$position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;->this$1:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    iget v8, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;->val$position:I

    invoke-virtual {v3, v8}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->isSelected(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;->this$1:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;
    invoke-static {v3}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->access$1(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;)Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    move-result-object v3

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$4(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 560
    .end local v0           #couponTotalMoney:D
    .end local v2           #i:I
    :goto_2
    return-void

    .line 546
    .restart local v0       #couponTotalMoney:D
    .restart local v2       #i:I
    :cond_0
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;->this$1:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;
    invoke-static {v3}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->access$1(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;)Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    move-result-object v3

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponAdapter:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;
    invoke-static {v3}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$0(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->isSelected(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 547
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;->this$1:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;
    invoke-static {v3}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->access$1(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;)Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    move-result-object v3

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponPairs:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$1(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jd/lottery/lib/model/Pair;

    iget-object v3, v3, Lcom/jd/lottery/lib/model/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/jd/lottery/lib/model/CouponInfo;

    invoke-virtual {v3}, Lcom/jd/lottery/lib/model/CouponInfo;->getDiscount()D

    move-result-wide v6

    add-double/2addr v0, v6

    .line 545
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    .line 551
    goto :goto_1

    .line 554
    :cond_3
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;->this$1:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;
    invoke-static {v3}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->access$1(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;)Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/jd/lottery/lib/R$string;->toast_coupon_is_enough:I

    invoke-static {v3, v4}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    goto :goto_2

    .line 557
    .end local v0           #couponTotalMoney:D
    .end local v2           #i:I
    :cond_4
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;->this$1:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    iget-object v3, v3, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->isSelected:Ljava/util/HashMap;

    iget v6, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;->val$position:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;->this$1:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    iget v8, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;->val$position:I

    invoke-virtual {v7, v8}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->isSelected(I)Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget-object v3, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter$1;->this$1:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;
    invoke-static {v3}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->access$1(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;)Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    move-result-object v3

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$4(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_5
    move v4, v5

    .line 557
    goto :goto_3
.end method
