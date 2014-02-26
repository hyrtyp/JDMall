.class public Lcom/jd/lottery/lib/service/DataIntentService;
.super Lcom/jd/droidlib/executor/service/IntentService;
.source "DataIntentService.java"


# static fields
.field public static final ACTION_GET_ALL_LOTTERY:Ljava/lang/String; = "get_all_lottery"

.field public static final ACTION_GET_ALL_LOTTERY2:Ljava/lang/String; = "get_all_lottery2"

.field public static final ACTION_GET_CURRENT_ISSUE:Ljava/lang/String; = "get_current_issue"

.field public static final ACTION_GET_ISSUE:Ljava/lang/String; = "get_issue"

.field public static final ACTION_GET_LOTTERY_TOKEN:Ljava/lang/String; = "get_lottery_token"

.field public static final ACTION_GET_ORDER:Ljava/lang/String; = "get_order"

.field public static final ACTION_GET_USER_BSC:Ljava/lang/String; = "get_user_bsc"

.field public static final ACTION_GET_USER_INFO:Ljava/lang/String; = "get_user_info"

.field public static final ACTION_GET_ZHUI_HAO:Ljava/lang/String; = "get_zhui_hao"

.field public static final ACTION_IS_AWARD_TODAY:Ljava/lang/String; = "is_award_today"

.field public static final ACTION_UPDATE_USER_INFO:Ljava/lang/String; = "update_user_info"

.field public static final DATA_USER_INFO:Ljava/lang/String; = "user_info"


# instance fields
.field private dialogFactory:Lcom/jd/droidlib/util/ui/AbstractDialogFactory;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectDependency;
    .end annotation
.end field

.field private jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectDependency;
    .end annotation
.end field

.field private mIssueManager:Lcom/jd/lottery/lib/data/LotteryIssueManager;
    .annotation runtime Lcom/jd/droidlib/annotation/inject/InjectDependency;
    .end annotation
.end field

