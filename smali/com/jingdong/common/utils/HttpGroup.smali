.class public abstract Lcom/jingdong/common/utils/HttpGroup;
.super Ljava/lang/Object;
.source "HttpGroup.java"

# interfaces
.implements Lcom/jingdong/common/frame/IDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/HttpGroup$CompleteListener;,
        Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;,
        Lcom/jingdong/common/utils/HttpGroup$Handler;,
        Lcom/jingdong/common/utils/HttpGroup$HttpError;,
        Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;,
        Lcom/jingdong/common/utils/HttpGroup$HttpGroupSync;,
        Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;,
        Lcom/jingdong/common/utils/HttpGroup$HttpRequest;,
        Lcom/jingdong/common/utils/HttpGroup$HttpResponse;,
        Lcom/jingdong/common/utils/HttpGroup$HttpSetting;,
        Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;,
        Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;,
        Lcom/jingdong/common/utils/HttpGroup$OnAllListener;,
        Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;,
        Lcom/jingdong/common/utils/HttpGroup$OnEndListener;,
        Lcom/jingdong/common/utils/HttpGroup$OnErrorListener;,
        Lcom/jingdong/common/utils/HttpGroup$OnGroupCompleteListener;,
        Lcom/jingdong/common/utils/HttpGroup$OnGroupProgressListener;,
        Lcom/jingdong/common/utils/HttpGroup$OnGroupStartListener;,
        Lcom/jingdong/common/utils/HttpGroup$OnGroupStepListener;,
        Lcom/jingdong/common/utils/HttpGroup$OnProgressListener;,
        Lcom/jingdong/common/utils/HttpGroup$OnReadyListener;,
        Lcom/jingdong/common/utils/HttpGroup$OnStartListener;,
        Lcom/jingdong/common/utils/HttpGroup$StopController;
    }
.end annotation


# static fields
.field private static final alertDialogStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/jingdong/common/frame/IMyActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/utils/HttpGroup$HttpRequest;",
            ">;>;"
        }
    .end annotation
.end field

.field private static attempts:I

.field private static attemptsTime:I

.field private static charset:Ljava/lang/String;

.field private static connectTimeout:I

.field private static connectTimeoutForWIFI:I

.field private static cookies:Ljava/lang/String;

.field private static httpIdCounter:I

.field private static mMd5Key:Ljava/lang/String;

.field private static mModules:Lcom/jingdong/common/utils/JSONObjectProxy;

.field private static readTimeout:I

.field private static readTimeoutForWIFI:I


# instance fields
.field private completesCount:I

.field protected httpCount:I

.field protected httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

.field private maxProgress:I

.field private maxStep:I

.field private onGroupCompleteListener:Lcom/jingdong/common/utils/HttpGroup$OnGroupCompleteListener;

.field private onGroupProgressListener:Lcom/jingdong/common/utils/HttpGroup$OnGroupProgressListener;

.field private onGroupStartListener:Lcom/jingdong/common/utils/HttpGroup$OnGroupStartListener;

.field private onGroupStepListener:Lcom/jingdong/common/utils/HttpGroup$OnGroupStepListener;

.field protected priority:I

.field private progress:I

.field private reportUserInfoFlag:Z

.field private step:I

.field protected type:I

.field private useCaches:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/jingdong/common/utils/HttpGroup;->httpIdCounter:I

    .line 151
    const-string v0, "UTF-8"

    sput-object v0, Lcom/jingdong/common/utils/HttpGroup;->charset:Ljava/lang/String;

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jingdong/common/utils/HttpGroup;->alertDialogStateMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V
    .locals 2
    .parameter "setting"

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-boolean v1, p0, Lcom/jingdong/common/utils/HttpGroup;->useCaches:Z

    .line 163
    iput v1, p0, Lcom/jingdong/common/utils/HttpGroup;->httpCount:I

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup;->reportUserInfoFlag:Z

    .line 2755
    iput v1, p0, Lcom/jingdong/common/utils/HttpGroup;->completesCount:I

    .line 2776
    iput v1, p0, Lcom/jingdong/common/utils/HttpGroup;->maxProgress:I

    .line 2777
    iput v1, p0, Lcom/jingdong/common/utils/HttpGroup;->progress:I

    .line 2798
    iput v1, p0, Lcom/jingdong/common/utils/HttpGroup;->maxStep:I

    .line 2799
    iput v1, p0, Lcom/jingdong/common/utils/HttpGroup;->step:I

    .line 187
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup;->initParams()V

    .line 188
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup;->httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    .line 189
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->getPriority()I

    move-result v0

    iput v0, p0, Lcom/jingdong/common/utils/HttpGroup;->priority:I

    .line 190
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->getType()I

    move-result v0

    iput v0, p0, Lcom/jingdong/common/utils/HttpGroup;->type:I

    .line 191
    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 157
    sget v0, Lcom/jingdong/common/utils/HttpGroup;->attempts:I

    return v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 153
    sget v0, Lcom/jingdong/common/utils/HttpGroup;->connectTimeoutForWIFI:I

    return v0
