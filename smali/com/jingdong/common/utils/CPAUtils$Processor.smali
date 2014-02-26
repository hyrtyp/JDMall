.class public Lcom/jingdong/common/utils/CPAUtils$Processor;
.super Ljava/lang/Object;
.source "CPAUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/CPAUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Processor"
.end annotation


# instance fields
.field private globalInitializationInterface:Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;

.field private handler:Landroid/os/Handler;

.field private httpGroup:Lcom/jingdong/common/utils/HttpGroup;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;)V
    .locals 0
    .parameter "handler"
    .parameter "httpGroup"
    .parameter "globalInitializationInterface"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/jingdong/common/utils/CPAUtils$Processor;->handler:Landroid/os/Handler;

    .line 40
    iput-object p2, p0, Lcom/jingdong/common/utils/CPAUtils$Processor;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 41
    iput-object p3, p0, Lcom/jingdong/common/utils/CPAUtils$Processor;->globalInitializationInterface:Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/CPAUtils$Processor;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/jingdong/common/utils/CPAUtils$Processor;->getCpaToken()V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/common/utils/CPAUtils$Processor;)Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jingdong/common/utils/CPAUtils$Processor;->globalInitializationInterface:Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/common/utils/CPAUtils$Processor;Ljava/lang/String;[B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/jingdong/common/utils/CPAUtils$Processor;->startCPa(Ljava/lang/String;[B)V

    return-void
.end method

.method private getCpaToken()V
    .locals 4

    .prologue
    .line 74
    invoke-static {}, Lcom/jingdong/common/cpa/JniInterface;->getCpataken()[B

    move-result-object v2

    .line 76
    .local v2, strByte:[B
    new-instance v1, Lcom/jingdong/common/utils/CPAUtils$Processor$2;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/common/utils/CPAUtils$Processor$2;-><init>(Lcom/jingdong/common/utils/CPAUtils$Processor;[B)V

    .line 104
    .local v1, listener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 105
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "cpaTalk"

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 106
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNeedGlobalInitialization(Z)V

    .line 108
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 110
    iget-object v3, p0, Lcom/jingdong/common/utils/CPAUtils$Processor;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v3, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 112
    return-void
.end method

.method private startCPa(Ljava/lang/String;[B)V
    .locals 6
    .parameter "ticket"
    .parameter "strByte"

    .prologue
    .line 122
    const/4 v3, 0x0

    .line 124
    .local v3, testStr:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/secure/RSAHelper;->init()V

    .line 125
    invoke-static {p2}, Lcom/jingdong/common/secure/RSAHelper;->encryptBySeg([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 135
    new-instance v2, Lcom/jingdong/common/utils/CPAUtils$Processor$3;

    invoke-direct {v2, p0}, Lcom/jingdong/common/utils/CPAUtils$Processor$3;-><init>(Lcom/jingdong/common/utils/CPAUtils$Processor;)V

    .line 167
    .local v2, listener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 168
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v4, "cpa"

    invoke-virtual {v1, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 169
    const-string v4, "info"

    invoke-virtual {v1, v4, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    const-string v4, "ticket"

    invoke-virtual {v1, v4, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    const-string v4, "unionId"

    const-string v5, "unionId"

    invoke-static {v5}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    const-string v4, "subunionId"

    const-string v5, "subunionId"

    invoke-static {v5}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    const-string v4, "partner"

    const-string v5, "partner"

    invoke-static {v5}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNeedGlobalInitialization(Z)V

    .line 176
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 178
    iget-object v4, p0, Lcom/jingdong/common/utils/CPAUtils$Processor;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v4, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 180
    .end local v1           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .end local v2           #listener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    iget-object v4, p0, Lcom/jingdong/common/utils/CPAUtils$Processor;->globalInitializationInterface:Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;

    invoke-interface {v4}, Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;->exit()V

    goto :goto_0
.end method


# virtual methods
.method public beforeRegisterDevice()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 47
    const-string v3, "cpaFlag"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 49
    .local v0, alreadyCPA:Z
    if-nez v0, :cond_0

    .line 50
    iget-object v1, p0, Lcom/jingdong/common/utils/CPAUtils$Processor;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/jingdong/common/utils/CPAUtils$Processor$1;

    invoke-direct {v2, p0}, Lcom/jingdong/common/utils/CPAUtils$Processor$1;-><init>(Lcom/jingdong/common/utils/CPAUtils$Processor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    const/4 v1, 0x1

    .line 65
    :cond_0
    return v1
.end method
