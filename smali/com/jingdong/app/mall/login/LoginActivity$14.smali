.class Lcom/jingdong/app/mall/login/LoginActivity$14;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/jingdong/common/login/LoginUserBase$LoginRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/login/LoginActivity;->onLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/login/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$14;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginError(ILjava/lang/String;)V
    .locals 1
    .parameter "errorType"
    .parameter "msg"

    .prologue
    .line 1056
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$14;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #calls: Lcom/jingdong/app/mall/login/LoginActivity;->loginError(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/jingdong/app/mall/login/LoginActivity;->access$20(Lcom/jingdong/app/mall/login/LoginActivity;Ljava/lang/String;)V

    .line 1059
    :cond_0
    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "pin"

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$14;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #calls: Lcom/jingdong/app/mall/login/LoginActivity;->loginSuccess(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/jingdong/app/mall/login/LoginActivity;->access$19(Lcom/jingdong/app/mall/login/LoginActivity;Ljava/lang/String;)V

    .line 1048
    return-void
.end method
