.class public Lcom/jingdong/app/mall/plug/PlugManager;
.super Ljava/lang/Object;
.source "PlugManager.java"


# static fields
.field private static final RSid2PlugIdHasTable:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PlugManager"

.field static execService:Ljava/util/concurrent/ExecutorService;

.field private static instance:Lcom/jingdong/app/mall/plug/PlugManager;


# instance fields
.field private isInited:Z

.field private mPlugList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lcom/jingdong/app/mall/plug/PlugManager;->RSid2PlugIdHasTable:Ljava/util/Hashtable;

    .line 51
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/plug/PlugManager;->execService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/PlugManager;->mPlugList:Ljava/util/ArrayList;

    .line 41
    iput-boolean v1, p0, Lcom/jingdong/app/mall/plug/PlugManager;->isInited:Z

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/plug/PlugManager;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/plug/PlugManager;->checkAndInitData(Landroid/content/Context;Z)V

    return-void
.end method

.method private declared-synchronized checkAndInitData(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 183
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/jingdong/app/mall/plug/PlugManager;->checkAndInitData(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized checkAndInitData(Landroid/content/Context;Z)V
    .locals 7
    .parameter "context"
    .parameter "isBlock"

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/jingdong/app/mall/plug/PlugManager;->isInited:Z

    if-nez v4, :cond_3

    .line 191
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v4

    const-string v5, "plug"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/jingdong/app/mall/MyApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 192
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v4, "plugsVersion"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, plugVersion:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "1.1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 194
    :cond_0
    if-eqz p2, :cond_1

    .line 196
    const-wide/16 v4, 0x7d0

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    :cond_1
    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->readApkToDBFromAsset(Landroid/content/Context;)V

    .line 202
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 203
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v4, "plugsVersion"

    const-string v5, "1.1"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_2
    iget-object v4, p0, Lcom/jingdong/app/mall/plug/PlugManager;->mPlugList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 207
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/app/mall/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getDao(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/app/mall/plug/PlugManager;->mPlugList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->selectAllToList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 208
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/jingdong/app/mall/plug/PlugManager;->isInited:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    .end local v2           #plugVersion:Ljava/lang/String;
    .end local v3           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_3
    monitor-exit p0

    return-void

    .line 197
    .restart local v2       #plugVersion:Ljava/lang/String;
    .restart local v3       #sharedPreferences:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 190
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #plugVersion:Ljava/lang/String;
    .end local v3           #sharedPreferences:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public static exec(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 54
    sget-object v0, Lcom/jingdong/app/mall/plug/PlugManager;->execService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method public static getInstance()Lcom/jingdong/app/mall/plug/PlugManager;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/jingdong/app/mall/plug/PlugManager;->instance:Lcom/jingdong/app/mall/plug/PlugManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/jingdong/app/mall/plug/PlugManager;

    invoke-direct {v0}, Lcom/jingdong/app/mall/plug/PlugManager;-><init>()V

    sput-object v0, Lcom/jingdong/app/mall/plug/PlugManager;->instance:Lcom/jingdong/app/mall/plug/PlugManager;

    .line 61
    :cond_0
    sget-object v0, Lcom/jingdong/app/mall/plug/PlugManager;->instance:Lcom/jingdong/app/mall/plug/PlugManager;

    return-object v0
.end method

.method public static initPlugStatus(Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 280
    invoke-static {p0}, Lcom/jingdong/app/mall/plug/framework/download/PlugHelper;->getPlugStatus(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 281
    return-void
.end method


# virtual methods
.method public declared-synchronized addAndUpdate(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;)V
    .locals 1
    .parameter "plugItem"

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/PlugManager;->mPlugList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/PlugManager;->mPlugList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/PlugManager;->mPlugList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPlugFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 8
    .parameter "context"
    .parameter "plugID"
    .parameter "bundle"

    .prologue
    const/4 v6, 0x0

    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, ipfragmentplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    :try_start_0
    iget-object v5, p0, Lcom/jingdong/app/mall/plug/PlugManager;->mPlugList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 168
    :goto_0
    if-nez v2, :cond_1

    .line 169
    invoke-static {p1, p2}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->installPlugFromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v4

    .line 170
    .local v4, plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    if-eqz v4, :cond_1

    .line 171
    invoke-virtual {v4, p1}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->getPlugIntance(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    move-object v2, v0

    .line 175
    .end local v4           #plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :cond_1
    if-eqz v2, :cond_3

    invoke-interface {v2, p1, p3}, Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;->getFragment(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 179
    :goto_1
    return-object v5

    .line 161
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    .line 162
    .local v3, plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    iget-object v7, v3, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 163
    invoke-virtual {v3, p1}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->getPlugIntance(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .end local v3           #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :cond_3
    move-object v5, v6

    .line 175
    goto :goto_1

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    .line 179
    goto :goto_1
.end method

.method public getPlugItem(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .locals 4
    .parameter "context"
    .parameter "plugId"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/plug/PlugManager;->checkAndInitData(Landroid/content/Context;)V

    .line 126
    iget-object v2, p0, Lcom/jingdong/app/mall/plug/PlugManager;->mPlugList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 131
    invoke-static {p1, p2}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->installPlugFromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v1

    .local v1, plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    move-object v0, v1

    .line 132
    .end local v1           #plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :goto_0
    return-object v0

    .line 126
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    .line 127
    .local v0, plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    iget-object v3, v0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public initPlugFragment(Lcom/jingdong/app/mall/utils/MyActivity;ILandroid/os/Bundle;)V
    .locals 7
    .parameter "plugsBaseActivity"
    .parameter "rId"
    .parameter "bundle"

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/jingdong/app/mall/utils/MyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/jingdong/app/mall/plug/PlugManager;->checkAndInitData(Landroid/content/Context;)V

    .line 146
    :try_start_0
    sget-object v5, Lcom/jingdong/app/mall/plug/PlugManager;->RSid2PlugIdHasTable:Ljava/util/Hashtable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    .local v0, PlugId:Ljava/lang/String;
    invoke-virtual {p0, p1, v0, p3}, Lcom/jingdong/app/mall/plug/PlugManager;->getPlugFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 148
    .local v3, fragment:Landroid/support/v4/app/Fragment;
    invoke-virtual {p1}, Lcom/jingdong/app/mall/utils/MyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 149
    .local v2, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 150
    .local v4, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v4, p2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 151
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v0           #PlugId:Ljava/lang/String;
    .end local v2           #fm:Landroid/support/v4/app/FragmentManager;
    .end local v3           #fragment:Landroid/support/v4/app/Fragment;
    .end local v4           #ft:Landroid/support/v4/app/FragmentTransaction;
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startPlugActivty(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "pkg"
    .parameter "intent"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/plug/PlugManager;->checkAndInitData(Landroid/content/Context;)V

    .line 95
    const/4 v1, 0x0

    .line 106
    .local v1, isOk:Z
    :try_start_0
    iget-object v4, p0, Lcom/jingdong/app/mall/plug/PlugManager;->mPlugList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 113
    :goto_0
    if-nez v1, :cond_1

    .line 114
    invoke-static {p1, p2}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->installPlugFromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v3

    .line 115
    .local v3, plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    if-eqz v3, :cond_1

    .line 116
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, p3}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->start(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;Landroid/content/Intent;)Z

    .line 122
    .end local v3           #plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :cond_1
    :goto_1
    return-void

    .line 106
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    .line 107
    .local v2, plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    iget-object v5, v2, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, p3}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->start(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    const/4 v1, 0x1

    .line 110
    goto :goto_0

    .line 119
    .end local v2           #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public startPlugActivtyInFrame(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "pkg"
    .parameter "intent"

    .prologue
    .line 138
    const-string v0, "isInFrame"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lcom/jingdong/app/mall/plug/PlugManager;->startPlugActivty(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method public startPlugService(Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 213
    new-instance v0, Lcom/jingdong/app/mall/plug/PlugManager$1;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/plug/PlugManager$1;-><init>(Lcom/jingdong/app/mall/plug/PlugManager;Lcom/jingdong/app/mall/utils/MyActivity;)V

    invoke-static {v0}, Lcom/jingdong/app/mall/plug/PlugManager;->exec(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method public startWithApplication(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/plug/PlugManager;->checkAndInitData(Landroid/content/Context;)V

    .line 67
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/plug/PlugManager;->mPlugList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 82
    :goto_1
    return-void

    .line 67
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    .line 68
    .local v2, plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    iget v4, v2, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->launch:I

    if-nez v4, :cond_0

    .line 69
    iget v4, v2, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->screen:I

    if-nez v4, :cond_2

    .line 70
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, p2}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->start(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v2           #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :catch_0
    move-exception v1

    .line 80
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 71
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :cond_2
    :try_start_1
    iget v4, v2, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->screen:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 72
    invoke-virtual {v2, p1}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->getPlugIntance(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/plug/framework/plug/open/IPServiceplug;

    .line 73
    .local v0, IPServiceplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPServiceplug;
    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, p1, p2}, Lcom/jingdong/app/mall/plug/framework/plug/open/IPServiceplug;->onStart(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public test1(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/plug/PlugManager;->checkAndInitData(Landroid/content/Context;)V

    .line 239
    const-string v2, "/sdcard/123456.apk"

    invoke-static {p1, v2}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPluginParser;->parseFirstProperties(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v1

    .line 240
    .local v1, plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    const-string v2, "/sdcard/123456.apk"

    iput-object v2, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->downFilePath:Ljava/lang/String;

    .line 241
    invoke-virtual {v1, p1}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->install(Landroid/content/Context;)Z

    move-result v0

    .line 242
    .local v0, ok:Z
    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lcom/jingdong/app/mall/plug/PlugManager;->getInstance()Lcom/jingdong/app/mall/plug/PlugManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jingdong/app/mall/plug/PlugManager;->addAndUpdate(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;)V

    .line 244
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/app/mall/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getDao(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    move-result-object v2

    iget-object v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->exist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/app/mall/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getDao(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->update(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;)V

    .line 250
    :cond_0
    :goto_0
    invoke-static {}, Lcom/jingdong/app/mall/plug/PlugManager;->getInstance()Lcom/jingdong/app/mall/plug/PlugManager;

    move-result-object v2

    const-string v3, "sample.helloworld"

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/jingdong/app/mall/plug/PlugManager;->startPlugActivty(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 251
    return-void

    .line 247
    :cond_1
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/app/mall/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getDao(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->insert(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;)V

    goto :goto_0
.end method

.method public test2(Landroid/content/Context;)Landroid/support/v4/app/Fragment;
    .locals 4
    .parameter "context"

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/plug/PlugManager;->checkAndInitData(Landroid/content/Context;)V

    .line 256
    const-string v2, "/sdcard/123456.apk"

    invoke-static {p1, v2}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPluginParser;->parseFirstProperties(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v1

    .line 257
    .local v1, plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    const-string v2, "/sdcard/123456.apk"

    iput-object v2, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->downFilePath:Ljava/lang/String;

    .line 258
    invoke-virtual {v1, p1}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->install(Landroid/content/Context;)Z

    move-result v0

    .line 259
    .local v0, ok:Z
    if-eqz v0, :cond_0

    .line 260
    invoke-static {}, Lcom/jingdong/app/mall/plug/PlugManager;->getInstance()Lcom/jingdong/app/mall/plug/PlugManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jingdong/app/mall/plug/PlugManager;->addAndUpdate(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;)V

    .line 261
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/app/mall/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getDao(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    move-result-object v2

    iget-object v3, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->exist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/app/mall/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getDao(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->update(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;)V

    .line 267
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/jingdong/app/mall/plug/PlugManager;->getPlugFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    return-object v2

    .line 264
    :cond_1
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/app/mall/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getDao(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->insert(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;)V

    goto :goto_0
.end method
