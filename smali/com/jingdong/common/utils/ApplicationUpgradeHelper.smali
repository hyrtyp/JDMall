.class public Lcom/jingdong/common/utils/ApplicationUpgradeHelper;
.super Ljava/lang/Object;
.source "ApplicationUpgradeHelper.java"


# static fields
.field public static final INSTALL_REQUEST_CODE:I = 0x3e9

.field private static final MUST_UPDATE:I = 0x1

.field private static final NEED_UPDATE:I = 0x2

.field private static final NO_UPDATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ApplicationUpgradeHelper"

.field private static final UPGRADE_CODE_MUST:Ljava/lang/String; = "302"

.field private static final UPGRADE_CODE_NEED:Ljava/lang/String; = "301"

.field private static final UPGRADE_CODE_NO:Ljava/lang/String; = "300"

.field private static alertDialog:Landroid/app/AlertDialog;

.field private static alertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private static clickListener:Landroid/content/DialogInterface$OnClickListener;

.field private static downloadListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;

.field private static httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

.field private static isCancel:Z

.field private static mApkSize:Ljava/lang/Integer;

.field private static mDownloadUrl:Ljava/lang/String;

.field private static mMyActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private static mRemoteVersion:Ljava/lang/String;

.field private static upgradeState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->mApkSize:Ljava/lang/Integer;

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->isCancel:Z

    .line 54
    new-instance v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$1;

    invoke-direct {v0}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$1;-><init>()V

    sput-object v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->clickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 234
    new-instance v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;

    invoke-direct {v0}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;-><init>()V

    sput-object v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->downloadListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;

    .line 324
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/jingdong/common/frame/IMyActivity;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->mMyActivity:Lcom/jingdong/common/frame/IMyActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/common/utils/HttpGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    invoke-static {p0}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->download(Lcom/jingdong/common/utils/HttpGroup;)V

    return-void
.end method

.method static synthetic access$10(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    invoke-static {p0}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->install(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11()Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$12(Landroid/app/AlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    sput-object p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->alertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$2()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3()V
    .locals 0

    .prologue
    .line 219
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->updateUI()V

    return-void
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->upgradeState:I

    return v0
.end method

.method static synthetic access$5()Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    return-object v0
.end method

.method static synthetic access$6(Z)V
    .locals 0
    .parameter

    .prologue
    .line 48
    sput-boolean p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->isCancel:Z

    return-void
.end method

.method static synthetic access$7(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    sput-object p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->mApkSize:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$8()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->mApkSize:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$9()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->isCancel:Z

    return v0
.end method

.method public static compareSoftwareUpdate(Ljava/lang/String;)I
    .locals 2
    .parameter "upgradeCode"

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, rtnCode:I
    const-string v1, "300"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    const/4 v0, 0x0

    .line 213
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    const-string v1, "302"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    const/4 v0, 0x1

    .line 209
    goto :goto_0

    :cond_2
    const-string v1, "301"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static download(Lcom/jingdong/common/utils/HttpGroup;)V
    .locals 5
    .parameter "httpGroup"

    .prologue
    const/4 v4, 0x1

    .line 356
    new-instance v1, Lcom/jingdong/common/utils/FileGuider;

    invoke-direct {v1}, Lcom/jingdong/common/utils/FileGuider;-><init>()V

    .line 357
    .local v1, savePath:Lcom/jingdong/common/utils/FileGuider;
    invoke-virtual {v1, v4}, Lcom/jingdong/common/utils/FileGuider;->setSpace(I)V

    .line 358
    invoke-virtual {v1, v4}, Lcom/jingdong/common/utils/FileGuider;->setImmutable(Z)V

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jingdong_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->mRemoteVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/FileGuider;->setFileName(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v1, v4}, Lcom/jingdong/common/utils/FileGuider;->setMode(I)V

    .line 363
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 364
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    sget-object v2, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 365
    sget-object v2, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->downloadListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 366
    const/16 v2, 0x1f4

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 367
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setSavePath(Lcom/jingdong/common/utils/FileGuider;)V

    .line 369
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    move-result-object v2

    sput-object v2, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 371
    return-void
.end method

.method private static initDataAndDialog(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3
    .parameter "myActivity"
    .parameter "downloadUrl"
    .parameter "apkSize"
    .parameter "apkname"

    .prologue
    .line 122
    sput-object p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->mMyActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 123
    sput-object p1, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->mDownloadUrl:Ljava/lang/String;

    .line 124
    sput-object p2, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->mApkSize:Ljava/lang/Integer;

    .line 125
    sput-object p3, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->mRemoteVersion:Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->isCancel:Z

    .line 130
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->mMyActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v1}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 131
    sget-object v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/jingdong/common/res/StringUtil;->ok:Ljava/lang/String;

    sget-object v2, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->clickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    sget-object v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/jingdong/common/res/StringUtil;->cancel:Ljava/lang/String;

    sget-object v2, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->clickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 135
    sget-object v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$3;

    invoke-direct {v1}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    return-void
.end method

.method private static install(Ljava/lang/String;)V
    .locals 3
    .parameter "apkFilePath"

    .prologue
    .line 333
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    sget v1, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->upgradeState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 340
    sget-object v1, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->mMyActivity:Lcom/jingdong/common/frame/IMyActivity;

    const/16 v2, 0x3e9

    invoke-interface {v1, v0, v2}, Lcom/jingdong/common/frame/IMyActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    sget-object v1, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->mMyActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v1, v0}, Lcom/jingdong/common/frame/IMyActivity;->startActivityNoException(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static tryDownloadAndInstall(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "myActivity"
    .parameter "downloadUrl"
    .parameter "apkSize"
    .parameter "message"
    .parameter "apkname"

    .prologue
    .line 114
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->initDataAndDialog(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    sget-object v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->alertDialog:Landroid/app/AlertDialog;

    .line 118
    return-void
.end method

.method public static tryDownloadAndInstall(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "myActivity"
    .parameter "downloadUrl"
    .parameter "message"
    .parameter "apkname"

    .prologue
    .line 98
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2, p3}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->tryDownloadAndInstall(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static tryUpgrade(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2
    .parameter "myActivity"
    .parameter "remoteVersion"
    .parameter "upgradeCode"
    .parameter "downloadUrl"
    .parameter "apkSize"
    .parameter "description"
    .parameter "isAuto"

    .prologue
    .line 152
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p3, v0, p1}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->initDataAndDialog(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 155
    invoke-static {p2}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->compareSoftwareUpdate(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->upgradeState:I

    .line 158
    sget v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->upgradeState:I

    packed-switch v0, :pswitch_data_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 160
    :pswitch_0
    sget-object v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->mMyActivity:Lcom/jingdong/common/frame/IMyActivity;

    new-instance v1, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$4;

    invoke-direct {v1, p5}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$4;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 170
    :pswitch_1
    sget-object v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->mMyActivity:Lcom/jingdong/common/frame/IMyActivity;

    new-instance v1, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$5;

    invoke-direct {v1, p5}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$5;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 180
    :pswitch_2
    if-nez p6, :cond_0

    .line 181
    sget-object v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->mMyActivity:Lcom/jingdong/common/frame/IMyActivity;

    new-instance v1, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$6;

    invoke-direct {v1}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$6;-><init>()V

    invoke-interface {v0, v1}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static updateUI()V
    .locals 2

    .prologue
    .line 220
    sget-object v0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->mMyActivity:Lcom/jingdong/common/frame/IMyActivity;

    new-instance v1, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$7;

    invoke-direct {v1}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$7;-><init>()V

    invoke-interface {v0, v1}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method
