.class public Lcom/jingdong/common/secure/SecureNetwork;
.super Ljava/lang/Object;
.source "SecureNetwork.java"


# static fields
.field private static final STATE_DOING:I = 0x0

.field private static final STATE_FAILED:I = 0x3

.field private static final STATE_NONE:I = 0x1

.field private static final STATE_SUCCEED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HttpNetWork"

.field private static instance:Lcom/jingdong/common/secure/SecureNetwork;


# instance fields
.field private httpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field public mPublicKey:Ljava/lang/String;

.field public mRandomKey:Ljava/lang/String;

.field public mSessionKey:Ljava/lang/String;

.field private mState:I

.field public mTrueKey:Ljava/lang/String;

.field publicKeyLoadListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

.field sessionKeyLoadListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/jingdong/common/secure/SecureNetwork;

    invoke-direct {v0}, Lcom/jingdong/common/secure/SecureNetwork;-><init>()V

    sput-object v0, Lcom/jingdong/common/secure/SecureNetwork;->instance:Lcom/jingdong/common/secure/SecureNetwork;

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v1, 0x1

    iput v1, p0, Lcom/jingdong/common/secure/SecureNetwork;->mState:I

    .line 209
    new-instance v1, Lcom/jingdong/common/secure/SecureNetwork$1;

    invoke-direct {v1, p0}, Lcom/jingdong/common/secure/SecureNetwork$1;-><init>(Lcom/jingdong/common/secure/SecureNetwork;)V

    iput-object v1, p0, Lcom/jingdong/common/secure/SecureNetwork;->publicKeyLoadListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    .line 234
    new-instance v1, Lcom/jingdong/common/secure/SecureNetwork$2;

    invoke-direct {v1, p0}, Lcom/jingdong/common/secure/SecureNetwork$2;-><init>(Lcom/jingdong/common/secure/SecureNetwork;)V

    iput-object v1, p0, Lcom/jingdong/common/secure/SecureNetwork;->sessionKeyLoadListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    .line 75
    iget-object v1, p0, Lcom/jingdong/common/secure/SecureNetwork;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    if-nez v1, :cond_0

    .line 76
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;-><init>()V

    .line 77
    .local v0, httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setType(I)V

    .line 78
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    invoke-direct {v1, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V

    iput-object v1, p0, Lcom/jingdong/common/secure/SecureNetwork;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 80
    .end local v0           #httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/secure/SecureNetwork;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/jingdong/common/secure/SecureNetwork;->complete(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/common/secure/SecureNetwork;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/jingdong/common/secure/SecureNetwork;->loadSessionKey()V

    return-void
.end method

.method private declared-synchronized complete(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/jingdong/common/secure/SecureNetwork;->mState:I

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized doKey(ZZ)V
    .locals 3
    .parameter "force"
    .parameter "wait"

    .prologue
    .line 94
    monitor-enter p0

    if-nez p1, :cond_1

    :try_start_0
    iget v1, p0, Lcom/jingdong/common/secure/SecureNetwork;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 97
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/jingdong/common/secure/SecureNetwork;->mState:I

    if-eqz v1, :cond_2

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Lcom/jingdong/common/secure/SecureNetwork;->mState:I

    .line 100
    invoke-direct {p0}, Lcom/jingdong/common/secure/SecureNetwork;->loadPublicKey()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :cond_2
    if-eqz p2, :cond_0

    .line 108
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 94
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static doPreparation(ZZ)V
    .locals 1
    .parameter "force"
    .parameter "wait"

    .prologue
    .line 60
    sget-object v0, Lcom/jingdong/common/secure/SecureNetwork;->instance:Lcom/jingdong/common/secure/SecureNetwork;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/common/secure/SecureNetwork;->doKey(ZZ)V

    .line 61
    return-void
.end method

.method private declared-synchronized doTrueKey(Z)Ljava/lang/String;
    .locals 2
    .parameter "force"

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jingdong/common/secure/SecureNetwork;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/secure/SecureNetwork;->mTrueKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/jingdong/common/secure/SecureNetwork;->mTrueKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_0
    monitor-exit p0

    return-object v0

    .line 151
    :cond_0
    if-nez p1, :cond_1

    .line 155
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_1
    invoke-static {v0, v1}, Lcom/jingdong/common/secure/SecureNetwork;->doPreparation(ZZ)V

    .line 161
    iget-object v0, p0, Lcom/jingdong/common/secure/SecureNetwork;->mTrueKey:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getRandomNumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 196
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .local v3, str:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 198
    .local v1, random:Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v4, 0x8

    if-lt v0, v4, :cond_0

    .line 203
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 199
    :cond_0
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    rem-int/lit8 v2, v4, 0xa

    .line 200
    .local v2, randomNumber:I
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getTrueKey(Z)Ljava/lang/String;
    .locals 1
    .parameter "force"

    .prologue
    .line 67
    sget-object v0, Lcom/jingdong/common/secure/SecureNetwork;->instance:Lcom/jingdong/common/secure/SecureNetwork;

    invoke-direct {v0, p0}, Lcom/jingdong/common/secure/SecureNetwork;->doTrueKey(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadPublicKey()V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 123
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNeedGlobalInitialization(Z)V

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setTopPriority(Z)V

    .line 125
    iget-object v1, p0, Lcom/jingdong/common/secure/SecureNetwork;->publicKeyLoadListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 126
    const-string v1, "loginTalk"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/jingdong/common/secure/SecureNetwork;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 128
    return-void
.end method

.method private loadSessionKey()V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 135
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNeedGlobalInitialization(Z)V

    .line 136
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setTopPriority(Z)V

    .line 137
    const-string v1, "security"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/jingdong/common/secure/SecureNetwork;->sessionKeyLoadListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 139
    iget-object v1, p0, Lcom/jingdong/common/secure/SecureNetwork;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 140
    return-void
.end method


# virtual methods
.method public encryptionKeyData()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 174
    const-string v1, ""

    .line 175
    .local v1, eKey:Ljava/lang/String;
    invoke-direct {p0}, Lcom/jingdong/common/secure/SecureNetwork;->getRandomNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/common/secure/SecureNetwork;->mRandomKey:Ljava/lang/String;

    .line 176
    iget-object v4, p0, Lcom/jingdong/common/secure/SecureNetwork;->mPublicKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/jingdong/common/secure/RSAHelper;->init(Ljava/lang/String;)V

    .line 177
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 178
    .local v3, randomJSON:Lorg/json/JSONObject;
    const-string v4, "envelopeKey"

    iget-object v5, p0, Lcom/jingdong/common/secure/SecureNetwork;->mRandomKey:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, encryptionKey:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/jingdong/common/secure/RSAHelper;->encryptBySeg([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 185
    :goto_0
    return-object v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
