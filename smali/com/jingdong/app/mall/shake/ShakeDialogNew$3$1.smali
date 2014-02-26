.class Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;
.super Ljava/lang/Object;
.source "ShakeDialogNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

.field private final synthetic val$achieveResult:Ljava/lang/String;

.field private final synthetic val$achieveType:Ljava/lang/String;

.field private final synthetic val$couponTextView:Landroid/widget/TextView;

.field private final synthetic val$msg:Ljava/lang/String;

.field private final synthetic val$receiveCoupon:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    iput-object p2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$achieveResult:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$achieveType:Ljava/lang/String;

    iput-object p4, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$couponTextView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$receiveCoupon:Landroid/widget/Button;

    iput-object p6, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$msg:Ljava/lang/String;

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 777
    const-string v10, "success"

    iget-object v11, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$achieveResult:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 779
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponImage:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$11(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/widget/ImageView;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 780
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponImage:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$11(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/widget/ImageView;

    move-result-object v10

    const v11, 0x7f0202c4

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 782
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponImage:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$11(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 783
    .local v2, linearParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0127

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 784
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0128

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 785
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponImage:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$11(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 788
    .end local v2           #linearParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    const/4 v11, 0x1

    #setter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->isReceiveCouponStatus:Z
    invoke-static {v10, v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$12(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Z)V

    .line 791
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$achieveType:Ljava/lang/String;

    const-string v11, "coupon"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$achieveType:Ljava/lang/String;

    const-string v11, "bean"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 792
    :cond_1
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$couponTextView:Landroid/widget/TextView;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$receiveCoupon:Landroid/widget/Button;

    if-nez v10, :cond_3

    .line 859
    :cond_2
    :goto_0
    return-void

    .line 795
    :cond_3
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b013d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 799
    .local v5, sucessTextSize:I
    const/16 v10, 0x18

    if-le v5, v10, :cond_4

    .line 800
    const/16 v5, 0x18

    .line 802
    :cond_4
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$couponTextView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$couponTextView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090092

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 804
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$couponTextView:Landroid/widget/TextView;

    int-to-float v11, v5

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 805
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$receiveCoupon:Landroid/widget/Button;

    iget-object v11, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v11

    const v12, 0x7f070548

    invoke-virtual {v11, v12}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 806
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$receiveCoupon:Landroid/widget/Button;

    const v11, 0x7f0202e6

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 808
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$achieveType:Ljava/lang/String;

    const-string v11, "coupon"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 810
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$13(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/widget/RelativeLayout;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 811
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$13(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/widget/RelativeLayout;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 812
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->couponComment:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$14(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/widget/TextView;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 815
    :cond_5
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponSucessRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$15(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/widget/RelativeLayout;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 816
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mCouponSucessRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$15(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/widget/RelativeLayout;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 817
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    const v11, 0x7f0c0662

    invoke-virtual {v10, v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 818
    .local v6, sucessTextView:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    const v11, 0x7f070545

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v14}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v14

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;
    invoke-static {v14}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$1(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Lcom/jingdong/common/entity/ShakeData;

    move-result-object v14

    invoke-virtual {v14}, Lcom/jingdong/common/entity/ShakeData;->getSubtype()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 819
    .local v4, sucessHint:Ljava/lang/String;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 821
    .end local v4           #sucessHint:Ljava/lang/String;
    .end local v6           #sucessTextView:Landroid/widget/TextView;
    :cond_6
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$achieveType:Ljava/lang/String;

    const-string v11, "bean"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 823
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    const v11, 0x7f0c0651

    invoke-virtual {v10, v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 824
    .local v1, lineImageView:Landroid/widget/ImageView;
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 825
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    const v11, 0x7f0c0650

    invoke-virtual {v10, v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 826
    .local v0, beanRelativeLayout:Landroid/widget/RelativeLayout;
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 828
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    const v11, 0x7f0c0653

    invoke-virtual {v10, v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 829
    .restart local v6       #sucessTextView:Landroid/widget/TextView;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 830
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v11

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;
    invoke-static {v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$1(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Lcom/jingdong/common/entity/ShakeData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jingdong/common/entity/ShakeData;->getSubtype()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v11

    const v12, 0x7f070553

    invoke-virtual {v11, v12}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v11

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;
    invoke-static {v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$1(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Lcom/jingdong/common/entity/ShakeData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jingdong/common/entity/ShakeData;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 831
    .local v3, successBean:Ljava/lang/String;
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    const v11, 0x7f070546

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 832
    .restart local v4       #sucessHint:Ljava/lang/String;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 834
    .end local v0           #beanRelativeLayout:Landroid/widget/RelativeLayout;
    .end local v1           #lineImageView:Landroid/widget/ImageView;
    .end local v3           #successBean:Ljava/lang/String;
    .end local v4           #sucessHint:Ljava/lang/String;
    .end local v5           #sucessTextSize:I
    .end local v6           #sucessTextView:Landroid/widget/TextView;
    :cond_7
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$achieveType:Ljava/lang/String;

    const-string v11, "special_prize"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 835
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    const v11, 0x7f0c0673

    invoke-virtual {v10, v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 836
    .local v8, superProduct:Landroid/widget/RelativeLayout;
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 837
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    const v11, 0x7f0c0679

    invoke-virtual {v10, v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 838
    .local v9, superProductSuccess:Landroid/widget/RelativeLayout;
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    #calls: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->isSingerShake()Z
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$16(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 839
    const v10, 0x7f0202cc

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 843
    :goto_1
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 844
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    const v11, 0x7f0c067e

    invoke-virtual {v10, v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 845
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    const v11, 0x7f0c067c

    invoke-virtual {v10, v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 846
    .local v7, superHintTextView:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->hideSoftInput()V

    goto/16 :goto_0

    .line 841
    .end local v7           #superHintTextView:Landroid/widget/TextView;
    :cond_8
    const v10, 0x7f0202cb

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 851
    .end local v8           #superProduct:Landroid/widget/RelativeLayout;
    .end local v9           #superProductSuccess:Landroid/widget/RelativeLayout;
    :cond_9
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$achieveType:Ljava/lang/String;

    iget-object v11, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v11

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mAchieveType:Ljava/lang/String;
    invoke-static {v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$17(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 852
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    iget-object v11, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$achieveType:Ljava/lang/String;

    #setter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mAchieveType:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$18(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;)V

    .line 853
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    iget-object v11, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->val$msg:Ljava/lang/String;

    #setter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mAchieveMsg:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$19(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;)V

    .line 855
    :cond_a
    iget-object v10, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v10}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v10

    iget-object v11, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$3;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v11

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mAchieveMsg:Ljava/lang/String;
    invoke-static {v11}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$20(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/jingdong/common/utils/ShakeUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
