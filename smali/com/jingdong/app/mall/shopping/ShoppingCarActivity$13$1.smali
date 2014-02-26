.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "ShoppingCarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 1723
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    .locals 1
    .parameter

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1725
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1726
    .local v9, view:Landroid/view/View;
    move v0, p1

    .line 1727
    .local v0, index:I
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/Product;

    .line 1728
    .local v2, product:Lcom/jingdong/common/entity/Product;
    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v10}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v10

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v11

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->isManZeng(Ljava/lang/Long;)Z
    invoke-static {v10, v11}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$26(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Ljava/lang/Long;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1729
    const v10, 0x7f0201fb

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1739
    :goto_0
    const v10, 0x7f0c0689

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1740
    .local v8, sPodName:Landroid/widget/TextView;
    const v10, 0x7f0c0486

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1741
    .local v7, sPodId:Landroid/widget/TextView;
    new-instance v6, Lcom/jingdong/app/mall/utils/ProductShow;

    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v10}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v10

    invoke-direct {v6, v10, v2}, Lcom/jingdong/app/mall/utils/ProductShow;-><init>(Landroid/content/Context;Lcom/jingdong/common/entity/Product;)V

    .line 1742
    .local v6, productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v10}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v10

    iget-boolean v10, v10, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasGifts:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v10}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v10

    iget-object v10, v10, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasZengArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v10}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v10

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v11

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->isInArray(Ljava/lang/Long;)Z
    invoke-static {v10, v11}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$27(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Ljava/lang/Long;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1743
    invoke-virtual {v6}, Lcom/jingdong/app/mall/utils/ProductShow;->getNameAndZeng()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1748
    :goto_1
    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1749
    const v10, 0x7f0c068f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1750
    .local v1, mDel:Landroid/widget/Button;
    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v10}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v10

    iget-boolean v10, v10, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bModified:Z

    if-eqz v10, :cond_3

    .line 1751
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 1755
    :goto_2
    const v10, 0x7f070354

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setText(I)V

    .line 1756
    new-instance v10, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;

    invoke-direct {v10, p0, v0, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;ILcom/jingdong/common/entity/Product;)V

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1816
    const v10, 0x7f0c068b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1817
    .local v3, productCount:Landroid/widget/EditText;
    const v10, 0x7f0c068c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1818
    .local v4, productCountContent:Landroid/widget/TextView;
    new-instance v10, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$2;

    invoke-direct {v10, p0, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$2;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;Lcom/jingdong/common/entity/Product;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1834
    new-instance v10, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;

    invoke-direct {v10, p0, v2, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$3;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;Lcom/jingdong/common/entity/Product;I)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1900
    new-instance v10, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$4;

    invoke-direct {v10, p0, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$4;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;Landroid/widget/EditText;)V

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1937
    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->geItemCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_4

    .line 1938
    const-string v10, "1"

    invoke-static {v3, v10}, Lcom/jingdong/common/utils/EditTextUtils;->setTextWithSelection(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 1939
    const-string v10, "1"

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1945
    :goto_3
    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v10}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v10

    iget-boolean v10, v10, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bModified:Z

    if-eqz v10, :cond_5

    .line 1946
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1947
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1948
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1955
    :goto_4
    const v10, 0x7f0c068e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1956
    .local v5, productJdPriceView:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getPriceForAfterDiscount()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1961
    return-object v9

    .line 1731
    .end local v1           #mDel:Landroid/widget/Button;
    .end local v3           #productCount:Landroid/widget/EditText;
    .end local v4           #productCountContent:Landroid/widget/TextView;
    .end local v5           #productJdPriceView:Landroid/widget/TextView;
    .end local v6           #productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    .end local v7           #sPodId:Landroid/widget/TextView;
    .end local v8           #sPodName:Landroid/widget/TextView;
    :cond_0
    rem-int/lit8 v10, p1, 0x2

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 1732
    const v10, 0x7f02025c

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1734
    :cond_1
    const v10, 0x7f02025e

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1746
    .restart local v6       #productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    .restart local v7       #sPodId:Landroid/widget/TextView;
    .restart local v8       #sPodName:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1753
    .restart local v1       #mDel:Landroid/widget/Button;
    :cond_3
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 1941
    .restart local v3       #productCount:Landroid/widget/EditText;
    .restart local v4       #productCountContent:Landroid/widget/TextView;
    :cond_4
    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->geItemCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/jingdong/common/utils/EditTextUtils;->setTextWithSelection(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 1942
    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->geItemCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1950
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1951
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1952
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_4
.end method
