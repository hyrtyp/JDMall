.class Lcom/jingdong/app/mall/utils/LoginUser$4;
.super Ljava/lang/Object;
.source "LoginUser.java"

# interfaces
.implements Lcom/jingdong/common/login/LoginUserBase$LoginRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/LoginUser;->homeAutoLogin(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/login/LoginUserBase$LoginListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final MAX_RETRY_TIME:I

.field private final RETRY_INTERVAL_TIME:J

.field private retryTime:I

.field final synthetic this$0:Lcom/jingdong/app/mall/utils/LoginUser;

.field private final synthetic val$isWidgetStart:Z

.field private final synthetic val$listener:Lcom/jingdong/common/login/LoginUserBase$LoginListener;

.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/LoginUser;Lcom/jingdong/common/login/LoginUserBase$LoginListener;ZLcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->this$0:Lcom/jingdong/app/mall/utils/LoginUser;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->val$listener:Lcom/jingdong/common/login/LoginUserBase$LoginListener;

    iput-boolean p3, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->val$isWidgetStart:Z

    iput-object p4, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iput-object p5, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->val$userName:Ljava/lang/String;

    iput-object p6, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->val$password:Ljava/lang/String;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x3

    iput v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->MAX_RETRY_TIME:I

    .line 176
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->RETRY_INTERVAL_TIME:J

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->retryTime:I

    return-void
.end method


# virtual methods
.method public onLoginError(ILjava/lang/String;)V
    .locals 6
    .parameter "errorType"
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 195
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->val$listener:Lcom/jingdong/common/login/LoginUserBase$LoginListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->val$isWidgetStart:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->retryTime:I

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->val$listener:Lcom/jingdong/common/login/LoginUserBase$LoginListener;

    invoke-interface {v0}, Lcom/jingdong/common/login/LoginUserBase$LoginListener;->loginCompletedNotify()V

    .line 200
    :cond_0
    sget-boolean v0, Lcom/jingdong/app/mall/utils/LoginUser;->isAutoRetryLogin:Z

    if-eqz v0, :cond_1

    .line 201
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 202
    iget v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->retryTime:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 203
    iget v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->retryTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->retryTime:I

    .line 209
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    sget-boolean v0, Lcom/jingdong/app/mall/utils/LoginUser;->isAutoRetryLogin:Z

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->val$userName:Ljava/lang/String;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->val$password:Ljava/lang/String;

    move v4, v3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/LoginUser;->loginRequest(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/jingdong/common/login/LoginUserBase$LoginRequestListener;)V

    .line 220
    :cond_1
    return-void

    .line 210
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "pin"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->val$listener:Lcom/jingdong/common/login/LoginUserBase$LoginListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->val$isWidgetStart:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->retryTime:I

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$4;->val$listener:Lcom/jingdong/common/login/LoginUserBase$LoginListener;

    invoke-interface {v0}, Lcom/jingdong/common/login/LoginUserBase$LoginListener;->loginCompletedNotify()V

    .line 188
    :cond_0
    return-void
.end method
