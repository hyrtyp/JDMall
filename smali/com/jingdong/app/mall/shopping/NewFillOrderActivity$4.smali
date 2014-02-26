.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$4;
.super Ljava/lang/Object;
.source "NewFillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showJdbeanView()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$4;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 661
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 667
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCurrJdbean()Lcom/jingdong/common/entity/UsedJdbean;

    move-result-object v0

    .line 669
    .local v0, currJdbean:Lcom/jingdong/common/entity/UsedJdbean;
    if-nez v0, :cond_0

    .line 711
    .end local v0           #currJdbean:Lcom/jingdong/common/entity/UsedJdbean;
    :goto_0
    return-void

    .line 673
    .restart local v0       #currJdbean:Lcom/jingdong/common/entity/UsedJdbean;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UsedJdbean;->getIsShowJdbean()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 674
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutJdbean:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$10(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 675
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIsUseJdBean(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 708
    .end local v0           #currJdbean:Lcom/jingdong/common/entity/UsedJdbean;
    :catch_0
    move-exception v1

    .line 709
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 677
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #currJdbean:Lcom/jingdong/common/entity/UsedJdbean;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutJdbean:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$10(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 679
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIsOpenPaymentPassword()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 680
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/NewCurrentOrder;->setIsUseJdBean(Ljava/lang/Boolean;)V

    .line 683
    :cond_3
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mCheckboxJdbean:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$11(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIsUseJdBean()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 684
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewJdbean:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$12(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UsedJdbean;->getJdbeanName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mCheckboxJdbean:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$11(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$4$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$4$1;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$4;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
