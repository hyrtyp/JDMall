.class Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "ProductListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/ProductListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGridAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;
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
    .line 2051
    .local p3, beanList:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 2052
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 2053
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 2065
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2067
    const/4 v0, 0x0

    .line 2068
    .local v0, holder:Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2069
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;
    check-cast v0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;

    .line 2087
    .restart local v0       #holder:Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/Product;

    .line 2089
    .local v1, product:Lcom/jingdong/common/entity/Product;
    if-nez v1, :cond_2

    .line 2141
    :cond_0
    :goto_1
    return-object p2

    .line 2071
    .end local v1           #product:Lcom/jingdong/common/entity/Product;
    :cond_1
    new-instance v0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;

    .end local v0           #holder:Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;)V

    .line 2072
    .restart local v0       #holder:Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;
    const v4, 0x7f0c0175

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;->productJdPriceView:Landroid/widget/TextView;

    .line 2073
    const v4, 0x7f0c00b8

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;->productMartPriceView:Landroid/widget/TextView;

    .line 2074
    const v4, 0x7f0c05a2

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;->productPromotionJiangIv:Landroid/widget/ImageView;

    .line 2075
    const v4, 0x7f0c05a3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;->productPromotionZengIv:Landroid/widget/ImageView;

    .line 2076
    const v4, 0x7f0c05a1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;->productPromotionVipIv:Landroid/widget/ImageView;

    .line 2077
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 2093
    .restart local v1       #product:Lcom/jingdong/common/entity/Product;
    :cond_2
    new-instance v2, Lcom/jingdong/app/mall/utils/ProductShow;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-direct {v2, v4, v1}, Lcom/jingdong/app/mall/utils/ProductShow;-><init>(Landroid/content/Context;Lcom/jingdong/common/entity/Product;)V

    .line 2098
    .local v2, productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, ""

    .line 2099
    .local v3, tmp:Ljava/lang/String;
    :goto_2
    iget-object v4, v0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;->productJdPriceView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2100
    iget-object v4, v0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;->productMartPriceView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/ProductShow;->getMarketPrice()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2102
    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->fromWhich:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$12(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "category"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->fromWhich:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$12(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "search"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2115
    :cond_3
    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getIsPromotionZeng()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2116
    iget-object v4, v0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;->productPromotionZengIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2122
    :goto_3
    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getIsPromotionJiang()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2123
    iget-object v4, v0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;->productPromotionJiangIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2130
    :goto_4
    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getIsFlashSale()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v10, :cond_7

    .line 2131
    iget-object v4, v0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;->productPromotionVipIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2098
    .end local v3           #tmp:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    const v5, 0x7f07027e

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/jingdong/app/mall/product/ProductListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 2119
    .restart local v3       #tmp:Ljava/lang/String;
    :cond_5
    iget-object v4, v0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;->productPromotionZengIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 2126
    :cond_6
    iget-object v4, v0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;->productPromotionJiangIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 2133
    :cond_7
    iget-object v4, v0, Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter$ViewHolder;->productPromotionVipIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method
