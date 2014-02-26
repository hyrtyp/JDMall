.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 821
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->vsp:Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;

    if-nez v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    new-instance v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    new-instance v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;)V

    .line 874
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-direct {v1, v2, v3, v4}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$QuickRegisterLoginStatusListener;Lcom/jingdong/app/mall/utils/MyActivity;)V

    .line 826
    iput-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->vsp:Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-boolean v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->verificationPass:Z

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->submit:Z

    .line 879
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getRemark()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$12(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 880
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->resetJBBody()Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$13(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lorg/json/JSONObject;

    .line 885
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->calculateOrder()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$14(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 891
    :goto_0
    return-void

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->vsp:Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->sendMobileEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;->setPhone(Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->vsp:Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->mobilePasswordEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;->setPassword(Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->vsp:Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;

    invoke-virtual {v0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$VerificationSMSPassword;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
