.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->showJdbeanView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 3833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 3833
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3839
    :try_start_0
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->currJdbean:Lcom/jingdong/common/entity/UsedJdbean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdSecurity:Lcom/jingdong/common/entity/VirtualPayAvailable;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$18(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lcom/jingdong/common/entity/VirtualPayAvailable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3903
    :cond_0
    :goto_0
    return-void

    .line 3843
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-boolean v1, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->currJdbean:Lcom/jingdong/common/entity/UsedJdbean;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UsedJdbean;->getIsShowJdbean()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3844
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mLayoutJdbean:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$35(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3845
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseJdbean:Z

    .line 3846
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "isUseJdBean"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3900
    :catch_0
    move-exception v0

    .line 3901
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3848
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mLayoutJdbean:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$35(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3850
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdSecurity:Lcom/jingdong/common/entity/VirtualPayAvailable;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$18(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lcom/jingdong/common/entity/VirtualPayAvailable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/VirtualPayAvailable;->getJdBeanAvailable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3851
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseJdbean:Z

    .line 3852
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "isUseJdBean"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3856
    :goto_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mCheckboxJdbean:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$36(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    sget-boolean v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseJdbean:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3857
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTextViewJdbean:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$37(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->currJdbean:Lcom/jingdong/common/entity/UsedJdbean;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/UsedJdbean;->getJdbeanName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3860
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mCheckboxJdbean:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$36(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    .line 3861
    new-instance v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29$1;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 3854
    :cond_4
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "isUseJdBean"

    sget-boolean v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseJdbean:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
