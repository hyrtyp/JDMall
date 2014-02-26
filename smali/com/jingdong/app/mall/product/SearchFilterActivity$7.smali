.class Lcom/jingdong/app/mall/product/SearchFilterActivity$7;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "SearchFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/SearchFilterActivity;->showSearchFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"

    .prologue
    .line 1
    .local p3, $anonymous1:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$7;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 587
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x7f090064

    const v8, 0x7f090063

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 595
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 596
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$7;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->list:Ljava/util/List;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$0(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-object v3

    .line 605
    :cond_1
    iget-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$7;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->list:Ljava/util/List;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$0(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/SearchFilter;

    .line 606
    .local v1, searchFilter:Lcom/jingdong/common/entity/SearchFilter;
    const v4, 0x7f0c0596

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 607
    .local v2, searchMenu:Landroid/widget/TextView;
    const v4, 0x7f0c0598

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 609
    .local v0, searchChoosed:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 630
    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v4

    if-lez v4, :cond_2

    .line 638
    iget-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$7;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 639
    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v5

    const-string v6, "\u5168\u90e8"

    invoke-static {v4, v5, v6}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 645
    :cond_2
    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getRememberStateSharedPreferences()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 647
    iget-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$7;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 648
    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5168\u90e8"

    invoke-static {v4, v7, v5}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v4, v7, v5}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedItem(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v1, v7}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedOrder(I)V

    goto/16 :goto_0

    .line 652
    :cond_3
    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_0

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_0

    .line 653
    iget-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$7;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 654
    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5168\u90e8"

    invoke-static {v4, v6, v5}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v4, v6, v5}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedItem(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v1, v6}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedOrder(I)V

    goto/16 :goto_0

    .line 663
    :cond_4
    iget-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$7;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    const v5, 0x7f070348

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$7;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 665
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0
.end method
