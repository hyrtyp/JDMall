.class public Lcom/jd/lottery/lib/net/LotteryUri;
.super Ljava/lang/Object;
.source "LotteryUri.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/lottery/lib/net/LotteryUri$Param;
    }
.end annotation


# static fields
.field private static FUNC_IDS:[Ljava/lang/String; = null

.field private static LOTTERY_TYPE:[Ljava/lang/String; = null

.field public static final REQUEST_AGENT:I = 0x1

.field public static final REQUEST_FUNC_IDS_AWARD_BOARD:I = 0x3ed

.field public static final REQUEST_FUNC_IDS_BET_ORDER:I = 0x7d1

.field public static final REQUEST_FUNC_IDS_CURR_ISSUE:I = 0x3e9

.field public static final REQUEST_FUNC_IDS_GET_ISSUE:I = 0x3ec

.field public static final REQUEST_FUNC_IDS_GET_MISS:I = 0x3f0

.field public static final REQUEST_FUNC_IDS_GET_ZHUIHAO:I = 0x3ef

.field public static final REQUEST_FUNC_IDS_LOTTERY_LIST:I = 0xbb9

.field public static final REQUEST_FUNC_IDS_LOTTERY_STATUS:I = 0x3ee

.field public static final REQUEST_FUNC_IDS_NEXT_ISSUE:I = 0x3eb

.field public static final REQUEST_FUNC_IDS_PREV_ISSUE:I = 0x3ea

.field private static jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/jd/droidlib/persist/json/JSONSerializer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jd/droidlib/persist/json/JSONSerializer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jd/lottery/lib/net/LotteryUri;->jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;

    .line 99
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1001"

    aput-object v1, v0, v3

    .line 100
    const-string v1, "1002"

    aput-object v1, v0, v4

    .line 101
    const-string v1, "1003"

    aput-object v1, v0, v5

    .line 102
    const-string v1, "1004"

    aput-object v1, v0, v6

    .line 103
    const-string v1, "1005"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 104
    const-string v2, "1006"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 105
    const-string v2, "1007"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 106
    const-string v2, "1008"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 107
    const-string v2, "2001"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 108
    const-string v2, "3001"

    aput-object v2, v0, v1

    .line 99
    sput-object v0, Lcom/jd/lottery/lib/net/LotteryUri;->FUNC_IDS:[Ljava/lang/String;

    .line 111
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v3

    .line 112
    const-string v1, "2"

    aput-object v1, v0, v4

    .line 113
    const-string v1, "3"

    aput-object v1, v0, v5

    .line 114
    const-string v1, "4"

    aput-object v1, v0, v6

    .line 115
    const-string v1, "5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 116
    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 117
    const-string v2, "7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 118
    const-string v2, "1002"

    aput-object v2, v0, v1

    .line 111
    sput-object v0, Lcom/jd/lottery/lib/net/LotteryUri;->LOTTERY_TYPE:[Ljava/lang/String;

    .line 137
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIsAwardTody(Lcom/jd/lottery/lib/data/Constants$LotteryType;)Landroid/net/Uri;
    .locals 8
    .parameter "type"

    .prologue
    .line 73
    new-instance v3, Lcom/jd/lottery/lib/model/IssueInfoRequest;

    invoke-direct {v3}, Lcom/jd/lottery/lib/model/IssueInfoRequest;-><init>()V

    .line 74
    .local v3, request:Lcom/jd/lottery/lib/model/IssueInfoRequest;
    const/16 v5, 0x3e9

    iput v5, v3, Lcom/jd/lottery/lib/model/IssueInfoRequest;->funcid:I

    .line 75
    invoke-virtual {p0}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v5

    iput v5, v3, Lcom/jd/lottery/lib/model/IssueInfoRequest;->lotteryCategory:I

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, body:Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/jd/lottery/lib/net/LotteryUri;->jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;

    invoke-virtual {v5, v3}, Lcom/jd/droidlib/persist/json/JSONSerializer;->serialize(Lcom/jd/droidlib/model/Model;)Lorg/json/JSONObject;

    move-result-object v2

    .line 79
    .local v2, obj:Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v5, "@@@@@@@@@@@@, %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v2           #obj:Lorg/json/JSONObject;
    :goto_0
    const-string v5, "http://lotterygw.m.jd.com/getIsAwardToday"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 86
    const-string v6, "body"

    invoke-virtual {v5, v6, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 87
    .local v4, uri:Landroid/net/Uri;
    return-object v4

    .line 81
    .end local v4           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 83
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIssueUri(Lcom/jd/lottery/lib/data/Constants$IssueFlag;Lcom/jd/lottery/lib/data/Constants$LotteryType;)Landroid/net/Uri;
    .locals 8
    .parameter "flag"
    .parameter "lotteryType"

    .prologue
    .line 36
    new-instance v3, Lcom/jd/lottery/lib/model/IssueInfoRequest;

    invoke-direct {v3}, Lcom/jd/lottery/lib/model/IssueInfoRequest;-><init>()V

    .line 37
    .local v3, request:Lcom/jd/lottery/lib/model/IssueInfoRequest;
    invoke-virtual {p0}, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->getFuncId()I

    move-result v5

    iput v5, v3, Lcom/jd/lottery/lib/model/IssueInfoRequest;->funcid:I

    .line 38
    invoke-virtual {p1}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v5

    iput v5, v3, Lcom/jd/lottery/lib/model/IssueInfoRequest;->lotteryCategory:I

    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, body:Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/jd/lottery/lib/net/LotteryUri;->jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;

    invoke-virtual {v5, v3}, Lcom/jd/droidlib/persist/json/JSONSerializer;->serialize(Lcom/jd/droidlib/model/Model;)Lorg/json/JSONObject;

    move-result-object v2

    .line 42
    .local v2, obj:Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v5, "@@@@@@@@@@@@, %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v2           #obj:Lorg/json/JSONObject;
    :goto_0
    const-string v5, "http://lotterygw.m.jd.com/clientRequest"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 49
    const-string v6, "body"

    invoke-virtual {v5, v6, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 50
    .local v4, uri:Landroid/net/Uri;
    return-object v4

    .line 44
    .end local v4           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 46
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUri(Lcom/jd/droidlib/model/Model;)Landroid/net/Uri;
    .locals 1
    .parameter "model"

    .prologue
    .line 54
    const-string v0, "http://lotterygw.m.jd.com/clientRequest"

    invoke-static {p0, v0}, Lcom/jd/lottery/lib/net/LotteryUri;->getUri(Lcom/jd/droidlib/model/Model;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getUri(Lcom/jd/droidlib/model/Model;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7
    .parameter "model"
    .parameter "requestUrl"

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, body:Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/jd/lottery/lib/net/LotteryUri;->jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;

    invoke-virtual {v4, p0}, Lcom/jd/droidlib/persist/json/JSONSerializer;->serialize(Lcom/jd/droidlib/model/Model;)Lorg/json/JSONObject;

    move-result-object v2

    .line 61
    .local v2, obj:Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v4, "@@@@@@@@@@@@, %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v2           #obj:Lorg/json/JSONObject;
    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 68
    const-string v5, "body"

    invoke-virtual {v4, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 69
    .local v3, uri:Landroid/net/Uri;
    return-object v3

    .line 63
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
