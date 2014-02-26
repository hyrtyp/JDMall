.class public Lcom/ja/analytics/utils/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ja/analytics/utils/NetUtils$NetType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static isUseProxy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/ja/analytics/utils/NetUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/utils/NetUtils;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ja/analytics/utils/NetUtils;->isUseProxy:Z

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/ja/analytics/utils/NetUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static checkNetWork(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 426
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 427
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v3

    .line 430
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 431
    .local v2, netinfo:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 434
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 435
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 436
    const/4 v3, 0x1

    goto :goto_0

    .line 434
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getExtraInfo(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 2
    .parameter "networkInfo"

    .prologue
    .line 103
    const-string v1, ""

    .line 105
    .local v1, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 109
    :goto_0
    return-object v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 8

    .prologue
    .line 525
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 538
    :goto_0
    sget-object v5, Lcom/ja/analytics/utils/NetUtils;->TAG:Ljava/lang/String;

    const-string v6, "IP address is null"

    invoke-static {v5, v6}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v5, ""

    :goto_1
    return-object v5

    .line 526
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 527
    .local v4, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 528
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 529
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2

    instance-of v5, v3, Ljava/net/Inet4Address;

    if-eqz v5, :cond_2

    .line 530
    sget-object v5, Lcom/ja/analytics/utils/NetUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IP address: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 535
    .end local v1           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .line 536
    .local v2, ex:Ljava/net/SocketException;
    sget-object v5, Lcom/ja/analytics/utils/NetUtils;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getNameNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 482
    const-string v0, ""

    .line 483
    .local v0, s:Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 484
    .local v1, tm:Landroid/telephony/TelephonyManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    return-object v0
.end method

.method public static getNameSubtypeNetwork(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 453
    const-string v2, ""

    .line 454
    .local v2, s:Ljava/lang/String;
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 455
    .local v0, connectivitymanager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 456
    .local v1, networkinfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 457
    const-string v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 458
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    .line 459
    :cond_0
    return-object v2
.end method

.method public static getNetType(Landroid/content/Context;)Lcom/ja/analytics/utils/NetUtils$NetType;
    .locals 8
    .parameter "context"

    .prologue
    .line 37
    new-instance v4, Lcom/ja/analytics/utils/NetUtils$NetType;

    invoke-direct {v4}, Lcom/ja/analytics/utils/NetUtils$NetType;-><init>()V

    .line 39
    .local v4, result:Lcom/ja/analytics/utils/NetUtils$NetType;
    const/4 v1, 0x0

    .line 41
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    :try_start_0
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    :goto_0
    if-nez v1, :cond_0

    move-object v5, v4

    .line 65
    .end local v4           #result:Lcom/ja/analytics/utils/NetUtils$NetType;
    .local v5, result:Ljava/lang/Object;
    :goto_1
    return-object v5

    .line 49
    .end local v5           #result:Ljava/lang/Object;
    .restart local v4       #result:Lcom/ja/analytics/utils/NetUtils$NetType;
    :cond_0
    invoke-static {v1}, Lcom/ja/analytics/utils/NetUtils;->isNetworkAvailable(Landroid/net/ConnectivityManager;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v5, v4

    .line 50
    .restart local v5       #result:Ljava/lang/Object;
    goto :goto_1

    .line 53
    .end local v5           #result:Ljava/lang/Object;
    :cond_1
    invoke-static {v1}, Lcom/ja/analytics/utils/NetUtils;->getSummaryType(Landroid/net/ConnectivityManager;)I

    move-result v6

    .line 55
    .local v6, summaryType:I
    const/4 v3, 0x0

    .line 57
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    :try_start_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 61
    :goto_2
    invoke-static {v3}, Lcom/ja/analytics/utils/NetUtils;->getExtraInfo(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, extraInfo:Ljava/lang/String;
    new-instance v4, Lcom/ja/analytics/utils/NetUtils$NetType;

    .end local v4           #result:Lcom/ja/analytics/utils/NetUtils$NetType;
    invoke-direct {v4, p0, v6, v2}, Lcom/ja/analytics/utils/NetUtils$NetType;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .restart local v4       #result:Lcom/ja/analytics/utils/NetUtils$NetType;
    move-object v5, v4

    .line 65
    .restart local v5       #result:Ljava/lang/Object;
    goto :goto_1

    .line 58
    .end local v2           #extraInfo:Ljava/lang/String;
    .end local v5           #result:Ljava/lang/Object;
    :catch_0
    move-exception v7

    goto :goto_2

    .line 42
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v6           #summaryType:I
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method public static getNetworkOperators(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 585
    invoke-static {p0}, Lcom/ja/analytics/utils/NetUtils;->getNetType(Landroid/content/Context;)Lcom/ja/analytics/utils/NetUtils$NetType;

    move-result-object v0

    .line 586
    .local v0, netType:Lcom/ja/analytics/utils/NetUtils$NetType;
    invoke-virtual {v0}, Lcom/ja/analytics/utils/NetUtils$NetType;->getNSPStr()I

    move-result v1

    return v1
.end method

.method public static getNetworkTypeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "myContext"

    .prologue
    .line 548
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 549
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 550
    .local v8, tm:Landroid/telephony/TelephonyManager;
    const/4 v4, 0x0

    .line 552
    .local v4, netString:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v6

    .line 553
    .local v6, netinfo:[Landroid/net/NetworkInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v9, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v3, v9, :cond_1

    .line 576
    .end local v3           #i:I
    .end local v6           #netinfo:[Landroid/net/NetworkInfo;
    :goto_1
    if-nez v4, :cond_0

    .line 577
    const-string v4, "UNKNOWN"

    .line 580
    :cond_0
    return-object v4

    .line 554
    .restart local v3       #i:I
    .restart local v6       #netinfo:[Landroid/net/NetworkInfo;
    :cond_1
    :try_start_1
    aget-object v9, v6, v3

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 555
    aget-object v9, v6, v3

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MOBILE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 556
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 557
    .local v1, code:I
    const/4 v7, 0x0

    .line 559
    .local v7, prex:Ljava/lang/String;
    invoke-static {p0}, Lcom/ja/analytics/utils/NetUtils;->is2GNetwork(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 560
    const-string v7, "2G|"

    .line 564
    :goto_2
    invoke-static {p0}, Lcom/ja/analytics/utils/NetUtils;->getNetType(Landroid/content/Context;)Lcom/ja/analytics/utils/NetUtils$NetType;

    move-result-object v5

    .line 565
    .local v5, netType:Lcom/ja/analytics/utils/NetUtils$NetType;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/ja/analytics/utils/NetUtils$NetType;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 553
    .end local v1           #code:I
    .end local v5           #netType:Lcom/ja/analytics/utils/NetUtils$NetType;
    .end local v7           #prex:Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 562
    .restart local v1       #code:I
    .restart local v7       #prex:Ljava/lang/String;
    :cond_3
    const-string v7, "3G|"

    goto :goto_2

    .line 566
    .end local v1           #code:I
    .end local v7           #prex:Ljava/lang/String;
    :cond_4
    aget-object v9, v6, v3

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "WIFI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 567
    const-string v4, "WIFI|"

    goto :goto_3

    .line 569
    :cond_5
    const-string v4, "UNKNOWN|"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 573
    .end local v3           #i:I
    .end local v6           #netinfo:[Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    .line 574
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "UNKNOWN"

    goto :goto_1
.end method

.method public static getSummaryType(Landroid/net/ConnectivityManager;)I
    .locals 4
    .parameter "connectivityManager"

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 76
    .local v1, result:I
    const/4 v0, 0x0

    .line 78
    .local v0, mobile:Landroid/net/NetworkInfo$State;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 82
    :goto_0
    const/4 v2, 0x0

    .line 84
    .local v2, wifi:Landroid/net/NetworkInfo$State;
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 88
    :goto_1
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v3, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_2

    .line 90
    :cond_0
    const/4 v1, 0x2

    .line 96
    :cond_1
    :goto_2
    return v1

    .line 91
    :cond_2
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    .line 93
    :cond_3
    const/4 v1, 0x1

    goto :goto_2

    .line 85
    :catch_0
    move-exception v3

    goto :goto_1

    .line 79
    .end local v2           #wifi:Landroid/net/NetworkInfo$State;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static getTrafficStats(Landroid/content/Context;Landroid/content/SharedPreferences;)[J
    .locals 13
    .parameter "context"
    .parameter "sharedpreferences"

    .prologue
    .line 596
    const/4 v6, 0x0

    .line 597
    .local v6, method:Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    .line 601
    .local v7, method1:Ljava/lang/reflect/Method;
    :try_start_0
    const-string v8, "android.net.TrafficStats"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 603
    .local v1, class1:Ljava/lang/Class;
    :try_start_1
    const-string v8, "getUidRxBytes"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 604
    const-string v8, "getUidTxBytes"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 615
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v5, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 616
    .local v5, i1:I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_1

    .line 617
    const/4 v0, 0x0

    .line 655
    .end local v1           #class1:Ljava/lang/Class;
    .end local v5           #i1:I
    :cond_0
    :goto_1
    return-object v0

    .line 605
    .restart local v1       #class1:Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 607
    .local v2, e1:Ljava/lang/NoSuchMethodException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 609
    .end local v1           #class1:Ljava/lang/Class;
    .end local v2           #e1:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 612
    .local v3, e2:Ljava/lang/ClassNotFoundException;
    sget-object v8, Lcom/ja/analytics/utils/NetUtils;->TAG:Ljava/lang/String;

    const-string v9, "android os version is lower than 2.2, so sdk can not get traffic data."

    invoke-static {v8, v9}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v0, 0x0

    goto :goto_1

    .line 619
    .end local v3           #e2:Ljava/lang/ClassNotFoundException;
    .restart local v1       #class1:Ljava/lang/Class;
    .restart local v5       #i1:I
    :cond_1
    const/4 v8, 0x2

    new-array v0, v8, [J

    .line 621
    .local v0, al:[J
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 622
    const/4 v10, 0x1

    :try_start_3
    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 621
    invoke-virtual {v6, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 622
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 621
    aput-wide v10, v0, v9

    .line 624
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 625
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 624
    invoke-virtual {v7, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 625
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 624
    aput-wide v10, v0, v9

    .line 627
    const/4 v8, 0x0

    aget-wide v8, v0, v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    const/4 v8, 0x1

    aget-wide v8, v0, v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    .line 628
    :cond_2
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    aput-wide v9, v0, v8

    .line 629
    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    aput-wide v9, v0, v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 651
    :catch_2
    move-exception v4

    .line 653
    .local v4, exception:Ljava/lang/Exception;
    const-string v8, "android os version is lower than 2.2,so sdk can not get traffic data."

    invoke-static {v8}, Lcom/ja/analytics/utils/LogUtil;->logI(Ljava/lang/String;)I

    .line 655
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 496
    const-string v1, ""

    .line 499
    .local v1, s:Ljava/lang/String;
    :try_start_0
    const-string v4, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v4}, Lcom/ja/analytics/utils/FileUtils;->isManifestPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 501
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 502
    .local v3, wifimanager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 503
    .local v2, wifiinfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 504
    const-string v4, "ssid=%s mac=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 505
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 504
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    .end local v2           #wifiinfo:Landroid/net/wifi/WifiInfo;
    .end local v3           #wifimanager:Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-object v1

    .line 509
    :catch_0
    move-exception v0

    .line 511
    .local v0, exception:Ljava/lang/Exception;
    sget-object v4, Lcom/ja/analytics/utils/NetUtils;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static is2GNetwork(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 363
    invoke-static {p0}, Lcom/ja/analytics/utils/NetUtils;->getNetType(Landroid/content/Context;)Lcom/ja/analytics/utils/NetUtils$NetType;

    move-result-object v0

    .line 364
    .local v0, netType:Lcom/ja/analytics/utils/NetUtils$NetType;
    #getter for: Lcom/ja/analytics/utils/NetUtils$NetType;->summaryType:I
    invoke-static {v0}, Lcom/ja/analytics/utils/NetUtils$NetType;->access$0(Lcom/ja/analytics/utils/NetUtils$NetType;)I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v3

    .line 368
    :cond_1
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 369
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 370
    .local v2, type:I
    sget-object v5, Lcom/ja/analytics/utils/NetUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Net work type:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v5, 0x4

    if-eq v5, v2, :cond_2

    if-eq v4, v2, :cond_2

    const/4 v5, 0x2

    if-ne v5, v2, :cond_0

    :cond_2
    move v3, v4

    .line 372
    goto :goto_0
.end method

.method private static isNetworkAvailable(Landroid/net/ConnectivityManager;)Z
    .locals 8
    .parameter "connectivityManager"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 117
    const/4 v3, 0x0

    check-cast v3, [Landroid/net/NetworkInfo;

    .line 119
    .local v3, networkInfos:[Landroid/net/NetworkInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 122
    :goto_0
    if-eqz v3, :cond_0

    .line 123
    array-length v2, v3

    .line 124
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v2, :cond_2

    .end local v1           #i:I
    .end local v2           #length:I
    :cond_0
    move v4, v5

    .line 136
    :cond_1
    return v4

    .line 125
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_2
    const/4 v0, 0x0

    .line 127
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

    .line 130
    :goto_2
    if-nez v0, :cond_1

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v5

    .line 127
    goto :goto_2

    .line 120
    .end local v0           #connected:Z
    .end local v1           #i:I
    .end local v2           #length:I
    :catch_0
    move-exception v6

    goto :goto_0

    .line 128
    .restart local v0       #connected:Z
    .restart local v1       #i:I
    .restart local v2       #length:I
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 383
    invoke-static {p0}, Lcom/ja/analytics/utils/NetUtils;->getNetType(Landroid/content/Context;)Lcom/ja/analytics/utils/NetUtils$NetType;

    move-result-object v0

    .line 384
    .local v0, netType:Lcom/ja/analytics/utils/NetUtils$NetType;
    #getter for: Lcom/ja/analytics/utils/NetUtils$NetType;->summaryType:I
    invoke-static {v0}, Lcom/ja/analytics/utils/NetUtils$NetType;->access$0(Lcom/ja/analytics/utils/NetUtils$NetType;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 387
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static openConncetion(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 8
    .parameter "context"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    const/4 v2, 0x0

    .line 399
    .local v2, proxyHost:Ljava/lang/String;
    const/4 v3, 0x0

    .line 400
    .local v3, proxyPort:Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 401
    .local v0, conn:Ljava/net/HttpURLConnection;
    sget-boolean v4, Lcom/ja/analytics/utils/NetUtils;->isUseProxy:Z

    if-eqz v4, :cond_0

    .line 402
    invoke-static {p0}, Lcom/ja/analytics/utils/NetUtils;->getNetType(Landroid/content/Context;)Lcom/ja/analytics/utils/NetUtils$NetType;

    move-result-object v1

    .line 403
    .local v1, netType:Lcom/ja/analytics/utils/NetUtils$NetType;
    invoke-virtual {v1}, Lcom/ja/analytics/utils/NetUtils$NetType;->getProxyHost()Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-virtual {v1}, Lcom/ja/analytics/utils/NetUtils$NetType;->getProxyPort()Ljava/lang/Integer;

    move-result-object v3

    .line 407
    .end local v1           #netType:Lcom/ja/analytics/utils/NetUtils$NetType;
    :cond_0
    sget-boolean v4, Lcom/ja/analytics/utils/NetUtils;->isUseProxy:Z

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 408
    sget-object v4, Lcom/ja/analytics/utils/NetUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "use proxy  url:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- proxy -->> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v4, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v2, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v4, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {p1, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    .end local v0           #conn:Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 415
    .restart local v0       #conn:Ljava/net/HttpURLConnection;
    :goto_0
    return-object v0

    .line 411
    :cond_1
    const/4 v4, 0x0

    sput-boolean v4, Lcom/ja/analytics/utils/NetUtils;->isUseProxy:Z

    .line 412
    const-string v4, "HttpGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "no proxy url:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .end local v0           #conn:Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;

    .restart local v0       #conn:Ljava/net/HttpURLConnection;
    goto :goto_0
.end method
