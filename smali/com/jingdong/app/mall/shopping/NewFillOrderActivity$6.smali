.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$6;
.super Ljava/lang/Object;
.source "NewFillOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->handleClickEvent()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 844
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    const-class v3, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 846
    .local v1, t:Landroid/content/Intent;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->toOldModelForUserInfo()Lcom/jingdong/common/entity/UserInfo;

    move-result-object v2

    sput-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    .line 847
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->toOldModelForPaymentInfo()Lcom/jingdong/common/entity/PaymentInfo;

    move-result-object v2

    sput-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    .line 850
    new-instance v0, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    invoke-direct {v0}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;-><init>()V

    .line 851
    .local v0, bigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getBigItemCodDateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;->setName(Ljava/lang/String;)V

    .line 852
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getBigItemCodDateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;->setValue(Ljava/lang/String;)V

    .line 853
    const-string v2, "selectBigitem"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 854
    const-string v2, "pin"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/NewCurrentOrder;->getPin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    const-string v2, "PromiseTime"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$13(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 857
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdPickSite()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 858
    const-string v2, "IdPickSite"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdPickSite()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 861
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 862
    return-void
.end method
