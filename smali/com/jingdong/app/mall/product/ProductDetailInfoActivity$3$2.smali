.class Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3$2;
.super Ljava/lang/Object;
.source "ProductDetailInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;

.field private final synthetic val$couponList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3$2;->this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3$2;->val$couponList:Ljava/util/ArrayList;

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 609
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3$2;->this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;->access$0(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;)Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    move-result-object v7

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productCouponView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 612
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 613
    .local v6, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3$2;->val$couponList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/jingdong/common/entity/Coupon;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 628
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3$2;->this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;->access$0(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;)Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    move-result-object v7

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productCouponView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    return-void

    .line 614
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/Coupon;

    .line 617
    .local v3, coupon:Lcom/jingdong/common/entity/Coupon;
    invoke-virtual {v3}, Lcom/jingdong/common/entity/Coupon;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 618
    .local v5, messageStr:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 621
    invoke-virtual {v3}, Lcom/jingdong/common/entity/Coupon;->getBalance()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, balanceStr:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 623
    .local v2, balanceStrStart:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\u5143"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "\n"

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 624
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int v1, v2, v7

    .line 625
    .local v1, balanceStrEnd:I
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3$2;->this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;
    invoke-static {v8}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;->access$0(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;)Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090028

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v8, 0x21

    invoke-virtual {v6, v7, v2, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 623
    .end local v1           #balanceStrEnd:I
    :cond_1
    const-string v7, ""

    goto :goto_1
.end method
