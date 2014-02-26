.class public Lcom/jingdong/app/mall/utils/LoginUser;
.super Lcom/jingdong/common/login/LoginUserBase;
.source "LoginUser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginUser"

.field private static loginUser:Lcom/jingdong/app/mall/utils/LoginUser;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/jingdong/common/login/LoginUserBase;-><init>()V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/jingdong/app/mall/utils/LoginUser;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/jingdong/app/mall/utils/LoginUser;->loginUser:Lcom/jingdong/app/mall/utils/LoginUser;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/jingdong/app/mall/utils/LoginUser;

    invoke-direct {v0}, Lcom/jingdong/app/mall/utils/LoginUser;-><init>()V

    sput-object v0, Lcom/jingdong/app/mall/utils/LoginUser;->loginUser:Lcom/jingdong/app/mall/utils/LoginUser;

    .line 29
    :cond_0
    sget-object v0, Lcom/jingdong/app/mall/utils/LoginUser;->loginUser:Lcom/jingdong/app/mall/utils/LoginUser;

    return-object v0
.end method


# virtual methods
.method public executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;)V
    .locals 6
    .parameter "myActivity"
    .parameter "runnable"

    .prologue
    .line 89
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;Ljava/lang/String;ZI)V

    .line 90
    return-void
.end method

.method public executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;I)V
    .locals 6
    .parameter "myActivity"
    .parameter "runnable"
    .parameter "forResultRequestCode"

    .prologue
    .line 93
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;Ljava/lang/String;ZI)V

    .line 94
    return-void
.end method

.method public executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 6
    .parameter "myActivity"
    .parameter "runnable"
    .parameter "toastMsgForLogin"

    .prologue
    .line 85
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;Ljava/lang/String;ZI)V

    .line 86
    return-void
.end method

.method public executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;Ljava/lang/String;Z)V
    .locals 6
    .parameter "myActivity"
    .parameter "runnable"
    .parameter "toastMsgForLogin"
    .parameter "isStartActivityInFrameForLogin"

    .prologue
    .line 97
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;Ljava/lang/String;ZI)V

    .line 98
    return-void
.end method

.method public executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;Ljava/lang/String;ZI)V
    .locals 0
    .parameter "myActivity"
    .parameter "runnable"
    .parameter "toastMsgForLogin"
    .parameter "isStartActivityInFrameForLogin"
    .parameter "forResultRequestCode"

    .prologue
    .line 101
    invoke-virtual/range {p0 .. p5}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/Runnable;Ljava/lang/String;ZI)V

    .line 102
    return-void
.end method

.method public executeLoginRunnable(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/Runnable;Ljava/lang/String;ZI)V
    .locals 14
    .parameter "myActivity"
    .parameter "runnable"
    .parameter "toastMsgForLogin"
    .parameter "isStartActivityInFrameForLogin"
    .parameter "forResultRequestCode"

    .prologue
    .line 106
    if-nez p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->hasLogin()Z

    move-result v3

    if-nez v3, :cond_3

    .line 114
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getUserName()Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, userName:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getPassword()Ljava/lang/String;

    move-result-object v10

    .line 116
    .local v10, password:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->isRemember()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 118
    const/4 v3, 0x0

    sput-boolean v3, Lcom/jingdong/app/mall/utils/LoginUser;->isAutoRetryLogin:Z

    .line 119
    const/4 v12, 0x0

    const/4 v13, 0x1

    new-instance v3, Lcom/jingdong/app/mall/utils/LoginUser$3;

    move-object v4, p0

    move-object/from16 v5, p2

    move-object v6, p1

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/jingdong/app/mall/utils/LoginUser$3;-><init>(Lcom/jingdong/app/mall/utils/LoginUser;Ljava/lang/Runnable;Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;ZI)V

    move-object v4, p1

    move-object v5, v11

    move-object v6, v10

    move v7, v12

    move v8, v13

    move-object v9, v3

    invoke-static/range {v4 .. v9}, Lcom/jingdong/app/mall/utils/LoginUser;->loginRequest(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/jingdong/common/login/LoginUserBase$LoginRequestListener;)V

    goto :goto_0

    .line 136
    :cond_2
    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/jingdong/app/mall/utils/LoginUser;->startLoginActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;ZI)V

    .line 137
    invoke-static/range {p1 .. p2}, Lcom/jingdong/app/mall/utils/LoginUser;->loginCallback(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 141
    .end local v10           #password:Ljava/lang/String;
    .end local v11           #userName:Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_0

    .line 142
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public homeAutoLogin(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/login/LoginUserBase$LoginListener;I)V
    .locals 0
    .parameter "myActivity"
    .parameter "listener"
    .parameter "moduleId"

    .prologue
    .line 148
    invoke-virtual {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/LoginUser;->homeAutoLogin(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/login/LoginUserBase$LoginListener;I)V

    .line 149
    return-void
.end method

.method public homeAutoLogin(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/login/LoginUserBase$LoginListener;I)V
    .locals 10
    .parameter "myActivity"
    .parameter "listener"
    .parameter "moduleId"

    .prologue
    const/4 v7, 0x0

    .line 157
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->isRemember()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getUserName()Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, userName:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getPassword()Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, password:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    invoke-virtual {p0, p3}, Lcom/jingdong/app/mall/utils/LoginUser;->isWidgetStart(I)Z

    move-result v3

    .line 164
    .local v3, isWidgetStart:Z
    if-eqz p2, :cond_0

    if-eqz v3, :cond_0

    .line 165
    invoke-interface {p2}, Lcom/jingdong/common/login/LoginUserBase$LoginListener;->loginCompletedNotify()V

    .line 173
    :cond_0
    new-instance v0, Lcom/jingdong/app/mall/utils/LoginUser$4;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/utils/LoginUser$4;-><init>(Lcom/jingdong/app/mall/utils/LoginUser;Lcom/jingdong/common/login/LoginUserBase$LoginListener;ZLcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, p1

    move v8, v7

    move-object v9, v0

    invoke-static/range {v4 .. v9}, Lcom/jingdong/app/mall/utils/LoginUser;->loginRequest(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/jingdong/common/login/LoginUserBase$LoginRequestListener;)V

    .line 231
    .end local v3           #isWidgetStart:Z
    .end local v5           #userName:Ljava/lang/String;
    .end local v6           #password:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 229
    :cond_2
    invoke-interface {p2}, Lcom/jingdong/common/login/LoginUserBase$LoginListener;->loginCompletedNotify()V

    goto :goto_0
.end method

.method public isWidgetStart(I)Z
    .locals 1
    .parameter "moduleId"

    .prologue
    .line 72
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 73
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 74
    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    .line 75
    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    .line 76
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startLoginActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;ZI)V
    .locals 6
    .parameter "context"
    .parameter "toastMsgForLogin"
    .parameter "isStartActivityInFrameForLogin"
    .parameter "forResultRequestCode"

    .prologue
    .line 34
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/jingdong/app/mall/utils/LoginUser$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/jingdong/app/mall/utils/LoginUser$1;-><init>(Lcom/jingdong/app/mall/utils/LoginUser;Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 46
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-interface {p1}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v4, intent:Landroid/content/Intent;
    const-string v0, "com.360buy:singleInstanceFlag"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    new-instance v0, Lcom/jingdong/app/mall/utils/LoginUser$2;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/LoginUser$2;-><init>(Lcom/jingdong/app/mall/utils/LoginUser;ILcom/jingdong/common/frame/IMyActivity;Landroid/content/Intent;Z)V

    invoke-interface {p1, v0}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
