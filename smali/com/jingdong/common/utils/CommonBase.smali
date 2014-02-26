.class public abstract Lcom/jingdong/common/utils/CommonBase;
.super Ljava/lang/Object;
.source "CommonBase.java"

# interfaces
.implements Lcom/jingdong/common/utils/ICommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;,
        Lcom/jingdong/common/utils/CommonBase$MacAddressListener;
    }
.end annotation


# static fields
.field private static final KEY_GUIDE_ACTIVITY:Ljava/lang/String; = "guide_activity"

.field public static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final KEy_FROM_GAME:Ljava/lang/String; = "isFromGame"

.field private static final TAG:Ljava/lang/String; = "CommonBase"

.field public static final VALUE_ORIENTATION:Ljava/lang/String; = "screen_land"

.field private static marketPriceFlag:Ljava/lang/String;

.field public static miaoShaKey:Ljava/lang/String;

.field public static sharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private canShowInToastTime:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/common/utils/CommonBase;->marketPriceFlag:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/CommonBase;->canShowInToastTime:Z

    .line 63
    return-void
.end method

.method public static CheckNetWork()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 92
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v3

    .line 95
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 96
    .local v2, netinfo:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 99
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 100
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    const/4 v3, 0x1

    goto :goto_0

    .line 99
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/CommonBase;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 968
    iput-boolean p1, p0, Lcom/jingdong/common/utils/CommonBase;->canShowInToastTime:Z

    return-void
.end method

