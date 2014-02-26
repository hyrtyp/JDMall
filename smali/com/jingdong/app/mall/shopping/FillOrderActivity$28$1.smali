.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$28$1;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$28$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;

    .line 3789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 3793
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$28$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdSecurity:Lcom/jingdong/common/entity/VirtualPayAvailable;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$18(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lcom/jingdong/common/entity/VirtualPayAvailable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/VirtualPayAvailable;->getBalanceAvailable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3794
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$28$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mCheckboxBalance:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$33(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3795
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$28$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdSecurity:Lcom/jingdong/common/entity/VirtualPayAvailable;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$18(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lcom/jingdong/common/entity/VirtualPayAvailable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/VirtualPayAvailable;->getBalanceTip()Ljava/lang/String;

    move-result-object v0

    .line 3796
    .local v0, balanceTip:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3797
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$28$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    const v2, 0x7f070425

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3799
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$28$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/jingdong/common/utils/DialogUtils;->showDailog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3817
    .end local v0           #balanceTip:Ljava/lang/String;
    :goto_0
    return-void

    .line 3803
    :cond_1
    sput-boolean p2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseBalance:Z

    .line 3805
    :try_start_0
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "IsUseBalance"

    sget-boolean v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseBalance:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3812
    :goto_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$28$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isUpdatePayment:Z

    .line 3815
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$28$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$13(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lorg/json/JSONObject;

    .line 3816
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$28$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$28;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->calculateOrder()V
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$14(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    goto :goto_0

    .line 3806
    :catch_0
    move-exception v1

    goto :goto_1
.end method
