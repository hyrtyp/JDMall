.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;
.super Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;
.source "FillOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerificationSMSPassword"
.end annotation


# instance fields
.field password:Ljava/lang/String;

.field phone:Ljava/lang/String;

.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$QuickRegisterLoginStatusListener;Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 0
    .parameter
    .parameter "listener"
    .parameter "myactivity"

    .prologue
    .line 6943
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 6944
    invoke-direct {p0, p2, p3}, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$QuickRegisterLoginStatusListener;Lcom/jingdong/app/mall/utils/MyActivity;)V

    .line 6945
    return-void
.end method


# virtual methods
.method public checkInputs()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6954
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;->phone:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 6955
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendMobileEt:Landroid/widget/EditText;

    const-string v2, "<font color=\'red\'>\u624b\u673a\u53f7\u4e3a\u7a7a,\u8bf7\u8f93\u5165!</font>"

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 6961
    :goto_0
    return v0

    .line 6957
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;->password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 6958
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mobilePasswordEt:Landroid/widget/EditText;

    const-string v2, "<font color=\'red\'>\u5bc6\u7801\u4e3a\u7a7a,\u8bf7\u8f93\u5165!</font>"

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6961
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6968
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6949
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 6976
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;->password:Ljava/lang/String;

    .line 6977
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 6972
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;->phone:Ljava/lang/String;

    .line 6973
    return-void
.end method
