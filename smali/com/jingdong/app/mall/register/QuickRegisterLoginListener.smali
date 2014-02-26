.class public abstract Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;
.super Ljava/lang/Object;
.source "QuickRegisterLoginListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$QuickRegisterLoginStatusListener;
    }
.end annotation


# instance fields
.field public listener:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$QuickRegisterLoginStatusListener;

.field public myactivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field public pin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$QuickRegisterLoginStatusListener;Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 0
    .parameter "listener"
    .parameter "myactivity"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;->listener:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$QuickRegisterLoginStatusListener;

    .line 29
    iput-object p2, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;->myactivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 30
    return-void
.end method


# virtual methods
.method public abstract checkInputs()Z
.end method

.method public abstract getPassword()Ljava/lang/String;
.end method

.method public abstract getPhone()Ljava/lang/String;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;->checkInputs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;->getPhone()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, userName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, pwd:Ljava/lang/String;
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 61
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "username"

    invoke-virtual {v0, v3, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    const-string v3, "pwd"

    invoke-virtual {v0, v3, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    const-string v3, "type"

    const-string v4, "2"

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 65
    const-string v3, "register"

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 66
    new-instance v3, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 159
    iget-object v3, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;->myactivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method
