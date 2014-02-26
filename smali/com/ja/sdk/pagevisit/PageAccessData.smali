.class public Lcom/ja/sdk/pagevisit/PageAccessData;
.super Ljava/lang/Object;
.source "PageAccessData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PageAccessData"

.field private static allSiteIdentify:Ljava/lang/String;

.field private static appChannal:Ljava/lang/String;

.field private static mOldSessionCount:I

.field private static mPageAccessData:Lcom/ja/sdk/pagevisit/PageAccessData;

.field private static mSessionCount:I

.field private static reqTime:Ljava/lang/String;

.field private static userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    .line 28
    new-instance v0, Lcom/ja/sdk/pagevisit/PageAccessData;

    invoke-direct {v0}, Lcom/ja/sdk/pagevisit/PageAccessData;-><init>()V

    sput-object v0, Lcom/ja/sdk/pagevisit/PageAccessData;->mPageAccessData:Lcom/ja/sdk/pagevisit/PageAccessData;

    .line 23
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getAllSiteIdentify()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/ja/sdk/pagevisit/PageAccessData;->allSiteIdentify:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/ja/sdk/pagevisit/PageAccessData;->appChannal:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/ja/sdk/pagevisit/PageAccessData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized getCommonDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 6
    .parameter "context"

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .local v1, obj:Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "st"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string v3, "ip"

    invoke-static {}, Lcom/ja/sdk/utils/NetUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    invoke-static {}, Lcom/ja/sdk/pagevisit/PageAccessData;->getAllSiteIdentify()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 225
    const-string v3, "w"

    const-string v4, "Ja_Sdk_Site"

    invoke-static {p1, v4}, Lcom/ja/sdk/utils/ManifestPackageUtils;->ReadCofigInfoFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    :goto_0
    const-string v3, "sr"

    invoke-static {p1}, Lcom/ja/sdk/utils/DisplayUtils;->GetResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v3, "n"

    invoke-static {p1}, Lcom/ja/sdk/utils/NetUtils;->getNetworkTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v3, "b"

    invoke-static {p1}, Lcom/ja/sdk/utils/ManifestPackageUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v3, "k"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string v3, "os"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Android|"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v3, "c"

    invoke-static {p1}, Lcom/ja/sdk/utils/ManifestPackageUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 240
    const-string v3, "v"

    invoke-virtual {p0}, Lcom/ja/sdk/pagevisit/PageAccessData;->getSessionCount()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    invoke-static {}, Lcom/ja/sdk/pagevisit/PageAccessData;->getAppChannel()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 244
    const-string v3, "sc"

    const-string v4, "Ja_Sdk_CHANNEL"

    invoke-static {p1, v4}, Lcom/ja/sdk/utils/ManifestPackageUtils;->ReadCofigInfoFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    :goto_1
    const-string v3, "t1"

    const-string v4, "J"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v3, "t2"

    const-string v4, "A"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string v3, "u"

    invoke-static {p1}, Lcom/ja/sdk/utils/DevicesUtils;->getDeviceId2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    invoke-static {}, Lcom/ja/sdk/pagevisit/PageAccessData;->getAppId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 252
    const-string v3, "Ja_Sdk_ID"

    invoke-static {p1, v3}, Lcom/ja/sdk/utils/ManifestPackageUtils;->ReadCofigInfoFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, userId:Ljava/lang/String;
    const-string v3, ""

    if-ne v2, v3, :cond_2

    .line 254
    const-string v3, "p"

    const-string v4, "-"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    .end local v2           #userId:Ljava/lang/String;
    :goto_2
    const-string v3, "d"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    :goto_3
    monitor-exit p0

    return-object v1

    .line 227
    :cond_0
    :try_start_2
    const-string v3, "w"

    invoke-static {}, Lcom/ja/sdk/pagevisit/PageAccessData;->getAllSiteIdentify()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Lorg/json/JSONException;
    :try_start_3
    const-string v3, "PageAccessData"

    invoke-static {v3, v0}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 219
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #obj:Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 246
    .restart local v1       #obj:Lorg/json/JSONObject;
    :cond_1
    :try_start_4
    const-string v3, "sc"

    invoke-static {}, Lcom/ja/sdk/pagevisit/PageAccessData;->getAppChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 256
    .restart local v2       #userId:Ljava/lang/String;
    :cond_2
    const-string v3, "p"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 259
    .end local v2           #userId:Ljava/lang/String;
    :cond_3
    const-string v3, "p"

    invoke-static {}, Lcom/ja/sdk/pagevisit/PageAccessData;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method

