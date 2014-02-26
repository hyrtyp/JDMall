.class public Lcom/jingdong/common/secure/SecureAPI;
.super Ljava/lang/Object;
.source "SecureAPI.java"


# static fields
.field private static final STATE_DOING:I = 0x0

.field private static final STATE_FAILED:I = 0x3

.field private static final STATE_NONE:I = 0x1

.field private static final STATE_SUCCEED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SecureAPI"

.field private static instance:Lcom/jingdong/common/secure/SecureAPI;


# instance fields
.field private httpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field public jsonApiInfos:Lcom/jingdong/common/utils/JSONObjectProxy;

.field private mState:I

.field modluesLoadListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/jingdong/common/secure/SecureAPI;

    invoke-direct {v0}, Lcom/jingdong/common/secure/SecureAPI;-><init>()V

    sput-object v0, Lcom/jingdong/common/secure/SecureAPI;->instance:Lcom/jingdong/common/secure/SecureAPI;

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v1, 0x1

    iput v1, p0, Lcom/jingdong/common/secure/SecureAPI;->mState:I

    .line 145
    new-instance v1, Lcom/jingdong/common/secure/SecureAPI$1;

    invoke-direct {v1, p0}, Lcom/jingdong/common/secure/SecureAPI$1;-><init>(Lcom/jingdong/common/secure/SecureAPI;)V

    iput-object v1, p0, Lcom/jingdong/common/secure/SecureAPI;->modluesLoadListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    .line 47
    iget-object v1, p0, Lcom/jingdong/common/secure/SecureAPI;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    if-nez v1, :cond_0

    .line 48
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;-><init>()V

    .line 49
    .local v0, httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setType(I)V

    .line 50
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    invoke-direct {v1, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V

    iput-object v1, p0, Lcom/jingdong/common/secure/SecureAPI;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 52
    .end local v0           #httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/secure/SecureAPI;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/jingdong/common/secure/SecureAPI;->complete(I)V

    return-void
.end method

.method public static checkApi(Ljava/lang/String;)Z
    .locals 1
    .parameter "functionId"

    .prologue
    .line 39
    sget-object v0, Lcom/jingdong/common/secure/SecureAPI;->instance:Lcom/jingdong/common/secure/SecureAPI;

    invoke-direct {v0, p0}, Lcom/jingdong/common/secure/SecureAPI;->doCheckApi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized complete(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/jingdong/common/secure/SecureAPI;->mState:I

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private doCheckApi(Ljava/lang/String;)Z
    .locals 5
    .parameter "functionId"

    .prologue
    .line 113
    const-string v4, "loginTalk"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    const-string v4, "msgUnReadIdList"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 115
    const-string v4, "msgSummaryList"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    const-string v4, "activationMessage"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 117
    const-string v4, "security"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    const-string v4, "registerDevice"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 119
    const-string v4, "device"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 120
    const-string v4, "serverConfig"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 121
    const-string v4, "moduleEncrypt"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    :cond_0
    const/4 v3, 0x0

    .line 139
    :cond_1
    :goto_0
    return v3

    .line 125
    :cond_2
    const/4 v3, 0x0

    .line 126
    .local v3, result:Z
    invoke-direct {p0}, Lcom/jingdong/common/secure/SecureAPI;->getApiInfos()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 127
    .local v1, infos:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {v1, p1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 129
    .local v2, jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v2, :cond_1

    .line 130
    const-string v4, "encrypt"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, encrypt:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private declared-synchronized getApiInfos()Lcom/jingdong/common/utils/JSONObjectProxy;
    .locals 3

    .prologue
    .line 67
    monitor-enter p0

    const/4 v1, 0x1

    .line 69
    .local v1, wait:Z
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/common/secure/SecureAPI;->jsonApiInfos:Lcom/jingdong/common/utils/JSONObjectProxy;

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/jingdong/common/secure/SecureAPI;->jsonApiInfos:Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :goto_0
    monitor-exit p0

    return-object v2

    .line 73
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/jingdong/common/secure/SecureAPI;->mState:I

    if-eqz v2, :cond_1

    .line 75
    const/4 v2, 0x0

    iput v2, p0, Lcom/jingdong/common/secure/SecureAPI;->mState:I

    .line 76
    invoke-direct {p0}, Lcom/jingdong/common/secure/SecureAPI;->loadModules()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :cond_1
    if-eqz v1, :cond_2

    .line 84
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    :cond_2
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/jingdong/common/secure/SecureAPI;->jsonApiInfos:Lcom/jingdong/common/utils/JSONObjectProxy;

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 67
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private loadModules()V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 100
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNeedGlobalInitialization(Z)V

    .line 101
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setTopPriority(Z)V

    .line 102
    const-string v1, "moduleEncrypt"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 103
    const-string v1, "version"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    iget-object v1, p0, Lcom/jingdong/common/secure/SecureAPI;->modluesLoadListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 105
    iget-object v1, p0, Lcom/jingdong/common/secure/SecureAPI;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 106
    return-void
.end method
