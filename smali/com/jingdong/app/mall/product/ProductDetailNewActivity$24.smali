.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForDetailStocks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

.field private final synthetic val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Lcom/jingdong/app/mall/utils/ProductShow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;

    .line 1570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const v7, 0x7f0c056c

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    .line 1574
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getNameAndAdWord()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1576
    .local v2, nameAndAdWord:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/ProductShow;->getProduct()Lcom/jingdong/common/entity/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->isPromotion()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1577
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->producNameAndAdWordView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$36(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1591
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->producNameAndAdWordView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$36(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1593
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productJdPriceView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$46(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/utils/ProductShow;->getJdPrice()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1595
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailMprice:Lcom/jingdong/common/entity/ProductDetailPrice;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$57(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/ProductDetailPrice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/ProductDetailPrice;->getDisplay()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1596
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->val$productShow:Lcom/jingdong/app/mall/utils/ProductShow;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailMprice:Lcom/jingdong/common/entity/ProductDetailPrice;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$57(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/ProductDetailPrice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/ProductDetailPrice;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailMprice:Lcom/jingdong/common/entity/ProductDetailPrice;
    invoke-static {v5}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$57(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/ProductDetailPrice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/entity/ProductDetailPrice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jingdong/app/mall/utils/ProductShow;->getMarketPriceNew(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1597
    .local v1, marketPrice:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1598
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productMarketPriceView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$58(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1607
    .end local v1           #marketPrice:Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getIsPhoneVipPrice()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$23(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->getDownPrice()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$23(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->isGift()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1608
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productXJZIconLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$59(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1611
    :cond_2
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Product;->getIsPhoneVipPrice()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1612
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeVipIcon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$60(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1615
    :cond_3
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$23(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->getDownPrice()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1616
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeJiangIcon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$61(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1619
    :cond_4
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$23(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;->isGift()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1620
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productPhoeZengIcon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$62(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1623
    :cond_5
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    const/4 v4, 0x1

    #setter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->isXJZShowed:Z
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$63(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V

    .line 1625
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->refreshXJZDIcon()V
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$64(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    .line 1626
    return-void

    .line 1580
    :cond_6
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->PRODUCT_NAME_COUNT:I
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$56(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)I

    move-result v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v3, v4, :cond_7

    .line 1581
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->producNameAndAdWordView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$36(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto/16 :goto_0

    .line 1583
    :cond_7
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1584
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1585
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1586
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1587
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    invoke-virtual {v0, v6, v6, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1588
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->producNameAndAdWordView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$36(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1600
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1       #marketPrice:Ljava/lang/CharSequence;
    :cond_8
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productMarketPriceView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$58(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1601
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$24;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->productMarketPriceView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$58(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method
