.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;
.super Ljava/lang/Object;
.source "NewFillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showBalanceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 605
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 611
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCurrBalance()Lcom/jingdong/common/entity/UsedBalance;

    move-result-object v0

    .line 614
    .local v0, currBalance:Lcom/jingdong/common/entity/UsedBalance;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UsedBalance;->isShowBanance()Z

    move-result v2

    if-nez v2, :cond_1

    .line 615
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutBalance:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$7(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 616
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIsUseBalance(Ljava/lang/Boolean;)V

    .line 652
    .end local v0           #currBalance:Lcom/jingdong/common/entity/UsedBalance;
    :goto_0
    return-void

    .line 618
    .restart local v0       #currBalance:Lcom/jingdong/common/entity/UsedBalance;
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutBalance:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$7(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 620
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIsOpenPaymentPassword()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 621
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIsUseBalance(Ljava/lang/Boolean;)V

    .line 623
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mCheckboxBalance:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$8(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIsUseBalance()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 624
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewBalance:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$9(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UsedBalance;->getBalanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mCheckboxBalance:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$8(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3$1;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$3;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 649
    .end local v0           #currBalance:Lcom/jingdong/common/entity/UsedBalance;
    :catch_0
    move-exception v1

    .line 650
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