.field private restClient:Lcom/jd/droidlib/net/http/RESTClient2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 138
    const-class v0, Lcom/jd/lottery/lib/service/DataIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jd/droidlib/executor/service/IntentService;-><init>(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static getAllLotteryIntent(Landroid/content/Context;Landroid/os/ResultReceiver;)Landroid/content/Intent;
    .locals 2
    .parameter "ctx"
    .parameter "resultReceiver"

    .prologue
    .line 73
    const-class v0, Lcom/jd/lottery/lib/service/DataIntentService;

    const-string v1, "get_all_lottery"

    invoke-static {p0, v0, v1, p1}, Lcom/jd/lottery/lib/service/DataIntentService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getIsAwardTodayIntent(Landroid/content/Context;Landroid/os/ResultReceiver;)Landroid/content/Intent;
    .locals 2
    .parameter "ctx"
    .parameter "resultReceiver"

    .prologue
    .line 124
    const-class v0, Lcom/jd/lottery/lib/service/DataIntentService;

    const-string v1, "is_award_today"

    invoke-static {p0, v0, v1, p1}, Lcom/jd/lottery/lib/service/DataIntentService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getIssueIntent(Landroid/content/Context;Landroid/os/ResultReceiver;)Landroid/content/Intent;
    .locals 2
    .parameter "ctx"
    .parameter "resultReceiver"

    .prologue
    .line 79
    const-class v0, Lcom/jd/lottery/lib/service/DataIntentService;

    const-string v1, "get_issue"

    invoke-static {p0, v0, v1, p1}, Lcom/jd/lottery/lib/service/DataIntentService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static getIssueIntent(Lcom/jd/lottery/lib/data/Constants$IssueFlag;Landroid/content/Context;Landroid/os/ResultReceiver;)Landroid/content/Intent;
    .locals 2
    .parameter "flag"
    .parameter "ctx"
    .parameter "resultReceiver"

    .prologue
    .line 67
    const-class v0, Lcom/jd/lottery/lib/service/DataIntentService;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/jd/lottery/lib/service/DataIntentService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getLotteryTokenIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;
    .locals 2
    .parameter "ctx"
    .parameter "params"
    .parameter "action"
    .parameter "cookies"
    .parameter "resultReceiver"

    .prologue
    .line 92
    const-class v0, Lcom/jd/lottery/lib/service/DataIntentService;

    .line 93
    const-string v1, "get_lottery_token"

    .line 92
    invoke-static {p0, v0, v1, p4}, Lcom/jd/lottery/lib/service/DataIntentService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    const-string v1, "params"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cookies"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 95
    const-string v1, "action"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method public static getOrderIntent(Landroid/content/Context;Lcom/jd/lottery/lib/model/BetRequest;Landroid/os/ResultReceiver;)Landroid/content/Intent;
    .locals 2
    .parameter "ctx"
    .parameter "request"
    .parameter "resultReceiver"

    .prologue
    .line 118
    const-class v0, Lcom/jd/lottery/lib/service/DataIntentService;

    const-string v1, "get_order"

    invoke-static {p0, v0, v1, p2}, Lcom/jd/lottery/lib/service/DataIntentService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v0

    .line 119
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 118
    return-object v0
.end method

.method public static getUpdateUserInfoIntent(Landroid/content/Context;Lcom/jd/lottery/lib/model/UserInfoEntity;Landroid/os/ResultReceiver;)Landroid/content/Intent;
    .locals 2
    .parameter "ctx"
    .parameter "userInfoEntity"
    .parameter "resultReceiver"

    .prologue
    .line 112
    const-class v0, Lcom/jd/lottery/lib/service/DataIntentService;

    const-string v1, "update_user_info"

    invoke-static {p0, v0, v1, p2}, Lcom/jd/lottery/lib/service/DataIntentService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v0

    .line 113
    const-string v1, "user_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method public static getUserBscIntent(Landroid/content/Context;Landroid/os/ResultReceiver;)Landroid/content/Intent;
    .locals 2
    .parameter "ctx"
    .parameter "resultReceiver"

    .prologue
    .line 106
    const-class v0, Lcom/jd/lottery/lib/service/DataIntentService;

    const-string v1, "get_user_bsc"

    invoke-static {p0, v0, v1, p1}, Lcom/jd/lottery/lib/service/DataIntentService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getUserInfoIntent(Landroid/content/Context;Landroid/os/ResultReceiver;)Landroid/content/Intent;
    .locals 2
    .parameter "ctx"
    .parameter "resultReceiver"

    .prologue
    .line 100
    const-class v0, Lcom/jd/lottery/lib/service/DataIntentService;

    const-string v1, "get_user_info"

    invoke-static {p0, v0, v1, p1}, Lcom/jd/lottery/lib/service/DataIntentService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getZhuiHaoIntent(Landroid/content/Context;ILcom/jd/lottery/lib/data/Constants$LotteryType;Landroid/os/ResultReceiver;)Landroid/content/Intent;
    .locals 2
    .parameter "ctx"
    .parameter "count"
    .parameter "lotteryType"
    .parameter "resultReceiver"

    .prologue
    .line 85
    const-class v0, Lcom/jd/lottery/lib/service/DataIntentService;

    const-string v1, "get_zhui_hao"

    invoke-static {p0, v0, v1, p3}, Lcom/jd/lottery/lib/service/DataIntentService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v0

    .line 86
    const-string v1, "count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 87
    const-string v1, "lottery_type"

    .line 86
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 85
    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/jd/droidlib/executor/service/IntentService;->onCreate()V

    .line 144
    new-instance v0, Lcom/jd/droidlib/net/http/RESTClient2;

    invoke-direct {v0, p0}, Lcom/jd/droidlib/net/http/RESTClient2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/service/DataIntentService;->restClient:Lcom/jd/droidlib/net/http/RESTClient2;

    .line 145
    return-void
.end method

.method protected onExecute(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 31
    .parameter "action"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    const-string v24, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/service/DataIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 151
    .local v4, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 152
    .local v7, info:Landroid/net/NetworkInfo;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 153
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v24

    sget-object v25, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 402
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 157
    .restart local p2
    :cond_1
    const-string v24, "lottery_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    .line 156
    check-cast v11, Lcom/jd/lottery/lib/data/Constants$LotteryType;

    .line 158
    .local v11, lotteryType:Lcom/jd/lottery/lib/data/Constants$LotteryType;
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :try_start_0
    const-string v24, "get_issue"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 162
    sget-object v24, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->CURR:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    move-object/from16 v0, v24

    invoke-static {v0, v11}, Lcom/jd/lottery/lib/net/LotteryUri;->getIssueUri(Lcom/jd/lottery/lib/data/Constants$IssueFlag;Lcom/jd/lottery/lib/data/Constants$LotteryType;)Landroid/net/Uri;

    move-result-object v21

    .line 163
    .local v21, uri:Landroid/net/Uri;
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->restClient:Lcom/jd/droidlib/net/http/RESTClient2;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jd/droidlib/net/http/RESTClient2;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 165
    .local v12, obj:Lorg/json/JSONObject;
    invoke-static {v12}, Lcom/jd/lottery/lib/model/LotteryEntity;->parseModel(Lorg/json/JSONObject;)Lcom/jd/lottery/lib/model/LotteryEntity;

    move-result-object v14

    .line 166
    .local v14, r:Lcom/jd/lottery/lib/model/LotteryEntity;
    invoke-virtual {v11}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->ordinal()I

    move-result v24

    move/from16 v0, v24

    iput v0, v14, Lcom/jd/lottery/lib/model/LotteryEntity;->lotteryIndex:I

    .line 167
    if-eqz v14, :cond_2

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->mIssueManager:Lcom/jd/lottery/lib/data/LotteryIssueManager;

    move-object/from16 v24, v0

    .line 169
    sget-object v25, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->CURR:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    .line 168
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->createOrUpdate(Lcom/jd/lottery/lib/model/LotteryEntity;Lcom/jd/lottery/lib/data/Constants$IssueFlag;)Z

    move-result v19

    .line 170
    .local v19, succuss:Z
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "@@@@@@@@@@@"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 172
    .end local v19           #succuss:Z
    :cond_2
    sget-object v24, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->PREV:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    move-object/from16 v0, v24

    invoke-static {v0, v11}, Lcom/jd/lottery/lib/net/LotteryUri;->getIssueUri(Lcom/jd/lottery/lib/data/Constants$IssueFlag;Lcom/jd/lottery/lib/data/Constants$LotteryType;)Landroid/net/Uri;

    move-result-object v21

    .line 173
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->restClient:Lcom/jd/droidlib/net/http/RESTClient2;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jd/droidlib/net/http/RESTClient2;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 175
    invoke-static {v12}, Lcom/jd/lottery/lib/model/LotteryEntity;->parseModel(Lorg/json/JSONObject;)Lcom/jd/lottery/lib/model/LotteryEntity;

    move-result-object v14

    .line 176
    if-eqz v14, :cond_0

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->mIssueManager:Lcom/jd/lottery/lib/data/LotteryIssueManager;

    move-object/from16 v24, v0

    .line 178
    sget-object v25, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->PREV:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    .line 177
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->createOrUpdate(Lcom/jd/lottery/lib/model/LotteryEntity;Lcom/jd/lottery/lib/data/Constants$IssueFlag;)Z

    move-result v19

    .line 179
    .restart local v19       #succuss:Z
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "@@@@@@@@@@@"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 386
    .end local v12           #obj:Lorg/json/JSONObject;
    .end local v14           #r:Lcom/jd/lottery/lib/model/LotteryEntity;
    .end local v19           #succuss:Z
    .end local v21           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v24

    goto/16 :goto_0

    .line 185
    :cond_3
    const-string v24, "get_all_lottery"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 186
    invoke-static {}, Lcom/jd/lottery/lib/model/AllInfoRequest;->getUri()Landroid/net/Uri;

    move-result-object v21

    .line 187
    .restart local v21       #uri:Landroid/net/Uri;
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->restClient:Lcom/jd/droidlib/net/http/RESTClient2;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jd/droidlib/net/http/RESTClient2;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 189
    .local v3, arr:Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 190
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    new-instance v10, Lcom/jd/droidlib/persist/json/JSONSerializer2;

    const-class v24, Lcom/jd/lottery/lib/model/LotteryEntity;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v10, v0, v1}, Lcom/jd/droidlib/persist/json/JSONSerializer2;-><init>(Ljava/lang/Class;Landroid/content/Context;)V

    .line 192
    .local v10, j2:Lcom/jd/droidlib/persist/json/JSONSerializer2;
    invoke-virtual {v10, v3}, Lcom/jd/droidlib/persist/json/JSONSerializer2;->deserialize(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v9

    .line 193
    .local v9, issueArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/lottery/lib/model/LotteryEntity;>;"
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v9}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    if-eqz v9, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->mIssueManager:Lcom/jd/lottery/lib/data/LotteryIssueManager;

    move-object/from16 v24, v0

    .line 196
    sget-object v25, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->CURR:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    .line 195
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v9, v1}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->createOrUpdate(Ljava/util/ArrayList;Lcom/jd/lottery/lib/data/Constants$IssueFlag;)I

    move-result v19

    .line 197
    .local v19, succuss:I
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "@@@@@@@@@@@"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/jd/droidlib/net/http/HTTPException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/jd/lottery/lib/exception/ErrorCodeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_0

    .line 388
    .end local v3           #arr:Lorg/json/JSONArray;
    .end local v9           #issueArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/lottery/lib/model/LotteryEntity;>;"
    .end local v10           #j2:Lcom/jd/droidlib/persist/json/JSONSerializer2;
    .end local v19           #succuss:I
    .end local v21           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v6

    .line 390
    .local v6, e:Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 204
    .end local v6           #e:Lorg/json/JSONException;
    :cond_4
    :try_start_1
    const-string v24, "get_zhui_hao"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 205
    const-string v24, "count"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    invoke-static {v0, v11}, Lcom/jd/lottery/lib/model/ZhuiHaoRequest;->getUri(ILcom/jd/lottery/lib/data/Constants$LotteryType;)Landroid/net/Uri;

    move-result-object v21

    .line 207
    .restart local v21       #uri:Landroid/net/Uri;
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->restClient:Lcom/jd/droidlib/net/http/RESTClient2;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jd/droidlib/net/http/RESTClient2;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 209
    .restart local v12       #obj:Lorg/json/JSONObject;
    invoke-static {v12}, Lcom/jd/lottery/lib/model/ResultModel;->parseModel(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v24

    .line 210
    const-string v25, "issuelist"

    .line 209
    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 211
    .local v14, r:Lorg/json/JSONArray;
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v14}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    new-instance v10, Lcom/jd/droidlib/persist/json/JSONSerializer2;

    const-class v24, Lcom/jd/lottery/lib/model/LotteryEntity;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v10, v0, v1}, Lcom/jd/droidlib/persist/json/JSONSerializer2;-><init>(Ljava/lang/Class;Landroid/content/Context;)V

    .line 213
    .restart local v10       #j2:Lcom/jd/droidlib/persist/json/JSONSerializer2;
    invoke-virtual {v10, v14}, Lcom/jd/droidlib/persist/json/JSONSerializer2;->deserialize(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v9

    .line 215
    .restart local v9       #issueArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/lottery/lib/model/LotteryEntity;>;"
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v9}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    const-string v24, "data"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/jd/droidlib/net/http/HTTPException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/jd/lottery/lib/exception/ErrorCodeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_0

    .line 391
    .end local v9           #issueArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jd/lottery/lib/model/LotteryEntity;>;"
    .end local v10           #j2:Lcom/jd/droidlib/persist/json/JSONSerializer2;
    .end local v12           #obj:Lorg/json/JSONObject;
    .end local v14           #r:Lorg/json/JSONArray;
    .end local v21           #uri:Landroid/net/Uri;
    :catch_2
    move-exception v6

    .line 392
    .local v6, e:Lcom/jd/droidlib/net/http/HTTPException;
    invoke-virtual/range {p0 .. p0}, Lcom/jd/lottery/lib/service/DataIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    sget v25, Lcom/jd/lottery/lib/R$string;->loading_error:I

    invoke-static/range {v24 .. v25}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 393
    invoke-virtual {v6}, Lcom/jd/droidlib/net/http/HTTPException;->printStackTrace()V

    goto/16 :goto_0

    .line 218
    .end local v6           #e:Lcom/jd/droidlib/net/http/HTTPException;
    :cond_5
    :try_start_2
    const-string v24, "get_all_lottery2"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 219
    invoke-static {}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->values()[Lcom/jd/lottery/lib/data/Constants$LotteryType;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    const/16 v24, 0x0

    :goto_1
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    aget-object v20, v25, v24

    .line 220
    .local v20, type:Lcom/jd/lottery/lib/data/Constants$LotteryType;
    sget-object v27, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->CURR:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/jd/lottery/lib/net/LotteryUri;->getIssueUri(Lcom/jd/lottery/lib/data/Constants$IssueFlag;Lcom/jd/lottery/lib/data/Constants$LotteryType;)Landroid/net/Uri;

    move-result-object v21

    .line 221
    .restart local v21       #uri:Landroid/net/Uri;
    const-string v27, "@@@@@@@@@@@@%s"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->restClient:Lcom/jd/droidlib/net/http/RESTClient2;

    move-object/from16 v27, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/jd/droidlib/net/http/RESTClient2;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 223
    .restart local v12       #obj:Lorg/json/JSONObject;
    invoke-static {v12}, Lcom/jd/lottery/lib/model/LotteryEntity;->parseModel(Lorg/json/JSONObject;)Lcom/jd/lottery/lib/model/LotteryEntity;

    move-result-object v14

    .line 224
    .local v14, r:Lcom/jd/lottery/lib/model/LotteryEntity;
    invoke-static/range {v20 .. v20}, Lcom/jd/lottery/lib/net/LotteryUri;->getIsAwardTody(Lcom/jd/lottery/lib/data/Constants$LotteryType;)Landroid/net/Uri;

    move-result-object v21

    .line 225
    const-string v27, "@@@@@@@@@@@@%s"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->restClient:Lcom/jd/droidlib/net/http/RESTClient2;

    move-object/from16 v27, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/jd/droidlib/net/http/RESTClient2;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;

    move-object/from16 v27, v0

    .line 228
    const-class v28, Lcom/jd/lottery/lib/model/ResultModel;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v12, v1}, Lcom/jd/droidlib/persist/json/JSONSerializer;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/jd/droidlib/model/Model;

    move-result-object v17

    .line 227
    check-cast v17, Lcom/jd/lottery/lib/model/ResultModel;

    .line 242
    .local v17, result:Lcom/jd/lottery/lib/model/ResultModel;
    invoke-virtual/range {v20 .. v20}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->ordinal()I

    move-result v27

    move/from16 v0, v27

    iput v0, v14, Lcom/jd/lottery/lib/model/LotteryEntity;->lotteryIndex:I

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->mIssueManager:Lcom/jd/lottery/lib/data/LotteryIssueManager;

    move-object/from16 v27, v0

    .line 246
    sget-object v28, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->CURR:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    .line 245
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v14, v1}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->createOrUpdate(Lcom/jd/lottery/lib/model/LotteryEntity;Lcom/jd/lottery/lib/data/Constants$IssueFlag;)Z

    move-result v19

    .line 247
    .local v19, succuss:Z
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "@@@@@@@@@@@"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 219
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 254
    .end local v12           #obj:Lorg/json/JSONObject;
    .end local v14           #r:Lcom/jd/lottery/lib/model/LotteryEntity;
    .end local v17           #result:Lcom/jd/lottery/lib/model/ResultModel;
    .end local v19           #succuss:Z
    .end local v20           #type:Lcom/jd/lottery/lib/data/Constants$LotteryType;
    .end local v21           #uri:Landroid/net/Uri;
    :cond_6
    sget-object v24, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->CURR:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    invoke-virtual/range {v24 .. v24}, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 255
    sget-object v24, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->CURR:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    move-object/from16 v0, v24

    invoke-static {v0, v11}, Lcom/jd/lottery/lib/net/LotteryUri;->getIssueUri(Lcom/jd/lottery/lib/data/Constants$IssueFlag;Lcom/jd/lottery/lib/data/Constants$LotteryType;)Landroid/net/Uri;

    move-result-object v21

    .line 256
    .restart local v21       #uri:Landroid/net/Uri;
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->restClient:Lcom/jd/droidlib/net/http/RESTClient2;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jd/droidlib/net/http/RESTClient2;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 258
    .restart local v12       #obj:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;

    move-object/from16 v24, v0

    .line 259
    const-class v25, Lcom/jd/lottery/lib/model/ResultModel;

    .line 258
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Lcom/jd/droidlib/persist/json/JSONSerializer;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/jd/droidlib/model/Model;

    move-result-object v17

    check-cast v17, Lcom/jd/lottery/lib/model/ResultModel;

    .line 260
    .restart local v17       #result:Lcom/jd/lottery/lib/model/ResultModel;
    const-string v24, "@@@@@@@@@@@@%d"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/jd/lottery/lib/model/ResultModel;->resultCode:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    move-object/from16 v0, v17

    iget v0, v0, Lcom/jd/lottery/lib/model/ResultModel;->resultCode:I

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 262
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jd/lottery/lib/model/ResultModel;->result:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 263
    .local v18, results:Lorg/json/JSONObject;
    const-string v24, "results"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 264
    const-string v25, "issue"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 265
    .local v8, issue:Lorg/json/JSONObject;
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;

    move-object/from16 v24, v0

    .line 267
    const-class v25, Lcom/jd/lottery/lib/model/LotteryEntity;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v8, v1}, Lcom/jd/droidlib/persist/json/JSONSerializer;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/jd/droidlib/model/Model;

    move-result-object v14

    .line 266
    check-cast v14, Lcom/jd/lottery/lib/model/LotteryEntity;

    .line 268
    .restart local v14       #r:Lcom/jd/lottery/lib/model/LotteryEntity;
    const-string v24, "issue"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->mIssueManager:Lcom/jd/lottery/lib/data/LotteryIssueManager;

    move-object/from16 v24, v0

    .line 270
    sget-object v25, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->CURR:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    .line 269
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->createOrUpdate(Lcom/jd/lottery/lib/model/LotteryEntity;Lcom/jd/lottery/lib/data/Constants$IssueFlag;)Z

    move-result v19

    .line 271
    .restart local v19       #succuss:Z
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "@@@@@@@@@@@"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/jd/droidlib/net/http/HTTPException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/jd/lottery/lib/exception/ErrorCodeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 394
    .end local v8           #issue:Lorg/json/JSONObject;
    .end local v12           #obj:Lorg/json/JSONObject;
    .end local v14           #r:Lcom/jd/lottery/lib/model/LotteryEntity;
    .end local v17           #result:Lcom/jd/lottery/lib/model/ResultModel;
    .end local v18           #results:Lorg/json/JSONObject;
    .end local v19           #succuss:Z
    .end local v21           #uri:Landroid/net/Uri;
    :catch_3
    move-exception v6

    .line 396
    .local v6, e:Lcom/jd/lottery/lib/exception/ErrorCodeException;
    invoke-virtual {v6}, Lcom/jd/lottery/lib/exception/ErrorCodeException;->printStackTrace()V

    .line 397
    const-string v24, "error"

    invoke-virtual {v6}, Lcom/jd/lottery/lib/exception/ErrorCodeException;->getError()Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_0

    .line 277
    .end local v6           #e:Lcom/jd/lottery/lib/exception/ErrorCodeException;
    :cond_7
    :try_start_3
    sget-object v24, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->PREV:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    invoke-virtual/range {v24 .. v24}, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 278
    sget-object v24, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->PREV:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    move-object/from16 v0, v24

    invoke-static {v0, v11}, Lcom/jd/lottery/lib/net/LotteryUri;->getIssueUri(Lcom/jd/lottery/lib/data/Constants$IssueFlag;Lcom/jd/lottery/lib/data/Constants$LotteryType;)Landroid/net/Uri;

    move-result-object v21

    .line 279
    .restart local v21       #uri:Landroid/net/Uri;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "@@@@@@@@@@@@%s"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->restClient:Lcom/jd/droidlib/net/http/RESTClient2;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jd/droidlib/net/http/RESTClient2;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 281
    .restart local v12       #obj:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;

    move-object/from16 v24, v0

    .line 282
    const-class v25, Lcom/jd/lottery/lib/model/ResultModel;

    .line 281
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Lcom/jd/droidlib/persist/json/JSONSerializer;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/jd/droidlib/model/Model;

    move-result-object v17

    check-cast v17, Lcom/jd/lottery/lib/model/ResultModel;

    .line 283
    .restart local v17       #result:Lcom/jd/lottery/lib/model/ResultModel;
    const-string v24, "@@@@@@@@@@@@%d"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/jd/lottery/lib/model/ResultModel;->resultCode:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    move-object/from16 v0, v17

    iget v0, v0, Lcom/jd/lottery/lib/model/ResultModel;->resultCode:I

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 285
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jd/lottery/lib/model/ResultModel;->result:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 286
    .restart local v18       #results:Lorg/json/JSONObject;
    const-string v24, "results"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 287
    const-string v25, "issue"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 288
    .restart local v8       #issue:Lorg/json/JSONObject;
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;

    move-object/from16 v24, v0

    .line 290
    const-class v25, Lcom/jd/lottery/lib/model/LotteryEntity;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v8, v1}, Lcom/jd/droidlib/persist/json/JSONSerializer;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/jd/droidlib/model/Model;

    move-result-object v14

    .line 289
    check-cast v14, Lcom/jd/lottery/lib/model/LotteryEntity;

    .line 291
    .restart local v14       #r:Lcom/jd/lottery/lib/model/LotteryEntity;
    const-string v24, "issue"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->mIssueManager:Lcom/jd/lottery/lib/data/LotteryIssueManager;

    move-object/from16 v24, v0

    .line 293
    sget-object v25, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->PREV:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    .line 292
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->createOrUpdate(Lcom/jd/lottery/lib/model/LotteryEntity;Lcom/jd/lottery/lib/data/Constants$IssueFlag;)Z

    move-result v19

    .line 294
    .restart local v19       #succuss:Z
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "@@@@@@@@@@@"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/jd/droidlib/net/http/HTTPException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/jd/lottery/lib/exception/ErrorCodeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 398
    .end local v8           #issue:Lorg/json/JSONObject;
    .end local v12           #obj:Lorg/json/JSONObject;
    .end local v14           #r:Lcom/jd/lottery/lib/model/LotteryEntity;
    .end local v17           #result:Lcom/jd/lottery/lib/model/ResultModel;
    .end local v18           #results:Lorg/json/JSONObject;
    .end local v19           #succuss:Z
    .end local v21           #uri:Landroid/net/Uri;
    :catch_4
    move-exception v6

    .line 400
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 300
    .end local v6           #e:Ljava/lang/Exception;
    :cond_8
    :try_start_4
    const-string v24, "is_award_today"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 301
    invoke-static {v11}, Lcom/jd/lottery/lib/net/LotteryUri;->getIsAwardTody(Lcom/jd/lottery/lib/data/Constants$LotteryType;)Landroid/net/Uri;

    move-result-object v21

    .line 302
    .restart local v21       #uri:Landroid/net/Uri;
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->restClient:Lcom/jd/droidlib/net/http/RESTClient2;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jd/droidlib/net/http/RESTClient2;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 304
    .restart local v12       #obj:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;

    move-object/from16 v24, v0

    .line 305
    const-class v25, Lcom/jd/lottery/lib/model/ResultModel;

    .line 304
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Lcom/jd/droidlib/persist/json/JSONSerializer;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/jd/droidlib/model/Model;

    move-result-object v17

    check-cast v17, Lcom/jd/lottery/lib/model/ResultModel;

    .line 306
    .restart local v17       #result:Lcom/jd/lottery/lib/model/ResultModel;
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "@@@@@@@@@@@@"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/jd/lottery/lib/model/ResultModel;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 307
    move-object/from16 v0, v17

    iget v0, v0, Lcom/jd/lottery/lib/model/ResultModel;->resultCode:I

    move/from16 v24, v0

    if-nez v24, :cond_9

    .line 308
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jd/lottery/lib/model/ResultModel;->result:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 309
    .restart local v18       #results:Lorg/json/JSONObject;
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;

    move-object/from16 v24, v0

    .line 311
    const-class v25, Lcom/jd/lottery/lib/model/AwardTodayEntity;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/jd/droidlib/persist/json/JSONSerializer;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/jd/droidlib/model/Model;

    move-result-object v14

    .line 310
    check-cast v14, Lcom/jd/lottery/lib/model/AwardTodayEntity;

    .line 312
    .local v14, r:Lcom/jd/lottery/lib/model/AwardTodayEntity;
    const-string v24, "data"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 314
    .end local v14           #r:Lcom/jd/lottery/lib/model/AwardTodayEntity;
    .end local v18           #results:Lorg/json/JSONObject;
    :cond_9
    const-string v24, "sop_order"

    invoke-static/range {v24 .. v24}, Lcom/jd/lottery/lib/model/BetRequest;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 315
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 316
    .end local v12           #obj:Lorg/json/JSONObject;
    .end local v17           #result:Lcom/jd/lottery/lib/model/ResultModel;
    .end local v21           #uri:Landroid/net/Uri;
    :cond_a
    const-string v24, "get_lottery_token"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 317
    const-string v24, "cookies"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 318
    .local v5, cookie:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->restClient:Lcom/jd/droidlib/net/http/RESTClient2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/jd/droidlib/net/http/RESTClient2;->setCookie(Ljava/lang/String;)V

    .line 319
    const-string v24, "params"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 321
    .local v13, params:Ljava/lang/String;
    const-string v24, "action"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 320
    move-object/from16 v0, v24

    invoke-static {v13, v0}, Lcom/jd/lottery/lib/model/TokenRequest;->getUriFromJson(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 322
    .restart local v21       #uri:Landroid/net/Uri;
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "@@@@@@@@@@@@"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    .line 323
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "&client=android"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->restClient:Lcom/jd/droidlib/net/http/RESTClient2;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jd/droidlib/net/http/RESTClient2;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 325
    .local v16, response:Lorg/json/JSONObject;
    invoke-static/range {v16 .. v16}, Lcom/jd/lottery/lib/model/TokenInfo;->parseModel(Lorg/json/JSONObject;)Lcom/jd/lottery/lib/model/TokenInfo;

    move-result-object v14

    .line 326
    .local v14, r:Lcom/jd/lottery/lib/model/TokenInfo;
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v14}, Lcom/jd/lottery/lib/model/TokenInfo;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    const-string v24, "data"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_0

    .line 330
    .end local v5           #cookie:Ljava/lang/String;
    .end local v13           #params:Ljava/lang/String;
    .end local v14           #r:Lcom/jd/lottery/lib/model/TokenInfo;
    .end local v16           #response:Lorg/json/JSONObject;
    .end local v21           #uri:Landroid/net/Uri;
    :cond_b
    const-string v24, "get_user_bsc"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 331
    invoke-static {}, Lcom/jd/lottery/lib/data/UserManager;->getInstance()Lcom/jd/lottery/lib/data/UserManager;

    move-result-object v24

    .line 332
    invoke-virtual/range {v24 .. v24}, Lcom/jd/lottery/lib/data/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v24

    .line 331
    invoke-static/range {v24 .. v24}, Lcom/jd/lottery/lib/model/UserBscRequest;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 333
    .restart local v21       #uri:Landroid/net/Uri;
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->restClient:Lcom/jd/droidlib/net/http/RESTClient2;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jd/droidlib/net/http/RESTClient2;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 335
    .restart local v12       #obj:Lorg/json/JSONObject;
    invoke-static {v12}, Lcom/jd/lottery/lib/model/UserBscEntity;->parseModel(Lorg/json/JSONObject;)Lcom/jd/lottery/lib/model/UserBscEntity;

    move-result-object v14

    .line 336
    .local v14, r:Lcom/jd/lottery/lib/model/UserBscEntity;
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v14}, Lcom/jd/lottery/lib/model/UserBscEntity;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    const-string v24, "data"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_0

    .line 340
    .end local v12           #obj:Lorg/json/JSONObject;
    .end local v14           #r:Lcom/jd/lottery/lib/model/UserBscEntity;
    .end local v21           #uri:Landroid/net/Uri;
    :cond_c
    const-string v24, "get_user_info"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 341
    invoke-static {}, Lcom/jd/lottery/lib/data/UserManager;->getInstance()Lcom/jd/lottery/lib/data/UserManager;

    move-result-object v24

    .line 342
    invoke-virtual/range {v24 .. v24}, Lcom/jd/lottery/lib/data/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v24

    .line 341
    invoke-static/range {v24 .. v24}, Lcom/jd/lottery/lib/model/UserInfoRequest;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 344
    .restart local v21       #uri:Landroid/net/Uri;
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->restClient:Lcom/jd/droidlib/net/http/RESTClient2;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jd/droidlib/net/http/RESTClient2;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 346
    .restart local v12       #obj:Lorg/json/JSONObject;
    invoke-static {v12}, Lcom/jd/lottery/lib/model/UserInfoEntity;->parseModel(Lorg/json/JSONObject;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v14

    .line 347
    .local v14, r:Lcom/jd/lottery/lib/model/UserInfoEntity;
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v14}, Lcom/jd/lottery/lib/model/UserInfoEntity;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    const-string v24, "data"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_0

    .line 351
    .end local v12           #obj:Lorg/json/JSONObject;
    .end local v14           #r:Lcom/jd/lottery/lib/model/UserInfoEntity;
    .end local v21           #uri:Landroid/net/Uri;
    :cond_d
    const-string v24, "update_user_info"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 353
    const-string v24, "user_info"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v23

    .line 352
    check-cast v23, Lcom/jd/lottery/lib/model/UserInfoEntity;

    .line 354
    .local v23, userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    if-nez v23, :cond_e

    .line 355
    const/16 p2, 0x0

    goto/16 :goto_0

    .line 356
    :cond_e
    invoke-static {}, Lcom/jd/lottery/lib/data/UserManager;->getInstance()Lcom/jd/lottery/lib/data/UserManager;

    move-result-object v24

    .line 357
    invoke-virtual/range {v24 .. v24}, Lcom/jd/lottery/lib/data/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jd/lottery/lib/model/UserInfoEntity;->fullname:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 358
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jd/lottery/lib/model/UserInfoEntity;->idcardnumber:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jd/lottery/lib/model/UserInfoEntity;->mobile:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 356
    invoke-static/range {v24 .. v27}, Lcom/jd/lottery/lib/model/UserInfoUpdate;->getUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 359
    .restart local v21       #uri:Landroid/net/Uri;
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->restClient:Lcom/jd/droidlib/net/http/RESTClient2;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jd/droidlib/net/http/RESTClient2;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 361
    .restart local v12       #obj:Lorg/json/JSONObject;
    invoke-static {v12}, Lcom/jd/lottery/lib/model/UserInfoEntity;->parseModel(Lorg/json/JSONObject;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v22

    .line 362
    .local v22, userInfo:Lcom/jd/lottery/lib/model/UserInfoEntity;
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v22 .. v22}, Lcom/jd/lottery/lib/model/UserInfoEntity;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    const-string v24, "data"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_0

    .line 364
    .end local v12           #obj:Lorg/json/JSONObject;
    .end local v21           #uri:Landroid/net/Uri;
    .end local v22           #userInfo:Lcom/jd/lottery/lib/model/UserInfoEntity;
    .end local v23           #userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    :cond_f
    const-string v24, "get_order"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    .line 366
    const-string v24, "request"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v15

    .line 365
    check-cast v15, Lcom/jd/lottery/lib/model/BetRequest;

    .line 367
    .local v15, request:Lcom/jd/lottery/lib/model/BetRequest;
    invoke-virtual {v15}, Lcom/jd/lottery/lib/model/BetRequest;->getUri()Landroid/net/Uri;

    move-result-object v21

    .line 368
    .restart local v21       #uri:Landroid/net/Uri;
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jd/lottery/lib/service/DataIntentService;->restClient:Lcom/jd/droidlib/net/http/RESTClient2;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/jd/droidlib/net/http/RESTClient2;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 370
    .restart local v12       #obj:Lorg/json/JSONObject;
    const-string v24, "@@@@@@@@@@@@%s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    invoke-static {v12}, Lcom/jd/lottery/lib/model/OrderInfoEntity;->parseModel(Lorg/json/JSONObject;)Lcom/jd/lottery/lib/model/OrderInfoEntity;

    move-result-object v14

    .line 382
    .local v14, r:Lcom/jd/lottery/lib/model/OrderInfoEntity;
    const-string v24, "data"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_0

    .line 384
    .end local v12           #obj:Lorg/json/JSONObject;
    .end local v14           #r:Lcom/jd/lottery/lib/model/OrderInfoEntity;
    .end local v15           #request:Lcom/jd/lottery/lib/model/BetRequest;
    .end local v21           #uri:Landroid/net/Uri;
    :cond_10
    new-instance v24, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/jd/droidlib/net/http/HTTPException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/jd/lottery/lib/exception/ErrorCodeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
.end method
