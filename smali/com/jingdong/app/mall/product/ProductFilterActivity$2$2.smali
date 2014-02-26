.class Lcom/jingdong/app/mall/product/ProductFilterActivity$2$2;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "ProductFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductFilterActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductFilterActivity$2;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2$2;->this$1:Lcom/jingdong/app/mall/product/ProductFilterActivity$2;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 340
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 347
    const/4 v3, 0x0

    .line 349
    .local v3, view:Landroid/view/View;
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 350
    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2$2;->this$1:Lcom/jingdong/app/mall/product/ProductFilterActivity$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->access$0(Lcom/jingdong/app/mall/product/ProductFilterActivity$2;)Lcom/jingdong/app/mall/product/ProductFilterActivity;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->list:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$6(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/SearchFilter;

    .line 351
    .local v0, catelogyExpandSort:Lcom/jingdong/common/entity/SearchFilter;
    const v4, 0x7f0c0598

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 352
    .local v2, choosed:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v4

    if-lez v4, :cond_0

    .line 354
    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2$2;->this$1:Lcom/jingdong/app/mall/product/ProductFilterActivity$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->access$0(Lcom/jingdong/app/mall/product/ProductFilterActivity$2;)Lcom/jingdong/app/mall/product/ProductFilterActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090064

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    invoke-virtual {v0}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v5

    const-string v6, "\u5168\u90e8"

    invoke-static {v4, v5, v6}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :goto_0
    const v4, 0x7f0c0596

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 361
    .local v1, catelogyName:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    return-object v3

    .line 357
    .end local v1           #catelogyName:Landroid/widget/TextView;
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2$2;->this$1:Lcom/jingdong/app/mall/product/ProductFilterActivity$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->access$0(Lcom/jingdong/app/mall/product/ProductFilterActivity$2;)Lcom/jingdong/app/mall/product/ProductFilterActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090063

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    invoke-virtual {v0}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "\u5168\u90e8"

    invoke-static {v4, v5, v6}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
