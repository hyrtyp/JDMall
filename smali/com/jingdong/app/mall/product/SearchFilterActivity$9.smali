.class Lcom/jingdong/app/mall/product/SearchFilterActivity$9;
.super Ljava/lang/Object;
.source "SearchFilterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/SearchFilterActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

.field private final synthetic val$searchChoosed:Landroid/widget/TextView;

.field private final synthetic val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;Landroid/widget/TextView;Lcom/jingdong/common/entity/SearchFilter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$9;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$9;->val$searchChoosed:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$9;->val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 727
    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$9;->val$searchChoosed:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$9;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->items:[Ljava/lang/StringBuffer;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$36(Lcom/jingdong/app/mall/product/SearchFilterActivity;)[Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, p2, v4}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    if-nez p2, :cond_2

    .line 729
    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$9;->val$searchChoosed:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$9;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 734
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$9;->val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 735
    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$9;->val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v2, p2}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedOrder(I)V

    .line 736
    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$9;->val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$9;->val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, p2, v4}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedItem(Ljava/lang/String;)V

    .line 737
    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$9;->val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, p2, v3}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, cid:Ljava/lang/String;
    const-string v1, ""

    .line 743
    .local v1, field:Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$9;->val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/SearchFilter;->getFieldList()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 744
    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$9;->val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/SearchFilter;->getFieldList()[Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, p2, v3}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 747
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$9;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #calls: Lcom/jingdong/app/mall/product/SearchFilterActivity;->queryAllCategoryFilter(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v0, v1}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$37(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    .end local v0           #cid:Ljava/lang/String;
    .end local v1           #field:Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 751
    return-void

    .line 731
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$9;->val$searchChoosed:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$9;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090064

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
