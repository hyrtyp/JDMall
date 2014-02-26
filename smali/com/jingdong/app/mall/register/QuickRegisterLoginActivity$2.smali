.class Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$2;
.super Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;
.source "QuickRegisterLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$QuickRegisterLoginStatusListener;Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$2;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    .line 252
    invoke-direct {p0, p2, p3}, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$QuickRegisterLoginStatusListener;Lcom/jingdong/app/mall/utils/MyActivity;)V

    return-void
.end method


# virtual methods
.method public checkInputs()Z
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$2;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$2;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->inputCheck(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    iget-object v1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$2;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->registerPwdEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->access$3(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, registerPwd:Ljava/lang/String;
    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    iget-object v1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$2;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->phoneNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->access$2(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, phoneStr:Ljava/lang/String;
    return-object v0
.end method
