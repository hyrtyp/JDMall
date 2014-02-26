.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3$1;
.super Ljava/lang/Object;
.source "NewFillOrderActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 631
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIsOpenPaymentPassword()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mCheckboxBalance:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$8(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 633
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getOpenPasswordTip()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, balanceTip:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-result-object v1

    const v2, 0x7f070425

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 637
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/jingdong/common/utils/DialogUtils;->showDailog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 645
    .end local v0           #balanceTip:Ljava/lang/String;
    :goto_0
    return-void

    .line 641
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIsUseBalance(Ljava/lang/Boolean;)V

    .line 643
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mController:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$5(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jingdong/common/controller/NewFillOrderController;->setBalanceChangeFlag(Z)V

    .line 644
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mController:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$5(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3$1;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewFillOrderListener:Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$6(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/controller/NewFillOrderController;->syncFillOrder(Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;)V

    goto :goto_0
.end method
