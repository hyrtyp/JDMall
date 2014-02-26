.class public Lcom/jingdong/common/utils/JLogUtil;
.super Ljava/lang/Object;
.source "JLogUtil.java"


# static fields
.field private static final KEY_NEED_LOG:Ljava/lang/String; = "needLog"

.field private static final NEED_LOG:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "JLogUtil"

.field private static isLocalNeedLog:Ljava/lang/Boolean;

.field private static isNeedLog:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/jingdong/common/utils/JLogUtil;->isNeedLog:Ljava/lang/Boolean;

    .line 13
    sput-object v0, Lcom/jingdong/common/utils/JLogUtil;->isLocalNeedLog:Ljava/lang/Boolean;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static JaInit(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 64
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/JLogUtil;->isNeedLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "partner"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ja/sdk/JaMobLogService;->setAppChannel(Ljava/lang/String;)V

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ja/sdk/JaMobLogService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/ja/sdk/JaMobLogService;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 71
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/ja/sdk/JaMobLogService;->SessionCount(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static isNeedLog()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 87
    sget-object v1, Lcom/jingdong/common/utils/JLogUtil;->isNeedLog:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 88
    sget-object v1, Lcom/jingdong/common/utils/JLogUtil;->isNeedLog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 109
    :goto_0
    return v1

    .line 91
    :cond_0
    sget-object v1, Lcom/jingdong/common/utils/JLogUtil;->isLocalNeedLog:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 92
    const-string v1, "useJLog"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/utils/JLogUtil;->isLocalNeedLog:Ljava/lang/Boolean;

    .line 95
    :cond_1
    sget-object v1, Lcom/jingdong/common/utils/JLogUtil;->isLocalNeedLog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "1"

    const-string v2, "needLog"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/utils/JLogUtil;->isNeedLog:Ljava/lang/Boolean;

    .line 109
    .end local v0           #preferences:Landroid/content/SharedPreferences;
    :goto_1
    sget-object v1, Lcom/jingdong/common/utils/JLogUtil;->isNeedLog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 100
    .restart local v0       #preferences:Landroid/content/SharedPreferences;
    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/utils/JLogUtil;->isNeedLog:Ljava/lang/Boolean;

    goto :goto_1

    .line 103
    .end local v0           #preferences:Landroid/content/SharedPreferences;
    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/utils/JLogUtil;->isNeedLog:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static onJaVisit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "a"
    .parameter "am"

    .prologue
    .line 30
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/JLogUtil;->isNeedLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-static {p0, p1, p2}, Lcom/ja/sdk/JaMobLogService;->pageAccessEventAutoSend(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static setUserPin(Ljava/lang/String;)V
    .locals 2
    .parameter "pin"

    .prologue
    .line 51
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/JLogUtil;->isNeedLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-static {p0}, Lcom/ja/sdk/JaMobLogService;->setAppId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
