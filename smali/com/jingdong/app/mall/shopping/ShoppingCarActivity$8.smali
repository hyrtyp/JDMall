.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->showPacksView(Lcom/jingdong/common/utils/JSONArrayPoxy;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x99

    .line 923
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const v9, 0x7f0c01f1

    invoke-virtual {v8, v9}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 924
    .local v5, lin:Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    .line 925
    .local v7, tindex:I
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v8, v8, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 926
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v8, v8, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 929
    :cond_0
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v8}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$14(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v8

    if-eqz v8, :cond_1

    if-gtz v7, :cond_2

    .line 930
    :cond_1
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 932
    :try_start_0
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v8}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$10(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v8

    const-string v9, "Price"

    invoke-virtual {v8, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 933
    .local v4, jdp:F
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v8}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$10(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v8

    const-string v9, "Discount"

    invoke-virtual {v8, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 934
    .local v3, jddis:F
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v8}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$10(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v8

    const-string v9, "RePrice"

    invoke-virtual {v8, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 935
    .local v2, jdReprice:F
    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "0.00"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sub-float v9, v4, v2

    sub-float/2addr v9, v3

    float-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    .line 936
    .local v6, temp:Ljava/lang/String;
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v8, v8, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mOrignalPrice:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/jingdong/common/constant/Constants;->REN_MIN_BI:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/text/DecimalFormat;

    const-string v11, "0.00"

    invoke-direct {v10, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sub-float v11, v4, v3

    float-to-double v11, v11

    invoke-virtual {v10, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 937
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v8, v8, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mFanXian:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/jingdong/common/constant/Constants;->REN_MIN_BI:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/text/DecimalFormat;

    const-string v11, "0.00"

    invoke-direct {v10, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v11, v2

    invoke-virtual {v10, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v8, v8, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mTotalPrice:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/jingdong/common/constant/Constants;->REN_MIN_BI:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    .end local v2           #jdReprice:F
    .end local v3           #jddis:F
    .end local v4           #jdp:F
    .end local v6           #temp:Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-boolean v8, v8, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bModified:Z

    if-eqz v8, :cond_3

    .line 948
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v8, v8, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 949
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v8, v8, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    invoke-static {v13, v13, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 957
    :cond_2
    :goto_1
    return-void

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const v9, 0x7f070315

    invoke-virtual {v8, v9}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 941
    .local v1, exceptionString:Ljava/lang/String;
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v8, v8, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mOrignalPrice:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v8, v8, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mFanXian:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v8, v8, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mTotalPrice:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 951
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #exceptionString:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v8, v8, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 952
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v8, v8, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    const/high16 v9, -0x100

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1
.end method
