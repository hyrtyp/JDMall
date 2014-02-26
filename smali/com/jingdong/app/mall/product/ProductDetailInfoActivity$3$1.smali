.class Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3$1;
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

.field private final synthetic val$giftList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3$1;->val$giftList:Ljava/util/ArrayList;

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 574
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;->access$0(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;)Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    move-result-object v7

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productPromotionLabelView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->access$8(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;->access$0(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;)Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    move-result-object v7

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productPromotionView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->access$9(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 579
    .local v6, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3$1;->val$giftList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/jingdong/common/entity/Product;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 593
    iget-object v7, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;->access$0(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;)Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    move-result-object v7

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->productPromotionView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->access$9(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    return-void

    .line 580
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Product;

    .line 583
    .local v0, gift:Lcom/jingdong/common/entity/Product;
    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, nameStr:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 587
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "X"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getNum()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, numStr:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 589
    .local v5, numStrStart:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "\n"

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 590
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int v4, v5, v7

    .line 591
    .local v4, numStrEnd:I
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$3;

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

    invoke-virtual {v6, v7, v5, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 589
    .end local v4           #numStrEnd:I
    :cond_1
    const-string v7, ""

    goto :goto_1
.end method
