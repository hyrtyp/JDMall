.class Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1$1;
.super Ljava/lang/Object;
.source "QuickRegisterLoginListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;

.field private final synthetic val$newMessage:Ljava/lang/String;

.field private final synthetic val$pwd:Ljava/lang/String;

.field private final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1$1;->val$userName:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1$1;->val$pwd:Ljava/lang/String;

    iput-object p4, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1$1;->val$newMessage:Ljava/lang/String;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 119
    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Lcom/jingdong/common/constant/Constants;->hasLogIn:Z

    .line 120
    sget v2, Lcom/jingdong/common/constant/Constants;->LOG_IN:I

    invoke-static {v2}, Lcom/jingdong/common/login/LoginUserBase;->setUserState(I)V

    .line 121
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .local v1, temp:Lorg/json/JSONObject;
    const-string v2, "pin"

    iget-object v3, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;
    invoke-static {v3}, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;)Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;

    move-result-object v3

    iget-object v3, v3, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;->pin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    invoke-static {v1}, Lcom/jingdong/common/login/LoginUserBase;->setUserInfo(Lorg/json/JSONObject;)V

    .line 126
    iget-object v2, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1$1;->val$userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1$1;->val$pwd:Ljava/lang/String;

    invoke-static {v3}, Lcom/jingdong/app/mall/login/LoginActivity;->EncryptPassword2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/jingdong/common/login/SafetyManager;->saveSafety(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    iget-object v2, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;
    invoke-static {v2}, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;)Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;->myactivity:Lcom/jingdong/app/mall/utils/MyActivity;

    const-string v3, "login"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->putBooleanToPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 130
    iget-object v2, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;
    invoke-static {v2}, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;)Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;->listener:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$QuickRegisterLoginStatusListener;

    iget-object v3, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;
    invoke-static {v3}, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1;)Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;

    move-result-object v3

    iget-object v3, v3, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener;->pin:Ljava/lang/String;

    iget-object v4, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$1$1;->val$newMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$QuickRegisterLoginStatusListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v1           #temp:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
