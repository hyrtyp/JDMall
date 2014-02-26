.class Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$4;
.super Ljava/lang/Object;
.source "PaymentMethodDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 212
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    iget-object v5, v5, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->actionClickListener:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ActionClickListener;

    if-eqz v5, :cond_1

    .line 213
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->payTypes:[Lcom/jd/lottery/lib/data/Constants$PayType;
    invoke-static {v5}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$6(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)[Lcom/jd/lottery/lib/data/Constants$PayType;

    move-result-object v5

    iget-object v6, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->checkedIndex:I
    invoke-static {v6}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$7(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)I

    move-result v6

    aget-object v4, v5, v6

    .line 215
    .local v4, payType:Lcom/jd/lottery/lib/data/Constants$PayType;
    const-wide/16 v1, 0x0

    .line 216
    .local v1, couponTotalMoney:D
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 217
    .local v0, couponStringBuffer:Ljava/lang/StringBuffer;
    sget-object v5, Lcom/jd/lottery/lib/data/Constants$PayType;->Coupon:Lcom/jd/lottery/lib/data/Constants$PayType;

    if-ne v4, v5, :cond_5

    .line 219
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponPairs:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$1(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_2

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 230
    :cond_0
    const-wide/16 v5, 0x0

    cmpl-double v5, v5, v1

    if-nez v5, :cond_4

    .line 231
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    invoke-virtual {v5}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/jd/lottery/lib/R$string;->toast_coupon_not_select:I

    invoke-static {v5, v6}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 246
    .end local v0           #couponStringBuffer:Ljava/lang/StringBuffer;
    .end local v1           #couponTotalMoney:D
    .end local v3           #i:I
    .end local v4           #payType:Lcom/jd/lottery/lib/data/Constants$PayType;
    :cond_1
    :goto_1
    return-void

    .line 220
    .restart local v0       #couponStringBuffer:Ljava/lang/StringBuffer;
    .restart local v1       #couponTotalMoney:D
    .restart local v3       #i:I
    .restart local v4       #payType:Lcom/jd/lottery/lib/data/Constants$PayType;
    :cond_2
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponAdapter:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;
    invoke-static {v5}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$0(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$CouponAdapter;->isSelected(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 221
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponPairs:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$1(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jd/lottery/lib/model/Pair;

    iget-object v5, v5, Lcom/jd/lottery/lib/model/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/jd/lottery/lib/model/CouponInfo;

    invoke-virtual {v5}, Lcom/jd/lottery/lib/model/CouponInfo;->getDiscount()D

    move-result-wide v5

    add-double/2addr v1, v5

    .line 222
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->couponPairs:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$1(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jd/lottery/lib/model/Pair;

    iget-object v5, v5, Lcom/jd/lottery/lib/model/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    :cond_4
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->totalMoney:D
    invoke-static {v5}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$3(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)D

    move-result-wide v5

    cmpl-double v5, v5, v1

    if-lez v5, :cond_6

    .line 234
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    invoke-virtual {v5}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 235
    sget v6, Lcom/jd/lottery/lib/R$string;->toast_coupon_selected_isnot_enough:I

    .line 234
    invoke-static {v5, v6}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    goto :goto_1

    .line 240
    .end local v3           #i:I
    :cond_5
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    :cond_6
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    iget-object v5, v5, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->actionClickListener:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ActionClickListener;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v1, v2, v6}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$ActionClickListener;->onRightClicked(Lcom/jd/lottery/lib/data/Constants$PayType;DLjava/lang/String;)V

    .line 244
    iget-object v5, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$4;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    invoke-virtual {v5}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->dismiss()V

    goto :goto_1
.end method
