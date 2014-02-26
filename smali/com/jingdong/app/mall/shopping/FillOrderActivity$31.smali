.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setMoneyInfo(Lcom/jingdong/common/utils/JSONArrayPoxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

.field private final synthetic val$jbMoney:Lcom/jingdong/common/utils/JSONArrayPoxy;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->val$jbMoney:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 4043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showPriceDifferentRemind(Ljava/lang/String;)V
    .locals 6
    .parameter "newValue"

    .prologue
    .line 4109
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->priceDifferentRemindTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$47(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->priceDifferentTips:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$48(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4131
    :cond_0
    :goto_0
    return-void

    .line 4113
    :cond_1
    sget-object v4, Lcom/jingdong/common/constant/Constants;->dYTotalPrice:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4114
    sget-object v4, Lcom/jingdong/common/constant/Constants;->dYTotalPrice:Ljava/lang/String;

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4117
    :try_start_0
    sget-object v4, Lcom/jingdong/common/constant/Constants;->dYTotalPrice:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 4118
    .local v2, oldPrice:D
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 4119
    .local v0, newPrice:D
    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    .line 4120
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->priceDifferentRemindTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$47(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4121
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->priceDifferentRemindTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$47(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->priceDifferentTips:Ljava/lang/String;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$48(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4124
    .end local v0           #newPrice:D
    .end local v2           #oldPrice:D
    :catch_0
    move-exception v4

    .line 4130
    :cond_2
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->priceDifferentRemindTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$47(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 4047
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->val$jbMoney:Lcom/jingdong/common/utils/JSONArrayPoxy;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->settleContent:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$43(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/view/ViewGroup;

    move-result-object v6

    if-nez v6, :cond_1

    .line 4100
    :cond_0
    return-void

    .line 4051
    :cond_1
    const-string v0, "\u5143"

    .line 4055
    .local v0, RMB:Ljava/lang/String;
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->settleContent:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$43(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4057
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->val$jbMoney:Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-virtual {v6}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 4059
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->val$jbMoney:Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-virtual {v6, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    .line 4060
    .local v4, temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-nez v4, :cond_3

    .line 4057
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4065
    :cond_3
    const-string v6, "label"

    invoke-virtual {v4, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4066
    .local v2, lable:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4071
    const-string v6, "value"

    invoke-virtual {v4, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4072
    .local v5, value:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4073
    const-string v5, ""

    .line 4077
    :cond_4
    const-string v6, "operator"

    invoke-virtual {v4, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4078
    .local v3, operator:Ljava/lang/String;
    if-nez v3, :cond_5

    .line 4079
    const-string v3, ""

    .line 4082
    :cond_5
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->settleContent:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$43(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/view/ViewGroup;

    move-result-object v7

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->initSettleView(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v2, v3, v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$44(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4084
    const-string v6, "\u5546\u54c1\u91d1\u989d"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4086
    invoke-direct {p0, v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->showPriceDifferentRemind(Ljava/lang/String;)V

    .line 4088
    sput-object v5, Lcom/jingdong/common/constant/Constants;->dYTotalPrice:Ljava/lang/String;

    goto :goto_1

    .line 4090
    :cond_6
    const-string v6, "\u5e94\u4ed8\u603b\u989d"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4091
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mFinalPriceTv:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$45(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$3(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0704ed

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4092
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-boolean v6, v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNoRegisterOrder:Z

    if-eqz v6, :cond_7

    .line 4093
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mSubmitLayout:Landroid/view/View;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$46(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 4095
    :cond_7
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$31;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iput-object v5, v6, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sTotalMoney:Ljava/lang/String;

    .line 4096
    sput-object v5, Lcom/jingdong/common/constant/Constants;->dTotalPrice:Ljava/lang/String;

    goto/16 :goto_1
.end method
