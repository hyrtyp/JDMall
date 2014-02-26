.class Lcom/jingdong/app/mall/MainFrameActivity$1;
.super Ljava/lang/Object;
.source "MainFrameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainFrameActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/MainFrameActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/MainFrameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/MainFrameActivity$1;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 221
    iget-object v4, p0, Lcom/jingdong/app/mall/MainFrameActivity$1;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/MainFrameActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/jingdong/common/utils/NewJLogUtil;->JaInit(Landroid/content/Context;)V

    .line 223
    invoke-static {v5, v5}, Lcom/jingdong/common/secure/SecureNetwork;->doPreparation(ZZ)V

    .line 224
    invoke-static {}, Lcom/jingdong/app/mall/MainFrameActivity;->clearCache()V

    .line 226
    iget-object v4, p0, Lcom/jingdong/app/mall/MainFrameActivity$1;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-static {v4}, Lcom/jingdong/common/utils/ShortCutUtils;->deleteOldJdAppShortCut(Landroid/app/Activity;)V

    .line 229
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 231
    .local v0, defaltPreference:Landroid/content/SharedPreferences;
    const-string v4, "add_short_cut_flag_new"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    const-string v4, "applicationShortcut"

    invoke-static {v4}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    iget-object v4, p0, Lcom/jingdong/app/mall/MainFrameActivity$1;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-static {v4}, Lcom/jingdong/common/utils/ShortCutUtils;->addSortcutForJdApp(Landroid/app/Activity;)V

    .line 236
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/MainFrameActivity$1;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    const-string v5, "com.jingdong.app.mall.MainActivity"

    invoke-static {v5}, Lcom/jingdong/app/mall/utils/CommonUtil;->activityIsGuided(Ljava/lang/String;)Z

    move-result v5

    #setter for: Lcom/jingdong/app/mall/MainFrameActivity;->isGuided:Z
    invoke-static {v4, v5}, Lcom/jingdong/app/mall/MainFrameActivity;->access$0(Lcom/jingdong/app/mall/MainFrameActivity;Z)V

    .line 239
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->networkSetting()V

    .line 240
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->initEncryptKey()V

    .line 242
    const-string v4, "appUseTime"

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 246
    .local v2, useTime:J
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "appUseTime"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 247
    cmp-long v4, v2, v6

    if-lez v4, :cond_1

    .line 248
    iget-object v4, p0, Lcom/jingdong/app/mall/MainFrameActivity$1;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {v4, v2, v3}, Lcom/jingdong/app/mall/MainFrameActivity;->submitAppUseTime(J)V

    .line 251
    :cond_1
    iget-object v4, p0, Lcom/jingdong/app/mall/MainFrameActivity$1;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    #calls: Lcom/jingdong/app/mall/MainFrameActivity;->initNetwork()V
    invoke-static {v4}, Lcom/jingdong/app/mall/MainFrameActivity;->access$1(Lcom/jingdong/app/mall/MainFrameActivity;)V

    .line 253
    iget-object v4, p0, Lcom/jingdong/app/mall/MainFrameActivity$1;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    const v5, 0x7f0703ae

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/MainFrameActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jingdong/app/mall/utils/CommonUtil;->getBooleanFromPreference(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    .line 254
    .local v1, msgSwitch:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 260
    invoke-static {}, Lcom/jingdong/common/utils/MessageUtil;->getMsgMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 261
    invoke-static {}, Lcom/jingdong/common/utils/MessageUtil;->openMsgService()V

    .line 267
    :cond_2
    return-void
.end method
