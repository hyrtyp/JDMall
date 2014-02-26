.class public Lcom/jingdong/cloud/msg/util/SharedPreferenceUtil;
.super Ljava/lang/Object;
.source "SharedPreferenceUtil.java"


# static fields
.field private static preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntValueByKey(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 80
    invoke-static {p0}, Lcom/jingdong/cloud/msg/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 81
    .local v0, shared:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 84
    .end local p2
    :cond_0
    return p2
.end method

.method private static declared-synchronized getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .parameter "context"

    .prologue
    .line 19
    const-class v1, Lcom/jingdong/cloud/msg/util/SharedPreferenceUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jingdong/cloud/msg/util/SharedPreferenceUtil;->preferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 20
    const-string v0, "msg_push"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/jingdong/cloud/msg/util/SharedPreferenceUtil;->preferences:Landroid/content/SharedPreferences;

    .line 22
    :cond_0
    sget-object v0, Lcom/jingdong/cloud/msg/util/SharedPreferenceUtil;->preferences:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getStringFromSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/jingdong/cloud/msg/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 54
    .local v0, shared:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 57
    .end local p2
    :cond_0
    return-object p2
.end method

.method public static putIntValueByKey(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/jingdong/cloud/msg/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method

.method public static putStringValueByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 34
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "putStringValueByKey:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {p0}, Lcom/jingdong/cloud/msg/util/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStringFromSharedPreference:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {p0, p1, v2}, Lcom/jingdong/cloud/msg/util/SharedPreferenceUtil;->getStringFromSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
