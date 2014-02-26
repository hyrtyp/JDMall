.class public Lcom/jd/droidlib/util/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canInstallNonMarketApps(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 100
    const-string v2, "install_non_market_apps"

    .line 99
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static doSignaturesMatch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "ctx"
    .parameter "pkg1"
    .parameter "pkg2"

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 95
    .local v0, match:Z
    :goto_0
    return v0

    .line 94
    .end local v0           #match:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getClassesDexCrc(Landroid/content/Context;)J
    .locals 6
    .parameter "ctx"

    .prologue
    .line 115
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .local v4, zf:Ljava/util/zip/ZipFile;
    const-string v5, "classes.dex"

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 121
    .local v3, ze:Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    .line 122
    .end local v3           #ze:Ljava/util/zip/ZipEntry;
    .end local v4           #zf:Ljava/util/zip/ZipFile;
    :goto_0
    return-wide v0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, e:Ljava/io/IOException;
    invoke-static {v2}, Lcom/jd/droidlib/util/L;->e(Ljava/lang/Object;)V

    .line 118
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "ctx"
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 87
    const/16 v3, 0x40

    .line 86
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 88
    .local v0, pi:Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, signature:Ljava/lang/String;
    return-object v1
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "ctx"

    .prologue
    .line 48
    const-string v1, "?"

    .line 50
    .local v1, verName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 50
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 51
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-object v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v0}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isDebuggable(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 43
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 44
    .local v1, debug:Z
    :goto_0
    return v1

    .line 43
    .end local v1           #debug:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "ctx"
    .parameter "pkgName"

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const/4 v1, 0x1

    .line 65
    :goto_0
    return v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInstalledFromMarket(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "ctx"
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, installerPkg:Ljava/lang/String;
    const-string v2, "com.google.android.feedback"

    .line 108
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 109
    .local v0, installedFromMarket:Z
    return v0
.end method

.method public static setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 4
    .parameter "ctx"
    .parameter
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/Context;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, component:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/content/Context;>;"
    const/4 v3, 0x1

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 72
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, componentName:Landroid/content/ComponentName;
    if-eqz p2, :cond_0

    move v2, v3

    .line 75
    .local v2, state:I
    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 76
    return-void

    .line 74
    .end local v2           #state:I
    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method
