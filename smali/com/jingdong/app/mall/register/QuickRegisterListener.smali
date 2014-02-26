.class public abstract Lcom/jingdong/app/mall/register/QuickRegisterListener;
.super Ljava/lang/Object;
.source "QuickRegisterListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;
    }
.end annotation


# instance fields
.field public listener:Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;

.field public myactivity:Lcom/jingdong/app/mall/utils/MyActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 0
    .parameter "listener"
    .parameter "myactivity"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterListener;->listener:Lcom/jingdong/app/mall/register/QuickRegisterListener$QuickRegisterStatusListener;

    .line 24
    iput-object p2, p0, Lcom/jingdong/app/mall/register/QuickRegisterListener;->myactivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 25
    return-void
.end method


# virtual methods
.method public abstract checkInputs()Z
.end method

.method public abstract getPhone()Ljava/lang/String;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/QuickRegisterListener;->checkInputs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 45
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "mobileNum"

    invoke-virtual {p0}, Lcom/jingdong/app/mall/register/QuickRegisterListener;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 47
    const-string v1, "regMobileNum"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 48
    new-instance v1, Lcom/jingdong/app/mall/register/QuickRegisterListener$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/register/QuickRegisterListener$1;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterListener;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 99
    iget-object v1, p0, Lcom/jingdong/app/mall/register/QuickRegisterListener;->myactivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method
