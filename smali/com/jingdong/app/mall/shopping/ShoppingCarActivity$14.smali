.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setCartList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    .line 1999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const v8, 0x7f0c0680

    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 2007
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_1

    .line 2008
    :cond_0
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    invoke-virtual {v7, v8}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 2009
    .local v5, linPack:Landroid/view/ViewGroup;
    invoke-virtual {v5, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2016
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$10(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    const-string v8, "Price"

    invoke-virtual {v7, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 2017
    .local v4, jdp:F
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$10(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    const-string v8, "Discount"

    invoke-virtual {v7, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2018
    .local v3, jddis:F
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$10(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    const-string v8, "RePrice"

    invoke-virtual {v7, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2019
    .local v2, jdReprice:F
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "0.00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sub-float v8, v4, v2

    sub-float/2addr v8, v3

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    .line 2020
    .local v6, temp:Ljava/lang/String;
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mOrignalPrice:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/jingdong/common/constant/Constants;->REN_MIN_BI:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/text/DecimalFormat;

    const-string v10, "0.00"

    invoke-direct {v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sub-float v10, v4, v3

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2021
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mFanXian:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/jingdong/common/constant/Constants;->REN_MIN_BI:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/text/DecimalFormat;

    const-string v10, "0.00"

    invoke-direct {v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v10, v2

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2025
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v7

    const/16 v8, 0x32

    if-le v7, v8, :cond_2

    .line 2026
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2027
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    const/16 v8, 0x99

    const/16 v9, 0x99

    const/16 v10, 0x99

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 2029
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const v8, 0x7f070316

    invoke-virtual {v7, v8}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    invoke-static {v7, v8}, Lcom/jingdong/common/constant/Constants;->ShowMsg(Ljava/lang/String;Lcom/jingdong/common/frame/IMyActivity;)V

    .line 2040
    :goto_1
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mTotalPrice:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/jingdong/common/constant/Constants;->REN_MIN_BI:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2052
    .end local v2           #jdReprice:F
    .end local v3           #jddis:F
    .end local v4           #jdp:F
    .end local v6           #temp:Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->yunFee:Ljava/lang/String;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$32(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2053
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->yunFeeMessage:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2058
    :goto_3
    return-void

    .line 2011
    .end local v5           #linPack:Landroid/view/ViewGroup;
    :cond_1
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    invoke-virtual {v7, v8}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 2012
    .restart local v5       #linPack:Landroid/view/ViewGroup;
    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 2032
    .restart local v2       #jdReprice:F
    .restart local v3       #jddis:F
    .restart local v4       #jdp:F
    .restart local v6       #temp:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-boolean v7, v7, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bModified:Z

    if-eqz v7, :cond_3

    .line 2033
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2034
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    const/16 v8, 0x99

    const/16 v9, 0x99

    const/16 v10, 0x99

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2041
    .end local v2           #jdReprice:F
    .end local v3           #jddis:F
    .end local v4           #jdp:F
    .end local v6           #temp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2042
    .local v0, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const v8, 0x7f070315

    invoke-virtual {v7, v8}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2043
    .local v1, exceptionString:Ljava/lang/String;
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mOrignalPrice:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2044
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mFanXian:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2045
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mTotalPrice:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2036
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #exceptionString:Ljava/lang/String;
    .restart local v2       #jdReprice:F
    .restart local v3       #jddis:F
    .restart local v4       #jdp:F
    .restart local v6       #temp:Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2037
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    const/high16 v8, -0x100

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 2055
    .end local v2           #jdReprice:F
    .end local v3           #jddis:F
    .end local v4           #jdp:F
    .end local v6           #temp:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->yunFeeMessage:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2056
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->yunFeeMessage:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->yunFee:Ljava/lang/String;
    invoke-static {v8}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$32(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
