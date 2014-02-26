.class Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;
.super Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;
.source "ConfirmOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    .line 217
    invoke-direct {p0}, Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    return-object v0
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 11
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 222
    const-string v6, "@@@@@@@@@@@%s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    const-string v6, "error"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 224
    .local v1, error:Lcom/jd/lottery/lib/data/Constants$API_ERROR;
    if-eqz v1, :cond_1

    sget-object v6, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->UNDEFINED:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    if-eq v1, v6, :cond_1

    .line 225
    sget-object v6, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->SUCCESS:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    if-eq v1, v6, :cond_1

    .line 227
    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    invoke-virtual {v6}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->getErrMsg()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_submit:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$7(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 229
    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$8(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 230
    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$8(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v7, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    const-string v6, "data"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jd/lottery/lib/model/OrderInfoEntity;

    #setter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->orderInfoEntity:Lcom/jd/lottery/lib/model/OrderInfoEntity;
    invoke-static {v7, v6}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$9(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;Lcom/jd/lottery/lib/model/OrderInfoEntity;)V

    .line 235
    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->orderInfoEntity:Lcom/jd/lottery/lib/model/OrderInfoEntity;
    invoke-static {v6}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$10(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/OrderInfoEntity;

    move-result-object v6

    if-nez v6, :cond_2

    .line 236
    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_submit:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$7(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 237
    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$8(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 238
    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$8(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 242
    :cond_2
    const-string v6, "@@@@@@@@@@@%s"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->orderInfoEntity:Lcom/jd/lottery/lib/model/OrderInfoEntity;
    invoke-static {v8}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$10(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/OrderInfoEntity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jd/lottery/lib/model/OrderInfoEntity;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v6

    iget-object v7, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mKind:I
    invoke-static {v7}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$11(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->clear(I)V

    .line 247
    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mPayType:Lcom/jd/lottery/lib/data/Constants$PayType;
    invoke-static {v6}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$12(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/data/Constants$PayType;

    move-result-object v6

    sget-object v7, Lcom/jd/lottery/lib/data/Constants$PayType;->PayOnline:Lcom/jd/lottery/lib/data/Constants$PayType;

    if-eq v6, v7, :cond_3

    .line 248
    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    invoke-virtual {v6}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/jd/lottery/lib/R$string;->lottery_order_success:I

    invoke-static {v6, v7}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->longToast(Landroid/content/Context;I)V

    .line 249
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 250
    .local v2, intent:Landroid/content/Intent;
    const/high16 v6, 0x400

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 251
    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    invoke-virtual {v6}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/jd/lottery/lib/activity/MainActivity;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 252
    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    invoke-virtual {v6, v2}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->startActivity(Landroid/content/Intent;)V

    .line 253
    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_submit:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$7(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 254
    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$8(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 255
    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$8(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 260
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/jd/lottery/lib/utils/Util;->getHostDeviceInfo()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, device:Ljava/lang/String;
    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->orderInfoEntity:Lcom/jd/lottery/lib/model/OrderInfoEntity;
    invoke-static {v6}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$10(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/OrderInfoEntity;

    move-result-object v6

    iget-object v6, v6, Lcom/jd/lottery/lib/model/OrderInfoEntity;->erporderid:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v4, v6

    .line 264
    .local v4, orderId:J
    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    const-string v7, "pay"

    invoke-static {}, Lcom/jd/lottery/lib/data/UserManager;->getInstance()Lcom/jd/lottery/lib/data/UserManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jd/lottery/lib/data/UserManager;->getCookie()Ljava/lang/String;

    move-result-object v8

    .line 265
    new-instance v9, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2$1;

    invoke-direct {v9, p0, v4, v5}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2$1;-><init>(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;J)V

    .line 263
    invoke-static {v6, v0, v7, v8, v9}, Lcom/jd/lottery/lib/service/DataIntentService;->getLotteryTokenIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v3

    .line 290
    .local v3, it:Landroid/content/Intent;
    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    invoke-virtual {v6, v3}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 291
    iget-object v6, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_submit:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$7(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0
.end method
