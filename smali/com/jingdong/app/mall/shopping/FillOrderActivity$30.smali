.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->messageAfterSubmit(Lcom/jingdong/common/utils/JSONObjectProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

.field private final synthetic val$message:Lcom/jingdong/common/utils/JSONObjectProxy;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->val$message:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 3909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 3909
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    .line 3917
    :try_start_0
    sget-object v9, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v9, v9, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 3918
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const-string v10, "\u8d27\u5230\u4ed8\u6b3e"

    iput-object v10, v9, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sPayWay:Ljava/lang/String;

    .line 3929
    :goto_0
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->val$message:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v10, "submitOrder"

    invoke-virtual {v9, v10}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    .line 3930
    .local v7, orderSubmit:Lcom/jingdong/common/utils/JSONObjectProxy;
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const-string v10, "OrderId"

    invoke-virtual {v7, v10}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sOrderNo:Ljava/lang/String;

    .line 3932
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v9, v9, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sOrderNo:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "0"

    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v10, v10, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sOrderNo:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 3933
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->val$message:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v10, "onlinePay"

    invoke-virtual {v9, v10}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 3936
    .local v0, allowOnlinePay:Ljava/lang/Boolean;
    const-string v9, "Price"

    invoke-virtual {v7, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3940
    .local v6, orderPrice:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 3941
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iput-object v6, v9, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sTotalMoney:Ljava/lang/String;

    .line 3945
    :cond_0
    sget-object v9, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v9, v9, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    if-ne v9, v11, :cond_6

    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isOnlinePay(Ljava/lang/Boolean;)Z
    invoke-static {v9, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$38(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/Boolean;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3946
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v9, v9, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sTotalMoney:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v9, v9, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sTotalMoney:Ljava/lang/String;

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 3947
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->doOnlinePay()V
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$39(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 3948
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetCoupon()V
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$40(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 4021
    .end local v0           #allowOnlinePay:Ljava/lang/Boolean;
    .end local v6           #orderPrice:Ljava/lang/String;
    .end local v7           #orderSubmit:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_1
    :goto_1
    return-void

    .line 3919
    :cond_2
    sget-object v9, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v9, v9, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 3920
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const-string v10, "\u90ae\u5c40\u6c47\u6b3e"

    iput-object v10, v9, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sPayWay:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4010
    :catch_0
    move-exception v2

    .line 4011
    .local v2, e:Lorg/json/JSONException;
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetCoupon()V
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$40(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    goto :goto_1

    .line 3921
    .end local v2           #e:Lorg/json/JSONException;
    :cond_3
    :try_start_1
    sget-object v9, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v9, v9, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    .line 3922
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const-string v10, "\u4eac\u4e1c\u81ea\u63d0"

    iput-object v10, v9, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sPayWay:Ljava/lang/String;

    goto/16 :goto_0

    .line 3923
    :cond_4
    sget-object v9, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v9, v9, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    if-ne v9, v11, :cond_5

    .line 3924
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const-string v10, "\u5728\u7ebf\u652f\u4ed8"

    iput-object v10, v9, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sPayWay:Ljava/lang/String;

    goto/16 :goto_0

    .line 3926
    :cond_5
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const-string v10, "\u516c\u53f8\u8f6c\u8d26"

    iput-object v10, v9, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sPayWay:Ljava/lang/String;

    goto/16 :goto_0

    .line 3952
    .restart local v0       #allowOnlinePay:Ljava/lang/Boolean;
    .restart local v6       #orderPrice:Ljava/lang/String;
    .restart local v7       #orderSubmit:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_6
    sget-boolean v9, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v9, :cond_8

    .line 3953
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    sput-object v9, Lcom/jingdong/common/constant/Constants;->jbOrderNum:Lorg/json/JSONObject;

    .line 3954
    sget-object v9, Lcom/jingdong/common/constant/Constants;->jbOrderNum:Lorg/json/JSONObject;

    const-string v10, "orderId"

    const-string v11, "OrderId"

    invoke-virtual {v7, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3961
    :goto_2
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const-class v10, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3962
    .local v4, it:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3963
    .local v1, bundle:Landroid/os/Bundle;
    const-string v9, "order_no"

    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v10, v10, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sOrderNo:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3964
    const-string v9, "order_money"

    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v10, v10, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sTotalMoney:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3965
    const-string v9, "order_way"

    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v10, v10, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sPayWay:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3966
    const-string v9, "is_Easy_Buy"

    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-boolean v10, v10, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3968
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-boolean v9, v9, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNoRegisterOrder:Z

    if-nez v9, :cond_7

    .line 3969
    const-string v9, "isNoRegisterOrder"

    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-boolean v10, v10, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNoRegisterOrder:Z

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3970
    const-string v9, "MobileNumber"

    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v10, v10, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendMobileEt:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3973
    :cond_7
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->val$message:Lcom/jingdong/common/utils/JSONObjectProxy;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->val$message:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-virtual {v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "coMsg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->val$message:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v10, "coMsg"

    invoke-virtual {v9, v10}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "null"

    if-eq v9, v10, :cond_9

    .line 3974
    const-string v9, "order_msg"

    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->val$message:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v11, "coMsg"

    invoke-virtual {v10, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3978
    :goto_3
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3979
    new-instance v9, Lcom/jingdong/common/entity/UserInfo;

    invoke-direct {v9}, Lcom/jingdong/common/entity/UserInfo;-><init>()V

    sput-object v9, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 3980
    new-instance v9, Lcom/jingdong/common/entity/PaymentInfo;

    invoke-direct {v9}, Lcom/jingdong/common/entity/PaymentInfo;-><init>()V

    sput-object v9, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 3981
    new-instance v9, Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-direct {v9}, Lcom/jingdong/common/entity/InvoiceInfo;-><init>()V

    sput-object v9, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    .line 3982
    new-instance v9, Lcom/jingdong/common/entity/YouHuiQuan;

    invoke-direct {v9}, Lcom/jingdong/common/entity/YouHuiQuan;-><init>()V

    sput-object v9, Lcom/jingdong/common/entity/LastOrderInfo;->mYouhuiQuan:Lcom/jingdong/common/entity/YouHuiQuan;

    .line 3983
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v9

    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-virtual {v9, v10, v4}, Lcom/jingdong/app/mall/utils/CommonUtil;->startActivityInFrame(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3985
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetCoupon()V
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$40(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    goto/16 :goto_1

    .line 3957
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #it:Landroid/content/Intent;
    :cond_8
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->clearCart()V
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$41(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    goto/16 :goto_2

    .line 3976
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #it:Landroid/content/Intent;
    :cond_9
    const-string v9, "order_msg"

    const-string v10, " "

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3988
    .end local v0           #allowOnlinePay:Ljava/lang/Boolean;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #it:Landroid/content/Intent;
    .end local v6           #orderPrice:Ljava/lang/String;
    :cond_a
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->val$message:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v10, "submitOrder"

    invoke-virtual {v9, v10}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v8

    .line 3989
    .local v8, result:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v8, :cond_1

    .line 3990
    const-string v9, "Message"

    invoke-virtual {v8, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3991
    .local v5, msg:Ljava/lang/String;
    const-string v9, "isIdTown"

    invoke-virtual {v8, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 3993
    .local v3, isNoIdTown:Ljava/lang/Boolean;
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_e

    .line 3994
    :cond_b
    if-eqz v5, :cond_c

    const-string v9, "null"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    :cond_c
    const-string v5, "\u8ba2\u5355\u63d0\u4ea4\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\u3002"

    .end local v5           #msg:Ljava/lang/String;
    :cond_d
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-static {v5, v9}, Lcom/jingdong/common/constant/Constants;->ShowMsg(Ljava/lang/String;Lcom/jingdong/common/frame/IMyActivity;)V

    goto/16 :goto_1

    .line 3996
    .restart local v5       #msg:Ljava/lang/String;
    :cond_e
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    if-eqz v5, :cond_f

    const-string v10, "null"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    :cond_f
    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const v11, 0x7f070500

    invoke-virtual {v10, v11}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .end local v5           #msg:Ljava/lang/String;
    :cond_10
    new-instance v10, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30$1;

    invoke-direct {v10, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$30$1;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$30;)V

    invoke-static {v9, v5, v10}, Lcom/jingdong/common/utils/DialogUtils;->showDailog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
