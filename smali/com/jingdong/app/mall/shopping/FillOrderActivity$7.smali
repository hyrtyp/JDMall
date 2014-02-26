.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->handleClickEvent()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 705
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const v10, 0x7f07032b

    const v9, 0x7f07032a

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 710
    sget-boolean v5, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-eqz v5, :cond_3

    .line 712
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTempName:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$7(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v8, :cond_0

    .line 713
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-virtual {v6}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 807
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTempName:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$7(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jingdong/app/mall/utils/CommonUtil;->checkUsername(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 717
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-virtual {v6}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 721
    :cond_1
    :try_start_0
    sget-boolean v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->bUseBalance:Z

    if-eqz v5, :cond_2

    .line 722
    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v6, "IsUseBalance"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :goto_1
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTempName:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$7(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->addEasyBuyTemp(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$8(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 724
    :cond_2
    :try_start_1
    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v6, "IsUseBalance"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 727
    :catch_0
    move-exception v0

    .line 729
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 733
    .end local v0           #e:Lorg/json/JSONException;
    :cond_3
    sget-boolean v5, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v5, :cond_6

    .line 735
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTempName:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$7(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v8, :cond_4

    .line 736
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-virtual {v6}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 739
    :cond_4
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTempName:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$7(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jingdong/app/mall/utils/CommonUtil;->checkUsername(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 740
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-virtual {v6}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 744
    :cond_5
    :try_start_2
    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v6, "IsUseBalance"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 749
    :goto_2
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mTempName:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$7(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/jingdong/common/entity/DefaultEasyTempOrderInfo;->sTempId:Ljava/lang/Long;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->modifyEasyBuyTemp(Ljava/lang/String;Ljava/lang/Long;)V
    invoke-static {v5, v6, v7}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$9(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 745
    :catch_1
    move-exception v0

    .line 747
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 752
    .end local v0           #e:Lorg/json/JSONException;
    :cond_6
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->hideInputKey()V
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$10(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 754
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$11(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_7

    .line 764
    const/4 v2, 0x0

    :goto_4
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$11(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_9

    .line 782
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mSubmit:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setClickable(Z)V

    .line 783
    new-instance v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7$1;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7$1;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;)V

    .line 792
    invoke-virtual {v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7$1;->start()V

    .line 794
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iput-boolean v8, v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->submit:Z

    .line 796
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getRemark()V
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$12(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 797
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$13(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lorg/json/JSONObject;

    .line 799
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->calculateOrder()V
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$14(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    goto/16 :goto_0

    .line 755
    :cond_7
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$11(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 756
    .local v1, et:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_8

    .line 757
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$3(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f040010

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 758
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 754
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 765
    .end local v1           #et:Landroid/widget/EditText;
    :cond_9
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$11(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 766
    .restart local v1       #et:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 767
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 769
    .local v4, password:Ljava/lang/String;
    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 775
    :try_start_3
    sget-object v5, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/jingdong/common/utils/Md5Encrypt;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 764
    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 776
    :catch_2
    move-exception v0

    .line 777
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5
.end method
