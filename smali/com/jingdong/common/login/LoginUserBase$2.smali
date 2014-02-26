.class Lcom/jingdong/common/login/LoginUserBase$2;
.super Ljava/lang/Object;
.source "LoginUserBase.java"

# interfaces
.implements Lcom/jingdong/common/login/LoginUserBase$LoginRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/login/LoginUserBase;->executeLoginRunnableForCheckNetwork(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/login/LoginUserBase$2;->val$runnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/jingdong/common/login/LoginUserBase$2;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginError(ILjava/lang/String;)V
    .locals 0
    .parameter "errorType"
    .parameter "msg"

    .prologue
    .line 243
    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "pin"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/jingdong/common/login/LoginUserBase$2;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/jingdong/common/login/LoginUserBase$2;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iget-object v1, p0, Lcom/jingdong/common/login/LoginUserBase$2;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 239
    :cond_0
    return-void
.end method
