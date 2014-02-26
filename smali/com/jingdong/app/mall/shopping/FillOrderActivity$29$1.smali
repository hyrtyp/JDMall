.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$29$1;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;

    .line 3861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 3867
    if-eqz p2, :cond_1

    .line 3868
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdSecurity:Lcom/jingdong/common/entity/VirtualPayAvailable;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$18(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lcom/jingdong/common/entity/VirtualPayAvailable;

    move-result-object v1

    .line 3869
    invoke-virtual {v1}, Lcom/jingdong/common/entity/VirtualPayAvailable;->getJdBeanAvailable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3870
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mCheckboxJdbean:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$36(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3871
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdSecurity:Lcom/jingdong/common/entity/VirtualPayAvailable;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$18(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lcom/jingdong/common/entity/VirtualPayAvailable;

    move-result-object v1

    .line 3872
    invoke-virtual {v1}, Lcom/jingdong/common/entity/VirtualPayAvailable;->getJdBeanTip()Ljava/lang/String;

    move-result-object v0

    .line 3873
    .local v0, jdbeanTip:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3874
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    const v2, 0x7f070426

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3877
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    .line 3878
    const/4 v2, 0x0

    .line 3876
    invoke-static {v1, v0, v2}, Lcom/jingdong/common/utils/DialogUtils;->showDailog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3897
    .end local v0           #jdbeanTip:Ljava/lang/String;
    :goto_0
    return-void

    .line 3882
    :cond_1
    sput-boolean p2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseJdbean:Z

    .line 3884
    :try_start_0
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "isUseJdBean"

    .line 3885
    sget-boolean v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseJdbean:Z

    .line 3884
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3892
    :goto_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isUpdatePayment:Z

    .line 3895
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$13(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lorg/json/JSONObject;

    .line 3896
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$29;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->calculateOrder()V
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$14(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    goto :goto_0

    .line 3886
    :catch_0
    move-exception v1

    goto :goto_1
.end method
