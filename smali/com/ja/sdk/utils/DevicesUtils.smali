.class public Lcom/ja/sdk/utils/DevicesUtils;
.super Ljava/lang/Object;
.source "DevicesUtils.java"


# static fields
.field private static final DEVICE_INFO_UUID:Ljava/lang/String; = "uuid"

.field private static final TAG:Ljava/lang/String; = "DevicesUtils"

.field private static deivceUUID:Ljava/lang/String;

.field private static macAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatMacAddress(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "s1"
    .parameter "context"

    .prologue
    .line 66
    move-object v0, p0

    .line 67
    .local v0, s2:Ljava/lang/String;
    const-string v2, "000000000000000"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    invoke-static {p1}, Lcom/ja/sdk/utils/NetUtils;->getWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, s3:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 72
    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    move-object v0, v1

    .line 75
    :cond_0
    const-string v2, "DevicesUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imei=null,mac="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v1           #s3:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 46
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDeviceId2(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 50
    const/4 v2, 0x0

    .line 51
    .local v2, uuid:Ljava/lang/String;
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 54
    .local v1, telephonymanager:Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {v2, p0}, Lcom/ja/sdk/utils/DevicesUtils;->formatMacAddress(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 61
    :goto_0
    return-object v2

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, exception:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 22
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ja/sdk/utils/DevicesUtils;->spilitSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, brand:Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ja/sdk/utils/DevicesUtils;->spilitSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, device:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getValidDeviceUUIDByInstant(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 134
    sget-object v3, Lcom/ja/sdk/utils/DevicesUtils;->deivceUUID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 135
    sget-object v2, Lcom/ja/sdk/utils/DevicesUtils;->deivceUUID:Ljava/lang/String;

    .line 143
    :cond_0
    :goto_0
    return-object v2

    .line 137
    :cond_1
    invoke-static {p0}, Lcom/ja/sdk/utils/PreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 138
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "uuid"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, deivceUUIDCache:Ljava/lang/String;
    invoke-static {v0}, Lcom/ja/sdk/utils/DevicesUtils;->isValidDeviceUUID(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    sput-object v0, Lcom/ja/sdk/utils/DevicesUtils;->deivceUUID:Ljava/lang/String;

    .line 141
    sget-object v2, Lcom/ja/sdk/utils/DevicesUtils;->deivceUUID:Ljava/lang/String;

    goto :goto_0
.end method

.method private static isValidDeviceUUID(Ljava/lang/String;)Z
    .locals 4
    .parameter "deivceUUID"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v1

    .line 153
    :cond_1
    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, split:[Ljava/lang/String;
    array-length v3, v0

    if-le v3, v2, :cond_0

    .line 155
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static readDeviceUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 86
    invoke-static {p0}, Lcom/ja/sdk/utils/DevicesUtils;->getValidDeviceUUIDByInstant(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, deivceUUIDCache:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 88
    const-string v5, "DevicesUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "readDeviceUUID() read deivceUUID -->> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v1           #deivceUUIDCache:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 92
    .restart local v1       #deivceUUIDCache:Ljava/lang/String;
    :cond_0
    const-string v5, "DevicesUtils"

    const-string v6, "readDeviceUUID() create -->> "

    invoke-static {v5, v6}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v0, deivceUUID:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/ja/sdk/utils/DevicesUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, deviceId:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 101
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    :cond_1
    sget-object v4, Lcom/ja/sdk/utils/DevicesUtils;->macAddress:Ljava/lang/String;

    .line 108
    .local v4, wifiMAC:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 109
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-|\\.|:"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_3
    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 120
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, deivceUUIDStr:Ljava/lang/String;
    const-string v5, "DevicesUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "readDeviceUUID() create deivceUUID -->> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 127
    goto :goto_0
.end method

.method public static spilitSubString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "value"
    .parameter "length"

    .prologue
    .line 35
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 38
    :cond_0
    return-object p0
.end method