.end method

.method static synthetic access$10()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/jingdong/common/utils/HttpGroup;->alertDialogStateMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/common/utils/HttpGroup;)Z
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup;->reportUserInfoFlag:Z

    return v0
.end method

.method static synthetic access$12()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/jingdong/common/utils/HttpGroup;->mMd5Key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13()Lcom/jingdong/common/utils/JSONObjectProxy;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/jingdong/common/utils/HttpGroup;->mModules:Lcom/jingdong/common/utils/JSONObjectProxy;

    return-object v0
.end method

.method static synthetic access$14()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/jingdong/common/utils/HttpGroup;->httpIdCounter:I

    return v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 152
    sget v0, Lcom/jingdong/common/utils/HttpGroup;->connectTimeout:I

    return v0
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 155
    sget v0, Lcom/jingdong/common/utils/HttpGroup;->readTimeoutForWIFI:I

    return v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 154
    sget v0, Lcom/jingdong/common/utils/HttpGroup;->readTimeout:I

    return v0
.end method

.method static synthetic access$5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/jingdong/common/utils/HttpGroup;->charset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/common/utils/HttpGroup;)Z
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup;->useCaches:Z

    return v0
.end method

.method static synthetic access$7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/jingdong/common/utils/HttpGroup;->cookies:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    sput-object p0, Lcom/jingdong/common/utils/HttpGroup;->cookies:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9()I
    .locals 1

    .prologue
    .line 158
    sget v0, Lcom/jingdong/common/utils/HttpGroup;->attemptsTime:I

    return v0
.end method

.method public static cleanCookies()V
    .locals 1

    .prologue
    .line 3689
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/common/utils/HttpGroup;->cookies:Ljava/lang/String;

    .line 3690
    return-void
.end method

.method public static getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3697
    sget-object v0, Lcom/jingdong/common/utils/HttpGroup;->cookies:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized initParams()V
    .locals 1

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/jingdong/common/utils/HttpGroup;->connectTimeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 180
    :goto_0
    monitor-exit p0

    return-void

    .line 173
    :cond_0
    :try_start_1
    const-string v0, "connectTimeout"

    invoke-static {v0}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/jingdong/common/utils/HttpGroup;->connectTimeout:I

    .line 174
    const-string v0, "connectTimeoutForWIFI"

    invoke-static {v0}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/jingdong/common/utils/HttpGroup;->connectTimeoutForWIFI:I

    .line 175
    const-string v0, "readTimeout"

    invoke-static {v0}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/jingdong/common/utils/HttpGroup;->readTimeout:I

    .line 176
    const-string v0, "readTimeoutForWIFI"

    invoke-static {v0}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/jingdong/common/utils/HttpGroup;->readTimeoutForWIFI:I

    .line 178
    const-string v0, "attempts"

    invoke-static {v0}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/jingdong/common/utils/HttpGroup;->attempts:I

    .line 179
    const-string v0, "attemptsTime"

    invoke-static {v0}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/jingdong/common/utils/HttpGroup;->attemptsTime:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static mergerUrlAndParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .parameter "urlStr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3655
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 3684
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 3659
    .restart local p0
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 3660
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3664
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3665
    .local v5, url:Ljava/lang/StringBuilder;
    const-string v7, "?"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3666
    .local v0, i:I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_4

    .line 3667
    const-string v7, "?"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3675
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 3684
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3669
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3670
    .local v4, queryString:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "&"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3671
    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3676
    .end local v4           #queryString:Ljava/lang/String;
    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3677
    .local v2, key:Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3678
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3679
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3680
    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private onProgress(II)V
    .locals 1
    .parameter "maxProgress"
    .parameter "progress"

    .prologue
    .line 2772
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup;->onGroupProgressListener:Lcom/jingdong/common/utils/HttpGroup$OnGroupProgressListener;

    if-eqz v0, :cond_0

    .line 2773
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup;->onGroupProgressListener:Lcom/jingdong/common/utils/HttpGroup$OnGroupProgressListener;

    invoke-interface {v0, p1, p2}, Lcom/jingdong/common/utils/HttpGroup$OnGroupProgressListener;->onProgress(II)V

    .line 2774
    :cond_0
    return-void
