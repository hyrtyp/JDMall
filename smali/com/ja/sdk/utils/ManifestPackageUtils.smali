.class public final Lcom/ja/sdk/utils/ManifestPackageUtils;
.super Ljava/lang/Object;
.source "ManifestPackageUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ManifestPackageUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ReadCofigInfoFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "s"

    .prologue
    .line 25
    const-string v4, ""

    .line 26
    .local v4, s1:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 30
    .local v3, packagemanager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v3, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 44
    .local v0, applicationinfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, obj:Ljava/lang/Object;
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_0

    .line 48
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v9, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 49
    .end local v2           #obj:Ljava/lang/Object;
    :cond_0
    if-nez v2, :cond_1

    .line 51
    const-string v9, "ManifestPackageUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "null,can\'t find information for key:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v9, "Ja_Sdk_ID"

    if-ne p1, v9, :cond_4

    .line 54
    const-string v7, " can\'t find app key in manifest.xml."

    .line 55
    .local v7, s3:Ljava/lang/String;
    invoke-static {v7}, Lcom/ja/sdk/utils/LogUtil;->logE(Ljava/lang/String;)I

    .line 63
    .end local v7           #s3:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "Ja_Sdk_ID"

    if-ne p1, v9, :cond_2

    .line 66
    const-string v8, " The value of APP Key is empty."

    .line 67
    .local v8, s4:Ljava/lang/String;
    invoke-static {v8}, Lcom/ja/sdk/utils/LogUtil;->logE(Ljava/lang/String;)I

    .end local v8           #s4:Ljava/lang/String;
    :cond_2
    move-object v5, v4

    .line 71
    .end local v0           #applicationinfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #s1:Ljava/lang/String;
    .local v5, s1:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 32
    .end local v5           #s1:Ljava/lang/String;
    .restart local v4       #s1:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 34
    .local v1, namenotfoundexception:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "Ja_Sdk_ID"

    if-ne p1, v9, :cond_3

    .line 36
    const-string v6, " can\'t find app key in manifest.xml."

    .line 37
    .local v6, s2:Ljava/lang/String;
    invoke-static {v6}, Lcom/ja/sdk/utils/LogUtil;->logE(Ljava/lang/String;)I

    .line 38
    new-instance v9, Ljava/lang/SecurityException;

    invoke-direct {v9, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v6           #s2:Ljava/lang/String;
    :cond_3
    move-object v5, v4

    .line 41
    .end local v4           #s1:Ljava/lang/String;
    .restart local v5       #s1:Ljava/lang/String;
    goto :goto_0

    .end local v1           #namenotfoundexception:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #s1:Ljava/lang/String;
    .restart local v0       #applicationinfo:Landroid/content/pm/ApplicationInfo;
    .restart local v4       #s1:Ljava/lang/String;
    :cond_4
    move-object v5, v4

    .line 60
    .end local v4           #s1:Ljava/lang/String;
    .restart local v5       #s1:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 81
    .local v2, packagemanager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, s:Ljava/lang/String;
    const/4 v1, 0x0

    .line 84
    .local v1, packageinfo:Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    :goto_0
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    return v4

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 89
    const-string v5, "ManifestPackageUtils"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string v6, "get app version code exception"

    aput-object v6, v4, v5

    .line 88
    invoke-static {v4}, Lcom/ja/sdk/utils/LogUtil;->logE([Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 100
    .local v2, packagemanager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, s:Ljava/lang/String;
    const/4 v1, 0x0

    .line 103
    .local v1, packageinfo:Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 110
    :goto_0
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v4

    .line 104
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 107
    const-string v5, "ManifestPackageUtils"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string v6, "get app version name exception"

    aput-object v6, v4, v5

    .line 106
    invoke-static {v4}, Lcom/ja/sdk/utils/LogUtil;->logE([Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 121
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 122
    const-string v1, ""

    .line 128
    :cond_0
    :goto_0
    return-object v1

    .line 124
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "sc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, channel:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 126
    const-string v1, ""

    goto :goto_0
.end method

.method private static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 145
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    return-object v0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSoftwareVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p0}, Lcom/ja/sdk/utils/ManifestPackageUtils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 137
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    .line 138
    const-string v1, "0|0"

    .line 140
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
