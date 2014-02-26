.class Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;
.super Ljava/lang/Object;
.source "QuickRegisterLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;)Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 132
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 133
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "mobileNum"

    iget-object v2, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->phoneNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->access$2(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 135
    const-string v1, "regMobileNum"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 136
    new-instance v1, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 220
    iget-object v1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 221
    return-void
.end method
