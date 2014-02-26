.class public Lcom/ja/sdk/utils/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocationBaseStation(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 19
    const-string v4, "%s_%s_%s"

    new-array v5, v7, [Ljava/lang/Object;

    .line 20
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    .line 19
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, s:Ljava/lang/String;
    const/4 v1, 0x0

    .line 23
    .local v1, celllocation:Landroid/telephony/CellLocation;
    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v4}, Lcom/ja/sdk/utils/FileUtils;->isManifestPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 24
    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v4}, Lcom/ja/sdk/utils/FileUtils;->isManifestPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 26
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 25
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 26
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 27
    const-string v4, "getLocation cell:"

    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 29
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    if-nez v1, :cond_0

    .line 46
    .end local v3           #s:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 34
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    instance-of v4, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v4, :cond_1

    move-object v2, v1

    .line 35
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 37
    .local v2, gsmcelllocation:Landroid/telephony/gsm/GsmCellLocation;
    const-string v4, "%s_%s_%s"

    .line 38
    new-array v5, v7, [Ljava/lang/Object;

    .line 39
    const-string v6, "%d"

    new-array v7, v10, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 39
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 41
    const-string v6, "%d"

    new-array v7, v10, [Ljava/lang/Object;

    .line 42
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 41
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 43
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    .line 36
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 45
    .end local v2           #gsmcelllocation:Landroid/telephony/gsm/GsmCellLocation;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "["

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "]"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, as:[Ljava/lang/String;
    const-string v4, "%s_%s_%s"

    new-array v5, v7, [Ljava/lang/Object;

    .line 47
    aget-object v6, v0, v9

    aput-object v6, v5, v9

    aget-object v6, v0, v7

    aput-object v6, v5, v10

    const/4 v6, 0x4

    aget-object v6, v0, v6

    aput-object v6, v5, v11

    .line 46
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getLocationGPS(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 52
    const-string v2, ""

    .line 53
    .local v2, s:Ljava/lang/String;
    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v4}, Lcom/ja/sdk/utils/FileUtils;->isManifestPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v3, v2

    .line 68
    .end local v2           #s:Ljava/lang/String;
    .local v3, s:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 55
    .end local v3           #s:Ljava/lang/String;
    .restart local v2       #s:Ljava/lang/String;
    :cond_0
    const-string v4, "location"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 56
    .local v1, locationmanager:Landroid/location/LocationManager;
    const-string v4, "gps"

    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 57
    .local v0, location:Landroid/location/Location;
    const-string v4, "LocationUtils"

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "location: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-static {v4, v5}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-eqz v0, :cond_1

    .line 62
    const-string v4, "%s_%s_%s"

    .line 63
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 64
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 65
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    .line 61
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 66
    .end local v2           #s:Ljava/lang/String;
    .restart local v3       #s:Ljava/lang/String;
    goto :goto_0

    .end local v3           #s:Ljava/lang/String;
    .restart local v2       #s:Ljava/lang/String;
    :cond_1
    move-object v3, v2

    .line 68
    .end local v2           #s:Ljava/lang/String;
    .restart local v3       #s:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getWifiLocation(Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .parameter "context"

    .prologue
    .line 80
    const-string v5, ""

    .line 83
    .local v5, s:Ljava/lang/String;
    :try_start_0
    const-string v11, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v11}, Lcom/ja/sdk/utils/FileUtils;->isManifestPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 85
    const-string v11, "wifi"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 86
    .local v10, wifimanager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 88
    const-string v11, "[d]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const v3, 0x7fffffff

    .line 90
    .local v3, k:I
    const/4 v4, -0x1

    .line 91
    .local v4, l:I
    const/4 v1, 0x0

    .local v1, i1:I
    :goto_0
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lt v1, v11, :cond_2

    .line 105
    if-ltz v4, :cond_0

    .line 107
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 108
    .local v7, scanresult:Landroid/net/wifi/ScanResult;
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v12, ":"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, s1:Ljava/lang/String;
    const-string v11, "%s_%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 110
    aput-object v6, v12, v13

    const/4 v13, 0x1

    iget v14, v7, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 109
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 113
    .end local v6           #s1:Ljava/lang/String;
    .end local v7           #scanresult:Landroid/net/wifi/ScanResult;
    :cond_0
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 114
    .local v9, wifiinfo:Landroid/net/wifi/WifiInfo;
    const-string v11, "[active]%s %s_%s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 115
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 114
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;)I

    .line 124
    .end local v1           #i1:I
    .end local v3           #k:I
    .end local v4           #l:I
    .end local v9           #wifiinfo:Landroid/net/wifi/WifiInfo;
    .end local v10           #wifimanager:Landroid/net/wifi/WifiManager;
    :cond_1
    :goto_1
    return-object v5

    .line 93
    .restart local v1       #i1:I
    .restart local v3       #k:I
    .restart local v4       #l:I
    .restart local v10       #wifimanager:Landroid/net/wifi/WifiManager;
    :cond_2
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 94
    .local v8, scanresult1:Landroid/net/wifi/ScanResult;
    iget v11, v8, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 95
    .local v2, j1:I
    const-string v11, "%s %s_%s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 96
    iget-object v14, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 95
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    if-le v3, v2, :cond_3

    .line 100
    move v3, v2

    .line 101
    move v4, v1

    .line 91
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 120
    .end local v1           #i1:I
    .end local v2           #j1:I
    .end local v3           #k:I
    .end local v4           #l:I
    .end local v8           #scanresult1:Landroid/net/wifi/ScanResult;
    .end local v10           #wifimanager:Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v0

    .line 122
    .local v0, exception:Ljava/lang/Exception;
    const-string v11, "getWifiLocation"

    invoke-static {v11, v0}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