.method public static getSingleInstance()Lcom/ja/sdk/pagevisit/PageAccessData;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/ja/sdk/pagevisit/PageAccessData;->mPageAccessData:Lcom/ja/sdk/pagevisit/PageAccessData;

    return-object v0
.end method

.method private isNewSession()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 187
    sget v0, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    sget v1, Lcom/ja/sdk/pagevisit/PageAccessData;->mOldSessionCount:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 188
    const-string v0, "PageAccessData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The new session: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method static string2Json(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    .line 338
    if-nez p0, :cond_0

    .line 339
    const-string v3, ""

    .line 374
    :goto_0
    return-object v3

    .line 340
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 342
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 374
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 344
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 370
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 346
    :sswitch_0
    const-string v3, "\\\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 349
    :sswitch_1
    const-string v3, "\\\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 352
    :sswitch_2
    const-string v3, "\\/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 355
    :sswitch_3
    const-string v3, "\\b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 358
    :sswitch_4
    const-string v3, "\\f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 361
    :sswitch_5
    const-string v3, "\\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 364
    :sswitch_6
    const-string v3, "\\r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 367
    :sswitch_7
    const-string v3, "\\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 344
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_3
        0x9 -> :sswitch_7
        0xa -> :sswitch_5
        0xc -> :sswitch_4
        0xd -> :sswitch_6
        0x22 -> :sswitch_0
        0x2f -> :sswitch_2
        0x5c -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public declared-synchronized checkMenifestPermission(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/ja/sdk/pagevisit/PageAccessData;->isNewSession()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 206
    :goto_0
    monitor-exit p0

    return-void

    .line 202
    :cond_0
    :try_start_1
    sget v0, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    sput v0, Lcom/ja/sdk/pagevisit/PageAccessData;->mOldSessionCount:I

    .line 203
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/ja/sdk/utils/FileUtils;->checkMenifestPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/ja/sdk/utils/FileUtils;->checkMenifestPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/ja/sdk/utils/FileUtils;->checkMenifestPermission(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearSendDate()V
    .locals 1

    .prologue
    .line 63
    const-string v0, ""

    sput-object v0, Lcom/ja/sdk/pagevisit/PageAccessData;->reqTime:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public clearSessionCount()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    sput v0, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    .line 181
    return-void
.end method

.method public getSendDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/ja/sdk/pagevisit/PageAccessData;->reqTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSendFalseFlag()I
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public getSendOkFlag()I
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public getSessionCount()I
    .locals 3

    .prologue
    .line 172
    const-string v0, "PageAccessData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSessionCount() return\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget v0, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    return v0
.end method

.method public declared-synchronized pageAccessDataHandle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .parameter "context"
    .parameter "pageId"
    .parameter "PageParam"
    .parameter "prePageId"
    .parameter "PrePageParam"
    .parameter "reqTimeStamp"

    .prologue
    .line 300
    monitor-enter p0

    if-nez p2, :cond_1

    .line 331
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 302
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-nez v2, :cond_2

    .line 303
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p6

    .line 305
    :cond_2
    invoke-virtual {p0, p1}, Lcom/ja/sdk/pagevisit/PageAccessData;->checkMenifestPermission(Landroid/content/Context;)V

    .line 308
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 310
    .local v1, jo:Lorg/json/JSONObject;
    invoke-direct {p0, p1}, Lcom/ja/sdk/pagevisit/PageAccessData;->getCommonDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 311
    const-string v2, "PageAccessData"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8fc7\u6ee4\u4e4b\u524d\u7684\u6570\u636e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :try_start_1
    const-string v2, "a"

    invoke-static {p2}, Lcom/ja/sdk/pagevisit/PageAccessData;->string2Json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v2, "PageAccessData"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8fc7\u6ee4\u4e4b\u540e\u7684\u6570\u636e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/ja/sdk/pagevisit/PageAccessData;->string2Json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v2, "am"

    invoke-static {p3}, Lcom/ja/sdk/pagevisit/PageAccessData;->string2Json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v2, "r"

    invoke-static {p4}, Lcom/ja/sdk/pagevisit/PageAccessData;->string2Json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v2, "rm"

    invoke-static {p5}, Lcom/ja/sdk/pagevisit/PageAccessData;->string2Json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string v2, "ct1"

    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    const-string v2, "ct2"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 327
    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/ja/sdk/db/PageAccessTable;->openSQLiteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 328
    invoke-static {p1, v1}, Lcom/ja/sdk/db/PageAccessTable;->insertPageAccessDataItem(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 300
    .end local v1           #jo:Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 322
    .restart local v1       #jo:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Lorg/json/JSONException;
    :try_start_3
    const-string v2, "PageAccessData"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setAllSiteIdentify(Ljava/lang/String;)V
    .locals 1
    .parameter "siteIdentify"

    .prologue
    .line 114
    const-string v0, ""

    if-eq p1, v0, :cond_0

    .line 115
    sput-object p1, Lcom/ja/sdk/pagevisit/PageAccessData;->allSiteIdentify:Ljava/lang/String;

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v0, "MO-J2011-2"

    sput-object v0, Lcom/ja/sdk/pagevisit/PageAccessData;->allSiteIdentify:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .locals 0
    .parameter "appChannel"

    .prologue
    .line 71
    sput-object p1, Lcom/ja/sdk/pagevisit/PageAccessData;->appChannal:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 89
    sput-object p1, Lcom/ja/sdk/pagevisit/PageAccessData;->userId:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setSendData()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    const-string v2, ""

    sput-object v2, Lcom/ja/sdk/pagevisit/PageAccessData;->reqTime:Ljava/lang/String;

    .line 126
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 128
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ja/sdk/pagevisit/PageAccessData;->reqTime:Ljava/lang/String;

    .line 129
    sget-object v2, Lcom/ja/sdk/pagevisit/PageAccessData;->reqTime:Ljava/lang/String;

    return-object v2
.end method

.method public setSessionCount(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "sessionCount"

    .prologue
    .line 136
    const-string v3, "PageAccessData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setSessionCount()  \uff1a "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v3, "__360buy_Ja_Sdk_Session"

    invoke-static {p1, v3}, Lcom/ja/sdk/utils/PreferenceUtils;->getSessionSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 138
    .local v2, sharedPreferences1:Landroid/content/SharedPreferences;
    const-string v3, "sessionCount"

    sget v4, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 139
    .local v0, Count1:I
    const-string v3, "PageAccessData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get the old data first: get session from mSessionCount:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v3, "PageAccessData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get the old data first: get session from preferences:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-lez v0, :cond_2

    .line 144
    const-string v3, "__360buy_Ja_Sdk_Session"

    const-string v4, "sessionCount"

    add-int v5, p2, v0

    invoke-static {p1, v3, v4, v5}, Lcom/ja/sdk/utils/PreferenceUtils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    const-string v3, "PageAccessData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set the old data before: Set session from preferences:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v3, "__360buy_Ja_Sdk_Session"

    invoke-static {p1, v3}, Lcom/ja/sdk/utils/PreferenceUtils;->getSessionSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 147
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "sessionCount"

    add-int v4, p2, v0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    .line 148
    const-string v3, "PageAccessData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set the old data end: Set session from preferences:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v1           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    sget v3, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    if-nez v3, :cond_1

    .line 163
    const/4 v3, 0x1

    sput v3, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    .line 164
    const-string v3, "PageAccessData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mSessionCount = 0 =  \uff1a "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    return-void

    .line 150
    :cond_2
    if-lez p2, :cond_0

    .line 151
    sget v3, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    add-int/2addr v3, p2

    sput v3, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    .line 152
    const-string v3, "PageAccessData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mSessionCount  \uff1a "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v3, "PageAccessData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set session to preferences:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ja/sdk/pagevisit/PageAccessData;->getSessionCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v3, "__360buy_Ja_Sdk_Session"

    const-string v4, "sessionCount"

    sget v5, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    invoke-static {p1, v3, v4, v5}, Lcom/ja/sdk/utils/PreferenceUtils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    const-string v3, "__360buy_Ja_Sdk_Session"

    invoke-static {p1, v3}, Lcom/ja/sdk/utils/PreferenceUtils;->getSessionSharedPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 159
    .restart local v1       #sharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "sessionCount"

    sget v4, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    .line 160
    const-string v3, "PageAccessData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Get session from preferences1:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/ja/sdk/pagevisit/PageAccessData;->mSessionCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
