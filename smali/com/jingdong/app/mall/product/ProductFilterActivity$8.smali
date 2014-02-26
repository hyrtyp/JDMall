.class Lcom/jingdong/app/mall/product/ProductFilterActivity$8;
.super Ljava/lang/Object;
.source "ProductFilterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductFilterActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

.field private final synthetic val$catelogyExpandSort:Lcom/jingdong/common/entity/SearchFilter;

.field private final synthetic val$choosed:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductFilterActivity;Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->val$catelogyExpandSort:Lcom/jingdong/common/entity/SearchFilter;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->val$choosed:Landroid/widget/TextView;

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 556
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->val$catelogyExpandSort:Lcom/jingdong/common/entity/SearchFilter;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->val$catelogyExpandSort:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedItem(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->val$catelogyExpandSort:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v0, p2}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedOrder(I)V

    .line 558
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->val$choosed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->val$catelogyExpandSort:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5168\u90e8"

    invoke-static {v1, p2, v2}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    if-nez p2, :cond_2

    .line 560
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->val$choosed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 564
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 566
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->val$catelogyExpandSort:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5e93\u5b58"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->val$catelogyExpandSort:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v0, p2}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedOrder(I)V

    .line 569
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->val$catelogyExpandSort:Lcom/jingdong/common/entity/SearchFilter;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->val$catelogyExpandSort:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedItem(Ljava/lang/String;)V

    .line 570
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->isNeedShowStock:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$3(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->isNeedShowStock:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$12(Lcom/jingdong/app/mall/product/ProductFilterActivity;Z)V

    .line 572
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->showIsHave()V

    .line 574
    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->isNeedShowStock:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$3(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #setter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->isNeedShowStock:Z
    invoke-static {v0, v3}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$12(Lcom/jingdong/app/mall/product/ProductFilterActivity;Z)V

    .line 576
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->hideIsHave()V

    .line 581
    :cond_1
    return-void

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->val$choosed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$8;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
