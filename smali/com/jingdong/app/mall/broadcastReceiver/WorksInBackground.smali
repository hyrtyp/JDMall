.class public Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;
.super Ljava/lang/Object;
.source "WorksInBackground.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WorksInBackground"


# instance fields
.field private context:Landroid/content/Context;

.field private isDoneRegMessage:Z

.field private isDoneUnExcute:Z

.field private isRunUnExcute:Z

.field private killSelfToken:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->isDoneRegMessage:Z

    .line 44
    iput-boolean v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->isDoneUnExcute:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->isRunUnExcute:Z

    .line 49
    iput-object p1, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->context:Landroid/content/Context;

    .line 50
    invoke-static {}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->StartKillSelfTimer()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->killSelfToken:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->isDoneRegMessage:Z

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->close()V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->isDoneUnExcute:Z

    return-void
.end method

.method private close()V
    .locals 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->isDoneRegMessage:Z

    iget-boolean v1, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->isDoneUnExcute:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->killSelfToken:Ljava/lang/Object;

    invoke-static {v0}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelf(Ljava/lang/Object;)V

    .line 127
    :cond_0
    return-void
.end method

.method private doUnExcuteFunctions()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 133
    invoke-static {}, Lcom/jingdong/common/database/table/UnExcuteFunctionTable;->getUnExcuteFunctionList()Ljava/util/ArrayList;

    move-result-object v4

    .line 137
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/UnExcuteFunction;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v9, :cond_1

    .line 138
    iput-boolean v9, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->isDoneUnExcute:Z

    .line 139
    invoke-direct {p0}, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->close()V

    .line 202
    :cond_0
    return-void

    .line 143
    :cond_1
    const/4 v2, 0x0

    .line 145
    .local v2, group:Lcom/jingdong/common/utils/HttpGroup;
    :try_start_0
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    .local v0, activity:Lcom/jingdong/app/mall/utils/MyActivity;
    :goto_0
    if-eqz v0, :cond_5

    .line 150
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    .line 156
    :goto_1
    new-instance v7, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$2;

    invoke-direct {v7, p0}, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$2;-><init>(Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;)V

    invoke-virtual {v2, v7}, Lcom/jingdong/common/utils/HttpGroup;->setOnGroupCompleteListener(Lcom/jingdong/common/utils/HttpGroup$OnGroupCompleteListener;)V

    .line 165
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/UnExcuteFunction;

    .line 166
    .local v6, temp:Lcom/jingdong/common/entity/UnExcuteFunction;
    new-instance v5, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 167
    .local v5, setting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v6}, Lcom/jingdong/common/entity/UnExcuteFunction;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v6}, Lcom/jingdong/common/entity/UnExcuteFunction;->getFunctionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v6}, Lcom/jingdong/common/entity/UnExcuteFunction;->isIfNeedLodingModel()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 171
    invoke-virtual {v5, v9}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 173
    :cond_2
    invoke-virtual {v6}, Lcom/jingdong/common/entity/UnExcuteFunction;->isIfNeedNotifyUser()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 174
    invoke-virtual {v5, v9}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 176
    :cond_3
    invoke-virtual {v6}, Lcom/jingdong/common/entity/UnExcuteFunction;->getJsonParams()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, json:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 179
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :cond_4
    :goto_3
    new-instance v8, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$3;

    invoke-direct {v8, p0, v6}, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$3;-><init>(Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;Lcom/jingdong/common/entity/UnExcuteFunction;)V

    invoke-virtual {v5, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 200
    invoke-virtual {v2, v5}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_2

    .line 146
    .end local v0           #activity:Lcom/jingdong/app/mall/utils/MyActivity;
    .end local v3           #json:Ljava/lang/String;
    .end local v5           #setting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .end local v6           #temp:Lcom/jingdong/common/entity/UnExcuteFunction;
    :catch_0
    move-exception v1

    .line 147
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .restart local v0       #activity:Lcom/jingdong/app/mall/utils/MyActivity;
    goto :goto_0

    .line 152
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    goto :goto_1

    .line 180
    .restart local v3       #json:Ljava/lang/String;
    .restart local v5       #setting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .restart local v6       #temp:Lcom/jingdong/common/entity/UnExcuteFunction;
    :catch_1
    move-exception v8

    goto :goto_3
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 62
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->CheckNetWork()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    invoke-static {}, Lcom/jingdong/common/utils/MessageUtil;->getMsgMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/jingdong/common/utils/MessageUtil;->openMsgService()V

    .line 111
    :goto_0
    iget-boolean v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->isRunUnExcute:Z

    if-eqz v0, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->doUnExcuteFunctions()V

    .line 121
    :goto_1
    return-void

    .line 83
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/PushMessageUtils;->getDeviceTokenFromLocal()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground$1;-><init>(Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;)V

    invoke-static {v0, v1, v1}, Lcom/jingdong/common/utils/PushMessageUtils;->regPushMessageToken(Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->context:Landroid/content/Context;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/AlarmUtils;->alarmPushMsgTask(Landroid/content/Context;J)V

    .line 104
    iput-boolean v3, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->isDoneRegMessage:Z

    .line 105
    invoke-direct {p0}, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->close()V

    goto :goto_0

    .line 114
    :cond_2
    iput-boolean v3, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->isDoneUnExcute:Z

    .line 115
    invoke-direct {p0}, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->close()V

    goto :goto_1

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->killSelfToken:Ljava/lang/Object;

    invoke-static {v0}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelf(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setRunUnExcute(Z)V
    .locals 0
    .parameter "isRunUnExcute"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->isRunUnExcute:Z

    .line 55
    return-void
.end method
