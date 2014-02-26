.class public abstract Lcom/jingdong/common/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field private static activityManager:Landroid/app/ActivityManager;

.field private static canExitInToastTime:Z

.field protected static instance:Lcom/jingdong/common/MyApplication;

.field public static isShowActivity:Z

.field private static mBitmapkitUtils:Lcom/jingdong/common/utils/BitmapkitUtils;


# instance fields
.field private activity:Lcom/jingdong/common/frame/IMyActivity;

.field private handler:Landroid/os/Handler;

.field private homeMainActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private isJMARunning:Z

.field protected mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;

.field public networkInitializationState:I

.field private uiThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/common/MyApplication;->canExitInToastTime:Z

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 53
    iput v0, p0, Lcom/jingdong/common/MyApplication;->networkInitializationState:I

    .line 91
    iput-boolean v0, p0, Lcom/jingdong/common/MyApplication;->isJMARunning:Z

    .line 42
    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0
    .parameter

    .prologue
    .line 57
    sput-boolean p0, Lcom/jingdong/common/MyApplication;->canExitInToastTime:Z

    return-void
.end method

.method public static exit(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 4
    .parameter "myActivity"

    .prologue
    .line 343
    if-eqz p0, :cond_0

    .line 344
    invoke-interface {p0}, Lcom/jingdong/common/frame/IMyActivity;->finish()V

    .line 347
    :cond_0
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/common/MyApplication;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jingdong/common/MyApplication$3;

    invoke-direct {v1}, Lcom/jingdong/common/MyApplication$3;-><init>()V

    .line 372
    const-wide/16 v2, 0x64

    .line 347
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 374
    return-void
.end method

.method public static exitAll()V
    .locals 0

    .prologue
    .line 383
    invoke-static {}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->quit()V

    .line 388
    invoke-static {}, Lcom/jingdong/common/MyApplication;->killBackground()V

    .line 391
    invoke-static {}, Lcom/jingdong/common/MyApplication;->killStage()V

    .line 393
    return-void
.end method

.method public static exitControl()V
    .locals 4

    .prologue
    .line 215
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getExitType()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, exitType:Ljava/lang/String;
    const-string v3, "3"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    invoke-static {}, Lcom/jingdong/common/MyApplication;->exitDialog()V

    .line 229
    :goto_0
    return-void

    .line 219
    :cond_0
    const-string v3, "2"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    invoke-static {}, Lcom/jingdong/common/MyApplication;->exitToast()V

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/MyApplication;->getMainFrameActivity()Lcom/jingdong/common/frame/IMainActivity;

    move-result-object v2

    .line 224
    .local v2, mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-interface {v2, v1}, Lcom/jingdong/common/frame/IMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static exitDialog()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jingdong/common/MyApplication;->exitDialog(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 252
    return-void
.end method

.method public static exitDialog(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 6
    .parameter "myActivity"

    .prologue
    .line 261
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    .line 262
    .local v1, currActivity:Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 263
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/MyApplication;->getMainFrameActivity()Lcom/jingdong/common/frame/IMainActivity;

    move-result-object v4

    invoke-interface {v4}, Lcom/jingdong/common/frame/IMainActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v1

    .line 266
    :cond_0
    const-string v4, "isCoolMart"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    invoke-static {p0}, Lcom/jingdong/common/MyApplication;->exit(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 312
    :goto_0
    return-void

    .line 271
    :cond_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 272
    .local v0, alertDialog:Landroid/app/AlertDialog;
    sget-object v4, Lcom/jingdong/common/res/StringUtil;->pg_home_exit_confrim_string:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 273
    sget-object v4, Lcom/jingdong/common/res/StringUtil;->exit:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 274
    new-instance v3, Lcom/jingdong/common/MyApplication$2;

    invoke-direct {v3, p0}, Lcom/jingdong/common/MyApplication$2;-><init>(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 293
    .local v3, listener:Landroid/content/DialogInterface$OnClickListener;
    const/4 v4, -0x1

    .line 294
    sget-object v5, Lcom/jingdong/common/res/StringUtil;->exit:Ljava/lang/String;

    .line 293
    invoke-virtual {v0, v4, v5, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 297
    const/4 v4, -0x2

    .line 298
    sget-object v5, Lcom/jingdong/common/res/StringUtil;->cancel:Ljava/lang/String;

    .line 297
    invoke-virtual {v0, v4, v5, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 303
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v2

    .line 308
    .local v2, e:Ljava/lang/Throwable;
    invoke-static {p0}, Lcom/jingdong/common/MyApplication;->exit(Lcom/jingdong/common/frame/IMyActivity;)V

    goto :goto_0
.end method

.method public static exitToast()V
    .locals 4

    .prologue
    .line 235
    sget-boolean v0, Lcom/jingdong/common/MyApplication;->canExitInToastTime:Z

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jingdong/common/MyApplication;->exit(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 248
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    sget-object v1, Lcom/jingdong/common/res/StringUtil;->exit_toast_message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 239
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/common/MyApplication;->canExitInToastTime:Z

    .line 240
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/jingdong/common/MyApplication$1;

    invoke-direct {v1}, Lcom/jingdong/common/MyApplication$1;-><init>()V

    .line 246
    const-wide/16 v2, 0x7d0

    .line 240
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public static getAId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 489
    sget-object v1, Lcom/jingdong/common/MyApplication;->instance:Lcom/jingdong/common/MyApplication;

    invoke-virtual {v1}, Lcom/jingdong/common/MyApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 490
    const-string v2, "android_id"

    .line 489
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method

.method public static getBitmapkitUtils()Lcom/jingdong/common/utils/BitmapkitUtils;
    .locals 1

    .prologue
    .line 495
    sget-object v0, Lcom/jingdong/common/MyApplication;->mBitmapkitUtils:Lcom/jingdong/common/utils/BitmapkitUtils;

    return-object v0
.end method

.method public static getInstance()Lcom/jingdong/common/MyApplication;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/jingdong/common/MyApplication;->instance:Lcom/jingdong/common/MyApplication;

    return-object v0
.end method

.method private static initCBT()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 133
    const-string v7, "CBTMode"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 137
    invoke-static {}, Lcom/jingdong/common/config/Configuration;->getProperties()Ljava/util/Properties;

    move-result-object v4

    .line 138
    .local v4, p:Ljava/util/Properties;
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    .local v0, defaltPreference:Landroid/content/SharedPreferences;
    const-string v7, "host"

    const-string v8, ""

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, hostStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 144
    const-string v7, "host"

    invoke-virtual {v4, v7, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    :cond_0
    const-string v7, "mHost"

    const-string v8, ""

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, mhostStr:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 148
    const-string v7, "mHost"

    invoke-virtual {v4, v7, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    :cond_1
    const-string v7, "paiHost"

    const-string v8, ""

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, paihostStr:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 152
    const-string v7, "paiHost"

    invoke-virtual {v4, v7, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    :cond_2
    const-string v7, "msgHost"

    const-string v8, ""

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, msghostStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 156
    const-string v7, "msgHost"

    invoke-virtual {v4, v7, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    :cond_3
    const-string v7, "testMode"

    invoke-interface {v0, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 159
    .local v6, testMode:Ljava/lang/Boolean;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 160
    const-string v7, "testMode"

    const-string v8, "true"

    invoke-virtual {v4, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    :cond_4
    :goto_0
    return-void

    .line 162
    :cond_5
    const-string v7, "testMode"

    const-string v8, "false"

    invoke-virtual {v4, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static killBackground()V
    .locals 3

    .prologue
    .line 482
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 483
    .local v0, i:Landroid/content/Intent;
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    const-class v2, Lcom/jingdong/common/service/MessagePullService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 484
    const-string v1, "Action_Stop_Message_Service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/MyApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 486
    return-void
.end method

.method public static killStage()V
    .locals 2

    .prologue
    .line 405
    sget-object v0, Lcom/jingdong/common/MyApplication;->instance:Lcom/jingdong/common/MyApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/MyApplication;->setMainFrameActivity(Lcom/jingdong/common/frame/IMainActivity;)V

    .line 406
    sget-object v0, Lcom/jingdong/common/MyApplication;->instance:Lcom/jingdong/common/MyApplication;

    const/4 v1, 0x0

    iput v1, v0, Lcom/jingdong/common/MyApplication;->networkInitializationState:I

    .line 409
    sget-object v0, Lcom/jingdong/common/MyApplication;->instance:Lcom/jingdong/common/MyApplication;

    invoke-virtual {v0}, Lcom/jingdong/common/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/common/broadcastReceiver/StorageReceiver;->unregisterReceiver(Landroid/content/Context;)V

    .line 410
    sget-object v0, Lcom/jingdong/common/MyApplication;->instance:Lcom/jingdong/common/MyApplication;

    invoke-virtual {v0}, Lcom/jingdong/common/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/common/broadcastReceiver/TimeChangedReceiver;->unregisterReceiver(Landroid/content/Context;)V

    .line 416
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 433
    return-void
.end method

.method public static declared-synchronized killStageNoUI()V
    .locals 3

    .prologue
    .line 439
    const-class v1, Lcom/jingdong/common/MyApplication;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/MyApplication;->getMainFrameActivity()Lcom/jingdong/common/frame/IMainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 443
    sget-object v0, Lcom/jingdong/common/MyApplication;->instance:Lcom/jingdong/common/MyApplication;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jingdong/common/MyApplication;->setMainFrameActivity(Lcom/jingdong/common/frame/IMainActivity;)V

    .line 444
    sget-object v0, Lcom/jingdong/common/MyApplication;->instance:Lcom/jingdong/common/MyApplication;

    const/4 v2, 0x0

    iput v2, v0, Lcom/jingdong/common/MyApplication;->networkInitializationState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    :try_start_1
    sget-object v0, Lcom/jingdong/common/MyApplication;->activityManager:Landroid/app/ActivityManager;

    sget-object v2, Lcom/jingdong/common/MyApplication;->instance:Lcom/jingdong/common/MyApplication;

    invoke-virtual {v2}, Lcom/jingdong/common/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 453
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 447
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized networkSetting()V
    .locals 4

    .prologue
    .line 65
    const-class v2, Lcom/jingdong/common/MyApplication;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/jingdong/common/MyApplication;->mBitmapkitUtils:Lcom/jingdong/common/utils/BitmapkitUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 85
    .local v0, e:Ljava/lang/Throwable;
    :goto_0
    monitor-exit v2

    return-void

    .line 68
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/jingdong/common/utils/CPAUtils;->loadLibrary()V

    .line 70
    new-instance v1, Lcom/jingdong/common/utils/BitmapkitUtils;

    invoke-direct {v1}, Lcom/jingdong/common/utils/BitmapkitUtils;-><init>()V

    sput-object v1, Lcom/jingdong/common/MyApplication;->mBitmapkitUtils:Lcom/jingdong/common/utils/BitmapkitUtils;

    .line 71
    sget-object v1, Lcom/jingdong/common/MyApplication;->mBitmapkitUtils:Lcom/jingdong/common/utils/BitmapkitUtils;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/BitmapkitUtils;->loadNativeLibrary()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    invoke-static {}, Lcom/jingdong/common/utils/JniUtils;->getSHN()Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->compatibleOldVersion()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 84
    .restart local v0       #e:Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/jingdong/common/MyApplication;->initCBT()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 79
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 80
    .restart local v0       #e:Ljava/lang/Throwable;
    :try_start_4
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getBitmapkitUtils()Lcom/jingdong/common/utils/BitmapkitUtils;

    move-result-object v1

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/jingdong/common/utils/BitmapkitUtils;->isLoadLibFailed:Z

    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static submitTime()V
    .locals 5

    .prologue
    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/jingdong/common/utils/TimerUntil;->endTime:J

    .line 325
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 326
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "appUseTime"

    invoke-static {}, Lcom/jingdong/common/utils/TimerUntil;->getUserTime()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 333
    return-void
.end method


# virtual methods
.method public getCurrentMyActivity()Lcom/jingdong/common/frame/IMyActivity;
    .locals 2

    .prologue
    .line 192
    iget-object v1, p0, Lcom/jingdong/common/MyApplication;->activity:Lcom/jingdong/common/frame/IMyActivity;

    if-eqz v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/jingdong/common/MyApplication;->activity:Lcom/jingdong/common/frame/IMyActivity;

    .line 204
    :goto_0
    return-object v0

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/jingdong/common/MyApplication;->mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/jingdong/common/MyApplication;->mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;

    invoke-interface {v1}, Lcom/jingdong/common/frame/IMainActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v0

    .line 200
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/jingdong/common/frame/IMyActivity;

    if-eqz v1, :cond_1

    .line 201
    check-cast v0, Lcom/jingdong/common/frame/IMyActivity;

    goto :goto_0

    .line 204
    .end local v0           #activity:Landroid/app/Activity;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getDefalutDrawble()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getErrorActivityClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/jingdong/common/MyApplication;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHomeMainActivity()Lcom/jingdong/common/frame/IMyActivity;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/jingdong/common/MyApplication;->homeMainActivity:Lcom/jingdong/common/frame/IMyActivity;

    return-object v0
.end method

.method public abstract getMainActivityClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public getMainFrameActivity()Lcom/jingdong/common/frame/IMainActivity;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/jingdong/common/MyApplication;->mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;

    return-object v0
.end method

.method public getUiThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/jingdong/common/MyApplication;->uiThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public isJMARunning()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/jingdong/common/MyApplication;->isJMARunning:Z

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 99
    sput-object p0, Lcom/jingdong/common/MyApplication;->instance:Lcom/jingdong/common/MyApplication;

    .line 100
    new-instance v0, Lcom/jingdong/common/utils/MyUncaughtExceptionHandler;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/MyUncaughtExceptionHandler;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Lcom/jingdong/common/utils/DPIUtil;->setDensity(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    sget-object v0, Lcom/jingdong/common/MyApplication;->instance:Lcom/jingdong/common/MyApplication;

    invoke-virtual {v0}, Lcom/jingdong/common/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/common/broadcastReceiver/StorageReceiver;->registerReceiver(Landroid/content/Context;)V

    .line 123
    sget-object v0, Lcom/jingdong/common/MyApplication;->instance:Lcom/jingdong/common/MyApplication;

    invoke-virtual {v0}, Lcom/jingdong/common/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/common/broadcastReceiver/TimeChangedReceiver;->registerReceiver(Landroid/content/Context;)V

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/MyApplication;->handler:Landroid/os/Handler;

    .line 126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/MyApplication;->uiThread:Ljava/lang/Thread;

    .line 128
    sget-object v0, Lcom/jingdong/common/MyApplication;->instance:Lcom/jingdong/common/MyApplication;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/jingdong/common/MyApplication;->activityManager:Landroid/app/ActivityManager;

    .line 130
    return-void

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCurrentMyActivity(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/jingdong/common/MyApplication;->activity:Lcom/jingdong/common/frame/IMyActivity;

    .line 209
    return-void
.end method

.method public setHomeMainActivity(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 0
    .parameter "homeMainActivity"

    .prologue
    .line 507
    iput-object p1, p0, Lcom/jingdong/common/MyApplication;->homeMainActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 508
    return-void
.end method

.method public setJMARunning(Z)V
    .locals 0
    .parameter "isJMARunning"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/jingdong/common/MyApplication;->isJMARunning:Z

    .line 174
    return-void
.end method

.method public setMainFrameActivity(Lcom/jingdong/common/frame/IMainActivity;)V
    .locals 0
    .parameter "mainFrameActivity"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/jingdong/common/MyApplication;->mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;

    .line 182
    return-void
.end method
