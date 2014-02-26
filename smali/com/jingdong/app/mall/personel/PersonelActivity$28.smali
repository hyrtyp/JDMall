.class Lcom/jingdong/app/mall/personel/PersonelActivity$28;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Lcom/jingdong/common/login/LoginUserBase$LoginRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->onLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

.field private final synthetic val$finalPassword:Ljava/lang/String;

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$28;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$28;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$28;->val$finalPassword:Ljava/lang/String;

    .line 2519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginError(ILjava/lang/String;)V
    .locals 1
    .parameter "errorType"
    .parameter "msg"

    .prologue
    .line 2535
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2536
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$28;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->loginError(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$66(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;)V

    .line 2538
    :cond_0
    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .locals 3
    .parameter "pin"

    .prologue
    .line 2526
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$28;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$28;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$28;->val$finalPassword:Ljava/lang/String;

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->loginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$65(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    return-void
.end method
