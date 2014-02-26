.class Lcom/jingdong/app/mall/search/CorrectionActivity$2;
.super Ljava/lang/Object;
.source "CorrectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/search/CorrectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/search/CorrectionActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/search/CorrectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2;->this$0:Lcom/jingdong/app/mall/search/CorrectionActivity;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/search/CorrectionActivity$2;)Lcom/jingdong/app/mall/search/CorrectionActivity;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2;->this$0:Lcom/jingdong/app/mall/search/CorrectionActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 88
    iget-object v5, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2;->this$0:Lcom/jingdong/app/mall/search/CorrectionActivity;

    #getter for: Lcom/jingdong/app/mall/search/CorrectionActivity;->choosedType:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/jingdong/app/mall/search/CorrectionActivity;->access$0(Lcom/jingdong/app/mall/search/CorrectionActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    iget-object v5, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2;->this$0:Lcom/jingdong/app/mall/search/CorrectionActivity;

    #getter for: Lcom/jingdong/app/mall/search/CorrectionActivity;->choosedType:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/jingdong/app/mall/search/CorrectionActivity;->access$0(Lcom/jingdong/app/mall/search/CorrectionActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2;->this$0:Lcom/jingdong/app/mall/search/CorrectionActivity;

    invoke-virtual {v6}, Lcom/jingdong/app/mall/search/CorrectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0702cd

    invoke-static {v6, v7}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 191
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v5, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2;->this$0:Lcom/jingdong/app/mall/search/CorrectionActivity;

    #getter for: Lcom/jingdong/app/mall/search/CorrectionActivity;->mFeedbackContent:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/jingdong/app/mall/search/CorrectionActivity;->access$1(Lcom/jingdong/app/mall/search/CorrectionActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    iget-object v5, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2;->this$0:Lcom/jingdong/app/mall/search/CorrectionActivity;

    #getter for: Lcom/jingdong/app/mall/search/CorrectionActivity;->mFeedbackContent:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/jingdong/app/mall/search/CorrectionActivity;->access$1(Lcom/jingdong/app/mall/search/CorrectionActivity;)Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2;->this$0:Lcom/jingdong/app/mall/search/CorrectionActivity;

    invoke-virtual {v6}, Lcom/jingdong/app/mall/search/CorrectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0703fc

    invoke-static {v6, v7}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_1
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 97
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    sget-object v4, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_type_array:[Ljava/lang/String;

    .line 101
    .local v4, types:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 102
    .local v1, index:I
    const-string v3, "0"

    .line 103
    .local v3, price:Ljava/lang/String;
    const-string v2, ""

    .line 105
    .local v2, phone:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2;->this$0:Lcom/jingdong/app/mall/search/CorrectionActivity;

    #getter for: Lcom/jingdong/app/mall/search/CorrectionActivity;->choosedType:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/jingdong/app/mall/search/CorrectionActivity;->access$0(Lcom/jingdong/app/mall/search/CorrectionActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 106
    iget-object v5, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2;->this$0:Lcom/jingdong/app/mall/search/CorrectionActivity;

    #getter for: Lcom/jingdong/app/mall/search/CorrectionActivity;->mFeedbackPrice:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/jingdong/app/mall/search/CorrectionActivity;->access$2(Lcom/jingdong/app/mall/search/CorrectionActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, "0"

    .line 108
    :cond_2
    iget-object v5, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2;->this$0:Lcom/jingdong/app/mall/search/CorrectionActivity;

    #getter for: Lcom/jingdong/app/mall/search/CorrectionActivity;->mFeedbackPhone:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/jingdong/app/mall/search/CorrectionActivity;->access$3(Lcom/jingdong/app/mall/search/CorrectionActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_3
    :goto_1
    const-string v5, "type"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putMapParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v5, "imgPath"

    iget-object v6, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2;->this$0:Lcom/jingdong/app/mall/search/CorrectionActivity;

    invoke-virtual {v6}, Lcom/jingdong/app/mall/search/CorrectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "imgPath"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    const-string v5, "resultList"

    iget-object v6, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2;->this$0:Lcom/jingdong/app/mall/search/CorrectionActivity;

    invoke-virtual {v6}, Lcom/jingdong/app/mall/search/CorrectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "resultList"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    const-string v5, "price"

    invoke-virtual {v0, v5, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    const-string v5, "phone"

    invoke-virtual {v0, v5, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    const-string v5, "description"

    iget-object v6, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2;->this$0:Lcom/jingdong/app/mall/search/CorrectionActivity;

    #getter for: Lcom/jingdong/app/mall/search/CorrectionActivity;->mFeedbackContent:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/jingdong/app/mall/search/CorrectionActivity;->access$1(Lcom/jingdong/app/mall/search/CorrectionActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    const-string v5, "recorrect"

    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 122
    const-string v5, "paiHost"

    invoke-static {v5}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 123
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 124
    new-instance v5, Lcom/jingdong/app/mall/search/CorrectionActivity$2$1;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/search/CorrectionActivity$2$1;-><init>(Lcom/jingdong/app/mall/search/CorrectionActivity$2;)V

    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 189
    iget-object v5, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2;->this$0:Lcom/jingdong/app/mall/search/CorrectionActivity;

    invoke-virtual {v5}, Lcom/jingdong/app/mall/search/CorrectionActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto/16 :goto_0

    .line 110
    :catch_0
    move-exception v5

    goto :goto_1
.end method
