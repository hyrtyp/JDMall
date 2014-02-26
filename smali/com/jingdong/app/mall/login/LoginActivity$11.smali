.class Lcom/jingdong/app/mall/login/LoginActivity$11;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/login/LoginActivity;->loginSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/login/LoginActivity;

.field private final synthetic val$pinName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/login/LoginActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$11;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/login/LoginActivity$11;->val$pinName:Ljava/lang/String;

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 713
    const-string v0, "annualToken"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->getStringFromPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    sput-boolean v2, Lcom/jingdong/app/mall/amHelper/AmHelper;->isShowDialog:Z

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$11;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/login/LoginActivity;->mRememberMe:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$11;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$11;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/login/LoginActivity;->mRememberMe:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    #setter for: Lcom/jingdong/app/mall/login/LoginActivity;->bRememberMe:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/login/LoginActivity;->access$10(Lcom/jingdong/app/mall/login/LoginActivity;Z)V

    .line 722
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$11;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->bRememberMe:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity;->access$12(Lcom/jingdong/app/mall/login/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 723
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/jingdong/common/login/SafetyManager;->setRemember(Z)V

    .line 724
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$11;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/login/LoginActivity;->onRemember()V

    .line 729
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$11;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/login/LoginActivity;->sUserName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 730
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$11;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/login/LoginActivity;->sUserName:Ljava/lang/String;

    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity;->saveUserName(Ljava/lang/String;)V

    .line 736
    :goto_1
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$11;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity;->afterSuccess(Lcom/jingdong/app/mall/utils/MyActivity;)V

    .line 744
    :goto_2
    return-void

    .line 726
    :cond_2
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->clearSafety()V

    goto :goto_0

    .line 738
    :catch_0
    move-exception v0

    goto :goto_2

    .line 732
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$11;->val$pinName:Ljava/lang/String;

    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity;->saveUserName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
