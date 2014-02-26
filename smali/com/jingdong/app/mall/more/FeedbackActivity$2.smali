.class Lcom/jingdong/app/mall/more/FeedbackActivity$2;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/FeedbackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/FeedbackActivity$2;)Lcom/jingdong/app/mall/more/FeedbackActivity;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/more/FeedbackActivity;->choosedType:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/more/FeedbackActivity;->choosedType:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/more/FeedbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0702cd

    invoke-static {v2, v3}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 175
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/more/FeedbackActivity;->mFeedbackContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/more/FeedbackActivity;->mFeedbackContent:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/more/FeedbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0702cc

    invoke-static {v2, v3}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "FEEDBACKER_CONTACT"

    .line 100
    iget-object v3, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/more/FeedbackActivity;->mFeedbackContact:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 100
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 102
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "contact"

    iget-object v2, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/more/FeedbackActivity;->mFeedbackContact:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v1, "type"

    iget-object v2, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/more/FeedbackActivity;->choosedType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string v1, "partner"

    const-string v2, "partner"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    const-string v1, "content"

    iget-object v2, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/more/FeedbackActivity;->mFeedbackContent:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    const-string v1, "feedBack"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 107
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 108
    new-instance v1, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;-><init>(Lcom/jingdong/app/mall/more/FeedbackActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 173
    iget-object v1, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/more/FeedbackActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto/16 :goto_0
.end method
