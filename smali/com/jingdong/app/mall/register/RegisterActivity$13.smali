.class Lcom/jingdong/app/mall/register/RegisterActivity$13;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/jingdong/common/login/LoginUserBase$LoginRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/RegisterActivity;->onLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/register/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$13;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginError(ILjava/lang/String;)V
    .locals 1
    .parameter "errorType"
    .parameter "msg"

    .prologue
    .line 648
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$13;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    #calls: Lcom/jingdong/app/mall/register/RegisterActivity;->loginError(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/jingdong/app/mall/register/RegisterActivity;->access$6(Lcom/jingdong/app/mall/register/RegisterActivity;Ljava/lang/String;)V

    .line 651
    :cond_0
    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "pin"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$13;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    #calls: Lcom/jingdong/app/mall/register/RegisterActivity;->loginSuccess(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/jingdong/app/mall/register/RegisterActivity;->access$5(Lcom/jingdong/app/mall/register/RegisterActivity;Ljava/lang/String;)V

    .line 640
    return-void
.end method