.method public static activityIsGuided(Ljava/lang/String;)Z
    .locals 6
    .parameter "className"

    .prologue
    const/4 v2, 0x0

    .line 807
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 819
    :cond_0
    :goto_0
    return v2

    .line 810
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "guide_activity"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, classNames:[Ljava/lang/String;
    array-length v4, v0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 815
    .local v1, string:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 816
    const/4 v2, 0x1

    goto :goto_0

    .line 811
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static backToMain(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 559
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 560
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 561
    .local v1, homeInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 562
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    .local v3, startIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 565
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 567
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 571
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v4

    goto :goto_0

    .line 569
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static checkAddrWithSpace(Ljava/lang/String;)Z
    .locals 2
    .parameter "username"

    .prologue
    .line 507
    const-string v0, "[\\w\u4e00-\u9fa5\\-\\x20]+"

    .line 508
    .local v0, regex:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/jingdong/common/utils/CommonBase;->startCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static checkEmailWithSuffix(Ljava/lang/String;)Z
    .locals 2
    .parameter "email"

    .prologue
    .line 448
    const-string v0, "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$"

    .line 450
    .local v0, regex:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/jingdong/common/utils/CommonBase;->startCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static checkNetWorkType()I
    .locals 2

    .prologue
    .line 276
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, proxyHost:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 278
    const/4 v1, 0x2

    .line 280
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static checkPassword(Ljava/lang/String;II)Z
    .locals 3
    .parameter "password"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[a-zA-Z_0-9\\-]{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, regex:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/jingdong/common/utils/CommonBase;->startCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static checkSDcard()Z
    .locals 2

    .prologue
    .line 438
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const/4 v0, 0x1

    .line 441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkUsername(Ljava/lang/String;)Z
    .locals 2
    .parameter "username"

    .prologue
    .line 499
    const-string v0, "[\\w\u4e00-\u9fa5\\-a-zA-Z0-9_]+"

    .line 500
    .local v0, regex:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/jingdong/common/utils/CommonBase;->startCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static checkUsername(Ljava/lang/String;I)Z
    .locals 3
    .parameter "username"
    .parameter "min"

    .prologue
    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[\\w\u4e00-\u9fa5\\-a-zA-Z0-9_]{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, regex:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/jingdong/common/utils/CommonBase;->startCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static checkUsername(Ljava/lang/String;II)Z
    .locals 3
    .parameter "username"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[\\w\u4e00-\u9fa5\\-a-zA-Z0-9_]{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, regex:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/jingdong/common/utils/CommonBase;->startCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static fixBackBroundRepeat(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 844
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 845
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 846
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 847
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 848
    .local v1, bmp:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 849
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 853
    .end local v1           #bmp:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void
.end method

.method public static getBooleanFromPreference(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .parameter "key"
    .parameter "defaultvalue"

    .prologue
    .line 921
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getCityIDFromSharedPreferences()Ljava/lang/String;
    .locals 3

    .prologue
    .line 716
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "globalCityID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 1026
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1028
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 428
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 429
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDistrictIdFromSharedPreferences()Ljava/lang/String;
    .locals 3

    .prologue
    .line 732
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "globalDistrictID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExitType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 649
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 650
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "exitType"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, exitType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 654
    .end local v0           #exitType:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #exitType:Ljava/lang/String;
    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method public static getIntFromPreference(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 873
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getIsJustShowHaveProduct()Z
    .locals 3

    .prologue
    .line 783
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "justshowhaveproduct"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getJdSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 307
    sget-object v0, Lcom/jingdong/common/utils/CommonBase;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 311
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    .line 312
    const-string v1, "jdAndroidClient"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/MyApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 311
    sput-object v0, Lcom/jingdong/common/utils/CommonBase;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 314
    :cond_0
    sget-object v0, Lcom/jingdong/common/utils/CommonBase;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getLength(Ljava/lang/String;)I
    .locals 4
    .parameter "checkStr"

    .prologue
    .line 524
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 525
    .local v2, nameChars:[C
    const/4 v1, 0x0

    .line 526
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 533
    return v1

    .line 527
    :cond_0
    aget-char v3, v2, v0

    invoke-static {v3}, Lcom/jingdong/common/utils/CommonBase;->isChinese(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 528
    add-int/lit8 v1, v1, 0x2

    .line 526
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 530
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized getLocalMacAddress(Lcom/jingdong/common/utils/CommonBase$MacAddressListener;)V
    .locals 9
    .parameter "listener"

    .prologue
    .line 346
    const-class v7, Lcom/jingdong/common/utils/CommonBase;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v6

    const-string v8, "wifi"

    invoke-virtual {v6, v8}, Lcom/jingdong/common/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 347
    .local v5, wifi:Landroid/net/wifi/WifiManager;
    if-nez v5, :cond_0

    .line 348
    const/4 v6, 0x0

    invoke-interface {p0, v6}, Lcom/jingdong/common/utils/CommonBase$MacAddressListener;->setMacAddress(Ljava/lang/String;)V

    .line 350
    :cond_0
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 351
    .local v1, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, macAddress:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 358
    invoke-interface {p0, v2}, Lcom/jingdong/common/utils/CommonBase$MacAddressListener;->setMacAddress(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    .end local v2           #macAddress:Ljava/lang/String;
    .end local v5           #wifi:Landroid/net/wifi/WifiManager;
    :goto_0
    monitor-exit v7

    return-void

    .line 361
    .restart local v1       #info:Landroid/net/wifi/WifiInfo;
    .restart local v2       #macAddress:Ljava/lang/String;
    .restart local v5       #wifi:Landroid/net/wifi/WifiManager;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 364
    .local v4, waiter:Ljava/lang/Object;
    new-instance v3, Lcom/jingdong/common/utils/CommonBase$3;

    invoke-direct {v3, v5, v4, p0}, Lcom/jingdong/common/utils/CommonBase$3;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/Object;Lcom/jingdong/common/utils/CommonBase$MacAddressListener;)V

    .line 412
    .local v3, thread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 415
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    .end local v2           #macAddress:Ljava/lang/String;
    .end local v3           #thread:Ljava/lang/Thread;
    .end local v4           #waiter:Ljava/lang/Object;
    .end local v5           #wifi:Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    :try_start_2
    invoke-interface {p0, v6}, Lcom/jingdong/common/utils/CommonBase$MacAddressListener;->setMacAddress(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 346
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static getMarketPriceFlag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 321
    sget-object v0, Lcom/jingdong/common/utils/CommonBase;->marketPriceFlag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 323
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "marketpriceflag"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/utils/CommonBase;->marketPriceFlag:Ljava/lang/String;

    .line 325
    :cond_0
    sget-object v0, Lcom/jingdong/common/utils/CommonBase;->marketPriceFlag:Ljava/lang/String;

    return-object v0
.end method

.method public static getMiaoShaKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    sget-object v0, Lcom/jingdong/common/utils/CommonBase;->miaoShaKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/jingdong/common/utils/JniUtils;->dMK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter "context"
    .parameter "packgeName"

    .prologue
    const/4 v0, 0x0

    .line 944
    if-nez p0, :cond_0

    .line 955
    :goto_0
    return-object v0

    .line 948
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 949
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 950
    .end local v0           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getPlugOn()Z
    .locals 3

    .prologue
    .line 1082
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "plug_on_off"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getPlugRequestPeriod()J
    .locals 4

    .prologue
    .line 1047
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "plugrequestperiod"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPlugRequestTime()J
    .locals 4

    .prologue
    .line 1033
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "plugrequesttime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getProvinceIDFromSharedPreferences()Ljava/lang/String;
    .locals 3

    .prologue
    .line 700
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "globalProvinceID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReActivationIntervalDays(J)J
    .locals 6
    .parameter "defalutDays"

    .prologue
    .line 627
    move-wide v0, p0

    .line 628
    .local v0, result:J
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 629
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v4, "remindertime"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, strIntervalDays:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 632
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 640
    :cond_0
    :goto_0
    return-wide v0

    .line 633
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getRegionNameSharedPreferences()Ljava/lang/String;
    .locals 3

    .prologue
    .line 779
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "regionName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRememberStateSharedPreferences()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 775
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "rememberRegion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKInt()I
    .locals 2

    .prologue
    .line 859
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 861
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return v1

    .line 860
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 861
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public static getSelectedOrderSharedPreferences()I
    .locals 3

    .prologue
    .line 771
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "selectOrder"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getShakeShareText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 792
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringFromPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultvalue"

    .prologue
    .line 909
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTownIdFromSharedPreferences()Ljava/lang/String;
    .locals 3

    .prologue
    .line 748
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "globalTownID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTriggerAtTime()J
    .locals 4

    .prologue
    .line 607
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 608
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "reActivationTriggerAtTime"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static isChinese(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 548
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 549
    .local v0, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 550
    :cond_0
    const/4 v1, 0x1

    .line 552
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 156
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 157
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 158
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static newBrowserIntent(Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 3
    .parameter "uri"
    .parameter "force"

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 144
    .local v0, i:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 145
    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    :cond_0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    return-object v0
.end method

.method public static putBooleanToPreference(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 933
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static putIntToPreference(Ljava/lang/String;I)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 885
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static putStringToPreference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 897
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static putTriggerAtTime(J)V
    .locals 3
    .parameter "updateTimes"

    .prologue
    .line 597
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 598
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "reActivationTriggerAtTime"

    invoke-interface {v1, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 599
    return-void
.end method

.method public static queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V
    .locals 4
    .parameter "action"
    .parameter "params"
    .parameter "listener"

    .prologue
    .line 169
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;-><init>()V

    .line 170
    .local v1, httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setType(I)V

    .line 171
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/MyApplication;->getCurrentMyActivity()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setMyActivity(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 172
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    invoke-direct {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V

    .line 174
    .local v0, httpGroup:Lcom/jingdong/common/utils/HttpGroup;
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 175
    .local v2, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "ordermap"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 178
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 179
    const-string v3, "genToken"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 180
    new-instance v3, Lcom/jingdong/common/utils/CommonBase$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/jingdong/common/utils/CommonBase$2;-><init>(Ljava/lang/String;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;Lcom/jingdong/common/utils/URLParamMap;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 266
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 268
    return-void
.end method

.method public static removeTriggerAtTime()V
    .locals 3

    .prologue
    .line 615
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 616
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "reActivationTriggerAtTime"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 617
    return-void
.end method

.method public static setCityIDToSharedPreferences(Ljava/lang/String;)V
    .locals 2
    .parameter "cityID"

    .prologue
    .line 709
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "globalCityID"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 710
    return-void
.end method

.method public static setDistrictIdToSharedPreferences(Ljava/lang/String;)V
    .locals 2
    .parameter "districtID"

    .prologue
    .line 725
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "globalDistrictID"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 726
    return-void
.end method

.method public static setIsGuided(Ljava/lang/String;)V
    .locals 5
    .parameter "className"

    .prologue
    .line 828
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 835
    :goto_0
    return-void

    .line 831
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "guide_activity"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, classNames:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 833
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 834
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "guide_activity"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setIsJustShowHaveProduct(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 788
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "justshowhaveproduct"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 789
    return-void
.end method

.method public static setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 7
    .parameter "listView"

    .prologue
    const/4 v6, 0x0

    .line 659
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 660
    .local v1, listAdapter:Landroid/widget/ListAdapter;
    if-nez v1, :cond_0

    .line 673
    :goto_0
    return-void

    .line 664
    :cond_0
    const/4 v4, 0x0

    .line 665
    .local v4, totalHeight:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 670
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 671
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 672
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 666
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v5, 0x0

    invoke-interface {v1, v0, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 667
    .local v2, listItem:Landroid/view/View;
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 668
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static setPlugOn(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1068
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "plug_on_off"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    :goto_0
    return-void

    .line 1069
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setPlugRequestPeriod(J)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1053
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "plugrequestperiod"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :goto_0
    return-void

    .line 1054
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setPlugRequestTime(J)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1039
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "plugrequesttime"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    :goto_0
    return-void

    .line 1040
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setProvinceIDToSharedPreferences(Ljava/lang/String;)V
    .locals 2
    .parameter "provinceID"

    .prologue
    .line 693
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "globalProvinceID"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 694
    return-void
.end method

.method public static setProvinceNameToSharedPreferences(Ljava/lang/String;)V
    .locals 2
    .parameter "provinceName"

    .prologue
    .line 684
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "provinceName"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 685
    return-void
.end method

.method public static setRegionNamePreferences(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 767
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "regionName"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 768
    return-void
.end method

.method public static setRegionSharedPreferences(Ljava/lang/String;)V
    .locals 2
    .parameter "region"

    .prologue
    .line 763
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "region"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 764
    return-void
.end method

.method public static setRememberStateSharedPreferences(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 758
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rememberRegion"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 759
    return-void
.end method

.method public static setSelectedOrderSharedPreferences(I)V
    .locals 2
    .parameter "selectOrder"

    .prologue
    .line 753
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "selectOrder"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 754
    return-void
.end method

.method public static setShakeShareText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "str"

    .prologue
    .line 797
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 798
    return-void
.end method

.method public static setTownIdToSharedPreferences(Ljava/lang/String;)V
    .locals 2
    .parameter "townID"

    .prologue
    .line 741
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "globalTownID"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 742
    return-void
.end method

.method public static startCheck(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "reg"
    .parameter "string"

    .prologue
    .line 454
    const/4 v2, 0x0

    .line 456
    .local v2, tem:Z
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 457
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 459
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 460
    return v2
.end method

.method public static toBrowser(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 132
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/jingdong/common/utils/CommonBase;->newBrowserIntent(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 133
    .local v0, i:Landroid/content/Intent;
    invoke-static {v0}, Lcom/jingdong/common/utils/CommonBase;->isIntentAvailable(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/MyApplication;->getCurrentMyActivity()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/jingdong/common/frame/IMyActivity;->startActivityNoException(Landroid/content/Intent;)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/MyApplication;->getCurrentMyActivity()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/jingdong/common/utils/CommonBase;->newBrowserIntent(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jingdong/common/frame/IMyActivity;->startActivityNoException(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static toBrowser(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;)V
    .locals 1
    .parameter "action"
    .parameter "params"

    .prologue
    .line 116
    new-instance v0, Lcom/jingdong/common/utils/CommonBase$1;

    invoke-direct {v0}, Lcom/jingdong/common/utils/CommonBase$1;-><init>()V

    .line 123
    .local v0, listener:Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;
    invoke-static {p0, p1, v0}, Lcom/jingdong/common/utils/CommonBase;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    .line 125
    return-void
.end method


# virtual methods
.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLocalIpAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 286
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_1

    .line 300
    .end local v0           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 287
    .restart local v0       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 288
    .local v3, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 289
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 290
    .local v2, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_2

    .line 291
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 295
    .end local v0           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2           #inetAddress:Ljava/net/InetAddress;
    .end local v3           #intf:Ljava/net/NetworkInterface;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public goToMainFrameActivity(Landroid/content/Context;Ljava/lang/Class;)Lcom/jingdong/common/frame/IMainActivity;
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/jingdong/common/frame/IMainActivity;"
        }
    .end annotation

    .prologue
    .line 1007
    .local p2, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1008
    .local v1, mianIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/MyApplication;->getMainFrameActivity()Lcom/jingdong/common/frame/IMainActivity;

    move-result-object v0

    .line 1009
    .local v0, mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;
    if-nez v0, :cond_0

    .line 1020
    :cond_0
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1021
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1022
    return-object v0
.end method

.method public isCanClick()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 976
    invoke-static {}, Lcom/jingdong/common/utils/NetUtils;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 977
    iget-boolean v1, p0, Lcom/jingdong/common/utils/CommonBase;->canShowInToastTime:Z

    if-eqz v1, :cond_0

    .line 978
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/MyApplication;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/jingdong/common/utils/CommonBase$4;

    invoke-direct {v2, p0}, Lcom/jingdong/common/utils/CommonBase$4;-><init>(Lcom/jingdong/common/utils/CommonBase;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 985
    iput-boolean v0, p0, Lcom/jingdong/common/utils/CommonBase;->canShowInToastTime:Z

    .line 986
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/jingdong/common/utils/CommonBase$5;

    invoke-direct {v2, p0}, Lcom/jingdong/common/utils/CommonBase$5;-><init>(Lcom/jingdong/common/utils/CommonBase;)V

    .line 992
    const-wide/16 v3, 0x7d0

    .line 986
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 996
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public putSelectedCatsStr(Ljava/lang/String;)V
    .locals 3
    .parameter "categories"

    .prologue
    .line 964
    invoke-static {}, Lcom/jingdong/common/utils/CommonBase;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 965
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "color_buy_selected_categories"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 966
    return-void
.end method
