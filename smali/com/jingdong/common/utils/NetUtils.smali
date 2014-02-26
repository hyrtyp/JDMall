.class public Lcom/jingdong/common/utils/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/NetUtils$NetType;
    }
.end annotation


# static fields
.field public static final NETWORK_TYPE_2G:Ljava/lang/String; = "2g"

.field public static final NETWORK_TYPE_3G:Ljava/lang/String; = "3g"

.field public static final NETWORK_TYPE_WIFI:Ljava/lang/String; = "wifi"

.field private static final NO_NET:I = 0x7fffffff

.field private static final ROAMING:I = 0x7ffffffc

.field private static final TAG:Ljava/lang/String; = "NetUtils"

.field private static final UNKNOWN:I = 0x7ffffffe

.field private static final WIFI:I = 0x7ffffffd

.field public static isProxy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/common/utils/NetUtils;->isProxy:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtraInfo(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 2
    .parameter "networkInfo"

    .prologue
    .line 161
    const-string v1, ""

    .line 163
    .local v1, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 167
    :goto_0
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getNetType()Lcom/jingdong/common/utils/NetUtils$NetType;
    .locals 8

    .prologue
    .line 39
    new-instance v4, Lcom/jingdong/common/utils/NetUtils$NetType;

    invoke-direct {v4}, Lcom/jingdong/common/utils/NetUtils$NetType;-><init>()V

    .line 41
    .local v4, result:Lcom/jingdong/common/utils/NetUtils$NetType;
    const/4 v1, 0x0

    .line 43
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :goto_0
    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_1
    return-object v4

    .line 51
    :cond_1
    invoke-static {v1}, Lcom/jingdong/common/utils/NetUtils;->isNetworkAvailable(Landroid/net/ConnectivityManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 55
    invoke-static {v1}, Lcom/jingdong/common/utils/NetUtils;->getSummaryType(Landroid/net/ConnectivityManager;)I

    move-result v5

    .line 57
    .local v5, summaryType:I
    const/4 v3, 0x0

    .line 59
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    :try_start_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 63
    :goto_2
    invoke-static {v3}, Lcom/jingdong/common/utils/NetUtils;->getExtraInfo(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, extraInfo:Ljava/lang/String;
    new-instance v4, Lcom/jingdong/common/utils/NetUtils$NetType;

    .end local v4           #result:Lcom/jingdong/common/utils/NetUtils$NetType;
    invoke-direct {v4, v5, v2}, Lcom/jingdong/common/utils/NetUtils$NetType;-><init>(ILjava/lang/String;)V

    .line 67
    .restart local v4       #result:Lcom/jingdong/common/utils/NetUtils$NetType;
    goto :goto_1

    .line 60
    .end local v2           #extraInfo:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2

    .line 44
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v5           #summaryType:I
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 367
    invoke-static {}, Lcom/jingdong/common/utils/NetUtils;->getNetType()Lcom/jingdong/common/utils/NetUtils$NetType;

    move-result-object v0

    .line 368
    .local v0, netType:Lcom/jingdong/common/utils/NetUtils$NetType;
    #getter for: Lcom/jingdong/common/utils/NetUtils$NetType;->summaryType:I
    invoke-static {v0}, Lcom/jingdong/common/utils/NetUtils$NetType;->access$0(Lcom/jingdong/common/utils/NetUtils$NetType;)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 369
    const-string v3, "wifi"

    .line 381
    :goto_0
    return-object v3

    .line 370
    :cond_0
    #getter for: Lcom/jingdong/common/utils/NetUtils$NetType;->summaryType:I
    invoke-static {v0}, Lcom/jingdong/common/utils/NetUtils$NetType;->access$0(Lcom/jingdong/common/utils/NetUtils$NetType;)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 372
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 373
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 374
    .local v2, type:I
    const/4 v3, 0x4

    if-eq v3, v2, :cond_1

    if-eq v5, v2, :cond_1

    if-ne v6, v2, :cond_2

    .line 375
    :cond_1
    const-string v3, "2g"

    goto :goto_0

    .line 377
    :cond_2
    const-string v3, "3g"

    goto :goto_0

    .line 381
    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    .end local v2           #type:I
    :cond_3
    const-string v3, ""

    goto :goto_0
.end method

.method public static getSummaryType(Landroid/net/ConnectivityManager;)I
    .locals 4
    .parameter "connectivityManager"

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 134
    .local v1, result:I
    const/4 v0, 0x0

    .line 136
    .local v0, mobile:Landroid/net/NetworkInfo$State;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 140
    :goto_0
    const/4 v2, 0x0

    .line 142
    .local v2, wifi:Landroid/net/NetworkInfo$State;
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 146
    :goto_1
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_2

    .line 148
    :cond_0
    const/4 v1, 0x1

    .line 154
    :cond_1
    :goto_2
    return v1

    .line 149
    :cond_2
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v3, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_1

    .line 151
    :cond_3
    const/4 v1, 0x2

    goto :goto_2

    .line 143
    :catch_0
    move-exception v3

    goto :goto_1

    .line 137
    .end local v2           #wifi:Landroid/net/NetworkInfo$State;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static is2GNetwork(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 346
    invoke-static {}, Lcom/jingdong/common/utils/NetUtils;->getNetType()Lcom/jingdong/common/utils/NetUtils$NetType;

    move-result-object v0

    .line 347
    .local v0, netType:Lcom/jingdong/common/utils/NetUtils$NetType;
    #getter for: Lcom/jingdong/common/utils/NetUtils$NetType;->summaryType:I
    invoke-static {v0}, Lcom/jingdong/common/utils/NetUtils$NetType;->access$0(Lcom/jingdong/common/utils/NetUtils$NetType;)I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v3

    .line 351
    :cond_1
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 352
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 356
    .local v2, type:I
    const/4 v5, 0x4

    if-eq v5, v2, :cond_2

    if-eq v4, v2, :cond_2

    const/4 v5, 0x2

    if-ne v5, v2, :cond_0

    :cond_2
    move v3, v4

    .line 357
    goto :goto_0
.end method

.method public static isNetworkAvailable()Z
    .locals 4

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    if-nez v1, :cond_0

    .line 120
    const/4 v2, 0x0

    .line 123
    :goto_1
    return v2

    :cond_0
    invoke-static {v1}, Lcom/jingdong/common/utils/NetUtils;->isNetworkAvailable(Landroid/net/ConnectivityManager;)Z

    move-result v2

    goto :goto_1

    .line 112
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static isNetworkAvailable(Landroid/net/ConnectivityManager;)Z
    .locals 8
    .parameter "connectivityManager"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 81
    const/4 v3, 0x0

    .line 83
    .local v3, networkInfos:[Landroid/net/NetworkInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 86
    :goto_0
    if-eqz v3, :cond_0

    .line 87
    array-length v2, v3

    .line 88
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v2, :cond_2

    .end local v1           #i:I
    .end local v2           #length:I
    :cond_0
    move v4, v5

    .line 100
    :cond_1
    return v4

    .line 89
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_2
    const/4 v0, 0x0

    .line 91
    .local v0, connected:Z
    :try_start_1
    aget-object v6, v3, v1

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v6, v7, :cond_3

    move v0, v4

    .line 94
    :goto_2
    if-nez v0, :cond_1

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v5

    .line 91
    goto :goto_2

    .line 84
    .end local v0           #connected:Z
    .end local v1           #i:I
    .end local v2           #length:I
    :catch_0
    move-exception v6

    goto :goto_0

    .line 92
    .restart local v0       #connected:Z
    .restart local v1       #i:I
    .restart local v2       #length:I
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method public static isWifi()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 389
    invoke-static {}, Lcom/jingdong/common/utils/NetUtils;->getNetType()Lcom/jingdong/common/utils/NetUtils$NetType;

    move-result-object v0

    .line 390
    .local v0, netType:Lcom/jingdong/common/utils/NetUtils$NetType;
    #getter for: Lcom/jingdong/common/utils/NetUtils$NetType;->summaryType:I
    invoke-static {v0}, Lcom/jingdong/common/utils/NetUtils$NetType;->access$0(Lcom/jingdong/common/utils/NetUtils$NetType;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 393
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