.end method

.method private onStep(II)V
    .locals 1
    .parameter "maxStep"
    .parameter "step"

    .prologue
    .line 2794
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup;->onGroupStepListener:Lcom/jingdong/common/utils/HttpGroup$OnGroupStepListener;

    if-eqz v0, :cond_0

    .line 2795
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup;->onGroupStepListener:Lcom/jingdong/common/utils/HttpGroup$OnGroupStepListener;

    invoke-interface {v0, p1, p2}, Lcom/jingdong/common/utils/HttpGroup$OnGroupStepListener;->onStep(II)V

    .line 2796
    :cond_0
    return-void
.end method

.method public static queryMd5Key(Lcom/jingdong/common/utils/HttpGroup$CompleteListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const/16 v2, 0x3e8

    .line 78
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;-><init>()V

    .line 79
    .local v1, setting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setPriority(I)V

    .line 80
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setType(I)V

    .line 81
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    invoke-direct {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V

    .line 82
    .local v0, httpGroup:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v0, p0}, Lcom/jingdong/common/utils/HttpGroup;->queryMd5Key(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/HttpGroup$CompleteListener;)V

    .line 83
    return-void
.end method

.method public static queryMd5Key(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/HttpGroup$CompleteListener;)V
    .locals 3
    .parameter "httpGroup"
    .parameter "listener"

    .prologue
    .line 89
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$1;

    invoke-direct {v1, p1}, Lcom/jingdong/common/utils/HttpGroup$1;-><init>(Lcom/jingdong/common/utils/HttpGroup$CompleteListener;)V

    .line 137
    .local v1, onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 138
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v2, "key"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 139
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 140
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 141
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 143
    return-void
.end method

.method public static setCookies(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 3693
    sput-object p0, Lcom/jingdong/common/utils/HttpGroup;->cookies:Ljava/lang/String;

    .line 3694
    return-void
.end method

.method public static setMd5Key(Ljava/lang/String;)V
    .locals 0
    .parameter "md5Key"

    .prologue
    .line 67
    sput-object p0, Lcom/jingdong/common/utils/HttpGroup;->mMd5Key:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static setModules(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 0
    .parameter "jsonObject"

    .prologue
    .line 71
    sput-object p0, Lcom/jingdong/common/utils/HttpGroup;->mModules:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 72
    return-void
.end method

.method private tryEffect(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)V
    .locals 4
    .parameter "httpSetting"

    .prologue
    .line 306
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup;->httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->getMyActivity()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v1

    .line 307
    .local v1, myActivity:Lcom/jingdong/common/frame/IMyActivity;
    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getEffect()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 308
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getEffectState()I

    move-result v2

    if-nez v2, :cond_0

    .line 309
    if-eqz v1, :cond_0

    .line 310
    new-instance v0, Lcom/jingdong/common/utils/DefaultEffectHttpListener;

    invoke-direct {v0, p1, v1}, Lcom/jingdong/common/utils/DefaultEffectHttpListener;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;Lcom/jingdong/common/frame/IMyActivity;)V

    .line 311
    .local v0, effectListener:Lcom/jingdong/common/utils/DefaultEffectHttpListener;
    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 313
    .end local v0           #effectListener:Lcom/jingdong/common/utils/DefaultEffectHttpListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    .locals 3
    .parameter "httpSetting"

    .prologue
    .line 222
    sget v2, Lcom/jingdong/common/utils/HttpGroup;->httpIdCounter:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/jingdong/common/utils/HttpGroup;->httpIdCounter:I

    .line 223
    sget v2, Lcom/jingdong/common/utils/HttpGroup;->httpIdCounter:I

    invoke-virtual {p1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setId(I)V

    .line 225
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/HttpGroup;->tryEffect(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)V

    .line 227
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;-><init>(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)V

    .line 229
    .local v0, httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getOnReadyListener()Lcom/jingdong/common/utils/HttpGroup$OnReadyListener;

    move-result-object v1

    .line 230
    .local v1, onReadyListener:Lcom/jingdong/common/utils/HttpGroup$OnReadyListener;
    if-eqz v1, :cond_0

    .line 231
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$2;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/jingdong/common/utils/HttpGroup$2;-><init>(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/HttpGroup$OnReadyListener;Lcom/jingdong/common/utils/HttpGroup$HttpSetting;Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 246
    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$2;->start()V

    .line 251
    :goto_0
    return-object v0

    .line 248
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/HttpGroup;->add2(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    goto :goto_0
.end method

.method public add(Ljava/lang/String;Ljava/util/Map;Lcom/jingdong/common/utils/HttpGroup$OnAllListener;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    .locals 2
    .parameter "url"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/jingdong/common/utils/HttpGroup$OnAllListener;",
            ")",
            "Lcom/jingdong/common/utils/HttpGroup$HttpRequest;"
        }
    .end annotation

    .prologue
    .line 206
    .local p2, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 207
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setMapParams(Ljava/util/Map;)V

    .line 211
    invoke-virtual {v0, p3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 213
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public add(Ljava/lang/String;Lorg/json/JSONObject;Lcom/jingdong/common/utils/HttpGroup$OnAllListener;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    .locals 2
    .parameter "functionId"
    .parameter "params"
    .parameter "listener"

    .prologue
    .line 196
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 197
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 199
    invoke-virtual {v0, p3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 201
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public add2(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 3
    .parameter "httpRequest"

    .prologue
    .line 257
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->getHttpSetting()Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    move-result-object v1

    .line 267
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v2, "host"

    invoke-static {v2}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, host:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getHost()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 270
    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 274
    :cond_0
    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getType()I

    move-result v2

    if-nez v2, :cond_1

    .line 275
    iget v2, p0, Lcom/jingdong/common/utils/HttpGroup;->type:I

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 279
    :cond_1
    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getPriority()I

    move-result v2

    if-nez v2, :cond_2

    .line 280
    iget v2, p0, Lcom/jingdong/common/utils/HttpGroup;->priority:I

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPriority(I)V

    .line 284
    :cond_2
    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getPriority()I

    move-result v2

    if-nez v2, :cond_3

    .line 285
    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 298
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jingdong/common/utils/HttpGroup;->execute(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 300
    return-void

    .line 287
    :sswitch_0
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPriority(I)V

    goto :goto_0

    .line 290
    :sswitch_1
    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPriority(I)V

    goto :goto_0

    .line 293
    :sswitch_2
    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPriority(I)V

    goto :goto_0

    .line 285
    :sswitch_data_0
    .sparse-switch
        0x1f4 -> :sswitch_2
        0x3e8 -> :sswitch_0
        0x1388 -> :sswitch_1
    .end sparse-switch
.end method

.method protected addCompletesCount()V
    .locals 2

    .prologue
    .line 2761
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup;->completesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jingdong/common/utils/HttpGroup;->completesCount:I

    .line 2765
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup;->completesCount:I

    iget v1, p0, Lcom/jingdong/common/utils/HttpGroup;->httpCount:I

    if-ne v0, v1, :cond_0

    .line 2766
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup;->onComplete()V

    .line 2768
    :cond_0
    return-void
.end method

.method protected addMaxProgress(I)V
    .locals 2
    .parameter "maxProgress"

    .prologue
    .line 2780
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup;->maxProgress:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jingdong/common/utils/HttpGroup;->maxProgress:I

    .line 2781
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup;->maxProgress:I

    iget v1, p0, Lcom/jingdong/common/utils/HttpGroup;->progress:I

    invoke-direct {p0, v0, v1}, Lcom/jingdong/common/utils/HttpGroup;->onProgress(II)V

    .line 2783
    return-void
.end method

.method protected addMaxStep(I)V
    .locals 2
    .parameter "maxStep"

    .prologue
    .line 2802
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup;->maxStep:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jingdong/common/utils/HttpGroup;->maxStep:I

    .line 2803
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup;->maxStep:I

    iget v1, p0, Lcom/jingdong/common/utils/HttpGroup;->step:I

    invoke-direct {p0, v0, v1}, Lcom/jingdong/common/utils/HttpGroup;->onStep(II)V

    .line 2804
    return-void
.end method

.method protected addProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 2786
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup;->progress:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jingdong/common/utils/HttpGroup;->progress:I

    .line 2787
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup;->maxProgress:I

    iget v1, p0, Lcom/jingdong/common/utils/HttpGroup;->progress:I

    invoke-direct {p0, v0, v1}, Lcom/jingdong/common/utils/HttpGroup;->onProgress(II)V

    .line 2788
    return-void
.end method

.method protected addStep(I)V
    .locals 2
    .parameter "step"

    .prologue
    .line 2807
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup;->step:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jingdong/common/utils/HttpGroup;->step:I

    .line 2808
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup;->maxStep:I

    iget v1, p0, Lcom/jingdong/common/utils/HttpGroup;->step:I

    invoke-direct {p0, v0, v1}, Lcom/jingdong/common/utils/HttpGroup;->onStep(II)V

    .line 2809
    return-void
.end method

.method protected abstract execute(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
.end method

.method protected onComplete()V
    .locals 1

    .prologue
    .line 2751
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup;->onGroupCompleteListener:Lcom/jingdong/common/utils/HttpGroup$OnGroupCompleteListener;

    if-eqz v0, :cond_0

    .line 2752
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup;->onGroupCompleteListener:Lcom/jingdong/common/utils/HttpGroup$OnGroupCompleteListener;

    invoke-interface {v0}, Lcom/jingdong/common/utils/HttpGroup$OnGroupCompleteListener;->onComplete()V

    .line 2753
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 2746
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup;->onGroupStartListener:Lcom/jingdong/common/utils/HttpGroup$OnGroupStartListener;

    if-eqz v0, :cond_0

    .line 2747
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup;->onGroupStartListener:Lcom/jingdong/common/utils/HttpGroup$OnGroupStartListener;

    invoke-interface {v0}, Lcom/jingdong/common/utils/HttpGroup$OnGroupStartListener;->onStart()V

    .line 2748
    :cond_0
    return-void
.end method

.method public setOnGroupCompleteListener(Lcom/jingdong/common/utils/HttpGroup$OnGroupCompleteListener;)V
    .locals 0
    .parameter "onGroupCompleteListener"

    .prologue
    .line 2824
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup;->onGroupCompleteListener:Lcom/jingdong/common/utils/HttpGroup$OnGroupCompleteListener;

    .line 2825
    return-void
.end method

.method public setOnGroupProgressListener(Lcom/jingdong/common/utils/HttpGroup$OnGroupProgressListener;)V
    .locals 0
    .parameter "onGroupProgressListener"

    .prologue
    .line 2828
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup;->onGroupProgressListener:Lcom/jingdong/common/utils/HttpGroup$OnGroupProgressListener;

    .line 2829
    return-void
.end method

.method public setOnGroupStartListener(Lcom/jingdong/common/utils/HttpGroup$OnGroupStartListener;)V
    .locals 0
    .parameter "onGroupStartListener"

    .prologue
    .line 2820
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup;->onGroupStartListener:Lcom/jingdong/common/utils/HttpGroup$OnGroupStartListener;

    .line 2821
    return-void
.end method

.method public setOnGroupStepListener(Lcom/jingdong/common/utils/HttpGroup$OnGroupStepListener;)V
    .locals 0
    .parameter "onGroupStepListener"

    .prologue
    .line 2832
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup;->onGroupStepListener:Lcom/jingdong/common/utils/HttpGroup$OnGroupStepListener;

    .line 2833
    return-void
.end method
