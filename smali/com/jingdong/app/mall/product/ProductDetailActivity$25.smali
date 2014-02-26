.class Lcom/jingdong/app/mall/product/ProductDetailActivity$25;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForDetailStocks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

.field private final synthetic val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;Lcom/jingdong/app/mall/utils/ProductShow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;

    .line 1170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/high16 v6, 0x4120

    const v5, 0x7f0c0523

    const/4 v4, 0x0

    .line 1174
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->producNameAndAdWordView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$51(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/ProductShow;->getNameAndAdWord()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1175
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productJdPriceView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$39(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/ProductShow;->getJdPrice()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productMarketPriceView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$52(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/ProductShow;->getMarketPrice()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/ProductShow;->getMarketPrice()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1179
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productMarketPriceView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$52(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1195
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getUserPriceLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1196
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productUserPriceView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$53(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1197
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productMarketPriceView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$52(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getPriceReport()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1198
    const v1, 0x7f0c0524

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1199
    const v1, 0x7f0c0524

    invoke-virtual {v0, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1204
    :goto_1
    invoke-static {v6}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1205
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productUserPriceView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$53(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1206
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productUserPriceView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$53(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1207
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productUserPriceView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$53(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/ProductShow;->getUserPrice()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 1181
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productMarketPriceView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$52(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1182
    .restart local v0       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$7(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getPriceReport()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1183
    invoke-virtual {v0, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1184
    invoke-virtual {v0, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1185
    invoke-static {v6}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1193
    :goto_2
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$25;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailActivity;->productMarketPriceView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$52(Lcom/jingdong/app/mall/product/ProductDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1187
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1189
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1191
    const/high16 v1, 0x4140

    invoke-static {v1}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    const/high16 v2, 0x4000

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    invoke-static {v6}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 1201
    :cond_3
    invoke-virtual {v0, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1202
    invoke-virtual {v0, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1
.end method
