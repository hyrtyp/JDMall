.class Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "ProductListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/ProductListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductListActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "myActivity"
    .parameter
    .parameter "itemId"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/app/mall/utils/MyActivity;",
            "Ljava/util/List",
            "<*>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 1928
    .local p3, beanList:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 1929
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 1930
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1945
    invoke-super/range {p0 .. p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1947
    const/4 v5, 0x0

    .line 1948
    .local v5, holder:Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1949
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #holder:Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;
    check-cast v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;

    .line 1969
    .restart local v5       #holder:Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jingdong/common/entity/Product;

    .line 1971
    .local v7, product:Lcom/jingdong/common/entity/Product;
    if-nez v7, :cond_1

    .line 2045
    :goto_1
    return-object p2

    .line 1951
    .end local v7           #product:Lcom/jingdong/common/entity/Product;
    :cond_0
    new-instance v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;

    .end local v5           #holder:Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;
    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;)V

    .line 1952
    .restart local v5       #holder:Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;
    const v10, 0x7f0c0175

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productJdPriceView:Landroid/widget/TextView;

    .line 1953
    const v10, 0x7f0c00b8

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productMartPriceView:Landroid/widget/TextView;

    .line 1955
    const v10, 0x7f0c0179

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productCommentCountTv:Landroid/widget/TextView;

    .line 1956
    const v10, 0x7f0c05c1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productPromotionJiangIv:Landroid/widget/ImageView;

    .line 1957
    const v10, 0x7f0c05c2

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productPromotionZengIv:Landroid/widget/ImageView;

    .line 1958
    const v10, 0x7f0c05c0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productPromotionVipIv:Landroid/widget/ImageView;

    .line 1959
    const v10, 0x7f0c05c4

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productGoodTv:Landroid/widget/TextView;

    .line 1960
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1975
    .restart local v7       #product:Lcom/jingdong/common/entity/Product;
    :cond_1
    new-instance v8, Lcom/jingdong/app/mall/utils/ProductShow;

    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-direct {v8, v10, v7}, Lcom/jingdong/app/mall/utils/ProductShow;-><init>(Landroid/content/Context;Lcom/jingdong/common/entity/Product;)V

    .line 1983
    .local v8, productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    invoke-virtual {v7}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v9, ""

    .line 1984
    .local v9, tmp:Ljava/lang/String;
    :goto_2
    iget-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productJdPriceView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1988
    iget-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productMartPriceView:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/jingdong/app/mall/utils/ProductShow;->getMarketPrice()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1992
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->fromWhich:Ljava/lang/String;
    invoke-static {v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$12(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "category"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->fromWhich:Ljava/lang/String;
    invoke-static {v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$12(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "search"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1996
    :cond_2
    invoke-virtual {v7}, Lcom/jingdong/common/entity/Product;->getTotalCount()Ljava/lang/Integer;

    move-result-object v3

    .line 1998
    .local v3, count:Ljava/lang/Integer;
    invoke-virtual {v7}, Lcom/jingdong/common/entity/Product;->getGood()Ljava/lang/String;

    move-result-object v4

    .line 2000
    .local v4, good:Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2001
    :cond_3
    iget-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productCommentCountTv:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2003
    iget-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productGoodTv:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2019
    :goto_3
    invoke-virtual {v7}, Lcom/jingdong/common/entity/Product;->getIsPromotionZeng()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2020
    iget-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productPromotionZengIv:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2026
    :goto_4
    invoke-virtual {v7}, Lcom/jingdong/common/entity/Product;->getIsPromotionJiang()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2027
    iget-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productPromotionJiangIv:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2034
    :goto_5
    invoke-virtual {v7}, Lcom/jingdong/common/entity/Product;->getIsFlashSale()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 2035
    iget-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productPromotionVipIv:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1983
    .end local v3           #count:Ljava/lang/Integer;
    .end local v4           #good:Ljava/lang/String;
    .end local v9           #tmp:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    const v11, 0x7f07027e

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v7}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/jingdong/app/mall/product/ProductListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 2005
    .restart local v3       #count:Ljava/lang/Integer;
    .restart local v4       #good:Ljava/lang/String;
    .restart local v9       #tmp:Ljava/lang/String;
    :cond_5
    iget-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productCommentCountTv:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2006
    new-instance v1, Landroid/text/SpannableString;

    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    const v11, 0x7f0704ca

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/jingdong/app/mall/product/ProductListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2007
    .local v1, blodCommentCount:Landroid/text/SpannableString;
    new-instance v10, Landroid/text/style/StyleSpan;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v11, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2008
    iget-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productCommentCountTv:Landroid/widget/TextView;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2012
    iget-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productGoodTv:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2013
    const-string v6, "\u597d\u8bc4\u5ea6: "

    .line 2014
    .local v6, prefix:Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2015
    .local v2, blodGood:Landroid/text/SpannableString;
    new-instance v10, Landroid/text/style/StyleSpan;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2016
    iget-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productGoodTv:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2023
    .end local v1           #blodCommentCount:Landroid/text/SpannableString;
    .end local v2           #blodGood:Landroid/text/SpannableString;
    .end local v6           #prefix:Ljava/lang/String;
    :cond_6
    iget-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productPromotionZengIv:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 2030
    :cond_7
    iget-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productPromotionJiangIv:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 2037
    :cond_8
    iget-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productPromotionVipIv:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2042
    .end local v3           #count:Ljava/lang/Integer;
    .end local v4           #good:Ljava/lang/String;
    :cond_9
    iget-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productCommentCountTv:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2043
    iget-object v10, v5, Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter$ViewHolder;->productGoodTv:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method
