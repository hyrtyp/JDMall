.class Lcom/jingdong/app/mall/utils/LoginUser$3;
.super Ljava/lang/Object;
.source "LoginUser.java"

# interfaces
.implements Lcom/jingdong/common/login/LoginUserBase$LoginRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/Runnable;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/LoginUser;

.field private final synthetic val$forResultRequestCode:I

.field private final synthetic val$isStartActivityInFrameForLogin:Z

.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private final synthetic val$runnable:Ljava/lang/Runnable;

.field private final synthetic val$toastMsgForLogin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/LoginUser;Ljava/lang/Runnable;Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/LoginUser$3;->this$0:Lcom/jingdong/app/mall/utils/LoginUser;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/LoginUser$3;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/jingdong/app/mall/utils/LoginUser$3;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iput-object p4, p0, Lcom/jingdong/app/mall/utils/LoginUser$3;->val$toastMsgForLogin:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/jingdong/app/mall/utils/LoginUser$3;->val$isStartActivityInFrameForLogin:Z

    iput p6, p0, Lcom/jingdong/app/mall/utils/LoginUser$3;->val$forResultRequestCode:I

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginError(ILjava/lang/String;)V
    .locals 5
    .parameter "errorType"
    .parameter "msg"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$3;->this$0:Lcom/jingdong/app/mall/utils/LoginUser;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/LoginUser$3;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/LoginUser$3;->val$toastMsgForLogin:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/jingdong/app/mall/utils/LoginUser$3;->val$isStartActivityInFrameForLogin:Z

    iget v4, p0, Lcom/jingdong/app/mall/utils/LoginUser$3;->val$forResultRequestCode:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jingdong/app/mall/utils/LoginUser;->startLoginActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;ZI)V

    .line 131
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$3;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/LoginUser$3;->val$runnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/LoginUser;->loginCallback(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "pin"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$3;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$3;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 126
    :cond_0
    return-void
.end method
